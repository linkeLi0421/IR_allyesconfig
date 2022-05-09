; ModuleID = '/llk/IR_all_yes/drivers/phy/marvell/phy-mvebu-cp110-comphy.c_pt.bc'
source_filename = "../drivers/phy/marvell/phy-mvebu-cp110-comphy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mvebu_comphy_conf = type { i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mvebu_comphy_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mvebu_comphy_lane = type { ptr, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }

@__initcall__kmod_phy_mvebu_cp110_comphy__334_1108_mvebu_comphy_driver_init6 = internal global ptr @mvebu_comphy_driver_init, section ".initcall6.init", align 4
@mvebu_comphy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mvebu_comphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mvebu_comphy_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mvebu_comphy_driver_exit = internal global ptr @mvebu_comphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author335 = internal constant [81 x i8] c"phy_mvebu_cp110_comphy.author=Antoine Tenart <antoine.tenart@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description336 = internal constant [68 x i8] c"phy_mvebu_cp110_comphy.description=Common PHY driver for mvebu SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_file337 = internal constant [71 x i8] c"phy_mvebu_cp110_comphy.file=drivers/phy/marvell/phy-mvebu-cp110-comphy\00", section ".modinfo", align 1
@__UNIQUE_ID_license338 = internal constant [38 x i8] c"phy_mvebu_cp110_comphy.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mvebu-comphy\00", [19 x i8] zeroinitializer }, align 32
@mvebu_comphy_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,comphy-cp110\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"marvell,system-controller\00", [38 x i8] zeroinitializer }, align 32
@mvebu_comphy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1027, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot initialize clocks\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mvebu_comphy_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/phy/marvell/phy-mvebu-cp110-comphy.c\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mvebu_comphy_probe._entry_ptr = internal global ptr @mvebu_comphy_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@mvebu_comphy_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1044, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"missing 'reg' property (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mvebu_comphy_probe._entry_ptr.11 = internal global ptr @mvebu_comphy_probe._entry.8, section ".printk_index", align 4
@mvebu_comphy_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1049, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid 'reg' property\0A\00", [40 x i8] zeroinitializer }, align 32
@mvebu_comphy_probe._entry_ptr.14 = internal global ptr @mvebu_comphy_probe._entry.12, section ".printk_index", align 4
@mvebu_comphy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @mvebu_comphy_power_on, ptr @mvebu_comphy_power_off, ptr @mvebu_comphy_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mg_clk\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mg_core_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"axi_clk\00", [24 x i8] zeroinitializer }, align 32
@mvebu_comphy_power_on.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 0, i8 -60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"phy_mvebu_cp110_comphy\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mvebu_comphy_power_on\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set lane %d to RXAUI mode\0A\00", [37 x i8] zeroinitializer }, align 32
@mvebu_comphy_power_on.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.4, ptr @.str.21, i8 0, i8 -59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"set lane %d to 1000BASE-X mode\0A\00", [32 x i8] zeroinitializer }, align 32
@mvebu_comphy_power_on.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.4, ptr @.str.22, i8 0, i8 -58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"set lane %d to 2500BASE-X mode\0A\00", [32 x i8] zeroinitializer }, align 32
@mvebu_comphy_power_on.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.4, ptr @.str.23, i8 0, i8 -57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"set lane %d to 5GBASE-R mode\0A\00", [34 x i8] zeroinitializer }, align 32
@mvebu_comphy_power_on.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.4, ptr @.str.24, i8 0, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set lane %d to 10GBASE-R mode\0A\00", [33 x i8] zeroinitializer }, align 32
@mvebu_comphy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.4, i32 809, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported Ethernet mode (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@mvebu_comphy_power_on._entry_ptr = internal global ptr @mvebu_comphy_power_on._entry, section ".printk_index", align 4
@mvebu_comphy_power_on.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.4, ptr @.str.26, i8 0, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set lane %d to USB3 mode\0A\00", [38 x i8] zeroinitializer }, align 32
@mvebu_comphy_power_on.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.4, ptr @.str.27, i8 0, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set lane %d to SATA mode\0A\00", [38 x i8] zeroinitializer }, align 32
@mvebu_comphy_power_on.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.4, ptr @.str.28, i8 0, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"set lane %d to PCIe mode (x%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@mvebu_comphy_power_on._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.4, i32 830, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported PHY mode (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@mvebu_comphy_power_on._entry_ptr.31 = internal global ptr @mvebu_comphy_power_on._entry.29, section ".printk_index", align 4
@mvebu_comphy_power_on._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.4, i32 841, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"unsupported SMC call, try updating your firmware\0A\00", [46 x i8] zeroinitializer }, align 32
@mvebu_comphy_power_on._entry_ptr.34 = internal global ptr @mvebu_comphy_power_on._entry.32, section ".printk_index", align 4
@mvebu_comphy_power_on._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.19, ptr @.str.4, i32 845, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Firmware could not configure PHY %d with mode %d (ret: %d), trying legacy method\0A\00", [46 x i8] zeroinitializer }, align 32
@mvebu_comphy_power_on._entry_ptr.37 = internal global ptr @mvebu_comphy_power_on._entry.35, section ".printk_index", align 4
@mvebu_comphy_cp110_modes = internal constant { [41 x %struct.mvebu_comphy_conf], [232 x i8] } { [41 x %struct.mvebu_comphy_conf] [%struct.mvebu_comphy_conf { i32 14, i32 0, i32 0, i32 0, i32 -1, i32 6 }, %struct.mvebu_comphy_conf { i32 15, i32 4, i32 0, i32 1, i32 1, i32 2 }, %struct.mvebu_comphy_conf { i32 15, i32 22, i32 0, i32 1, i32 1, i32 3 }, %struct.mvebu_comphy_conf { i32 17, i32 0, i32 0, i32 1, i32 -1, i32 1 }, %struct.mvebu_comphy_conf { i32 5, i32 0, i32 1, i32 0, i32 -1, i32 4 }, %struct.mvebu_comphy_conf { i32 10, i32 0, i32 1, i32 0, i32 -1, i32 5 }, %struct.mvebu_comphy_conf { i32 17, i32 0, i32 1, i32 0, i32 -1, i32 1 }, %struct.mvebu_comphy_conf { i32 14, i32 0, i32 1, i32 0, i32 -1, i32 6 }, %struct.mvebu_comphy_conf { i32 15, i32 4, i32 1, i32 2, i32 1, i32 2 }, %struct.mvebu_comphy_conf { i32 15, i32 22, i32 1, i32 2, i32 1, i32 3 }, %struct.mvebu_comphy_conf { i32 15, i32 4, i32 2, i32 0, i32 1, i32 2 }, %struct.mvebu_comphy_conf { i32 15, i32 22, i32 2, i32 0, i32 1, i32 3 }, %struct.mvebu_comphy_conf { i32 15, i32 24, i32 2, i32 0, i32 1, i32 7 }, %struct.mvebu_comphy_conf { i32 15, i32 23, i32 2, i32 0, i32 1, i32 8 }, %struct.mvebu_comphy_conf { i32 15, i32 26, i32 2, i32 0, i32 1, i32 8 }, %struct.mvebu_comphy_conf { i32 5, i32 0, i32 2, i32 0, i32 -1, i32 4 }, %struct.mvebu_comphy_conf { i32 17, i32 0, i32 2, i32 0, i32 -1, i32 1 }, %struct.mvebu_comphy_conf { i32 14, i32 0, i32 2, i32 0, i32 -1, i32 6 }, %struct.mvebu_comphy_conf { i32 14, i32 0, i32 3, i32 0, i32 -1, i32 6 }, %struct.mvebu_comphy_conf { i32 15, i32 4, i32 3, i32 1, i32 2, i32 2 }, %struct.mvebu_comphy_conf { i32 15, i32 22, i32 3, i32 1, i32 2, i32 3 }, %struct.mvebu_comphy_conf { i32 15, i32 24, i32 3, i32 1, i32 1, i32 7 }, %struct.mvebu_comphy_conf { i32 5, i32 0, i32 3, i32 1, i32 -1, i32 4 }, %struct.mvebu_comphy_conf { i32 17, i32 0, i32 3, i32 1, i32 -1, i32 1 }, %struct.mvebu_comphy_conf { i32 15, i32 4, i32 4, i32 0, i32 2, i32 2 }, %struct.mvebu_comphy_conf { i32 15, i32 22, i32 4, i32 0, i32 2, i32 3 }, %struct.mvebu_comphy_conf { i32 15, i32 23, i32 4, i32 0, i32 2, i32 8 }, %struct.mvebu_comphy_conf { i32 15, i32 26, i32 4, i32 0, i32 2, i32 8 }, %struct.mvebu_comphy_conf { i32 15, i32 24, i32 4, i32 0, i32 2, i32 7 }, %struct.mvebu_comphy_conf { i32 10, i32 0, i32 4, i32 0, i32 -1, i32 5 }, %struct.mvebu_comphy_conf { i32 5, i32 0, i32 4, i32 1, i32 -1, i32 4 }, %struct.mvebu_comphy_conf { i32 14, i32 0, i32 4, i32 1, i32 -1, i32 6 }, %struct.mvebu_comphy_conf { i32 15, i32 4, i32 4, i32 1, i32 1, i32 2 }, %struct.mvebu_comphy_conf { i32 15, i32 22, i32 4, i32 1, i32 -1, i32 3 }, %struct.mvebu_comphy_conf { i32 15, i32 23, i32 4, i32 1, i32 -1, i32 8 }, %struct.mvebu_comphy_conf { i32 15, i32 26, i32 4, i32 1, i32 -1, i32 8 }, %struct.mvebu_comphy_conf { i32 15, i32 24, i32 5, i32 1, i32 2, i32 7 }, %struct.mvebu_comphy_conf { i32 17, i32 0, i32 5, i32 1, i32 -1, i32 1 }, %struct.mvebu_comphy_conf { i32 15, i32 4, i32 5, i32 2, i32 1, i32 2 }, %struct.mvebu_comphy_conf { i32 15, i32 22, i32 5, i32 2, i32 1, i32 3 }, %struct.mvebu_comphy_conf { i32 14, i32 0, i32 5, i32 2, i32 -1, i32 6 }], [232 x i8] zeroinitializer }, align 32
@mvebu_comphy_ethernet_init_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 380, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"unsupported comphy submode (%d) on lane %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mvebu_comphy_ethernet_init_reset\00", [63 x i8] zeroinitializer }, align 32
@mvebu_comphy_ethernet_init_reset._entry_ptr = internal global ptr @mvebu_comphy_ethernet_init_reset._entry, section ".printk_index", align 4
@mvebu_comphy_ethernet_init_reset._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.4, i32 401, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RXAUI is not supported on comphy lane %d\0A\00", [54 x i8] zeroinitializer }, align 32
@mvebu_comphy_ethernet_init_reset._entry_ptr.42 = internal global ptr @mvebu_comphy_ethernet_init_reset._entry.40, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 32, i64 5, i64 10, i64 14, i64 15, i64 17]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 22, i64 23, i64 24, i64 26]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 22, i64 24, i64 26]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 22, i64 24, i64 26]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"mvebu_comphy_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1101, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1104, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [28 x i8] c"mvebu_comphy_of_match_table\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1095, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1011, i32 7 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1027, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1041, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1043, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1049, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"mvebu_comphy_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 911, i32 29 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 941, i32 48 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 949, i32 46 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 959, i32 42 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 783, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 788, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 793, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 798, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 803, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 808, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 816, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 820, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 824, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 830, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 840, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 843, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [25 x i8] c"mvebu_comphy_cp110_modes\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 207, i32 39 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 377, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [48 x i8] c"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 399, i32 4 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author335, ptr @__UNIQUE_ID_description336, ptr @__UNIQUE_ID_file337, ptr @__UNIQUE_ID_license338, ptr @__exitcall_mvebu_comphy_driver_exit, ptr @__initcall__kmod_phy_mvebu_cp110_comphy__334_1108_mvebu_comphy_driver_init6, ptr @mvebu_comphy_driver_exit, ptr @mvebu_comphy_ethernet_init_reset._entry, ptr @mvebu_comphy_ethernet_init_reset._entry.40, ptr @mvebu_comphy_ethernet_init_reset._entry_ptr, ptr @mvebu_comphy_ethernet_init_reset._entry_ptr.42, ptr @mvebu_comphy_power_on._entry, ptr @mvebu_comphy_power_on._entry.29, ptr @mvebu_comphy_power_on._entry.32, ptr @mvebu_comphy_power_on._entry.35, ptr @mvebu_comphy_power_on._entry_ptr, ptr @mvebu_comphy_power_on._entry_ptr.31, ptr @mvebu_comphy_power_on._entry_ptr.34, ptr @mvebu_comphy_power_on._entry_ptr.37, ptr @mvebu_comphy_probe._entry, ptr @mvebu_comphy_probe._entry.12, ptr @mvebu_comphy_probe._entry.8, ptr @mvebu_comphy_probe._entry_ptr, ptr @mvebu_comphy_probe._entry_ptr.11, ptr @mvebu_comphy_probe._entry_ptr.14, ptr @mvebu_comphy_driver, ptr @.str, ptr @mvebu_comphy_of_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @mvebu_comphy_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @mvebu_comphy_cp110_modes, ptr @.str.38, ptr @.str.39, ptr @.str.41], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_comphy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_comphy_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_comphy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_comphy_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_comphy_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_comphy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_comphy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_comphy_power_on._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_comphy_power_on._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_comphy_power_on._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_comphy_cp110_modes to i32), i32 984, i32 1216, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_comphy_ethernet_init_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_comphy_ethernet_init_reset._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_comphy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mvebu_comphy_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_comphy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mvebu_comphy_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_comphy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup67_crit_edge, label %if.end

entry.cleanup67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup67

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call13 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call11) #7
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %call.i, align 4
  %cmp.i116 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call13 to i32
  br label %cleanup67

if.end19:                                         ; preds = %if.end10
  %7 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev2, align 4
  %call.i117 = tail call ptr @devm_clk_get(ptr noundef %8, ptr noundef nonnull @.str.15) #7
  %mg_domain_clk.i = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %mg_domain_clk.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i117, ptr %mg_domain_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i117, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call.i117 to i32
  br label %mvebu_comphy_init_clks.exit

if.end.i:                                         ; preds = %if.end19
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %call.i117) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.clk_prepare_enable.exit.i_crit_edge

if.end.i.clk_prepare_enable.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call.i117) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end8.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end8.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call.i117) #7
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.end.i.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i118 = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i118, label %clk_prepare_enable.exit.i.mvebu_comphy_init_clks.exit_crit_edge, label %clk_prepare_enable.exit.i.if.end8.i_crit_edge

clk_prepare_enable.exit.i.if.end8.i_crit_edge:    ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

clk_prepare_enable.exit.i.mvebu_comphy_init_clks.exit_crit_edge: ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_comphy_init_clks.exit

if.end8.i:                                        ; preds = %clk_prepare_enable.exit.i.if.end8.i_crit_edge, %if.end.i.i.if.end8.i_crit_edge
  %11 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2, align 4
  %call10.i = tail call ptr @devm_clk_get(ptr noundef %12, ptr noundef nonnull @.str.16) #7
  %mg_core_clk.i = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %mg_core_clk.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call10.i, ptr %mg_core_clk.i, align 4
  %cmp.i63.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63.i, label %if.then13.i, label %if.end16.i

if.then13.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call10.i to i32
  br label %dis_mg_domain_clk.i

if.end16.i:                                       ; preds = %if.end8.i
  %call.i64.i = tail call i32 @clk_prepare(ptr noundef %call10.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64.i)
  %tobool.not.i65.i = icmp eq i32 %call.i64.i, 0
  br i1 %tobool.not.i65.i, label %if.end.i68.i, label %if.end16.i.clk_prepare_enable.exit71.i_crit_edge

if.end16.i.clk_prepare_enable.exit71.i_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit71.i

if.end.i68.i:                                     ; preds = %if.end16.i
  %call1.i66.i = tail call i32 @clk_enable(ptr noundef %call10.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66.i)
  %tobool2.not.i67.i = icmp eq i32 %call1.i66.i, 0
  br i1 %tobool2.not.i67.i, label %if.end.i68.i.if.end21.i_crit_edge, label %if.then3.i69.i

if.end.i68.i.if.end21.i_crit_edge:                ; preds = %if.end.i68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then3.i69.i:                                   ; preds = %if.end.i68.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call10.i) #7
  br label %clk_prepare_enable.exit71.i

clk_prepare_enable.exit71.i:                      ; preds = %if.then3.i69.i, %if.end16.i.clk_prepare_enable.exit71.i_crit_edge
  %retval.0.i70.i = phi i32 [ %call.i64.i, %if.end16.i.clk_prepare_enable.exit71.i_crit_edge ], [ %call1.i66.i, %if.then3.i69.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i70.i)
  %cmp19.i = icmp slt i32 %retval.0.i70.i, 0
  br i1 %cmp19.i, label %clk_prepare_enable.exit71.i.dis_mg_domain_clk.i_crit_edge, label %clk_prepare_enable.exit71.i.if.end21.i_crit_edge

clk_prepare_enable.exit71.i.if.end21.i_crit_edge: ; preds = %clk_prepare_enable.exit71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

clk_prepare_enable.exit71.i.dis_mg_domain_clk.i_crit_edge: ; preds = %clk_prepare_enable.exit71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dis_mg_domain_clk.i

if.end21.i:                                       ; preds = %clk_prepare_enable.exit71.i.if.end21.i_crit_edge, %if.end.i68.i.if.end21.i_crit_edge
  %15 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2, align 4
  %call23.i = tail call ptr @devm_clk_get(ptr noundef %16, ptr noundef nonnull @.str.17) #7
  %axi_clk.i = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %axi_clk.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call23.i, ptr %axi_clk.i, align 4
  %cmp.i72.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72.i, label %if.then26.i, label %if.end29.i

if.then26.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call23.i to i32
  br label %dis_mg_core_clk.i

if.end29.i:                                       ; preds = %if.end21.i
  %call.i73.i = tail call i32 @clk_prepare(ptr noundef %call23.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %tobool.not.i74.i = icmp eq i32 %call.i73.i, 0
  br i1 %tobool.not.i74.i, label %if.end.i77.i, label %if.end29.i.clk_prepare_enable.exit80.i_crit_edge

if.end29.i.clk_prepare_enable.exit80.i_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit80.i

if.end.i77.i:                                     ; preds = %if.end29.i
  %call1.i75.i = tail call i32 @clk_enable(ptr noundef %call23.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75.i)
  %tobool2.not.i76.i = icmp eq i32 %call1.i75.i, 0
  br i1 %tobool2.not.i76.i, label %if.end.i77.i.if.end26_crit_edge, label %if.then3.i78.i

if.end.i77.i.if.end26_crit_edge:                  ; preds = %if.end.i77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then3.i78.i:                                   ; preds = %if.end.i77.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call23.i) #7
  br label %clk_prepare_enable.exit80.i

clk_prepare_enable.exit80.i:                      ; preds = %if.then3.i78.i, %if.end29.i.clk_prepare_enable.exit80.i_crit_edge
  %retval.0.i79.i = phi i32 [ %call.i73.i, %if.end29.i.clk_prepare_enable.exit80.i_crit_edge ], [ %call1.i75.i, %if.then3.i78.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i79.i)
  %cmp32.i = icmp slt i32 %retval.0.i79.i, 0
  br i1 %cmp32.i, label %clk_prepare_enable.exit80.i.dis_mg_core_clk.i_crit_edge, label %clk_prepare_enable.exit80.i.if.end26_crit_edge

clk_prepare_enable.exit80.i.if.end26_crit_edge:   ; preds = %clk_prepare_enable.exit80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

clk_prepare_enable.exit80.i.dis_mg_core_clk.i_crit_edge: ; preds = %clk_prepare_enable.exit80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dis_mg_core_clk.i

dis_mg_core_clk.i:                                ; preds = %clk_prepare_enable.exit80.i.dis_mg_core_clk.i_crit_edge, %if.then26.i
  %ret.0.i = phi i32 [ %18, %if.then26.i ], [ %retval.0.i79.i, %clk_prepare_enable.exit80.i.dis_mg_core_clk.i_crit_edge ]
  %19 = ptrtoint ptr %mg_core_clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mg_core_clk.i, align 4
  tail call void @clk_disable(ptr noundef %20) #7
  tail call void @clk_unprepare(ptr noundef %20) #7
  br label %dis_mg_domain_clk.i

dis_mg_domain_clk.i:                              ; preds = %dis_mg_core_clk.i, %clk_prepare_enable.exit71.i.dis_mg_domain_clk.i_crit_edge, %if.then13.i
  %ret.1.i = phi i32 [ %14, %if.then13.i ], [ %retval.0.i70.i, %clk_prepare_enable.exit71.i.dis_mg_domain_clk.i_crit_edge ], [ %ret.0.i, %dis_mg_core_clk.i ]
  %21 = ptrtoint ptr %mg_domain_clk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mg_domain_clk.i, align 4
  tail call void @clk_disable(ptr noundef %22) #7
  tail call void @clk_unprepare(ptr noundef %22) #7
  %23 = ptrtoint ptr %mg_domain_clk.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %mg_domain_clk.i, align 4
  %24 = ptrtoint ptr %mg_core_clk.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %mg_core_clk.i, align 4
  %axi_clk39.i = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %axi_clk39.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %axi_clk39.i, align 4
  br label %mvebu_comphy_init_clks.exit

mvebu_comphy_init_clks.exit:                      ; preds = %dis_mg_domain_clk.i, %clk_prepare_enable.exit.i.mvebu_comphy_init_clks.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %10, %if.then.i ], [ %ret.1.i, %dis_mg_domain_clk.i ], [ %retval.0.i.i, %clk_prepare_enable.exit.i.mvebu_comphy_init_clks.exit_crit_edge ]
  %26 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %do.end [
    i32 0, label %mvebu_comphy_init_clks.exit.if.end26_crit_edge
    i32 -517, label %mvebu_comphy_init_clks.exit.cleanup67_crit_edge
  ]

mvebu_comphy_init_clks.exit.cleanup67_crit_edge:  ; preds = %mvebu_comphy_init_clks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

mvebu_comphy_init_clks.exit.if.end26_crit_edge:   ; preds = %mvebu_comphy_init_clks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end:                                           ; preds = %mvebu_comphy_init_clks.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %if.end26

if.end26:                                         ; preds = %do.end, %mvebu_comphy_init_clks.exit.if.end26_crit_edge, %clk_prepare_enable.exit80.i.if.end26_crit_edge, %if.end.i77.i.if.end26_crit_edge
  %27 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call11, align 4
  %cp_phys = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %call.i, i32 0, i32 6
  %29 = ptrtoint ptr %cp_phys to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %cp_phys, align 4
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %call29 = tail call ptr @of_get_next_available_child(ptr noundef %31, ptr noundef null) #7
  %cmp30.not133 = icmp eq ptr %call29, null
  br i1 %cmp30.not133, label %if.end26.for.end_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  br label %for.body

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end26.for.body_crit_edge
  %child.0134 = phi ptr [ %call62, %for.inc.for.body_crit_edge ], [ %call29, %if.end26.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val, align 4, !annotation !107
  %call.i.i119 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0134, ptr noundef nonnull @.str.7, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i119)
  %cmp32 = icmp slt i32 %call.i.i119, 0
  br i1 %cmp32, label %do.end36, label %if.end38

do.end36:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call.i.i119) #10
  br label %for.inc

if.end38:                                         ; preds = %for.body
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %34)
  %cmp39 = icmp ugt i32 %34, 5
  br i1 %cmp39, label %do.end43, label %if.end45

do.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %for.inc

if.end45:                                         ; preds = %if.end38
  %call.i120 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #7
  %tobool48.not = icmp eq ptr %call.i120, null
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %child.0134) #7
  br label %disable_clks

if.end50:                                         ; preds = %if.end45
  %call52 = call ptr @devm_phy_create(ptr noundef %dev, ptr noundef nonnull %child.0134, ptr noundef nonnull @mvebu_comphy_ops) #7
  %cmp.i121 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %child.0134) #7
  %35 = ptrtoint ptr %call52 to i32
  br label %disable_clks

if.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %call.i120 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %call.i120, align 4
  %mode = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %call.i120, i32 0, i32 2
  %37 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %mode, align 4
  %submode = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %call.i120, i32 0, i32 3
  %38 = ptrtoint ptr %submode to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %submode, align 4
  %39 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val, align 4
  %id = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %call.i120, i32 0, i32 1
  %41 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %id, align 4
  %port = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %call.i120, i32 0, i32 4
  %42 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %port, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call52, i32 0, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i120, ptr %driver_data.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end56, %do.end43, %do.end36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  %44 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %of_node, align 8
  %call62 = call ptr @of_get_next_available_child(ptr noundef %45, ptr noundef nonnull %child.0134) #7
  %cmp30.not = icmp eq ptr %call62, null
  br i1 %cmp30.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end26.for.end_crit_edge
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %46 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call65 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @mvebu_comphy_xlate) #7
  %cmp.i.i122 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  %47 = ptrtoint ptr %call65 to i32
  %spec.select.i = select i1 %cmp.i.i122, i32 %47, i32 0
  br label %cleanup67

disable_clks:                                     ; preds = %if.then54, %if.then49
  %ret.0 = phi i32 [ %35, %if.then54 ], [ -12, %if.then49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  %axi_clk.i123 = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %call.i, i32 0, i32 5
  %48 = ptrtoint ptr %axi_clk.i123 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %axi_clk.i123, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %disable_clks.if.end.i126_crit_edge, label %if.then.i124

disable_clks.if.end.i126_crit_edge:               ; preds = %disable_clks
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i126

if.then.i124:                                     ; preds = %disable_clks
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_disable(ptr noundef nonnull %49) #7
  call void @clk_unprepare(ptr noundef nonnull %49) #7
  br label %if.end.i126

if.end.i126:                                      ; preds = %if.then.i124, %disable_clks.if.end.i126_crit_edge
  %mg_core_clk.i125 = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %call.i, i32 0, i32 4
  %50 = ptrtoint ptr %mg_core_clk.i125 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mg_core_clk.i125, align 4
  %tobool2.not.i = icmp eq ptr %51, null
  br i1 %tobool2.not.i, label %if.end.i126.if.end5.i_crit_edge, label %if.then3.i

if.end.i126.if.end5.i_crit_edge:                  ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_disable(ptr noundef nonnull %51) #7
  call void @clk_unprepare(ptr noundef nonnull %51) #7
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i126.if.end5.i_crit_edge
  %52 = ptrtoint ptr %mg_domain_clk.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mg_domain_clk.i, align 4
  %tobool6.not.i = icmp eq ptr %53, null
  br i1 %tobool6.not.i, label %if.end5.i.cleanup67_crit_edge, label %if.then7.i

if.end5.i.cleanup67_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_disable(ptr noundef nonnull %53) #7
  call void @clk_unprepare(ptr noundef nonnull %53) #7
  br label %cleanup67

cleanup67:                                        ; preds = %if.then7.i, %if.end5.i.cleanup67_crit_edge, %for.end, %mvebu_comphy_init_clks.exit.cleanup67_crit_edge, %if.then16, %if.then7, %entry.cleanup67_crit_edge
  %retval.0 = phi i32 [ %4, %if.then7 ], [ %6, %if.then16 ], [ %spec.select.i, %for.end ], [ -12, %entry.cleanup67_crit_edge ], [ %retval.0.i, %mvebu_comphy_init_clks.exit.cleanup67_crit_edge ], [ %ret.0, %if.end5.i.cleanup67_crit_edge ], [ %ret.0, %if.then7.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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
define internal ptr @mvebu_comphy_xlate(ptr noundef %dev, ptr noundef %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %args1 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %0 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %do.end, label %if.end22, !prof !108

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 924, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end22:                                         ; preds = %entry
  %call23 = tail call ptr @of_phy_simple_xlate(ptr noundef %dev, ptr noundef %args) #7
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call23, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args1, align 4
  %port = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %port, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call23, %if.end26 ], [ %call23, %if.end22.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_comphy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %res.i = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %id = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %port = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %mode = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  %submode = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %submode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %submode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.i.i = icmp eq i32 %9, 0
  br i1 %cmp2.i.i, label %entry.do.end192_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.do.end192_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end192

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.041.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [41 x %struct.mvebu_comphy_conf], ptr @mvebu_comphy_cp110_modes, i32 0, i32 %i.041.i.i
  %lane4.i.i = getelementptr [41 x %struct.mvebu_comphy_conf], ptr @mvebu_comphy_cp110_modes, i32 0, i32 %i.041.i.i, i32 2
  %12 = ptrtoint ptr %lane4.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lane4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %5)
  %cmp5.i.i = icmp eq i32 %13, %5
  br i1 %cmp5.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %port6.i.i = getelementptr [41 x %struct.mvebu_comphy_conf], ptr @mvebu_comphy_cp110_modes, i32 0, i32 %i.041.i.i, i32 3
  %14 = ptrtoint ptr %port6.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp7.i.i = icmp eq i32 %15, %7
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %9)
  %cmp10.i.i = icmp eq i32 %17, %9
  br i1 %cmp10.i.i, label %land.lhs.true11.i.i, label %land.lhs.true8.i.i.for.inc.i.i_crit_edge

land.lhs.true8.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true8.i.i
  %submode12.i.i = getelementptr [41 x %struct.mvebu_comphy_conf], ptr @mvebu_comphy_cp110_modes, i32 0, i32 %i.041.i.i, i32 1
  %18 = ptrtoint ptr %submode12.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %submode12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %11)
  %cmp13.i.i = icmp eq i32 %19, %11
  %brmerge.i.i = or i1 %cmp.i.i, %cmp13.i.i
  br i1 %brmerge.i.i, label %mvebu_comphy_get_fw_mode.exit, label %land.lhs.true11.i.i.for.inc.i.i_crit_edge

land.lhs.true11.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true11.i.i.for.inc.i.i_crit_edge, %land.lhs.true8.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.041.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 41
  br i1 %exitcond.not.i.i, label %for.inc.i.i.try_legacy_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.try_legacy_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_legacy

mvebu_comphy_get_fw_mode.exit:                    ; preds = %land.lhs.true11.i.i
  %fw_mode21.i.i = getelementptr [41 x %struct.mvebu_comphy_conf], ptr @mvebu_comphy_cp110_modes, i32 0, i32 %i.041.i.i, i32 5
  %20 = ptrtoint ptr %fw_mode21.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw_mode21.i.i, align 4
  %22 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %9, label %mvebu_comphy_get_fw_mode.exit.do.end192_crit_edge [
    i32 15, label %sw.bb
    i32 5, label %mvebu_comphy_get_fw_mode.exit.do.body102_crit_edge
    i32 10, label %mvebu_comphy_get_fw_mode.exit.do.body102_crit_edge315
    i32 17, label %do.body130
    i32 14, label %do.body158
  ]

mvebu_comphy_get_fw_mode.exit.do.body102_crit_edge315: ; preds = %mvebu_comphy_get_fw_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body102

mvebu_comphy_get_fw_mode.exit.do.body102_crit_edge: ; preds = %mvebu_comphy_get_fw_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body102

mvebu_comphy_get_fw_mode.exit.do.end192_crit_edge: ; preds = %mvebu_comphy_get_fw_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end192

sw.bb:                                            ; preds = %mvebu_comphy_get_fw_mode.exit
  %23 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %11, label %do.end90 [
    i32 24, label %do.body
    i32 4, label %do.body13
    i32 22, label %do.body32
    i32 23, label %do.body51
    i32 26, label %do.body70
  ]

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvebu_comphy_power_on.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvebu_comphy_power_on, %if.then9)) #7
          to label %sw.epilog [label %if.then9], !srcloc !109

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvebu_comphy_power_on.__UNIQUE_ID_ddebug326, ptr noundef %25, ptr noundef nonnull @.str.20, i32 noundef %27) #7
  br label %sw.epilog

do.body13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvebu_comphy_power_on.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvebu_comphy_power_on, %if.then25)) #7
          to label %sw.epilog [label %if.then25], !srcloc !109

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %dev26 = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev26, align 4
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvebu_comphy_power_on.__UNIQUE_ID_ddebug327, ptr noundef %29, ptr noundef nonnull @.str.21, i32 noundef %31) #7
  br label %sw.epilog

do.body32:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvebu_comphy_power_on.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvebu_comphy_power_on, %if.then44)) #7
          to label %sw.epilog [label %if.then44], !srcloc !109

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  %dev45 = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %3, i32 0, i32 2
  %32 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev45, align 4
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvebu_comphy_power_on.__UNIQUE_ID_ddebug328, ptr noundef %33, ptr noundef nonnull @.str.22, i32 noundef %35) #7
  br label %sw.epilog

do.body51:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvebu_comphy_power_on.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvebu_comphy_power_on, %if.then63)) #7
          to label %sw.epilog [label %if.then63], !srcloc !109

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  %dev64 = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %3, i32 0, i32 2
  %36 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev64, align 4
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvebu_comphy_power_on.__UNIQUE_ID_ddebug329, ptr noundef %37, ptr noundef nonnull @.str.23, i32 noundef %39) #7
  br label %sw.epilog

do.body70:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvebu_comphy_power_on.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvebu_comphy_power_on, %if.then82)) #7
          to label %sw.epilog [label %if.then82], !srcloc !109

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %dev83 = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %3, i32 0, i32 2
  %40 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev83, align 4
  %42 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvebu_comphy_power_on.__UNIQUE_ID_ddebug330, ptr noundef %41, ptr noundef nonnull @.str.24, i32 noundef %43) #7
  br label %sw.epilog

do.end90:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %dev91 = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %3, i32 0, i32 2
  %44 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev91, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.25, i32 noundef %11) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.then82, %do.body70, %if.then63, %do.body51, %if.then44, %do.body32, %if.then25, %do.body13, %if.then9, %do.body
  %fw_speed.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then25 ], [ 8, %if.then44 ], [ 16, %if.then63 ], [ 24, %if.then82 ], [ 0, %do.body ], [ 0, %do.body13 ], [ 8, %do.body32 ], [ 16, %do.body51 ], [ 24, %do.body70 ]
  %shl = shl i32 %21, 12
  %and = and i32 %shl, 126976
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %shl94 = shl i32 %47, 8
  %and95 = and i32 %shl94, 3840
  %or96 = or i32 %fw_speed.0, %and
  %or99 = or i32 %or96, %and95
  br label %sw.epilog195

do.body102:                                       ; preds = %mvebu_comphy_get_fw_mode.exit.do.body102_crit_edge, %mvebu_comphy_get_fw_mode.exit.do.body102_crit_edge315
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvebu_comphy_power_on.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvebu_comphy_power_on, %if.then114)) #7
          to label %do.end119 [label %if.then114], !srcloc !109

if.then114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  %dev115 = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %3, i32 0, i32 2
  %48 = ptrtoint ptr %dev115 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev115, align 4
  %50 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvebu_comphy_power_on.__UNIQUE_ID_ddebug331, ptr noundef %49, ptr noundef nonnull @.str.26, i32 noundef %51) #7
  br label %do.end119

do.end119:                                        ; preds = %if.then114, %do.body102
  %shl120 = shl i32 %21, 12
  %and121 = and i32 %shl120, 126976
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %shl124 = shl i32 %53, 8
  %and125 = and i32 %shl124, 3840
  %or126 = or i32 %and121, %and125
  %or127 = or i32 %or126, 240
  br label %sw.epilog195

do.body130:                                       ; preds = %mvebu_comphy_get_fw_mode.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvebu_comphy_power_on.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvebu_comphy_power_on, %if.then142)) #7
          to label %do.end147 [label %if.then142], !srcloc !109

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #9
  %dev143 = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %3, i32 0, i32 2
  %54 = ptrtoint ptr %dev143 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev143, align 4
  %56 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvebu_comphy_power_on.__UNIQUE_ID_ddebug332, ptr noundef %55, ptr noundef nonnull @.str.27, i32 noundef %57) #7
  br label %do.end147

do.end147:                                        ; preds = %if.then142, %do.body130
  %shl148 = shl i32 %21, 12
  %and149 = and i32 %shl148, 126976
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port, align 4
  %shl152 = shl i32 %59, 8
  %and153 = and i32 %shl152, 3840
  %or154 = or i32 %and149, %and153
  %or155 = or i32 %or154, 240
  br label %sw.epilog195

do.body158:                                       ; preds = %mvebu_comphy_get_fw_mode.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvebu_comphy_power_on.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvebu_comphy_power_on, %if.then170)) #7
          to label %do.end176 [label %if.then170], !srcloc !109

if.then170:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #9
  %dev171 = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %3, i32 0, i32 2
  %60 = ptrtoint ptr %dev171 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev171, align 4
  %62 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id, align 4
  %64 = ptrtoint ptr %submode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %submode, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvebu_comphy_power_on.__UNIQUE_ID_ddebug333, ptr noundef %61, ptr noundef nonnull @.str.28, i32 noundef %63, i32 noundef %65) #7
  br label %do.end176

do.end176:                                        ; preds = %if.then170, %do.body158
  %shl177 = shl i32 %21, 12
  %and178 = and i32 %shl177, 126976
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port, align 4
  %shl181 = shl i32 %67, 8
  %and182 = and i32 %shl181, 3840
  %68 = ptrtoint ptr %submode to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %submode, align 4
  %shl186 = shl i32 %69, 18
  %and187 = and i32 %shl186, 1835008
  %or183 = or i32 %and178, %and182
  %or184 = or i32 %or183, %and187
  %or188 = or i32 %or184, 12
  br label %sw.epilog195

do.end192:                                        ; preds = %mvebu_comphy_get_fw_mode.exit.do.end192_crit_edge, %entry.do.end192_crit_edge
  %dev193 = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %3, i32 0, i32 2
  %70 = ptrtoint ptr %dev193 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev193, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.30, i32 noundef %9) #10
  br label %cleanup

sw.epilog195:                                     ; preds = %do.end176, %do.end147, %do.end119, %sw.epilog
  %fw_param.0 = phi i32 [ %or188, %do.end176 ], [ %or155, %do.end147 ], [ %or127, %do.end119 ], [ %or99, %sw.epilog ]
  %cp_phys = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %3, i32 0, i32 6
  %72 = ptrtoint ptr %cp_phys to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cp_phys, align 4
  %74 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i) #7
  %76 = call ptr @memset(ptr %res.i, i32 255, i32 16)
  call void @__arm_smccc_smc(i32 noundef -2113929215, i32 noundef %73, i32 noundef %75, i32 noundef %fw_param.0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i, ptr noundef null) #7
  %77 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %res.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %switch.selectcmp.i = icmp eq i32 %78, -1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -95, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %switch.selectcmp3.i = icmp eq i32 %78, 0
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 0, i32 %switch.select.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #7
  %79 = zext i32 %switch.select4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %switch.select4.i, label %sw.epilog195.do.end210_crit_edge [
    i32 0, label %sw.epilog195.cleanup_crit_edge
    i32 -95, label %do.end205
  ]

sw.epilog195.cleanup_crit_edge:                   ; preds = %sw.epilog195
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog195.do.end210_crit_edge:                 ; preds = %sw.epilog195
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end210

do.end205:                                        ; preds = %sw.epilog195
  call void @__sanitizer_cov_trace_pc() #9
  %dev206 = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %3, i32 0, i32 2
  %80 = ptrtoint ptr %dev206 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev206, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.33) #10
  br label %do.end210

do.end210:                                        ; preds = %do.end205, %sw.epilog195.do.end210_crit_edge
  %dev211 = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %3, i32 0, i32 2
  %82 = ptrtoint ptr %dev211 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev211, align 4
  %84 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %id, align 4
  %86 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mode, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %83, ptr noundef nonnull @.str.36, i32 noundef %85, i32 noundef %87, i32 noundef %switch.select4.i) #10
  br label %try_legacy

try_legacy:                                       ; preds = %do.end210, %for.inc.i.i.try_legacy_crit_edge
  %88 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %driver_data.i.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %92 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %val.i, align 4, !annotation !107
  %id.i = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %89, i32 0, i32 1
  %93 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %id.i, align 4
  %port.i = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %89, i32 0, i32 4
  %95 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %port.i, align 4
  %mode.i = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %89, i32 0, i32 2
  %97 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mode.i, align 4
  %submode.i = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %89, i32 0, i32 3
  %99 = ptrtoint ptr %submode.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %submode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %98)
  %cmp.i.i.i = icmp eq i32 %98, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp2.i.i.i = icmp eq i32 %98, 0
  br i1 %cmp2.i.i.i, label %try_legacy.if.end.i_crit_edge, label %try_legacy.for.body.i.i.i_crit_edge

try_legacy.for.body.i.i.i_crit_edge:              ; preds = %try_legacy
  br label %for.body.i.i.i

try_legacy.if.end.i_crit_edge:                    ; preds = %try_legacy
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %try_legacy.for.body.i.i.i_crit_edge
  %i.041.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %try_legacy.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [41 x %struct.mvebu_comphy_conf], ptr @mvebu_comphy_cp110_modes, i32 0, i32 %i.041.i.i.i
  %lane4.i.i.i = getelementptr [41 x %struct.mvebu_comphy_conf], ptr @mvebu_comphy_cp110_modes, i32 0, i32 %i.041.i.i.i, i32 2
  %101 = ptrtoint ptr %lane4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %lane4.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %94)
  %cmp5.i.i.i = icmp eq i32 %102, %94
  br i1 %cmp5.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %port6.i.i.i = getelementptr [41 x %struct.mvebu_comphy_conf], ptr @mvebu_comphy_cp110_modes, i32 0, i32 %i.041.i.i.i, i32 3
  %103 = ptrtoint ptr %port6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %port6.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %96)
  %cmp7.i.i.i = icmp eq i32 %104, %96
  br i1 %cmp7.i.i.i, label %land.lhs.true8.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true8.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %105 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %98)
  %cmp10.i.i.i = icmp eq i32 %106, %98
  br i1 %cmp10.i.i.i, label %land.lhs.true11.i.i.i, label %land.lhs.true8.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true8.i.i.i.for.inc.i.i.i_crit_edge:     ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true11.i.i.i:                            ; preds = %land.lhs.true8.i.i.i
  %submode12.i.i.i = getelementptr [41 x %struct.mvebu_comphy_conf], ptr @mvebu_comphy_cp110_modes, i32 0, i32 %i.041.i.i.i, i32 1
  %107 = ptrtoint ptr %submode12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %submode12.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %100)
  %cmp13.i.i.i = icmp eq i32 %108, %100
  %brmerge.i.i.i = or i1 %cmp.i.i.i, %cmp13.i.i.i
  br i1 %brmerge.i.i.i, label %mvebu_comphy_get_mux.exit.i, label %land.lhs.true11.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true11.i.i.i.for.inc.i.i.i_crit_edge:    ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true11.i.i.i.for.inc.i.i.i_crit_edge, %land.lhs.true8.i.i.i.for.inc.i.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.041.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 41
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.mvebu_comphy_power_on_legacy.exit_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.mvebu_comphy_power_on_legacy.exit_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_comphy_power_on_legacy.exit

mvebu_comphy_get_mux.exit.i:                      ; preds = %land.lhs.true11.i.i.i
  %mux.i.i.i = getelementptr [41 x %struct.mvebu_comphy_conf], ptr @mvebu_comphy_cp110_modes, i32 0, i32 %i.041.i.i.i, i32 4
  %109 = ptrtoint ptr %mux.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mux.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp.i = icmp slt i32 %110, 0
  br i1 %cmp.i, label %mvebu_comphy_get_mux.exit.i.mvebu_comphy_power_on_legacy.exit_crit_edge, label %mvebu_comphy_get_mux.exit.i.if.end.i_crit_edge

mvebu_comphy_get_mux.exit.i.if.end.i_crit_edge:   ; preds = %mvebu_comphy_get_mux.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

mvebu_comphy_get_mux.exit.i.mvebu_comphy_power_on_legacy.exit_crit_edge: ; preds = %mvebu_comphy_get_mux.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_comphy_power_on_legacy.exit

if.end.i:                                         ; preds = %mvebu_comphy_get_mux.exit.i.if.end.i_crit_edge, %try_legacy.if.end.i_crit_edge
  %retval.0.i.i126.i = phi i32 [ %110, %mvebu_comphy_get_mux.exit.i.if.end.i_crit_edge ], [ 0, %try_legacy.if.end.i_crit_edge ]
  %regmap.i = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %91, i32 0, i32 1
  %111 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap.i, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %112, i32 noundef 4420, ptr noundef nonnull %val.i) #7
  %113 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %114, 2
  %shl.i = shl i32 15, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %115 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %val.i, align 4
  %and.i = and i32 %116, %neg.i
  store i32 %and.i, ptr %val.i, align 4
  %117 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap.i, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %118, i32 noundef 4420, i32 noundef %and.i) #7
  %119 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regmap.i, align 4
  %call8.i = call i32 @regmap_read(ptr noundef %120, i32 noundef 4416, ptr noundef nonnull %val.i) #7
  %121 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %id.i, align 4
  %mul10.i = shl i32 %122, 2
  %shl11.i = shl i32 15, %mul10.i
  %neg12.i = xor i32 %shl11.i, -1
  %123 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %val.i, align 4
  %and13.i = and i32 %124, %neg12.i
  %shl16.i = shl i32 %retval.0.i.i126.i, %mul10.i
  %or.i = or i32 %and13.i, %shl16.i
  store i32 %or.i, ptr %val.i, align 4
  %125 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regmap.i, align 4
  %call18.i = call i32 @regmap_write(ptr noundef %126, i32 noundef 4416, i32 noundef %or.i) #7
  %127 = ptrtoint ptr %submode.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %submode.i, align 4
  %129 = zext i32 %128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %128, label %if.end.i.mvebu_comphy_power_on_legacy.exit_crit_edge [
    i32 4, label %if.end.i.sw.bb.i_crit_edge
    i32 22, label %if.end.i.sw.bb.i_crit_edge316
    i32 24, label %sw.bb21.i
    i32 26, label %sw.bb23.i
  ]

if.end.i.sw.bb.i_crit_edge316:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end.i.mvebu_comphy_power_on_legacy.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_comphy_power_on_legacy.exit

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge316
  %130 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %driver_data.i.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %call2.i.i = call fastcc i32 @mvebu_comphy_ethernet_init_reset(ptr noundef %131) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.i.mvebu_comphy_set_mode_sgmii.exit.i_crit_edge

sw.bb.i.mvebu_comphy_set_mode_sgmii.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_comphy_set_mode_sgmii.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %id.i.i = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %131, i32 0, i32 1
  %136 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %id.i.i, align 4
  %mul.i.i = shl i32 %137, 12
  %add.i.i = or i32 %mul.i.i, 2368
  %add.ptr.i.i = getelementptr i8, ptr %135, i32 %add.i.i
  %138 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %139 = and i32 %138, -1572865
  %140 = or i32 %139, 524288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  call void @arm_heavy_mb() #7
  %141 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %133, align 4
  %143 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %id.i.i, align 4
  %mul7.i.i = shl i32 %144, 12
  %add8.i.i = or i32 %mul7.i.i, 2368
  %add.ptr9.i.i = getelementptr i8, ptr %142, i32 %add8.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %140) #7, !srcloc !113
  %145 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %133, align 4
  %147 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %id.i.i, align 4
  %mul14.i.i = shl i32 %148, 12
  %add15.i.i = or i32 %mul14.i.i, 2436
  %add.ptr16.i.i = getelementptr i8, ptr %146, i32 %add15.i.i
  %149 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  %150 = and i32 %149, -67108865
  %151 = call i32 @llvm.bswap.i32(i32 %150) #7
  %152 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %val.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  call void @arm_heavy_mb() #7
  %153 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %133, align 4
  %155 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %id.i.i, align 4
  %mul26.i.i = shl i32 %156, 12
  %add27.i.i = or i32 %mul26.i.i, 2436
  %add.ptr28.i.i = getelementptr i8, ptr %154, i32 %add27.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i.i, i32 %150) #7, !srcloc !113
  %regmap.i.i = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %133, i32 0, i32 1
  %157 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regmap.i.i, align 4
  %159 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %id.i.i, align 4
  %mul30.i.i = mul i32 %160, 40
  %add31.i.i = add i32 %mul30.i.i, 4096
  %call32.i.i = call i32 @regmap_read(ptr noundef %158, i32 noundef %add31.i.i, ptr noundef nonnull %val.i.i) #7
  %161 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %val.i.i, align 4
  %and33.i.i = and i32 %162, -7
  %or34.i.i = or i32 %and33.i.i, 2
  store i32 %or34.i.i, ptr %val.i.i, align 4
  %163 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regmap.i.i, align 4
  %165 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %id.i.i, align 4
  %mul37.i.i = mul i32 %166, 40
  %add38.i.i = add i32 %mul37.i.i, 4096
  %call39.i.i = call i32 @regmap_write(ptr noundef %164, i32 noundef %add38.i.i, i32 noundef %or34.i.i) #7
  %167 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %133, align 4
  %169 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %id.i.i, align 4
  %mul44.i.i = shl i32 %170, 12
  %add45.i.i = or i32 %mul44.i.i, 2100
  %add.ptr46.i.i = getelementptr i8, ptr %168, i32 %add45.i.i
  %171 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %172 = and i32 %171, 2147024895
  %173 = or i32 %172, -2147483648
  %174 = call i32 @llvm.bswap.i32(i32 %173) #7
  %175 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %val.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  call void @arm_heavy_mb() #7
  %176 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %val.i.i, align 4
  %178 = call i32 @llvm.bswap.i32(i32 %177) #7
  %179 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %133, align 4
  %181 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %id.i.i, align 4
  %mul57.i.i = shl i32 %182, 12
  %add58.i.i = or i32 %mul57.i.i, 2100
  %add.ptr59.i.i = getelementptr i8, ptr %180, i32 %add58.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i.i, i32 %178) #7, !srcloc !113
  %call60.i.i = call fastcc i32 @mvebu_comphy_init_plls(ptr noundef %131) #7
  br label %mvebu_comphy_set_mode_sgmii.exit.i

mvebu_comphy_set_mode_sgmii.exit.i:               ; preds = %if.end.i.i, %sw.bb.i.mvebu_comphy_set_mode_sgmii.exit.i_crit_edge
  %retval.0.i.i286 = phi i32 [ %call60.i.i, %if.end.i.i ], [ %call2.i.i, %sw.bb.i.mvebu_comphy_set_mode_sgmii.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %sw.epilog.i

sw.bb21.i:                                        ; preds = %if.end.i
  %183 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %driver_data.i.i, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %184, align 4
  %call2.i59.i = call fastcc i32 @mvebu_comphy_ethernet_init_reset(ptr noundef %184) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i59.i)
  %tobool.not.i60.i = icmp eq i32 %call2.i59.i, 0
  br i1 %tobool.not.i60.i, label %if.end.i74.i, label %sw.bb21.i.sw.epilog.i_crit_edge

sw.bb21.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end.i74.i:                                     ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #9
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %186, align 4
  %id.i61.i = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %184, i32 0, i32 1
  %189 = ptrtoint ptr %id.i61.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %id.i61.i, align 4
  %mul.i62.i = shl i32 %190, 12
  %add.i63.i = or i32 %mul.i62.i, 2368
  %add.ptr.i64.i = getelementptr i8, ptr %188, i32 %add.i63.i
  %191 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %192 = or i32 %191, 1572864
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  call void @arm_heavy_mb() #7
  %193 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %186, align 4
  %195 = ptrtoint ptr %id.i61.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %id.i61.i, align 4
  %mul7.i65.i = shl i32 %196, 12
  %add8.i66.i = or i32 %mul7.i65.i, 2368
  %add.ptr9.i67.i = getelementptr i8, ptr %194, i32 %add8.i66.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i67.i, i32 %192) #7, !srcloc !113
  %197 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %186, align 4
  %199 = ptrtoint ptr %id.i61.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %id.i61.i, align 4
  %mul14.i68.i = shl i32 %200, 12
  %add15.i69.i = or i32 %mul14.i68.i, 2436
  %add.ptr16.i70.i = getelementptr i8, ptr %198, i32 %add15.i69.i
  %201 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i70.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  %202 = or i32 %201, 67108864
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  call void @arm_heavy_mb() #7
  %203 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %186, align 4
  %205 = ptrtoint ptr %id.i61.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %id.i61.i, align 4
  %mul26.i71.i = shl i32 %206, 12
  %add27.i72.i = or i32 %mul26.i71.i, 2436
  %add.ptr28.i73.i = getelementptr i8, ptr %204, i32 %add27.i72.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i73.i, i32 %202) #7, !srcloc !113
  %207 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %186, align 4
  %209 = ptrtoint ptr %id.i61.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %id.i61.i, align 4
  %mul33.i.i = shl i32 %210, 12
  %add34.i.i = or i32 %mul33.i.i, 8
  %add.ptr35.i.i = getelementptr i8, ptr %208, i32 %add34.i.i
  %211 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %212 = or i32 %211, 268435456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  call void @arm_heavy_mb() #7
  %213 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %186, align 4
  %215 = ptrtoint ptr %id.i61.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %id.i61.i, align 4
  %mul45.i.i = shl i32 %216, 12
  %add46.i.i = or i32 %mul45.i.i, 8
  %add.ptr47.i.i = getelementptr i8, ptr %214, i32 %add46.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i.i, i32 %212) #7, !srcloc !113
  %217 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %186, align 4
  %219 = ptrtoint ptr %id.i61.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %id.i61.i, align 4
  %mul52.i.i = shl i32 %220, 12
  %add53.i.i = or i32 %mul52.i.i, 2076
  %add.ptr54.i.i = getelementptr i8, ptr %218, i32 %add53.i.i
  %221 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %222 = or i32 %221, 8388608
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  call void @arm_heavy_mb() #7
  %223 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %186, align 4
  %225 = ptrtoint ptr %id.i61.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %id.i61.i, align 4
  %mul64.i.i = shl i32 %226, 12
  %add65.i.i = or i32 %mul64.i.i, 2076
  %add.ptr66.i.i = getelementptr i8, ptr %224, i32 %add65.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i.i, i32 %222) #7, !srcloc !113
  %227 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %186, align 4
  %229 = ptrtoint ptr %id.i61.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %id.i61.i, align 4
  %mul71.i.i = shl i32 %230, 12
  %add72.i.i = or i32 %mul71.i.i, 2100
  %add.ptr73.i.i = getelementptr i8, ptr %228, i32 %add72.i.i
  %231 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %232 = and i32 %231, 2147024895
  %233 = or i32 %232, -2147090432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  call void @arm_heavy_mb() #7
  %234 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %186, align 4
  %236 = ptrtoint ptr %id.i61.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %id.i61.i, align 4
  %mul83.i.i = shl i32 %237, 12
  %add84.i.i = or i32 %mul83.i.i, 2100
  %add.ptr85.i.i = getelementptr i8, ptr %235, i32 %add84.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i.i, i32 %233) #7, !srcloc !113
  %238 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %186, align 4
  %240 = ptrtoint ptr %id.i61.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %id.i61.i, align 4
  %mul90.i.i = shl i32 %241, 12
  %add91.i.i = or i32 %mul90.i.i, 2104
  %add.ptr92.i.i = getelementptr i8, ptr %239, i32 %add91.i.i
  %242 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr92.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  %243 = and i32 %242, -1057226753
  %244 = or i32 %243, 151257088
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  call void @arm_heavy_mb() #7
  %245 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %186, align 4
  %247 = ptrtoint ptr %id.i61.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %id.i61.i, align 4
  %mul103.i.i = shl i32 %248, 12
  %add104.i.i = or i32 %mul103.i.i, 2104
  %add.ptr105.i.i = getelementptr i8, ptr %246, i32 %add104.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105.i.i, i32 %244) #7, !srcloc !113
  %249 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %186, align 4
  %251 = ptrtoint ptr %id.i61.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %id.i61.i, align 4
  %mul110.i.i = shl i32 %252, 12
  %add111.i.i = or i32 %mul110.i.i, 2088
  %add.ptr112.i.i = getelementptr i8, ptr %250, i32 %add111.i.i
  %253 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr112.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  %254 = and i32 %253, -12582913
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  call void @arm_heavy_mb() #7
  %255 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %186, align 4
  %257 = ptrtoint ptr %id.i61.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %id.i61.i, align 4
  %mul122.i.i = shl i32 %258, 12
  %add123.i.i = or i32 %mul122.i.i, 2088
  %add.ptr124.i.i = getelementptr i8, ptr %256, i32 %add123.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124.i.i, i32 %254) #7, !srcloc !113
  %259 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %186, align 4
  %261 = ptrtoint ptr %id.i61.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %id.i61.i, align 4
  %mul129.i.i = shl i32 %262, 12
  %add130.i.i = or i32 %mul129.i.i, 3140
  %add.ptr131.i.i = getelementptr i8, ptr %260, i32 %add130.i.i
  %263 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  %264 = and i32 %263, -196609
  %265 = or i32 %264, 65536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  call void @arm_heavy_mb() #7
  %266 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %186, align 4
  %268 = ptrtoint ptr %id.i61.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %id.i61.i, align 4
  %mul142.i.i = shl i32 %269, 12
  %add143.i.i = or i32 %mul142.i.i, 3140
  %add.ptr144.i.i = getelementptr i8, ptr %267, i32 %add143.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144.i.i, i32 %265) #7, !srcloc !113
  %call145.i.i = call fastcc i32 @mvebu_comphy_init_plls(ptr noundef %184) #7
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %if.end.i
  %270 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %driver_data.i.i, align 4
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %271, align 4
  %call2.i77.i = call fastcc i32 @mvebu_comphy_ethernet_init_reset(ptr noundef %271) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i77.i)
  %tobool.not.i78.i = icmp eq i32 %call2.i77.i, 0
  br i1 %tobool.not.i78.i, label %if.end.i119.i, label %sw.bb23.i.sw.epilog.i_crit_edge

sw.bb23.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end.i119.i:                                    ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #9
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %273, align 4
  %id.i79.i = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %271, i32 0, i32 1
  %276 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %id.i79.i, align 4
  %mul.i80.i = shl i32 %277, 12
  %add.i81.i = or i32 %mul.i80.i, 2368
  %add.ptr.i82.i = getelementptr i8, ptr %275, i32 %add.i81.i
  %278 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  %279 = or i32 %278, 1572864
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  call void @arm_heavy_mb() #7
  %280 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %273, align 4
  %282 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %id.i79.i, align 4
  %mul7.i83.i = shl i32 %283, 12
  %add8.i84.i = or i32 %mul7.i83.i, 2368
  %add.ptr9.i85.i = getelementptr i8, ptr %281, i32 %add8.i84.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i85.i, i32 %279) #7, !srcloc !113
  %284 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %273, align 4
  %286 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %id.i79.i, align 4
  %mul14.i86.i = shl i32 %287, 12
  %add15.i87.i = or i32 %mul14.i86.i, 2436
  %add.ptr16.i88.i = getelementptr i8, ptr %285, i32 %add15.i87.i
  %288 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i88.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %289 = or i32 %288, 67108864
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  call void @arm_heavy_mb() #7
  %290 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %273, align 4
  %292 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %id.i79.i, align 4
  %mul26.i89.i = shl i32 %293, 12
  %add27.i90.i = or i32 %mul26.i89.i, 2436
  %add.ptr28.i91.i = getelementptr i8, ptr %291, i32 %add27.i90.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i91.i, i32 %289) #7, !srcloc !113
  %294 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %273, align 4
  %296 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %id.i79.i, align 4
  %mul33.i92.i = shl i32 %297, 12
  %add34.i93.i = or i32 %mul33.i92.i, 2388
  %add.ptr35.i94.i = getelementptr i8, ptr %295, i32 %add34.i93.i
  %298 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i94.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %299 = or i32 %298, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  call void @arm_heavy_mb() #7
  %300 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %273, align 4
  %302 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %id.i79.i, align 4
  %mul45.i95.i = shl i32 %303, 12
  %add46.i96.i = or i32 %mul45.i95.i, 2388
  %add.ptr47.i97.i = getelementptr i8, ptr %301, i32 %add46.i96.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i97.i, i32 %299) #7, !srcloc !113
  %304 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %273, align 4
  %306 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %id.i79.i, align 4
  %mul52.i98.i = shl i32 %307, 12
  %add53.i99.i = or i32 %mul52.i98.i, 8
  %add.ptr54.i100.i = getelementptr i8, ptr %305, i32 %add53.i99.i
  %308 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54.i100.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %309 = or i32 %308, 268435456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  call void @arm_heavy_mb() #7
  %310 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %273, align 4
  %312 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %id.i79.i, align 4
  %mul64.i101.i = shl i32 %313, 12
  %add65.i102.i = or i32 %mul64.i101.i, 8
  %add.ptr66.i103.i = getelementptr i8, ptr %311, i32 %add65.i102.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i103.i, i32 %309) #7, !srcloc !113
  %314 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %273, align 4
  %316 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %id.i79.i, align 4
  %mul71.i104.i = shl i32 %317, 12
  %add72.i105.i = or i32 %mul71.i104.i, 2076
  %add.ptr73.i106.i = getelementptr i8, ptr %315, i32 %add72.i105.i
  %318 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73.i106.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  %319 = or i32 %318, 8388608
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  call void @arm_heavy_mb() #7
  %320 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %273, align 4
  %322 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %id.i79.i, align 4
  %mul83.i107.i = shl i32 %323, 12
  %add84.i108.i = or i32 %mul83.i107.i, 2076
  %add.ptr85.i109.i = getelementptr i8, ptr %321, i32 %add84.i108.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i109.i, i32 %319) #7, !srcloc !113
  %324 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %273, align 4
  %326 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %id.i79.i, align 4
  %mul90.i110.i = shl i32 %327, 12
  %add91.i111.i = or i32 %mul90.i110.i, 2100
  %add.ptr92.i112.i = getelementptr i8, ptr %325, i32 %add91.i111.i
  %328 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr92.i112.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %329 = and i32 %328, 1106837503
  %330 = or i32 %329, 939982848
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  call void @arm_heavy_mb() #7
  %331 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %273, align 4
  %333 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %id.i79.i, align 4
  %mul102.i.i = shl i32 %334, 12
  %add103.i.i = or i32 %mul102.i.i, 2100
  %add.ptr104.i.i = getelementptr i8, ptr %332, i32 %add103.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104.i.i, i32 %330) #7, !srcloc !113
  %335 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %273, align 4
  %337 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %id.i79.i, align 4
  %mul109.i.i = shl i32 %338, 12
  %add110.i.i = or i32 %mul109.i.i, 2292
  %add.ptr111.i.i = getelementptr i8, ptr %336, i32 %add110.i.i
  %339 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  %340 = and i32 %339, -520093697
  %341 = or i32 %340, 268435456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  call void @arm_heavy_mb() #7
  %342 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %273, align 4
  %344 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %id.i79.i, align 4
  %mul122.i113.i = shl i32 %345, 12
  %add123.i114.i = or i32 %mul122.i113.i, 2292
  %add.ptr124.i115.i = getelementptr i8, ptr %343, i32 %add123.i114.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124.i115.i, i32 %341) #7, !srcloc !113
  %346 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %273, align 4
  %348 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %id.i79.i, align 4
  %mul129.i116.i = shl i32 %349, 12
  %add130.i117.i = or i32 %mul129.i116.i, 2420
  %add.ptr131.i118.i = getelementptr i8, ptr %347, i32 %add130.i117.i
  %350 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131.i118.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %351 = or i32 %350, 1627127808
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  call void @arm_heavy_mb() #7
  %352 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %273, align 4
  %354 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %id.i79.i, align 4
  %mul141.i.i = shl i32 %355, 12
  %add142.i.i = or i32 %mul141.i.i, 2420
  %add.ptr143.i.i = getelementptr i8, ptr %353, i32 %add142.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143.i.i, i32 %351) #7, !srcloc !113
  %356 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %273, align 4
  %358 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %id.i79.i, align 4
  %mul148.i.i = shl i32 %359, 12
  %add149.i.i = or i32 %mul148.i.i, 2060
  %add.ptr150.i.i = getelementptr i8, ptr %357, i32 %add149.i.i
  %360 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %361 = and i32 %360, -16515073
  %362 = or i32 %361, 12058624
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  call void @arm_heavy_mb() #7
  %363 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %273, align 4
  %365 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %id.i79.i, align 4
  %mul161.i.i = shl i32 %366, 12
  %add162.i.i = or i32 %mul161.i.i, 2060
  %add.ptr163.i.i = getelementptr i8, ptr %364, i32 %add162.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163.i.i, i32 %362) #7, !srcloc !113
  %367 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %273, align 4
  %369 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %id.i79.i, align 4
  %mul168.i.i = shl i32 %370, 12
  %add169.i.i = or i32 %mul168.i.i, 3384
  %add.ptr170.i.i = getelementptr i8, ptr %368, i32 %add169.i.i
  %371 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr170.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  %372 = and i32 %371, -251658241
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  call void @arm_heavy_mb() #7
  %373 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %273, align 4
  %375 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %id.i79.i, align 4
  %mul180.i.i = shl i32 %376, 12
  %add181.i.i = or i32 %mul180.i.i, 3384
  %add.ptr182.i.i = getelementptr i8, ptr %374, i32 %add181.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr182.i.i, i32 %372) #7, !srcloc !113
  %377 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %273, align 4
  %379 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %id.i79.i, align 4
  %mul187.i.i = shl i32 %380, 12
  %add188.i.i = or i32 %mul187.i.i, 2104
  %add.ptr189.i.i = getelementptr i8, ptr %378, i32 %add188.i.i
  %381 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %382 = and i32 %381, 14745599
  %383 = or i32 %382, 303890432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  call void @arm_heavy_mb() #7
  %384 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %273, align 4
  %386 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %id.i79.i, align 4
  %mul200.i.i = shl i32 %387, 12
  %add201.i.i = or i32 %mul200.i.i, 2104
  %add.ptr202.i.i = getelementptr i8, ptr %385, i32 %add201.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202.i.i, i32 %383) #7, !srcloc !113
  %388 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %273, align 4
  %390 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %id.i79.i, align 4
  %mul207.i.i = shl i32 %391, 12
  %add208.i.i = or i32 %mul207.i.i, 2088
  %add.ptr209.i.i = getelementptr i8, ptr %389, i32 %add208.i.i
  %392 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr209.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  %393 = and i32 %392, -12582913
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  call void @arm_heavy_mb() #7
  %394 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %273, align 4
  %396 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %id.i79.i, align 4
  %mul219.i.i = shl i32 %397, 12
  %add220.i.i = or i32 %mul219.i.i, 2088
  %add.ptr221.i.i = getelementptr i8, ptr %395, i32 %add220.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr221.i.i, i32 %393) #7, !srcloc !113
  %398 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %273, align 4
  %400 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %id.i79.i, align 4
  %mul226.i.i = shl i32 %401, 12
  %add227.i.i = or i32 %mul226.i.i, 3140
  %add.ptr228.i.i = getelementptr i8, ptr %399, i32 %add227.i.i
  %402 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr228.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  %403 = and i32 %402, -196609
  %404 = or i32 %403, 65536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  call void @arm_heavy_mb() #7
  %405 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %273, align 4
  %407 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %id.i79.i, align 4
  %mul239.i.i = shl i32 %408, 12
  %add240.i.i = or i32 %mul239.i.i, 3140
  %add.ptr241.i.i = getelementptr i8, ptr %406, i32 %add240.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr241.i.i, i32 %404) #7, !srcloc !113
  %409 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %273, align 4
  %411 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %id.i79.i, align 4
  %mul246.i.i = shl i32 %412, 12
  %add247.i.i = or i32 %mul246.i.i, 3136
  %add.ptr248.i.i = getelementptr i8, ptr %410, i32 %add247.i.i
  %413 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr248.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  %414 = or i32 %413, 131072
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  call void @arm_heavy_mb() #7
  %415 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %273, align 4
  %417 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %id.i79.i, align 4
  %mul258.i.i = shl i32 %418, 12
  %add259.i.i = or i32 %mul258.i.i, 3136
  %add.ptr260.i.i = getelementptr i8, ptr %416, i32 %add259.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr260.i.i, i32 %414) #7, !srcloc !113
  %419 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %273, align 4
  %421 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %id.i79.i, align 4
  %mul265.i.i = shl i32 %422, 12
  %add266.i.i = or i32 %mul265.i.i, 2724
  %add.ptr267.i.i = getelementptr i8, ptr %420, i32 %add266.i.i
  %423 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr267.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  %424 = and i32 %423, 16580607
  %425 = or i32 %424, 318767104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  call void @arm_heavy_mb() #7
  %426 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %273, align 4
  %428 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %id.i79.i, align 4
  %mul278.i.i = shl i32 %429, 12
  %add279.i.i = or i32 %mul278.i.i, 2724
  %add.ptr280.i.i = getelementptr i8, ptr %427, i32 %add279.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr280.i.i, i32 %425) #7, !srcloc !113
  %430 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %273, align 4
  %432 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %id.i79.i, align 4
  %mul285.i.i = shl i32 %433, 12
  %add286.i.i = or i32 %mul285.i.i, 2664
  %add.ptr287.i.i = getelementptr i8, ptr %431, i32 %add286.i.i
  %434 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr287.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  %435 = or i32 %434, 8388608
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  call void @arm_heavy_mb() #7
  %436 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %273, align 4
  %438 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %id.i79.i, align 4
  %mul297.i.i = shl i32 %439, 12
  %add298.i.i = or i32 %mul297.i.i, 2664
  %add.ptr299.i.i = getelementptr i8, ptr %437, i32 %add298.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr299.i.i, i32 %435) #7, !srcloc !113
  %440 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %273, align 4
  %442 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %id.i79.i, align 4
  %mul304.i.i = shl i32 %443, 12
  %add305.i.i = or i32 %mul304.i.i, 3176
  %add.ptr306.i.i = getelementptr i8, ptr %441, i32 %add305.i.i
  %444 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr306.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  %445 = and i32 %444, -251658241
  %446 = or i32 %445, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  call void @arm_heavy_mb() #7
  %447 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %273, align 4
  %449 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %id.i79.i, align 4
  %mul317.i.i = shl i32 %450, 12
  %add318.i.i = or i32 %mul317.i.i, 3176
  %add.ptr319.i.i = getelementptr i8, ptr %448, i32 %add318.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr319.i.i, i32 %446) #7, !srcloc !113
  %451 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %273, align 4
  %453 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %id.i79.i, align 4
  %mul324.i.i = shl i32 %454, 12
  %add325.i.i = or i32 %mul324.i.i, 2592
  %add.ptr326.i.i = getelementptr i8, ptr %452, i32 %add325.i.i
  %455 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr326.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  %456 = and i32 %455, -1048577
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  call void @arm_heavy_mb() #7
  %457 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %273, align 4
  %459 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %id.i79.i, align 4
  %mul336.i.i = shl i32 %460, 12
  %add337.i.i = or i32 %mul336.i.i, 2592
  %add.ptr338.i.i = getelementptr i8, ptr %458, i32 %add337.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr338.i.i, i32 %456) #7, !srcloc !113
  %461 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %273, align 4
  %463 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %id.i79.i, align 4
  %mul343.i.i = shl i32 %464, 12
  %add344.i.i = or i32 %mul343.i.i, 2844
  %add.ptr345.i.i = getelementptr i8, ptr %462, i32 %add344.i.i
  %465 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr345.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  %466 = or i32 %465, 196608
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  call void @arm_heavy_mb() #7
  %467 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %273, align 4
  %469 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %id.i79.i, align 4
  %mul355.i.i = shl i32 %470, 12
  %add356.i.i = or i32 %mul355.i.i, 2844
  %add.ptr357.i.i = getelementptr i8, ptr %468, i32 %add356.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr357.i.i, i32 %466) #7, !srcloc !113
  %471 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %273, align 4
  %473 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %id.i79.i, align 4
  %mul362.i.i = shl i32 %474, 12
  %add363.i.i = or i32 %mul362.i.i, 2580
  %add.ptr364.i.i = getelementptr i8, ptr %472, i32 %add363.i.i
  %475 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr364.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %476 = and i32 %475, 2130771967
  %477 = or i32 %476, 4456448
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  call void @arm_heavy_mb() #7
  %478 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %273, align 4
  %480 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %id.i79.i, align 4
  %mul375.i.i = shl i32 %481, 12
  %add376.i.i = or i32 %mul375.i.i, 2580
  %add.ptr377.i.i = getelementptr i8, ptr %479, i32 %add376.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr377.i.i, i32 %477) #7, !srcloc !113
  %482 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %273, align 4
  %484 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %id.i79.i, align 4
  %mul382.i.i = shl i32 %485, 12
  %add383.i.i = or i32 %mul382.i.i, 2600
  %add.ptr384.i.i = getelementptr i8, ptr %483, i32 %add383.i.i
  %486 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr384.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  %487 = or i32 %486, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  call void @arm_heavy_mb() #7
  %488 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %273, align 4
  %490 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %id.i79.i, align 4
  %mul394.i.i = shl i32 %491, 12
  %add395.i.i = or i32 %mul394.i.i, 2600
  %add.ptr396.i.i = getelementptr i8, ptr %489, i32 %add395.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr396.i.i, i32 %487) #7, !srcloc !113
  %492 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %273, align 4
  %494 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %id.i79.i, align 4
  %mul401.i.i = shl i32 %495, 12
  %add402.i.i = or i32 %mul401.i.i, 2312
  %add.ptr403.i.i = getelementptr i8, ptr %493, i32 %add402.i.i
  %496 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr403.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %497 = or i32 %496, 8388608
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  call void @arm_heavy_mb() #7
  %498 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %273, align 4
  %500 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %id.i79.i, align 4
  %mul413.i.i = shl i32 %501, 12
  %add414.i.i = or i32 %mul413.i.i, 2312
  %add.ptr415.i.i = getelementptr i8, ptr %499, i32 %add414.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr415.i.i, i32 %497) #7, !srcloc !113
  %502 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %273, align 4
  %504 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %id.i79.i, align 4
  %mul420.i.i = shl i32 %505, 12
  %add421.i.i = or i32 %mul420.i.i, 2412
  %add.ptr422.i.i = getelementptr i8, ptr %503, i32 %add421.i.i
  %506 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr422.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  %507 = or i32 %506, 1245184
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  call void @arm_heavy_mb() #7
  %508 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %273, align 4
  %510 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %id.i79.i, align 4
  %mul433.i.i = shl i32 %511, 12
  %add434.i.i = or i32 %mul433.i.i, 2412
  %add.ptr435.i.i = getelementptr i8, ptr %509, i32 %add434.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr435.i.i, i32 %507) #7, !srcloc !113
  %512 = and i32 %507, -1048577
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  call void @arm_heavy_mb() #7
  %513 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %273, align 4
  %515 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %id.i79.i, align 4
  %mul442.i.i = shl i32 %516, 12
  %add443.i.i = or i32 %mul442.i.i, 2412
  %add.ptr444.i.i = getelementptr i8, ptr %514, i32 %add443.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr444.i.i, i32 %512) #7, !srcloc !113
  %517 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %273, align 4
  %519 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %id.i79.i, align 4
  %mul449.i.i = shl i32 %520, 12
  %add450.i.i = or i32 %mul449.i.i, 2324
  %add.ptr451.i.i = getelementptr i8, ptr %518, i32 %add450.i.i
  %521 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr451.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  %522 = and i32 %521, 536674303
  %523 = or i32 %522, 1073938432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  call void @arm_heavy_mb() #7
  %524 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %273, align 4
  %526 = ptrtoint ptr %id.i79.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %id.i79.i, align 4
  %mul462.i.i = shl i32 %527, 12
  %add463.i.i = or i32 %mul462.i.i, 2324
  %add.ptr464.i.i = getelementptr i8, ptr %525, i32 %add463.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr464.i.i, i32 %523) #7, !srcloc !113
  %call465.i.i = call fastcc i32 @mvebu_comphy_init_plls(ptr noundef %271) #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end.i119.i, %sw.bb23.i.sw.epilog.i_crit_edge, %if.end.i74.i, %sw.bb21.i.sw.epilog.i_crit_edge, %mvebu_comphy_set_mode_sgmii.exit.i
  %ret.0.i = phi i32 [ %retval.0.i.i286, %mvebu_comphy_set_mode_sgmii.exit.i ], [ %call145.i.i, %if.end.i74.i ], [ %call2.i59.i, %sw.bb21.i.sw.epilog.i_crit_edge ], [ %call465.i.i, %if.end.i119.i ], [ %call2.i77.i, %sw.bb23.i.sw.epilog.i_crit_edge ]
  %528 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %91, align 4
  %530 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %id.i, align 4
  %mul26.i = shl i32 %531, 12
  %add.i = or i32 %mul26.i, 4
  %add.ptr.i = getelementptr i8, ptr %529, i32 %add.i
  %532 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  %533 = or i32 %532, 1073741824
  %534 = call i32 @llvm.bswap.i32(i32 %533) #7
  %535 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %535)
  store i32 %534, ptr %val.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  call void @arm_heavy_mb() #7
  %536 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %val.i, align 4
  %538 = call i32 @llvm.bswap.i32(i32 %537) #7
  %539 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %91, align 4
  %541 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %id.i, align 4
  %mul32.i = shl i32 %542, 12
  %add33.i = or i32 %mul32.i, 4
  %add.ptr34.i = getelementptr i8, ptr %540, i32 %add33.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %538) #7, !srcloc !113
  br label %mvebu_comphy_power_on_legacy.exit

mvebu_comphy_power_on_legacy.exit:                ; preds = %sw.epilog.i, %if.end.i.mvebu_comphy_power_on_legacy.exit_crit_edge, %mvebu_comphy_get_mux.exit.i.mvebu_comphy_power_on_legacy.exit_crit_edge, %for.inc.i.i.i.mvebu_comphy_power_on_legacy.exit_crit_edge
  %retval.0.i287 = phi i32 [ %ret.0.i, %sw.epilog.i ], [ -524, %mvebu_comphy_get_mux.exit.i.mvebu_comphy_power_on_legacy.exit_crit_edge ], [ -524, %if.end.i.mvebu_comphy_power_on_legacy.exit_crit_edge ], [ -524, %for.inc.i.i.i.mvebu_comphy_power_on_legacy.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

cleanup:                                          ; preds = %mvebu_comphy_power_on_legacy.exit, %sw.epilog195.cleanup_crit_edge, %do.end192, %do.end90
  %retval.0 = phi i32 [ %retval.0.i287, %mvebu_comphy_power_on_legacy.exit ], [ -524, %do.end192 ], [ -524, %do.end90 ], [ %switch.select4.i, %sw.epilog195.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_comphy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %res.i = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cp_phys = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %cp_phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cp_phys, align 4
  %id = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i) #7
  %8 = call ptr @memset(ptr %res.i, i32 255, i32 16)
  call void @__arm_smccc_smc(i32 noundef -2113929214, i32 noundef %5, i32 noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i, ptr noundef null) #7
  %9 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %res.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %switch.selectcmp3.i = icmp eq i32 %10, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #7
  br i1 %switch.selectcmp3.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %id.i = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %18, 12
  %add.i = or i32 %mul.i, 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %add.i
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  %20 = and i32 %19, -1744830465
  %21 = call i32 @llvm.bswap.i32(i32 %20) #7
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %val.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %14, align 4
  %25 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id.i, align 4
  %mul6.i = shl i32 %26, 12
  %add7.i = or i32 %mul6.i, 4
  %add.ptr8.i = getelementptr i8, ptr %24, i32 %add7.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %20) #7, !srcloc !113
  %regmap.i = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %14, i32 0, i32 1
  %27 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i, align 4
  %call9.i = call i32 @regmap_read(ptr noundef %28, i32 noundef 4416, ptr noundef nonnull %val.i) #7
  %29 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id.i, align 4
  %mul11.i = shl i32 %30, 2
  %shl.i = shl i32 15, %mul11.i
  %neg.i = xor i32 %shl.i, -1
  %31 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i, align 4
  %and12.i = and i32 %32, %neg.i
  store i32 %and12.i, ptr %val.i, align 4
  %33 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i, align 4
  %call14.i = call i32 @regmap_write(ptr noundef %34, i32 noundef 4416, i32 noundef %and12.i) #7
  %35 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i, align 4
  %call16.i = call i32 @regmap_read(ptr noundef %36, i32 noundef 4420, ptr noundef nonnull %val.i) #7
  %37 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id.i, align 4
  %mul18.i = shl i32 %38, 2
  %shl19.i = shl i32 15, %mul18.i
  %neg20.i = xor i32 %shl19.i, -1
  %39 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i, align 4
  %and21.i = and i32 %40, %neg20.i
  store i32 %and21.i, ptr %val.i, align 4
  %41 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i, align 4
  %call23.i = call i32 @regmap_write(ptr noundef %42, i32 noundef 4420, i32 noundef %and21.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_comphy_set_mode(ptr nocapture noundef readonly %phy, i32 noundef %mode, i32 noundef %submode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %submode)
  %cmp = icmp eq i32 %submode, 21
  %spec.store.select = select i1 %cmp, i32 4, i32 %submode
  %id = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %port = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %mode)
  %cmp.i.i = icmp eq i32 %mode, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp2.i.i = icmp eq i32 %mode, 0
  br i1 %cmp2.i.i, label %entry.if.end4_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.041.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [41 x %struct.mvebu_comphy_conf], ptr @mvebu_comphy_cp110_modes, i32 0, i32 %i.041.i.i
  %lane4.i.i = getelementptr [41 x %struct.mvebu_comphy_conf], ptr @mvebu_comphy_cp110_modes, i32 0, i32 %i.041.i.i, i32 2
  %6 = ptrtoint ptr %lane4.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lane4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp5.i.i = icmp eq i32 %7, %3
  br i1 %cmp5.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %port6.i.i = getelementptr [41 x %struct.mvebu_comphy_conf], ptr @mvebu_comphy_cp110_modes, i32 0, i32 %i.041.i.i, i32 3
  %8 = ptrtoint ptr %port6.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp7.i.i = icmp eq i32 %9, %5
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %mode)
  %cmp10.i.i = icmp eq i32 %11, %mode
  br i1 %cmp10.i.i, label %land.lhs.true11.i.i, label %land.lhs.true8.i.i.for.inc.i.i_crit_edge

land.lhs.true8.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true8.i.i
  %submode12.i.i = getelementptr [41 x %struct.mvebu_comphy_conf], ptr @mvebu_comphy_cp110_modes, i32 0, i32 %i.041.i.i, i32 1
  %12 = ptrtoint ptr %submode12.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %submode12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %spec.store.select)
  %cmp13.i.i = icmp eq i32 %13, %spec.store.select
  %brmerge.i.i = or i1 %cmp.i.i, %cmp13.i.i
  br i1 %brmerge.i.i, label %land.lhs.true11.i.i.if.end4_crit_edge, label %land.lhs.true11.i.i.for.inc.i.i_crit_edge

land.lhs.true11.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true11.i.i.if.end4_crit_edge:            ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.i.i:                                      ; preds = %land.lhs.true11.i.i.for.inc.i.i_crit_edge, %land.lhs.true8.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.041.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 41
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true11.i.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %mode5 = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %mode5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mode, ptr %mode5, align 4
  %submode6 = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool.not = icmp eq i32 %spec.store.select, 0
  %or.cond = and i1 %cmp.i.i, %tobool.not
  %spec.store.select21 = select i1 %or.cond, i32 1, i32 %spec.store.select
  %15 = ptrtoint ptr %submode6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.store.select21, ptr %submode6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %for.inc.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %for.inc.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvebu_comphy_ethernet_init_reset(ptr nocapture noundef readonly %lane) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lane, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !107
  %regmap = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %id = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %lane, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %mul = mul i32 %6, 40
  %add = add i32 %mul, 4096
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %val) #7
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, -7
  %or = or i32 %and, 2
  store i32 %or, ptr %val, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %mul4 = mul i32 %12, 40
  %add5 = add i32 %mul4, 4096
  %call6 = call i32 @regmap_write(ptr noundef %10, i32 noundef %add5, i32 noundef %or) #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %mul8 = shl i32 %16, 12
  %add.ptr = getelementptr i8, ptr %14, i32 %mul8
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  %18 = and i32 %17, 86048767
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val, align 4
  %submode = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %lane, i32 0, i32 3
  %21 = ptrtoint ptr %submode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %submode, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %22, label %do.end [
    i32 26, label %sw.bb
    i32 24, label %sw.bb14
    i32 22, label %sw.bb16
    i32 4, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or13 = or i32 %19, 1904
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or13, ptr %val, align 4
  br label %do.body22

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or15 = or i32 %19, 34264
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or15, ptr %val, align 4
  br label %do.body22

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or17 = or i32 %19, 17472
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or17, ptr %val, align 4
  br label %do.body22

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or19 = or i32 %19, 17200
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or19, ptr %val, align 4
  br label %do.body22

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.38, i32 noundef %22, i32 noundef %31) #10
  br label %cleanup

do.body22:                                        ; preds = %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %37 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id, align 4
  %mul27 = shl i32 %38, 12
  %add.ptr29 = getelementptr i8, ptr %36, i32 %mul27
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %34) #7, !srcloc !113
  %39 = ptrtoint ptr %submode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %submode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %40)
  %cmp = icmp eq i32 %40, 24
  br i1 %cmp, label %if.then, label %do.body22.if.end_crit_edge

do.body22.if.end_crit_edge:                       ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %do.body22
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call32 = call i32 @regmap_read(ptr noundef %42, i32 noundef 4424, ptr noundef nonnull %val) #7
  %43 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %44, label %do.end41 [
    i32 2, label %if.then.sw.bb34_crit_edge
    i32 3, label %if.then.sw.bb34_crit_edge203
    i32 4, label %if.then.sw.bb36_crit_edge
    i32 5, label %if.then.sw.bb36_crit_edge204
  ]

if.then.sw.bb36_crit_edge204:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

if.then.sw.bb36_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

if.then.sw.bb34_crit_edge203:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb34

if.then.sw.bb34_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb34

sw.bb34:                                          ; preds = %if.then.sw.bb34_crit_edge, %if.then.sw.bb34_crit_edge203
  %46 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val, align 4
  %or35 = or i32 %47, 134217728
  br label %sw.epilog44

sw.bb36:                                          ; preds = %if.then.sw.bb36_crit_edge, %if.then.sw.bb36_crit_edge204
  %48 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val, align 4
  %or37 = or i32 %49, 67108864
  br label %sw.epilog44

do.end41:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev42 = getelementptr inbounds %struct.mvebu_comphy_priv, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev42, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.41, i32 noundef %44) #10
  br label %cleanup

sw.epilog44:                                      ; preds = %sw.bb36, %sw.bb34
  %storemerge = phi i32 [ %or37, %sw.bb36 ], [ %or35, %sw.bb34 ]
  %52 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %storemerge, ptr %val, align 4
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call46 = call i32 @regmap_write(ptr noundef %54, i32 noundef 4424, i32 noundef %storemerge) #7
  br label %if.end

if.end:                                           ; preds = %sw.epilog44, %do.body22.if.end_crit_edge
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %57 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %id, align 4
  %mul51 = shl i32 %58, 12
  %add52 = or i32 %mul51, 4
  %add.ptr53 = getelementptr i8, ptr %56, i32 %add52
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %60 = and i32 %59, -1744830465
  %61 = call i32 @llvm.bswap.i32(i32 %60)
  %62 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  call void @arm_heavy_mb() #7
  %63 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %64)
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %68 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %id, align 4
  %mul63 = shl i32 %69, 12
  %add64 = or i32 %mul63, 4
  %add.ptr65 = getelementptr i8, ptr %67, i32 %add64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %65) #7, !srcloc !113
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %72 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %id, align 4
  %mul70 = shl i32 %73, 12
  %add71 = or i32 %mul70, 4
  %add.ptr72 = getelementptr i8, ptr %71, i32 %add71
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  %75 = or i32 %74, 671088640
  %76 = call i32 @llvm.bswap.i32(i32 %75)
  %77 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  call void @arm_heavy_mb() #7
  %78 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79)
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %83 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %id, align 4
  %mul82 = shl i32 %84, 12
  %add83 = or i32 %mul82, 4
  %add.ptr84 = getelementptr i8, ptr %82, i32 %add83
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %80) #7, !srcloc !113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %85(i32 noundef 214748000) #7
  %86 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap, align 4
  %88 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %id, align 4
  %mul87 = mul i32 %89, 40
  %add88 = add i32 %mul87, 4116
  %call89 = call i32 @regmap_read(ptr noundef %87, i32 noundef %add88, ptr noundef nonnull %val) #7
  %90 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %val, align 4
  %and90 = and i32 %91, -262145
  store i32 %and90, ptr %val, align 4
  %92 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap, align 4
  %94 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %id, align 4
  %mul93 = mul i32 %95, 40
  %add94 = add i32 %mul93, 4116
  %call95 = call i32 @regmap_write(ptr noundef %93, i32 noundef %add94, i32 noundef %and90) #7
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  %98 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %id, align 4
  %mul100 = shl i32 %99, 12
  %add101 = or i32 %mul100, 2364
  %add.ptr102 = getelementptr i8, ptr %97, i32 %add101
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  %101 = and i32 %100, -262145
  %102 = call i32 @llvm.bswap.i32(i32 %101)
  %103 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %val, align 4
  %104 = ptrtoint ptr %submode to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %submode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %105)
  %cmp108 = icmp eq i32 %105, 26
  br i1 %cmp108, label %if.then109, label %if.end.do.body112_crit_edge

if.end.do.body112_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body112

if.then109:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or110 = or i32 %102, 32
  %106 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %or110, ptr %val, align 4
  br label %do.body112

do.body112:                                       ; preds = %if.then109, %if.end.do.body112_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  call void @arm_heavy_mb() #7
  %107 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %val, align 4
  %109 = call i32 @llvm.bswap.i32(i32 %108)
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  %112 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %id, align 4
  %mul117 = shl i32 %113, 12
  %add118 = or i32 %mul117, 2364
  %add.ptr119 = getelementptr i8, ptr %111, i32 %add118
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 %109) #7, !srcloc !113
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 4
  %116 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %id, align 4
  %mul124 = shl i32 %117, 12
  %add125 = or i32 %mul124, 2052
  %add.ptr126 = getelementptr i8, ptr %115, i32 %add125
  %118 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr126) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %119 = and i32 %118, 16777215
  %120 = or i32 %119, -2130706432
  %121 = call i32 @llvm.bswap.i32(i32 %120)
  %122 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  call void @arm_heavy_mb() #7
  %123 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %val, align 4
  %125 = call i32 @llvm.bswap.i32(i32 %124)
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 4
  %128 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %id, align 4
  %mul137 = shl i32 %129, 12
  %add138 = or i32 %mul137, 2052
  %add.ptr139 = getelementptr i8, ptr %127, i32 %add138
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139, i32 %125) #7, !srcloc !113
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 4
  %132 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %id, align 4
  %mul144 = shl i32 %133, 12
  %add145 = or i32 %mul144, 2188
  %add.ptr146 = getelementptr i8, ptr %131, i32 %add145
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  %135 = and i32 %134, -234881025
  %136 = or i32 %135, 33554432
  %137 = call i32 @llvm.bswap.i32(i32 %136)
  %138 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  call void @arm_heavy_mb() #7
  %139 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %val, align 4
  %141 = call i32 @llvm.bswap.i32(i32 %140)
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %1, align 4
  %144 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %id, align 4
  %mul157 = shl i32 %145, 12
  %add158 = or i32 %mul157, 2188
  %add.ptr159 = getelementptr i8, ptr %143, i32 %add158
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159, i32 %141) #7, !srcloc !113
  br label %cleanup

cleanup:                                          ; preds = %do.body112, %do.end41, %do.end
  %retval.0 = phi i32 [ -524, %do.end ], [ -22, %do.end41 ], [ 0, %do.body112 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvebu_comphy_init_plls(ptr nocapture noundef readonly %lane) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lane, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %id = getelementptr inbounds %struct.mvebu_comphy_lane, ptr %lane, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mul = shl i32 %5, 12
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  %7 = or i32 %6, 35127296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %mul5 = shl i32 %11, 12
  %add.ptr7 = getelementptr i8, ptr %9, i32 %mul5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %7) #7, !srcloc !113
  %call8 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call8, 150000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 469) #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %mul23206 = shl i32 %15, 12
  %add24207 = or i32 %mul23206, 24
  %add.ptr25208 = getelementptr i8, ptr %13, i32 %add24207
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25208) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  %17 = and i32 %16, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not210 = icmp eq i32 %17, 0
  br i1 %tobool.not210, label %entry.land.lhs.true_crit_edge, label %entry.if.end57_crit_edge

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then48.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call32 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call32, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call32, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then48

if.then48:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %mul23 = shl i32 %21, 12
  %add24 = or i32 %mul23, 24
  %add.ptr25 = getelementptr i8, ptr %19, i32 %add24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  %23 = and i32 %22, 201326592
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %if.then48.land.lhs.true_crit_edge, label %if.then48.if.end57_crit_edge

if.then48.if.end57_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then48.land.lhs.true_crit_edge:                ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  %mul40 = shl i32 %27, 12
  %add41 = or i32 %mul40, 24
  %add.ptr42 = getelementptr i8, ptr %25, i32 %add41
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  %29 = and i32 %28, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool53.not = icmp eq i32 %29, 0
  br i1 %tobool53.not, label %for.end.cleanup_crit_edge, label %for.end.if.end57_crit_edge

for.end.if.end57_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57:                                         ; preds = %for.end.if.end57_crit_edge, %if.then48.if.end57_crit_edge, %entry.if.end57_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id, align 4
  %mul62 = shl i32 %33, 12
  %add63 = or i32 %mul62, 4
  %add.ptr64 = getelementptr i8, ptr %31, i32 %add63
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %35 = or i32 %34, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 4
  %mul74 = shl i32 %39, 12
  %add75 = or i32 %mul74, 4
  %add.ptr76 = getelementptr i8, ptr %37, i32 %add75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %35) #7, !srcloc !113
  %call80 = tail call i64 @ktime_get() #7
  %add.i198 = add i64 %call80, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 482) #7
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %42 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id, align 4
  %mul99211 = shl i32 %43, 12
  %add100212 = or i32 %mul99211, 24
  %add.ptr101213 = getelementptr i8, ptr %41, i32 %add100212
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101213) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  %45 = and i32 %44, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool106.not215 = icmp eq i32 %45, 0
  br i1 %tobool106.not215, label %if.end57.land.lhs.true110_crit_edge, label %if.end57.if.end139_crit_edge

if.end57.if.end139_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.end57.land.lhs.true110_crit_edge:              ; preds = %if.end57
  br label %land.lhs.true110

land.lhs.true110:                                 ; preds = %if.then127.land.lhs.true110_crit_edge, %if.end57.land.lhs.true110_crit_edge
  %call111 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call111, i64 %add.i198)
  %cmp3.i200 = icmp sgt i64 %call111, %add.i198
  br i1 %cmp3.i200, label %for.end131, label %if.then127

if.then127:                                       ; preds = %land.lhs.true110
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %48 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id, align 4
  %mul99 = shl i32 %49, 12
  %add100 = or i32 %mul99, 24
  %add.ptr101 = getelementptr i8, ptr %47, i32 %add100
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  %51 = and i32 %50, 268435456
  %tobool106.not = icmp eq i32 %51, 0
  br i1 %tobool106.not, label %if.then127.land.lhs.true110_crit_edge, label %if.then127.if.end139_crit_edge

if.then127.if.end139_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.then127.land.lhs.true110_crit_edge:            ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true110

for.end131:                                       ; preds = %land.lhs.true110
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %54 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id, align 4
  %mul119 = shl i32 %55, 12
  %add120 = or i32 %mul119, 24
  %add.ptr121 = getelementptr i8, ptr %53, i32 %add120
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr121) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %57 = and i32 %56, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool134.not = icmp eq i32 %57, 0
  br i1 %tobool134.not, label %for.end131.cleanup_crit_edge, label %for.end131.if.end139_crit_edge

for.end131.if.end139_crit_edge:                   ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

for.end131.cleanup_crit_edge:                     ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end139:                                        ; preds = %for.end131.if.end139_crit_edge, %if.then127.if.end139_crit_edge, %if.end57.if.end139_crit_edge
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %60 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %id, align 4
  %mul144 = shl i32 %61, 12
  %add145 = or i32 %mul144, 4
  %add.ptr146 = getelementptr i8, ptr %59, i32 %add145
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  %63 = and i32 %62, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %66 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %id, align 4
  %mul156 = shl i32 %67, 12
  %add157 = or i32 %mul156, 4
  %add.ptr158 = getelementptr i8, ptr %65, i32 %add157
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 %63) #7, !srcloc !113
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %for.end131.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end139 ], [ -110, %for.end.cleanup_crit_edge ], [ -110, %for.end131.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !90, !91, !92, !94, !95, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_phy_mvebu_cp110_comphy__334_1108_mvebu_comphy_driver_init6, !1, !"__initcall__kmod_phy_mvebu_cp110_comphy__334_1108_mvebu_comphy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 1108, i32 1}
!2 = !{ptr @__exitcall_mvebu_comphy_driver_exit, !1, !"__exitcall_mvebu_comphy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author335, !4, !"__UNIQUE_ID_author335", i1 false, i1 false}
!4 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 1110, i32 1}
!5 = !{ptr @__UNIQUE_ID_description336, !6, !"__UNIQUE_ID_description336", i1 false, i1 false}
!6 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 1111, i32 1}
!7 = !{ptr @__UNIQUE_ID_file337, !8, !"__UNIQUE_ID_file337", i1 false, i1 false}
!8 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 1112, i32 1}
!9 = !{ptr @__UNIQUE_ID_license338, !8, !"__UNIQUE_ID_license338", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 1104, i32 11}
!12 = !{ptr @mvebu_comphy_driver, !13, !"mvebu_comphy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 1101, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 1011, i32 7}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 1027, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mvebu_comphy_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mvebu_comphy_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 1041, i32 37}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 1043, i32 4}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mvebu_comphy_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @mvebu_comphy_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 1049, i32 4}
!33 = !{ptr @mvebu_comphy_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @mvebu_comphy_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 941, i32 48}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 949, i32 46}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 959, i32 42}
!41 = !{ptr @mvebu_comphy_ops, !42, !"mvebu_comphy_ops", i1 false, i1 false}
!42 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 911, i32 29}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 783, i32 4}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mvebu_comphy_power_on.__UNIQUE_ID_ddebug326, !44, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 788, i32 4}
!50 = !{ptr @mvebu_comphy_power_on.__UNIQUE_ID_ddebug327, !49, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 793, i32 4}
!53 = !{ptr @mvebu_comphy_power_on.__UNIQUE_ID_ddebug328, !52, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 798, i32 4}
!56 = !{ptr @mvebu_comphy_power_on.__UNIQUE_ID_ddebug329, !55, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 803, i32 4}
!59 = !{ptr @mvebu_comphy_power_on.__UNIQUE_ID_ddebug330, !58, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 808, i32 4}
!62 = !{ptr @mvebu_comphy_power_on._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mvebu_comphy_power_on._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 816, i32 3}
!66 = !{ptr @mvebu_comphy_power_on.__UNIQUE_ID_ddebug331, !65, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 820, i32 3}
!69 = !{ptr @mvebu_comphy_power_on.__UNIQUE_ID_ddebug332, !68, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 824, i32 3}
!72 = !{ptr @mvebu_comphy_power_on.__UNIQUE_ID_ddebug333, !71, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 830, i32 3}
!75 = !{ptr @mvebu_comphy_power_on._entry.29, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @mvebu_comphy_power_on._entry_ptr.31, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 840, i32 3}
!79 = !{ptr @mvebu_comphy_power_on._entry.32, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @mvebu_comphy_power_on._entry_ptr.34, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 843, i32 2}
!83 = !{ptr @mvebu_comphy_power_on._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @mvebu_comphy_power_on._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @mvebu_comphy_cp110_modes, !86, !"mvebu_comphy_cp110_modes", i1 false, i1 false}
!86 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 207, i32 39}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 377, i32 3}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mvebu_comphy_ethernet_init_reset._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @mvebu_comphy_ethernet_init_reset._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 399, i32 4}
!94 = !{ptr @mvebu_comphy_ethernet_init_reset._entry.40, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @mvebu_comphy_ethernet_init_reset._entry_ptr.42, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @mvebu_comphy_of_match_table, !97, !"mvebu_comphy_of_match_table", i1 false, i1 false}
!97 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-comphy.c", i32 1095, i32 34}
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
!108 = !{!"branch_weights", i32 1, i32 2000}
!109 = !{i64 2148784447, i64 2148784452, i64 2148784465, i64 2148784509, i64 2148784543, i64 2148784564}
!110 = !{i64 2083684}
!111 = !{i64 2156364151}
!112 = !{i64 2156364592}
!113 = !{i64 2083266}
!114 = !{i64 2156365420}
!115 = !{i64 2156365775}
!116 = !{i64 2156366829}
!117 = !{i64 2156367132}
!118 = !{i64 2156367960}
!119 = !{i64 2156368401}
!120 = !{i64 2156369229}
!121 = !{i64 2156369584}
!122 = !{i64 2156370402}
!123 = !{i64 2156370753}
!124 = !{i64 2156371579}
!125 = !{i64 2156371936}
!126 = !{i64 2156372764}
!127 = !{i64 2156373067}
!128 = !{i64 2156373895}
!129 = !{i64 2156374312}
!130 = !{i64 2156375140}
!131 = !{i64 2156375581}
!132 = !{i64 2156376409}
!133 = !{i64 2156376712}
!134 = !{i64 2156377540}
!135 = !{i64 2156377981}
!136 = !{i64 2156378809}
!137 = !{i64 2156379164}
!138 = !{i64 2156379992}
!139 = !{i64 2156380347}
!140 = !{i64 2156381165}
!141 = !{i64 2156381516}
!142 = !{i64 2156382342}
!143 = !{i64 2156382699}
!144 = !{i64 2156383527}
!145 = !{i64 2156383862}
!146 = !{i64 2156384690}
!147 = !{i64 2156385060}
!148 = !{i64 2156385888}
!149 = !{i64 2156386193}
!150 = !{i64 2156387021}
!151 = !{i64 2156387411}
!152 = !{i64 2156388239}
!153 = !{i64 2156388527}
!154 = !{i64 2156389355}
!155 = !{i64 2156389833}
!156 = !{i64 2156390661}
!157 = !{i64 2156391102}
!158 = !{i64 2156391930}
!159 = !{i64 2156392233}
!160 = !{i64 2156393061}
!161 = !{i64 2156393416}
!162 = !{i64 2156394244}
!163 = !{i64 2156394550}
!164 = !{i64 2156395378}
!165 = !{i64 2156395735}
!166 = !{i64 2156396563}
!167 = !{i64 2156396866}
!168 = !{i64 2156397694}
!169 = !{i64 2156398051}
!170 = !{i64 2156398879}
!171 = !{i64 2156399316}
!172 = !{i64 2156400144}
!173 = !{i64 2156400450}
!174 = !{i64 2156401278}
!175 = !{i64 2156401633}
!176 = !{i64 2156402461}
!177 = !{i64 2156402818}
!178 = !{i64 2156403646}
!179 = !{i64 2156404033}
!180 = !{i64 2156404592}
!181 = !{i64 2156405420}
!182 = !{i64 2156405725}
!183 = !{i64 2156406642}
!184 = !{i64 2156406993}
!185 = !{i64 2156451680}
!186 = !{i64 2156452195}
!187 = !{i64 2156341531}
!188 = !{i64 2156344468}
!189 = !{i64 2156347259}
!190 = !{i64 2156347774}
!191 = !{i64 2156348590}
!192 = !{i64 2156349023}
!193 = !{i64 2156351283}
!194 = !{i64 2156351722}
!195 = !{i64 2156352550}
!196 = !{i64 2156352884}
!197 = !{i64 2156353712}
!198 = !{i64 2156354015}
!199 = !{i64 2156354833}
!200 = !{i64 2156355352}
!201 = !{i64 2156357761}
!202 = !{i64 2156358351}
!203 = !{i64 2156359139}
!204 = !{i64 2156359490}
!205 = !{i64 2156361678}
!206 = !{i64 2156362268}
!207 = !{i64 2156362974}
!208 = !{i64 2156363325}
