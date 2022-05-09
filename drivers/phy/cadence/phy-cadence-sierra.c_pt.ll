; ModuleID = '/llk/IR_all_yes/drivers/phy/cadence/phy-cadence-sierra.c_pt.bc'
source_filename = "../drivers/phy/cadence/phy-cadence-sierra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdns_sierra_data = type { i32, i8, i8, [4 x [4 x [3 x ptr]]], [4 x [4 x [3 x ptr]]], [4 x [4 x [3 x ptr]]], [4 x [4 x [3 x ptr]]] }
%struct.cdns_sierra_vals = type { ptr, i32 }
%struct.cdns_reg_pairs = type { i16, i32 }
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
%struct.cdns_sierra_phy = type { ptr, ptr, ptr, [16 x %struct.cdns_sierra_inst], ptr, ptr, [16 x ptr], ptr, [16 x ptr], ptr, [16 x ptr], ptr, ptr, ptr, ptr, [16 x ptr], [16 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], [5 x ptr], i32, i32, i8, %struct.clk_onecell_data, [3 x ptr] }
%struct.cdns_sierra_inst = type { ptr, i32, i32, i32, ptr, i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.cdns_regmap_cdb_context = type { ptr, ptr, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.cdns_sierra_pll_mux = type { %struct.clk_hw, ptr, ptr, ptr, %struct.clk_init_data }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.cdns_sierra_derived_refclk = type { %struct.clk_hw, ptr, ptr, %struct.clk_init_data }

@__initcall__kmod_phy_cadence_sierra__289_2311_cdns_sierra_driver_init6 = internal global ptr @cdns_sierra_driver_init, section ".initcall6.init", align 4
@cdns_sierra_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdns_sierra_phy_probe, ptr @cdns_sierra_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdns_sierra_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cdns_sierra_driver_exit = internal global ptr @cdns_sierra_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias290 = internal constant [46 x i8] c"phy_cadence_sierra.alias=platform:cdns_sierra\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [49 x i8] c"phy_cadence_sierra.author=Cadence Design Systems\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [54 x i8] c"phy_cadence_sierra.description=CDNS sierra phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [63 x i8] c"phy_cadence_sierra.file=drivers/phy/cadence/phy-cadence-sierra\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [34 x i8] c"phy_cadence_sierra.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cdns-sierra-phy\00", [16 x i8] zeroinitializer }, align 32
@cdns_sierra_id_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,sierra-phy-t0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_map_sierra }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sierra-phy-t0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_ti_map_sierra }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1362, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"missing \22reg\22\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cdns_sierra_phy_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/phy/cadence/phy-cadence-sierra.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_probe._entry_ptr = internal global ptr @cdns_sierra_phy_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdns,autoconf\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1417, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get reset %s\0A\00", [40 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_probe._entry_ptr.11 = internal global ptr @cdns_sierra_phy_probe._entry.9, section ".printk_index", align 4
@cdns_sierra_phy_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1427, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"missing property in node %s\0A\00", [35 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_probe._entry_ptr.14 = internal global ptr @cdns_sierra_phy_probe._entry.12, section ".printk_index", align 4
@ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @cdns_sierra_phy_init, ptr null, ptr @cdns_sierra_phy_on, ptr @cdns_sierra_phy_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_sierra_phy_reset, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1453, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid lane configuration\0A\00", [36 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_probe._entry_ptr.17 = internal global ptr @cdns_sierra_phy_probe._entry.15, section ".printk_index", align 4
@cdns_sierra_lane_cdb_config = internal constant { [16 x %struct.regmap_config], [672 x i8] } { [16 x %struct.regmap_config] [%struct.regmap_config { ptr @.str.36, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.37, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.38, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.39, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.40, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.41, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.42, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.43, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.44, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.45, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.46, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.47, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.48, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.49, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.50, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.51, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }], [672 x i8] zeroinitializer }, align 32
@cdns_regmap_init_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 1053, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to init lane CDB regmap\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cdns_regmap_init_blocks\00", [40 x i8] zeroinitializer }, align 32
@cdns_regmap_init_blocks._entry_ptr = internal global ptr @cdns_regmap_init_blocks._entry, section ".printk_index", align 4
@cdns_sierra_common_cdb_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.52, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@cdns_regmap_init_blocks._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 1063, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to init common CDB regmap\0A\00", [62 x i8] zeroinitializer }, align 32
@cdns_regmap_init_blocks._entry_ptr.22 = internal global ptr @cdns_regmap_init_blocks._entry.20, section ".printk_index", align 4
@cdns_sierra_phy_pcs_cmn_cdb_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.53, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@cdns_regmap_init_blocks._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.3, i32 1072, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to init PHY PCS common CDB regmap\0A\00", [54 x i8] zeroinitializer }, align 32
@cdns_regmap_init_blocks._entry_ptr.25 = internal global ptr @cdns_regmap_init_blocks._entry.23, section ".printk_index", align 4
@cdns_sierra_phy_pcs_lane_cdb_config = internal constant { [16 x %struct.regmap_config], [672 x i8] } { [16 x %struct.regmap_config] [%struct.regmap_config { ptr @.str.54, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.55, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.56, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.57, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.58, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.59, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.60, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.61, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.62, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.63, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.64, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.65, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.66, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.67, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.68, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.69, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }], [672 x i8] zeroinitializer }, align 32
@cdns_regmap_init_blocks._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.3, i32 1084, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to init PHY PCS lane CDB regmap\0A\00", [56 x i8] zeroinitializer }, align 32
@cdns_regmap_init_blocks._entry_ptr.28 = internal global ptr @cdns_regmap_init_blocks._entry.26, section ".printk_index", align 4
@cdns_sierra_phy_pma_cmn_cdb_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.70, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@cdns_regmap_init_blocks._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.3, i32 1094, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to init PHY PMA common CDB regmap\0A\00", [54 x i8] zeroinitializer }, align 32
@cdns_regmap_init_blocks._entry_ptr.31 = internal global ptr @cdns_regmap_init_blocks._entry.29, section ".printk_index", align 4
@cdns_sierra_phy_pma_lane_cdb_config = internal constant { [16 x %struct.regmap_config], [672 x i8] } { [16 x %struct.regmap_config] [%struct.regmap_config { ptr @.str.71, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.72, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.73, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.74, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.75, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.76, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.77, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.78, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.79, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.80, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.81, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.82, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.83, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.84, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.85, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.86, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }], [672 x i8] zeroinitializer }, align 32
@cdns_regmap_init_blocks._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.3, i32 1106, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to init PHY PMA lane CDB regmap\0A\00", [56 x i8] zeroinitializer }, align 32
@cdns_regmap_init_blocks._entry_ptr.34 = internal global ptr @cdns_regmap_init_blocks._entry.32, section ".printk_index", align 4
@cdns_regmap_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"phy_cadence_sierra:953:(config)->lock\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sierra_lane0_cdb\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sierra_lane1_cdb\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sierra_lane2_cdb\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sierra_lane3_cdb\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sierra_lane4_cdb\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sierra_lane5_cdb\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sierra_lane6_cdb\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sierra_lane7_cdb\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sierra_lane8_cdb\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sierra_lane9_cdb\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sierra_lane10_cdb\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sierra_lane11_cdb\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sierra_lane12_cdb\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sierra_lane13_cdb\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sierra_lane14_cdb\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sierra_lane15_cdb\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sierra_common_cdb\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sierra_phy_pcs_cmn_cdb\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pcs_lane0_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pcs_lane1_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pcs_lane2_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pcs_lane3_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pcs_lane4_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pcs_lane5_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pcs_lane6_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pcs_lane7_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pcs_lane8_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pcs_lane9_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sierra_phy_pcs_lane10_cdb\00", [38 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sierra_phy_pcs_lane11_cdb\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sierra_phy_pcs_lane12_cdb\00", [38 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sierra_phy_pcs_lane13_cdb\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sierra_phy_pcs_lane14_cdb\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sierra_phy_pcs_lane15_cdb\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sierra_phy_pma_cmn_cdb\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pma_lane0_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pma_lane1_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pma_lane2_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pma_lane3_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pma_lane4_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pma_lane5_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pma_lane6_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pma_lane7_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pma_lane8_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_phy_pma_lane9_cdb\00", [39 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sierra_phy_pma_lane10_cdb\00", [38 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sierra_phy_pma_lane11_cdb\00", [38 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sierra_phy_pma_lane12_cdb\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sierra_phy_pma_lane13_cdb\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sierra_phy_pma_lane14_cdb\00", [38 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sierra_phy_pma_lane15_cdb\00", [38 x i8] zeroinitializer }, align 32
@cdns_regfield_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 967, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MACRO_ID_TYPE reg field init failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cdns_regfield_init\00", [45 x i8] zeroinitializer }, align 32
@cdns_regfield_init._entry_ptr = internal global ptr @cdns_regfield_init._entry, section ".printk_index", align 4
@cdns_regfield_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.3, i32 976, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PLLLC%d_PFDCLK1_SEL failed\0A\00", [36 x i8] zeroinitializer }, align 32
@cdns_regfield_init._entry_ptr.91 = internal global ptr @cdns_regfield_init._entry.89, section ".printk_index", align 4
@cdns_regfield_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.3, i32 984, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"REFRCV%d_REFCLK_PLLLC1EN failed\0A\00", [63 x i8] zeroinitializer }, align 32
@cdns_regfield_init._entry_ptr.94 = internal global ptr @cdns_regfield_init._entry.92, section ".printk_index", align 4
@cdns_regfield_init._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.88, ptr @.str.3, i32 992, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"REFRCV%d_REFCLK_TERMEN failed\0A\00", [33 x i8] zeroinitializer }, align 32
@cdns_regfield_init._entry_ptr.97 = internal global ptr @cdns_regfield_init._entry.95, section ".printk_index", align 4
@cdns_regfield_init._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.88, ptr @.str.3, i32 1001, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PHY_PLL_CFG_1 reg field init failed\0A\00", [59 x i8] zeroinitializer }, align 32
@cdns_regfield_init._entry_ptr.100 = internal global ptr @cdns_regfield_init._entry.98, section ".printk_index", align 4
@cdns_regfield_init._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.88, ptr @.str.3, i32 1009, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"PHY_PMA_CMN_CTRL reg field init failed\0A\00", [56 x i8] zeroinitializer }, align 32
@cdns_regfield_init._entry_ptr.103 = internal global ptr @cdns_regfield_init._entry.101, section ".printk_index", align 4
@cdns_regfield_init._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.88, ptr @.str.3, i32 1018, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"P%d_ENABLE reg field init failed\0A\00", [62 x i8] zeroinitializer }, align 32
@cdns_regfield_init._entry_ptr.106 = internal global ptr @cdns_regfield_init._entry.104, section ".printk_index", align 4
@cdns_regfield_init._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.88, ptr @.str.3, i32 1028, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"PHY_ISO_LINK_CTRL reg field init for lane %d failed\0A\00", [43 x i8] zeroinitializer }, align 32
@cdns_regfield_init._entry_ptr.109 = internal global ptr @cdns_regfield_init._entry.107, section ".printk_index", align 4
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phy_clk\00", [24 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_get_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.3, i32 1123, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get clock phy_clk\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cdns_sierra_phy_get_clocks\00", [37 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_get_clocks._entry_ptr = internal global ptr @cdns_sierra_phy_get_clocks._entry, section ".printk_index", align 4
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cmn_refclk_dig_div\00", [45 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_get_clocks._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.112, ptr @.str.3, i32 1130, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cmn_refclk_dig_div clock not found\0A\00", [60 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_get_clocks._entry_ptr.116 = internal global ptr @cdns_sierra_phy_get_clocks._entry.114, section ".printk_index", align 4
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cmn_refclk1_dig_div\00", [44 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_get_clocks._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.112, ptr @.str.3, i32 1138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cmn_refclk1_dig_div clock not found\0A\00", [59 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_get_clocks._entry_ptr.120 = internal global ptr @cdns_sierra_phy_get_clocks._entry.118, section ".printk_index", align 4
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll0_refclk\00", [20 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_get_clocks._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.112, ptr @.str.3, i32 1146, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pll0_refclk clock not found\0A\00", [35 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_get_clocks._entry_ptr.124 = internal global ptr @cdns_sierra_phy_get_clocks._entry.122, section ".printk_index", align 4
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll1_refclk\00", [20 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_get_clocks._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.112, ptr @.str.3, i32 1154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pll1_refclk clock not found\0A\00", [35 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_get_clocks._entry_ptr.128 = internal global ptr @cdns_sierra_phy_get_clocks._entry.126, section ".printk_index", align 4
@cdns_sierra_clk_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.3, i32 886, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to pll mux clocks\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cdns_sierra_clk_register\00", [39 x i8] zeroinitializer }, align 32
@cdns_sierra_clk_register._entry_ptr = internal global ptr @cdns_sierra_clk_register._entry, section ".printk_index", align 4
@cdns_sierra_clk_register._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.3, i32 892, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register derived refclk\0A\00", [61 x i8] zeroinitializer }, align 32
@cdns_sierra_clk_register._entry_ptr.133 = internal global ptr @cdns_sierra_clk_register._entry.131, section ".printk_index", align 4
@cdns_sierra_clk_register._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.130, ptr @.str.3, i32 900, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to add clock provider: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@cdns_sierra_clk_register._entry_ptr.136 = internal global ptr @cdns_sierra_clk_register._entry.134, section ".printk_index", align 4
@cdns_sierra_phy_register_pll_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.3, i32 777, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Fail to register cmn plllc mux\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cdns_sierra_phy_register_pll_mux\00", [63 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_register_pll_mux._entry_ptr = internal global ptr @cdns_sierra_phy_register_pll_mux._entry, section ".printk_index", align 4
@pll_mux_parent_index = internal constant { [2 x [2 x i32]], [16 x i8] } { [2 x [2 x i32]] [[2 x i32] [i32 3, i32 4], [2 x i32] [i32 4, i32 3]], [16 x i8] zeroinitializer }, align 32
@cdns_sierra_pll_mux_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.3, i32 730, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No parent clock for PLL mux clocks\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cdns_sierra_pll_mux_register\00", [35 x i8] zeroinitializer }, align 32
@cdns_sierra_pll_mux_register._entry_ptr = internal global ptr @cdns_sierra_pll_mux_register._entry, section ".printk_index", align 4
@.str.141 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_%s\00", [26 x i8] zeroinitializer }, align 32
@clk_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.142, ptr @.str.143, ptr @.str.144], [20 x i8] zeroinitializer }, align 32
@cdns_sierra_pll_mux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_sierra_pll_mux_set_parent, ptr @cdns_sierra_pll_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll_cmnlc\00", [22 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_cmnlc1\00", [21 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"refclk_der\00", [21 x i8] zeroinitializer }, align 32
@cdns_sierra_pll_mux_table = internal global { [2 x [2 x i32]], [16 x i8] } { [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 0]], [16 x i8] zeroinitializer }, align 32
@cdns_sierra_derived_refclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @cdns_sierra_derived_refclk_enable, ptr @cdns_sierra_derived_refclk_disable, ptr @cdns_sierra_derived_refclk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@cdns_sierra_derived_refclk_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.3, i32 847, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"cmn_plllc_clk1outdiv_preg reg field init failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cdns_sierra_derived_refclk_register\00", [60 x i8] zeroinitializer }, align 32
@cdns_sierra_derived_refclk_register._entry_ptr = internal global ptr @cdns_sierra_derived_refclk_register._entry, section ".printk_index", align 4
@cdns_sierra_derived_refclk_register._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.146, ptr @.str.3, i32 854, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cmn_plllc_clk1_en_preg reg field init failed\0A\00", [50 x i8] zeroinitializer }, align 32
@cdns_sierra_derived_refclk_register._entry_ptr.149 = internal global ptr @cdns_sierra_derived_refclk_register._entry.147, section ".printk_index", align 4
@.str.150 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sierra_reset\00", [19 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_get_resets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.3, i32 1204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get reset\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cdns_sierra_phy_get_resets\00", [37 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_get_resets._entry_ptr = internal global ptr @cdns_sierra_phy_get_resets._entry, section ".printk_index", align 4
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sierra_apb\00", [21 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_get_resets._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.152, ptr @.str.3, i32 1211, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get apb reset\0A\00", [39 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_get_resets._entry_ptr.156 = internal global ptr @cdns_sierra_phy_get_resets._entry.154, section ".printk_index", align 4
@.str.157 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cdns,num-lanes\00", [17 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdns,phy-type\00", [18 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdns,ssc-mode\00", [18 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.3, i32 585, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to take the PHY out of reset\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cdns_sierra_phy_on\00", [45 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_on._entry_ptr = internal global ptr @cdns_sierra_phy_on._entry, section ".printk_index", align 4
@cdns_sierra_phy_on._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.162, ptr @.str.3, i32 593, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to take the PHY lane out of reset\0A\00", [54 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_on._entry_ptr.165 = internal global ptr @cdns_sierra_phy_on._entry.163, section ".printk_index", align 4
@cdns_sierra_phy_on._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.162, ptr @.str.3, i32 601, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Timeout waiting for PHY status ready\0A\00", [58 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_on._entry_ptr.168 = internal global ptr @cdns_sierra_phy_on._entry.166, section ".printk_index", align 4
@cdns_sierra_phy_on._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.162, ptr @.str.3, i32 613, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Timeout waiting for CMN ready\0A\00", [33 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_on._entry_ptr.171 = internal global ptr @cdns_sierra_phy_on._entry.169, section ".printk_index", align 4
@cdns_sierra_phy_on._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.162, ptr @.str.3, i32 620, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PLL lock of lane failed\0A\00", [39 x i8] zeroinitializer }, align 32
@cdns_sierra_phy_on._entry_ptr.174 = internal global ptr @cdns_sierra_phy_on._entry.172, section ".printk_index", align 4
@cdns_map_sierra = internal constant { %struct.cdns_sierra_data, [216 x i8] } { %struct.cdns_sierra_data { i32 29540, i8 2, i8 2, [4 x [4 x [3 x ptr]]] [[4 x [3 x ptr]] zeroinitializer, [4 x [3 x ptr]] [[3 x ptr] [ptr @pcie_phy_pcs_cmn_vals, ptr @pcie_phy_pcs_cmn_vals, ptr @pcie_phy_pcs_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @pcie_phy_pcs_cmn_vals, ptr @pcie_phy_pcs_cmn_vals, ptr @pcie_phy_pcs_cmn_vals]], [4 x [3 x ptr]] zeroinitializer, [4 x [3 x ptr]] zeroinitializer], [4 x [4 x [3 x ptr]]] zeroinitializer, [4 x [4 x [3 x ptr]]] [[4 x [3 x ptr]] zeroinitializer, [4 x [3 x ptr]] [[3 x ptr] [ptr @pcie_100_no_ssc_cmn_vals, ptr @pcie_100_ext_ssc_cmn_vals, ptr @pcie_100_int_ssc_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @pcie_100_no_ssc_plllc_cmn_vals, ptr @pcie_100_ext_ssc_plllc_cmn_vals, ptr @pcie_100_int_ssc_plllc_cmn_vals]], [4 x [3 x ptr]] [[3 x ptr] [ptr null, ptr @usb_100_ext_ssc_cmn_vals, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [4 x [3 x ptr]] [[3 x ptr] zeroinitializer, [3 x ptr] [ptr @qsgmii_100_no_ssc_plllc1_cmn_vals, ptr @qsgmii_100_no_ssc_plllc1_cmn_vals, ptr @qsgmii_100_no_ssc_plllc1_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer]], [4 x [4 x [3 x ptr]]] [[4 x [3 x ptr]] zeroinitializer, [4 x [3 x ptr]] [[3 x ptr] [ptr @pcie_100_no_ssc_ln_vals, ptr @pcie_100_ext_ssc_ln_vals, ptr @pcie_100_int_ssc_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @ml_pcie_100_no_ssc_ln_vals, ptr @ml_pcie_100_ext_ssc_ln_vals, ptr @ml_pcie_100_int_ssc_ln_vals]], [4 x [3 x ptr]] [[3 x ptr] [ptr null, ptr @usb_100_ext_ssc_ln_vals, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [4 x [3 x ptr]] [[3 x ptr] zeroinitializer, [3 x ptr] [ptr @qsgmii_100_no_ssc_plllc1_ln_vals, ptr @qsgmii_100_no_ssc_plllc1_ln_vals, ptr @qsgmii_100_no_ssc_plllc1_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer]] }, [216 x i8] zeroinitializer }, align 32
@cdns_ti_map_sierra = internal constant { %struct.cdns_sierra_data, [216 x i8] } { %struct.cdns_sierra_data { i32 29540, i8 0, i8 1, [4 x [4 x [3 x ptr]]] [[4 x [3 x ptr]] zeroinitializer, [4 x [3 x ptr]] [[3 x ptr] [ptr @pcie_phy_pcs_cmn_vals, ptr @pcie_phy_pcs_cmn_vals, ptr @pcie_phy_pcs_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @pcie_phy_pcs_cmn_vals, ptr @pcie_phy_pcs_cmn_vals, ptr @pcie_phy_pcs_cmn_vals]], [4 x [3 x ptr]] zeroinitializer, [4 x [3 x ptr]] zeroinitializer], [4 x [4 x [3 x ptr]]] [[4 x [3 x ptr]] zeroinitializer, [4 x [3 x ptr]] zeroinitializer, [4 x [3 x ptr]] zeroinitializer, [4 x [3 x ptr]] [[3 x ptr] zeroinitializer, [3 x ptr] [ptr @qsgmii_phy_pma_ln_vals, ptr @qsgmii_phy_pma_ln_vals, ptr @qsgmii_phy_pma_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer]], [4 x [4 x [3 x ptr]]] [[4 x [3 x ptr]] zeroinitializer, [4 x [3 x ptr]] [[3 x ptr] [ptr @pcie_100_no_ssc_cmn_vals, ptr @pcie_100_ext_ssc_cmn_vals, ptr @pcie_100_int_ssc_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @pcie_100_no_ssc_plllc_cmn_vals, ptr @pcie_100_ext_ssc_plllc_cmn_vals, ptr @pcie_100_int_ssc_plllc_cmn_vals]], [4 x [3 x ptr]] [[3 x ptr] [ptr null, ptr @usb_100_ext_ssc_cmn_vals, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [4 x [3 x ptr]] [[3 x ptr] zeroinitializer, [3 x ptr] [ptr @qsgmii_100_no_ssc_plllc1_cmn_vals, ptr @qsgmii_100_no_ssc_plllc1_cmn_vals, ptr @qsgmii_100_no_ssc_plllc1_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer]], [4 x [4 x [3 x ptr]]] [[4 x [3 x ptr]] zeroinitializer, [4 x [3 x ptr]] [[3 x ptr] [ptr @pcie_100_no_ssc_ln_vals, ptr @pcie_100_ext_ssc_ln_vals, ptr @pcie_100_int_ssc_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @ml_pcie_100_no_ssc_ln_vals, ptr @ml_pcie_100_ext_ssc_ln_vals, ptr @ml_pcie_100_int_ssc_ln_vals]], [4 x [3 x ptr]] [[3 x ptr] [ptr null, ptr @usb_100_ext_ssc_ln_vals, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [4 x [3 x ptr]] [[3 x ptr] zeroinitializer, [3 x ptr] [ptr @qsgmii_100_no_ssc_plllc1_ln_vals, ptr @qsgmii_100_no_ssc_plllc1_ln_vals, ptr @qsgmii_100_no_ssc_plllc1_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer]] }, [216 x i8] zeroinitializer }, align 32
@pcie_phy_pcs_cmn_vals = internal global { %struct.cdns_sierra_vals, [24 x i8] } { %struct.cdns_sierra_vals { ptr @pcie_phy_pcs_cmn_regs, i32 1 }, [24 x i8] zeroinitializer }, align 32
@pcie_100_no_ssc_cmn_vals = internal global { %struct.cdns_sierra_vals, [24 x i8] } { %struct.cdns_sierra_vals { ptr @cdns_pcie_cmn_regs_no_ssc, i32 4 }, [24 x i8] zeroinitializer }, align 32
@pcie_100_ext_ssc_cmn_vals = internal global { %struct.cdns_sierra_vals, [24 x i8] } { %struct.cdns_sierra_vals { ptr @cdns_pcie_cmn_regs_ext_ssc, i32 5 }, [24 x i8] zeroinitializer }, align 32
@pcie_100_int_ssc_cmn_vals = internal global { %struct.cdns_sierra_vals, [24 x i8] } { %struct.cdns_sierra_vals { ptr @cdns_pcie_cmn_regs_int_ssc, i32 11 }, [24 x i8] zeroinitializer }, align 32
@pcie_100_no_ssc_plllc_cmn_vals = internal global { %struct.cdns_sierra_vals, [24 x i8] } { %struct.cdns_sierra_vals { ptr @pcie_100_no_ssc_plllc_cmn_regs, i32 4 }, [24 x i8] zeroinitializer }, align 32
@pcie_100_ext_ssc_plllc_cmn_vals = internal global { %struct.cdns_sierra_vals, [24 x i8] } { %struct.cdns_sierra_vals { ptr @pcie_100_ext_ssc_plllc_cmn_regs, i32 5 }, [24 x i8] zeroinitializer }, align 32
@pcie_100_int_ssc_plllc_cmn_vals = internal global { %struct.cdns_sierra_vals, [24 x i8] } { %struct.cdns_sierra_vals { ptr @pcie_100_int_ssc_plllc_cmn_regs, i32 11 }, [24 x i8] zeroinitializer }, align 32
@usb_100_ext_ssc_cmn_vals = internal global { %struct.cdns_sierra_vals, [24 x i8] } { %struct.cdns_sierra_vals { ptr @cdns_usb_cmn_regs_ext_ssc, i32 4 }, [24 x i8] zeroinitializer }, align 32
@qsgmii_100_no_ssc_plllc1_cmn_vals = internal global { %struct.cdns_sierra_vals, [24 x i8] } { %struct.cdns_sierra_vals { ptr @qsgmii_100_no_ssc_plllc1_cmn_regs, i32 3 }, [24 x i8] zeroinitializer }, align 32
@pcie_100_no_ssc_ln_vals = internal global { %struct.cdns_sierra_vals, [24 x i8] } { %struct.cdns_sierra_vals { ptr @cdns_pcie_ln_regs_no_ssc, i32 43 }, [24 x i8] zeroinitializer }, align 32
@pcie_100_ext_ssc_ln_vals = internal global { %struct.cdns_sierra_vals, [24 x i8] } { %struct.cdns_sierra_vals { ptr @cdns_pcie_ln_regs_ext_ssc, i32 46 }, [24 x i8] zeroinitializer }, align 32
@pcie_100_int_ssc_ln_vals = internal global { %struct.cdns_sierra_vals, [24 x i8] } { %struct.cdns_sierra_vals { ptr @cdns_pcie_ln_regs_int_ssc, i32 46 }, [24 x i8] zeroinitializer }, align 32
@ml_pcie_100_no_ssc_ln_vals = internal global { %struct.cdns_sierra_vals, [24 x i8] } { %struct.cdns_sierra_vals { ptr @ml_pcie_100_no_ssc_ln_regs, i32 46 }, [24 x i8] zeroinitializer }, align 32
@ml_pcie_100_ext_ssc_ln_vals = internal global { %struct.cdns_sierra_vals, [24 x i8] } { %struct.cdns_sierra_vals { ptr @ml_pcie_100_ext_ssc_ln_regs, i32 49 }, [24 x i8] zeroinitializer }, align 32
@ml_pcie_100_int_ssc_ln_vals = internal global { %struct.cdns_sierra_vals, [24 x i8] } { %struct.cdns_sierra_vals { ptr @ml_pcie_100_int_ssc_ln_regs, i32 49 }, [24 x i8] zeroinitializer }, align 32
@usb_100_ext_ssc_ln_vals = internal global { %struct.cdns_sierra_vals, [24 x i8] } { %struct.cdns_sierra_vals { ptr @cdns_usb_ln_regs_ext_ssc, i32 95 }, [24 x i8] zeroinitializer }, align 32
@qsgmii_100_no_ssc_plllc1_ln_vals = internal global { %struct.cdns_sierra_vals, [24 x i8] } { %struct.cdns_sierra_vals { ptr @qsgmii_100_no_ssc_plllc1_ln_regs, i32 36 }, [24 x i8] zeroinitializer }, align 32
@pcie_phy_pcs_cmn_regs = internal global { [1 x %struct.cdns_reg_pairs], [24 x i8] } { [1 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 1072, i32 0 }], [24 x i8] zeroinitializer }, align 32
@cdns_pcie_cmn_regs_no_ssc = internal constant { [4 x %struct.cdns_reg_pairs], [32 x i8] } { [4 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 8453, i32 73 }, %struct.cdns_reg_pairs { i16 8453, i32 74 }, %struct.cdns_reg_pairs { i16 -30202, i32 79 }, %struct.cdns_reg_pairs { i16 -30202, i32 80 }], [32 x i8] zeroinitializer }, align 32
@cdns_pcie_cmn_regs_ext_ssc = internal constant { [5 x %struct.cdns_reg_pairs], [56 x i8] } { [5 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 8454, i32 73 }, %struct.cdns_reg_pairs { i16 8454, i32 74 }, %struct.cdns_reg_pairs { i16 -30202, i32 79 }, %struct.cdns_reg_pairs { i16 -30202, i32 80 }, %struct.cdns_reg_pairs { i16 6939, i32 98 }], [56 x i8] zeroinitializer }, align 32
@cdns_pcie_cmn_regs_int_ssc = internal constant { [11 x %struct.cdns_reg_pairs], [40 x i8] } { [11 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 14, i32 72 }, %struct.cdns_reg_pairs { i16 16390, i32 73 }, %struct.cdns_reg_pairs { i16 16390, i32 74 }, %struct.cdns_reg_pairs { i16 0, i32 79 }, %struct.cdns_reg_pairs { i16 0, i32 80 }, %struct.cdns_reg_pairs { i16 1409, i32 81 }, %struct.cdns_reg_pairs { i16 32640, i32 82 }, %struct.cdns_reg_pairs { i16 65, i32 83 }, %struct.cdns_reg_pairs { i16 1124, i32 84 }, %struct.cdns_reg_pairs { i16 3341, i32 98 }, %struct.cdns_reg_pairs { i16 96, i32 99 }], [40 x i8] zeroinitializer }, align 32
@pcie_100_no_ssc_plllc_cmn_regs = internal constant { [4 x %struct.cdns_reg_pairs], [32 x i8] } { [4 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 8453, i32 73 }, %struct.cdns_reg_pairs { i16 8453, i32 74 }, %struct.cdns_reg_pairs { i16 -30202, i32 79 }, %struct.cdns_reg_pairs { i16 -30202, i32 80 }], [32 x i8] zeroinitializer }, align 32
@pcie_100_ext_ssc_plllc_cmn_regs = internal constant { [5 x %struct.cdns_reg_pairs], [56 x i8] } { [5 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 8454, i32 73 }, %struct.cdns_reg_pairs { i16 8454, i32 74 }, %struct.cdns_reg_pairs { i16 -30202, i32 79 }, %struct.cdns_reg_pairs { i16 -30202, i32 80 }, %struct.cdns_reg_pairs { i16 6939, i32 98 }], [56 x i8] zeroinitializer }, align 32
@pcie_100_int_ssc_plllc_cmn_regs = internal constant { [11 x %struct.cdns_reg_pairs], [40 x i8] } { [11 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 14, i32 72 }, %struct.cdns_reg_pairs { i16 16390, i32 73 }, %struct.cdns_reg_pairs { i16 16390, i32 74 }, %struct.cdns_reg_pairs { i16 0, i32 79 }, %struct.cdns_reg_pairs { i16 0, i32 80 }, %struct.cdns_reg_pairs { i16 1409, i32 81 }, %struct.cdns_reg_pairs { i16 32640, i32 82 }, %struct.cdns_reg_pairs { i16 65, i32 83 }, %struct.cdns_reg_pairs { i16 1124, i32 84 }, %struct.cdns_reg_pairs { i16 3341, i32 98 }, %struct.cdns_reg_pairs { i16 96, i32 99 }], [40 x i8] zeroinitializer }, align 32
@cdns_usb_cmn_regs_ext_ssc = internal constant { [4 x %struct.cdns_reg_pairs], [32 x i8] } { [4 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 8325, i32 73 }, %struct.cdns_reg_pairs { i16 8325, i32 74 }, %struct.cdns_reg_pairs { i16 0, i32 80 }, %struct.cdns_reg_pairs { i16 0, i32 98 }], [32 x i8] zeroinitializer }, align 32
@qsgmii_100_no_ssc_plllc1_cmn_regs = internal constant { [3 x %struct.cdns_reg_pairs], [40 x i8] } { [3 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 8325, i32 202 }, %struct.cdns_reg_pairs { i16 0, i32 208 }, %struct.cdns_reg_pairs { i16 0, i32 226 }], [40 x i8] zeroinitializer }, align 32
@cdns_pcie_ln_regs_no_ssc = internal constant { [43 x %struct.cdns_reg_pairs], [72 x i8] } { [43 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 -1016, i32 0 }, %struct.cdns_reg_pairs { i16 29, i32 12 }, %struct.cdns_reg_pairs { i16 5461, i32 76 }, %struct.cdns_reg_pairs { i16 -26877, i32 111 }, %struct.cdns_reg_pairs { i16 -32683, i32 133 }, %struct.cdns_reg_pairs { i16 -32581, i32 134 }, %struct.cdns_reg_pairs { i16 -31919, i32 135 }, %struct.cdns_reg_pairs { i16 -31927, i32 136 }, %struct.cdns_reg_pairs { i16 2, i32 140 }, %struct.cdns_reg_pairs { i16 -26624, i32 143 }, %struct.cdns_reg_pairs { i16 22052, i32 201 }, %struct.cdns_reg_pairs { i16 15, i32 205 }, %struct.cdns_reg_pairs { i16 255, i32 206 }, %struct.cdns_reg_pairs { i16 19532, i32 208 }, %struct.cdns_reg_pairs { i16 762, i32 216 }, %struct.cdns_reg_pairs { i16 762, i32 224 }, %struct.cdns_reg_pairs { i16 65, i32 232 }, %struct.cdns_reg_pairs { i16 130, i32 233 }, %struct.cdns_reg_pairs { i16 195, i32 234 }, %struct.cdns_reg_pairs { i16 325, i32 235 }, %struct.cdns_reg_pairs { i16 390, i32 236 }, %struct.cdns_reg_pairs { i16 2535, i32 264 }, %struct.cdns_reg_pairs { i16 2470, i32 265 }, %struct.cdns_reg_pairs { i16 2405, i32 266 }, %struct.cdns_reg_pairs { i16 2275, i32 267 }, %struct.cdns_reg_pairs { i16 250, i32 297 }, %struct.cdns_reg_pairs { i16 250, i32 299 }, %struct.cdns_reg_pairs { i16 250, i32 301 }, %struct.cdns_reg_pairs { i16 250, i32 303 }, %struct.cdns_reg_pairs { i16 250, i32 305 }, %struct.cdns_reg_pairs { i16 15, i32 312 }, %struct.cdns_reg_pairs { i16 640, i32 320 }, %struct.cdns_reg_pairs { i16 -28928, i32 322 }, %struct.cdns_reg_pairs { i16 15375, i32 336 }, %struct.cdns_reg_pairs { i16 7180, i32 337 }, %struct.cdns_reg_pairs { i16 256, i32 338 }, %struct.cdns_reg_pairs { i16 24194, i32 344 }, %struct.cdns_reg_pairs { i16 43, i32 383 }, %struct.cdns_reg_pairs { i16 3, i32 391 }, %struct.cdns_reg_pairs { i16 -32705, i32 401 }, %struct.cdns_reg_pairs { i16 4, i32 414 }, %struct.cdns_reg_pairs { i16 8208, i32 415 }, %struct.cdns_reg_pairs { i16 17458, i32 416 }], [72 x i8] zeroinitializer }, align 32
@cdns_pcie_ln_regs_ext_ssc = internal constant { [46 x %struct.cdns_reg_pairs], [80 x i8] } { [46 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 -1016, i32 0 }, %struct.cdns_reg_pairs { i16 29, i32 12 }, %struct.cdns_reg_pairs { i16 5461, i32 76 }, %struct.cdns_reg_pairs { i16 -26877, i32 111 }, %struct.cdns_reg_pairs { i16 -32450, i32 129 }, %struct.cdns_reg_pairs { i16 -32697, i32 133 }, %struct.cdns_reg_pairs { i16 -32625, i32 134 }, %struct.cdns_reg_pairs { i16 -32625, i32 135 }, %struct.cdns_reg_pairs { i16 -32625, i32 136 }, %struct.cdns_reg_pairs { i16 2, i32 140 }, %struct.cdns_reg_pairs { i16 -26624, i32 143 }, %struct.cdns_reg_pairs { i16 828, i32 145 }, %struct.cdns_reg_pairs { i16 17612, i32 151 }, %struct.cdns_reg_pairs { i16 22052, i32 201 }, %struct.cdns_reg_pairs { i16 15, i32 205 }, %struct.cdns_reg_pairs { i16 255, i32 206 }, %struct.cdns_reg_pairs { i16 19532, i32 208 }, %struct.cdns_reg_pairs { i16 762, i32 216 }, %struct.cdns_reg_pairs { i16 762, i32 224 }, %struct.cdns_reg_pairs { i16 65, i32 232 }, %struct.cdns_reg_pairs { i16 130, i32 233 }, %struct.cdns_reg_pairs { i16 195, i32 234 }, %struct.cdns_reg_pairs { i16 325, i32 235 }, %struct.cdns_reg_pairs { i16 390, i32 236 }, %struct.cdns_reg_pairs { i16 2535, i32 264 }, %struct.cdns_reg_pairs { i16 2470, i32 265 }, %struct.cdns_reg_pairs { i16 2405, i32 266 }, %struct.cdns_reg_pairs { i16 2275, i32 267 }, %struct.cdns_reg_pairs { i16 250, i32 297 }, %struct.cdns_reg_pairs { i16 250, i32 299 }, %struct.cdns_reg_pairs { i16 250, i32 301 }, %struct.cdns_reg_pairs { i16 250, i32 303 }, %struct.cdns_reg_pairs { i16 250, i32 305 }, %struct.cdns_reg_pairs { i16 15, i32 312 }, %struct.cdns_reg_pairs { i16 640, i32 320 }, %struct.cdns_reg_pairs { i16 -28928, i32 322 }, %struct.cdns_reg_pairs { i16 15375, i32 336 }, %struct.cdns_reg_pairs { i16 7180, i32 337 }, %struct.cdns_reg_pairs { i16 256, i32 338 }, %struct.cdns_reg_pairs { i16 24194, i32 344 }, %struct.cdns_reg_pairs { i16 43, i32 383 }, %struct.cdns_reg_pairs { i16 3, i32 391 }, %struct.cdns_reg_pairs { i16 -32705, i32 401 }, %struct.cdns_reg_pairs { i16 4, i32 414 }, %struct.cdns_reg_pairs { i16 8208, i32 415 }, %struct.cdns_reg_pairs { i16 17458, i32 416 }], [80 x i8] zeroinitializer }, align 32
@cdns_pcie_ln_regs_int_ssc = internal constant { [46 x %struct.cdns_reg_pairs], [80 x i8] } { [46 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 -1016, i32 0 }, %struct.cdns_reg_pairs { i16 29, i32 12 }, %struct.cdns_reg_pairs { i16 5461, i32 76 }, %struct.cdns_reg_pairs { i16 -26877, i32 111 }, %struct.cdns_reg_pairs { i16 -32450, i32 129 }, %struct.cdns_reg_pairs { i16 -32697, i32 133 }, %struct.cdns_reg_pairs { i16 -32625, i32 134 }, %struct.cdns_reg_pairs { i16 -32625, i32 135 }, %struct.cdns_reg_pairs { i16 -32625, i32 136 }, %struct.cdns_reg_pairs { i16 2, i32 140 }, %struct.cdns_reg_pairs { i16 -26624, i32 143 }, %struct.cdns_reg_pairs { i16 828, i32 145 }, %struct.cdns_reg_pairs { i16 17612, i32 151 }, %struct.cdns_reg_pairs { i16 22052, i32 201 }, %struct.cdns_reg_pairs { i16 15, i32 205 }, %struct.cdns_reg_pairs { i16 255, i32 206 }, %struct.cdns_reg_pairs { i16 19532, i32 208 }, %struct.cdns_reg_pairs { i16 762, i32 216 }, %struct.cdns_reg_pairs { i16 762, i32 224 }, %struct.cdns_reg_pairs { i16 65, i32 232 }, %struct.cdns_reg_pairs { i16 130, i32 233 }, %struct.cdns_reg_pairs { i16 195, i32 234 }, %struct.cdns_reg_pairs { i16 325, i32 235 }, %struct.cdns_reg_pairs { i16 390, i32 236 }, %struct.cdns_reg_pairs { i16 2535, i32 264 }, %struct.cdns_reg_pairs { i16 2470, i32 265 }, %struct.cdns_reg_pairs { i16 2405, i32 266 }, %struct.cdns_reg_pairs { i16 2275, i32 267 }, %struct.cdns_reg_pairs { i16 250, i32 297 }, %struct.cdns_reg_pairs { i16 250, i32 299 }, %struct.cdns_reg_pairs { i16 250, i32 301 }, %struct.cdns_reg_pairs { i16 250, i32 303 }, %struct.cdns_reg_pairs { i16 250, i32 305 }, %struct.cdns_reg_pairs { i16 15, i32 312 }, %struct.cdns_reg_pairs { i16 640, i32 320 }, %struct.cdns_reg_pairs { i16 -28928, i32 322 }, %struct.cdns_reg_pairs { i16 15375, i32 336 }, %struct.cdns_reg_pairs { i16 7180, i32 337 }, %struct.cdns_reg_pairs { i16 256, i32 338 }, %struct.cdns_reg_pairs { i16 24194, i32 344 }, %struct.cdns_reg_pairs { i16 43, i32 383 }, %struct.cdns_reg_pairs { i16 3, i32 391 }, %struct.cdns_reg_pairs { i16 -32705, i32 401 }, %struct.cdns_reg_pairs { i16 4, i32 414 }, %struct.cdns_reg_pairs { i16 8208, i32 415 }, %struct.cdns_reg_pairs { i16 17458, i32 416 }], [80 x i8] zeroinitializer }, align 32
@ml_pcie_100_no_ssc_ln_regs = internal constant { [46 x %struct.cdns_reg_pairs], [80 x i8] } { [46 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 -1016, i32 0 }, %struct.cdns_reg_pairs { i16 29, i32 12 }, %struct.cdns_reg_pairs { i16 4, i32 35 }, %struct.cdns_reg_pairs { i16 4, i32 36 }, %struct.cdns_reg_pairs { i16 4, i32 38 }, %struct.cdns_reg_pairs { i16 5461, i32 76 }, %struct.cdns_reg_pairs { i16 -26877, i32 111 }, %struct.cdns_reg_pairs { i16 -32683, i32 133 }, %struct.cdns_reg_pairs { i16 -32581, i32 134 }, %struct.cdns_reg_pairs { i16 -31919, i32 135 }, %struct.cdns_reg_pairs { i16 -31927, i32 136 }, %struct.cdns_reg_pairs { i16 2, i32 140 }, %struct.cdns_reg_pairs { i16 -26624, i32 143 }, %struct.cdns_reg_pairs { i16 22052, i32 201 }, %struct.cdns_reg_pairs { i16 15, i32 205 }, %struct.cdns_reg_pairs { i16 255, i32 206 }, %struct.cdns_reg_pairs { i16 19532, i32 208 }, %struct.cdns_reg_pairs { i16 762, i32 216 }, %struct.cdns_reg_pairs { i16 762, i32 224 }, %struct.cdns_reg_pairs { i16 65, i32 232 }, %struct.cdns_reg_pairs { i16 130, i32 233 }, %struct.cdns_reg_pairs { i16 195, i32 234 }, %struct.cdns_reg_pairs { i16 325, i32 235 }, %struct.cdns_reg_pairs { i16 390, i32 236 }, %struct.cdns_reg_pairs { i16 2535, i32 264 }, %struct.cdns_reg_pairs { i16 2470, i32 265 }, %struct.cdns_reg_pairs { i16 2405, i32 266 }, %struct.cdns_reg_pairs { i16 2275, i32 267 }, %struct.cdns_reg_pairs { i16 250, i32 297 }, %struct.cdns_reg_pairs { i16 250, i32 299 }, %struct.cdns_reg_pairs { i16 250, i32 301 }, %struct.cdns_reg_pairs { i16 250, i32 303 }, %struct.cdns_reg_pairs { i16 250, i32 305 }, %struct.cdns_reg_pairs { i16 15, i32 312 }, %struct.cdns_reg_pairs { i16 640, i32 320 }, %struct.cdns_reg_pairs { i16 -28928, i32 322 }, %struct.cdns_reg_pairs { i16 15375, i32 336 }, %struct.cdns_reg_pairs { i16 7180, i32 337 }, %struct.cdns_reg_pairs { i16 256, i32 338 }, %struct.cdns_reg_pairs { i16 24194, i32 344 }, %struct.cdns_reg_pairs { i16 43, i32 383 }, %struct.cdns_reg_pairs { i16 3, i32 391 }, %struct.cdns_reg_pairs { i16 -32705, i32 401 }, %struct.cdns_reg_pairs { i16 4, i32 414 }, %struct.cdns_reg_pairs { i16 8208, i32 415 }, %struct.cdns_reg_pairs { i16 17458, i32 416 }], [80 x i8] zeroinitializer }, align 32
@ml_pcie_100_ext_ssc_ln_regs = internal constant { [49 x %struct.cdns_reg_pairs], [120 x i8] } { [49 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 -1016, i32 0 }, %struct.cdns_reg_pairs { i16 29, i32 12 }, %struct.cdns_reg_pairs { i16 4, i32 35 }, %struct.cdns_reg_pairs { i16 4, i32 36 }, %struct.cdns_reg_pairs { i16 4, i32 38 }, %struct.cdns_reg_pairs { i16 5461, i32 76 }, %struct.cdns_reg_pairs { i16 -26877, i32 111 }, %struct.cdns_reg_pairs { i16 -32450, i32 129 }, %struct.cdns_reg_pairs { i16 -32697, i32 133 }, %struct.cdns_reg_pairs { i16 -32625, i32 134 }, %struct.cdns_reg_pairs { i16 -32625, i32 135 }, %struct.cdns_reg_pairs { i16 -32625, i32 136 }, %struct.cdns_reg_pairs { i16 2, i32 140 }, %struct.cdns_reg_pairs { i16 -26624, i32 143 }, %struct.cdns_reg_pairs { i16 828, i32 145 }, %struct.cdns_reg_pairs { i16 17612, i32 151 }, %struct.cdns_reg_pairs { i16 22052, i32 201 }, %struct.cdns_reg_pairs { i16 15, i32 205 }, %struct.cdns_reg_pairs { i16 255, i32 206 }, %struct.cdns_reg_pairs { i16 19532, i32 208 }, %struct.cdns_reg_pairs { i16 762, i32 216 }, %struct.cdns_reg_pairs { i16 762, i32 224 }, %struct.cdns_reg_pairs { i16 65, i32 232 }, %struct.cdns_reg_pairs { i16 130, i32 233 }, %struct.cdns_reg_pairs { i16 195, i32 234 }, %struct.cdns_reg_pairs { i16 325, i32 235 }, %struct.cdns_reg_pairs { i16 390, i32 236 }, %struct.cdns_reg_pairs { i16 2535, i32 264 }, %struct.cdns_reg_pairs { i16 2470, i32 265 }, %struct.cdns_reg_pairs { i16 2405, i32 266 }, %struct.cdns_reg_pairs { i16 2275, i32 267 }, %struct.cdns_reg_pairs { i16 250, i32 297 }, %struct.cdns_reg_pairs { i16 250, i32 299 }, %struct.cdns_reg_pairs { i16 250, i32 301 }, %struct.cdns_reg_pairs { i16 250, i32 303 }, %struct.cdns_reg_pairs { i16 250, i32 305 }, %struct.cdns_reg_pairs { i16 15, i32 312 }, %struct.cdns_reg_pairs { i16 640, i32 320 }, %struct.cdns_reg_pairs { i16 -28928, i32 322 }, %struct.cdns_reg_pairs { i16 15375, i32 336 }, %struct.cdns_reg_pairs { i16 7180, i32 337 }, %struct.cdns_reg_pairs { i16 256, i32 338 }, %struct.cdns_reg_pairs { i16 24194, i32 344 }, %struct.cdns_reg_pairs { i16 43, i32 383 }, %struct.cdns_reg_pairs { i16 3, i32 391 }, %struct.cdns_reg_pairs { i16 -32705, i32 401 }, %struct.cdns_reg_pairs { i16 4, i32 414 }, %struct.cdns_reg_pairs { i16 8208, i32 415 }, %struct.cdns_reg_pairs { i16 17458, i32 416 }], [120 x i8] zeroinitializer }, align 32
@ml_pcie_100_int_ssc_ln_regs = internal constant { [49 x %struct.cdns_reg_pairs], [120 x i8] } { [49 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 -1016, i32 0 }, %struct.cdns_reg_pairs { i16 29, i32 12 }, %struct.cdns_reg_pairs { i16 4, i32 35 }, %struct.cdns_reg_pairs { i16 4, i32 36 }, %struct.cdns_reg_pairs { i16 4, i32 38 }, %struct.cdns_reg_pairs { i16 5461, i32 76 }, %struct.cdns_reg_pairs { i16 -26877, i32 111 }, %struct.cdns_reg_pairs { i16 -32450, i32 129 }, %struct.cdns_reg_pairs { i16 -32697, i32 133 }, %struct.cdns_reg_pairs { i16 -32625, i32 134 }, %struct.cdns_reg_pairs { i16 -32625, i32 135 }, %struct.cdns_reg_pairs { i16 -32625, i32 136 }, %struct.cdns_reg_pairs { i16 2, i32 140 }, %struct.cdns_reg_pairs { i16 -26624, i32 143 }, %struct.cdns_reg_pairs { i16 828, i32 145 }, %struct.cdns_reg_pairs { i16 17612, i32 151 }, %struct.cdns_reg_pairs { i16 22052, i32 201 }, %struct.cdns_reg_pairs { i16 15, i32 205 }, %struct.cdns_reg_pairs { i16 255, i32 206 }, %struct.cdns_reg_pairs { i16 19532, i32 208 }, %struct.cdns_reg_pairs { i16 762, i32 216 }, %struct.cdns_reg_pairs { i16 762, i32 224 }, %struct.cdns_reg_pairs { i16 65, i32 232 }, %struct.cdns_reg_pairs { i16 130, i32 233 }, %struct.cdns_reg_pairs { i16 195, i32 234 }, %struct.cdns_reg_pairs { i16 325, i32 235 }, %struct.cdns_reg_pairs { i16 390, i32 236 }, %struct.cdns_reg_pairs { i16 2535, i32 264 }, %struct.cdns_reg_pairs { i16 2470, i32 265 }, %struct.cdns_reg_pairs { i16 2405, i32 266 }, %struct.cdns_reg_pairs { i16 2275, i32 267 }, %struct.cdns_reg_pairs { i16 250, i32 297 }, %struct.cdns_reg_pairs { i16 250, i32 299 }, %struct.cdns_reg_pairs { i16 250, i32 301 }, %struct.cdns_reg_pairs { i16 250, i32 303 }, %struct.cdns_reg_pairs { i16 250, i32 305 }, %struct.cdns_reg_pairs { i16 15, i32 312 }, %struct.cdns_reg_pairs { i16 640, i32 320 }, %struct.cdns_reg_pairs { i16 -28928, i32 322 }, %struct.cdns_reg_pairs { i16 15375, i32 336 }, %struct.cdns_reg_pairs { i16 7180, i32 337 }, %struct.cdns_reg_pairs { i16 256, i32 338 }, %struct.cdns_reg_pairs { i16 24194, i32 344 }, %struct.cdns_reg_pairs { i16 43, i32 383 }, %struct.cdns_reg_pairs { i16 3, i32 391 }, %struct.cdns_reg_pairs { i16 -32705, i32 401 }, %struct.cdns_reg_pairs { i16 4, i32 414 }, %struct.cdns_reg_pairs { i16 8208, i32 415 }, %struct.cdns_reg_pairs { i16 17458, i32 416 }], [120 x i8] zeroinitializer }, align 32
@cdns_usb_ln_regs_ext_ssc = internal constant { [95 x %struct.cdns_reg_pairs], [168 x i8] } { [95 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 -502, i32 0 }, %struct.cdns_reg_pairs { i16 15, i32 1 }, %struct.cdns_reg_pairs { i16 21925, i32 2 }, %struct.cdns_reg_pairs { i16 27053, i32 3 }, %struct.cdns_reg_pairs { i16 577, i32 4 }, %struct.cdns_reg_pairs { i16 272, i32 8 }, %struct.cdns_reg_pairs { i16 20, i32 9 }, %struct.cdns_reg_pairs { i16 -12544, i32 21 }, %struct.cdns_reg_pairs { i16 31, i32 40 }, %struct.cdns_reg_pairs { i16 7, i32 41 }, %struct.cdns_reg_pairs { i16 3, i32 42 }, %struct.cdns_reg_pairs { i16 3, i32 43 }, %struct.cdns_reg_pairs { i16 4095, i32 48 }, %struct.cdns_reg_pairs { i16 3, i32 49 }, %struct.cdns_reg_pairs { i16 3, i32 50 }, %struct.cdns_reg_pairs { i16 1, i32 51 }, %struct.cdns_reg_pairs { i16 1, i32 58 }, %struct.cdns_reg_pairs { i16 1030, i32 62 }, %struct.cdns_reg_pairs { i16 21043, i32 63 }, %struct.cdns_reg_pairs { i16 202, i32 75 }, %struct.cdns_reg_pairs { i16 9490, i32 76 }, %struct.cdns_reg_pairs { i16 0, i32 106 }, %struct.cdns_reg_pairs { i16 -32194, i32 129 }, %struct.cdns_reg_pairs { i16 1935, i32 135 }, %struct.cdns_reg_pairs { i16 1935, i32 136 }, %struct.cdns_reg_pairs { i16 31548, i32 142 }, %struct.cdns_reg_pairs { i16 572, i32 145 }, %struct.cdns_reg_pairs { i16 12850, i32 146 }, %struct.cdns_reg_pairs { i16 0, i32 147 }, %struct.cdns_reg_pairs { i16 0, i32 150 }, %struct.cdns_reg_pairs { i16 -13244, i32 151 }, %struct.cdns_reg_pairs { i16 -31662, i32 152 }, %struct.cdns_reg_pairs { i16 16673, i32 192 }, %struct.cdns_reg_pairs { i16 16673, i32 193 }, %struct.cdns_reg_pairs { i16 3, i32 196 }, %struct.cdns_reg_pairs { i16 12800, i32 200 }, %struct.cdns_reg_pairs { i16 20580, i32 201 }, %struct.cdns_reg_pairs { i16 48, i32 205 }, %struct.cdns_reg_pairs { i16 72, i32 206 }, %struct.cdns_reg_pairs { i16 23130, i32 208 }, %struct.cdns_reg_pairs { i16 757, i32 216 }, %struct.cdns_reg_pairs { i16 757, i32 224 }, %struct.cdns_reg_pairs { i16 -26215, i32 225 }, %struct.cdns_reg_pairs { i16 20, i32 232 }, %struct.cdns_reg_pairs { i16 20, i32 233 }, %struct.cdns_reg_pairs { i16 20, i32 234 }, %struct.cdns_reg_pairs { i16 20, i32 235 }, %struct.cdns_reg_pairs { i16 20, i32 236 }, %struct.cdns_reg_pairs { i16 20, i32 237 }, %struct.cdns_reg_pairs { i16 20, i32 238 }, %struct.cdns_reg_pairs { i16 20, i32 239 }, %struct.cdns_reg_pairs { i16 20, i32 240 }, %struct.cdns_reg_pairs { i16 20, i32 241 }, %struct.cdns_reg_pairs { i16 20, i32 242 }, %struct.cdns_reg_pairs { i16 20, i32 243 }, %struct.cdns_reg_pairs { i16 20, i32 244 }, %struct.cdns_reg_pairs { i16 20, i32 245 }, %struct.cdns_reg_pairs { i16 20, i32 246 }, %struct.cdns_reg_pairs { i16 20, i32 247 }, %struct.cdns_reg_pairs { i16 20, i32 248 }, %struct.cdns_reg_pairs { i16 2990, i32 264 }, %struct.cdns_reg_pairs { i16 2795, i32 265 }, %struct.cdns_reg_pairs { i16 2600, i32 266 }, %struct.cdns_reg_pairs { i16 2405, i32 267 }, %struct.cdns_reg_pairs { i16 2210, i32 268 }, %struct.cdns_reg_pairs { i16 2015, i32 269 }, %struct.cdns_reg_pairs { i16 1820, i32 270 }, %struct.cdns_reg_pairs { i16 1625, i32 271 }, %struct.cdns_reg_pairs { i16 1430, i32 272 }, %struct.cdns_reg_pairs { i16 1300, i32 273 }, %struct.cdns_reg_pairs { i16 1170, i32 274 }, %struct.cdns_reg_pairs { i16 1040, i32 275 }, %struct.cdns_reg_pairs { i16 910, i32 276 }, %struct.cdns_reg_pairs { i16 780, i32 277 }, %struct.cdns_reg_pairs { i16 1012, i32 296 }, %struct.cdns_reg_pairs { i16 1, i32 308 }, %struct.cdns_reg_pairs { i16 15361, i32 335 }, %struct.cdns_reg_pairs { i16 15424, i32 336 }, %struct.cdns_reg_pairs { i16 7176, i32 337 }, %struct.cdns_reg_pairs { i16 51, i32 353 }, %struct.cdns_reg_pairs { i16 1024, i32 368 }, %struct.cdns_reg_pairs { i16 816, i32 369 }, %struct.cdns_reg_pairs { i16 511, i32 372 }, %struct.cdns_reg_pairs { i16 9, i32 380 }, %struct.cdns_reg_pairs { i16 12850, i32 387 }, %struct.cdns_reg_pairs { i16 5, i32 392 }, %struct.cdns_reg_pairs { i16 15, i32 394 }, %struct.cdns_reg_pairs { i16 9, i32 395 }, %struct.cdns_reg_pairs { i16 1, i32 396 }, %struct.cdns_reg_pairs { i16 24595, i32 400 }, %struct.cdns_reg_pairs { i16 -32749, i32 401 }, %struct.cdns_reg_pairs { i16 -32759, i32 403 }, %struct.cdns_reg_pairs { i16 36, i32 414 }, %struct.cdns_reg_pairs { i16 32, i32 415 }, %struct.cdns_reg_pairs { i16 16963, i32 416 }], [168 x i8] zeroinitializer }, align 32
@qsgmii_100_no_ssc_plllc1_ln_regs = internal constant { [36 x %struct.cdns_reg_pairs], [64 x i8] } { [36 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 -1016, i32 0 }, %struct.cdns_reg_pairs { i16 594, i32 4 }, %struct.cdns_reg_pairs { i16 4, i32 38 }, %struct.cdns_reg_pairs { i16 4094, i32 48 }, %struct.cdns_reg_pairs { i16 17, i32 58 }, %struct.cdns_reg_pairs { i16 1, i32 59 }, %struct.cdns_reg_pairs { i16 21043, i32 63 }, %struct.cdns_reg_pairs { i16 0, i32 106 }, %struct.cdns_reg_pairs { i16 137, i32 136 }, %struct.cdns_reg_pairs { i16 15420, i32 142 }, %struct.cdns_reg_pairs { i16 12834, i32 146 }, %struct.cdns_reg_pairs { i16 0, i32 147 }, %struct.cdns_reg_pairs { i16 -31710, i32 152 }, %struct.cdns_reg_pairs { i16 16657, i32 192 }, %struct.cdns_reg_pairs { i16 16657, i32 193 }, %struct.cdns_reg_pairs { i16 2, i32 196 }, %struct.cdns_reg_pairs { i16 -27243, i32 225 }, %struct.cdns_reg_pairs { i16 390, i32 232 }, %struct.cdns_reg_pairs { i16 390, i32 233 }, %struct.cdns_reg_pairs { i16 390, i32 234 }, %struct.cdns_reg_pairs { i16 390, i32 235 }, %struct.cdns_reg_pairs { i16 390, i32 236 }, %struct.cdns_reg_pairs { i16 2145, i32 264 }, %struct.cdns_reg_pairs { i16 2016, i32 265 }, %struct.cdns_reg_pairs { i16 1950, i32 266 }, %struct.cdns_reg_pairs { i16 1821, i32 267 }, %struct.cdns_reg_pairs { i16 1013, i32 296 }, %struct.cdns_reg_pairs { i16 3073, i32 335 }, %struct.cdns_reg_pairs { i16 15424, i32 336 }, %struct.cdns_reg_pairs { i16 7172, i32 337 }, %struct.cdns_reg_pairs { i16 51, i32 353 }, %struct.cdns_reg_pairs { i16 1632, i32 369 }, %struct.cdns_reg_pairs { i16 213, i32 380 }, %struct.cdns_reg_pairs { i16 2925, i32 382 }, %struct.cdns_reg_pairs { i16 258, i32 414 }, %struct.cdns_reg_pairs { i16 2, i32 415 }], [64 x i8] zeroinitializer }, align 32
@qsgmii_phy_pma_ln_vals = internal global { %struct.cdns_sierra_vals, [24 x i8] } { %struct.cdns_sierra_vals { ptr @qsgmii_phy_pma_ln_regs, i32 1 }, [24 x i8] zeroinitializer }, align 32
@qsgmii_phy_pma_ln_regs = internal global { [1 x %struct.cdns_reg_pairs], [24 x i8] } { [1 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i16 -28656, i32 0 }], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 9]
@___asan_gen_.175 = private unnamed_addr constant [19 x i8] c"cdns_sierra_driver\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 2303, i32 31 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 2307, i32 11 }
@___asan_gen_.181 = private unnamed_addr constant [21 x i8] c"cdns_sierra_id_table\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 2290, i32 34 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1362, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1403, i32 43 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1408, i32 32 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1409, i32 32 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1416, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1426, i32 5 }
@___asan_gen_.223 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 641, i32 29 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1453, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [28 x i8] c"cdns_sierra_lane_cdb_config\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 405, i32 35 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1053, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant [30 x i8] c"cdns_sierra_common_cdb_config\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 424, i32 35 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1063, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [35 x i8] c"cdns_sierra_phy_pcs_cmn_cdb_config\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 432, i32 35 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1072, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [36 x i8] c"cdns_sierra_phy_pcs_lane_cdb_config\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 449, i32 35 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1084, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant [35 x i8] c"cdns_sierra_phy_pma_cmn_cdb_config\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 468, i32 35 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1094, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant [36 x i8] c"cdns_sierra_phy_pma_lane_cdb_config\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 485, i32 35 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1106, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 953, i32 9 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 406, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 407, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 408, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 409, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 410, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 411, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 412, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 413, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 414, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 415, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 416, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 417, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 418, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 419, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 420, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 421, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 425, i32 10 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 433, i32 10 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 450, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 451, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 452, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 453, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 454, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 455, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 456, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 457, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 458, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 459, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 460, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 461, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 462, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 463, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 464, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 465, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 469, i32 10 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 486, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 487, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 488, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 489, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 490, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 491, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 492, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 493, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 494, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 495, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 496, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 497, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 498, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 499, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 500, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 501, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 967, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 976, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 984, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 992, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1001, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1009, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1018, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1028, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1121, i32 35 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1123, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1128, i32 35 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1130, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1136, i32 35 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1138, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1144, i32 35 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1146, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1152, i32 35 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1154, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 886, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 892, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 900, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 777, i32 4 }
@___asan_gen_.577 = private unnamed_addr constant [21 x i8] c"pll_mux_parent_index\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 276, i32 18 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 730, i32 4 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 736, i32 39 }
@___asan_gen_.592 = private unnamed_addr constant [10 x i8] c"clk_names\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 235, i32 27 }
@___asan_gen_.595 = private unnamed_addr constant [24 x i8] c"cdns_sierra_pll_mux_ops\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 698, i32 29 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 236, i32 28 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 237, i32 29 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 238, i32 33 }
@___asan_gen_.607 = private unnamed_addr constant [26 x i8] c"cdns_sierra_pll_mux_table\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 281, i32 12 }
@___asan_gen_.610 = private unnamed_addr constant [31 x i8] c"cdns_sierra_derived_refclk_ops\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 814, i32 29 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 847, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 854, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1202, i32 46 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1204, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1209, i32 55 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1211, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 910, i32 34 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 913, i32 34 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 916, i32 34 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 934, i32 30 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 585, i32 4 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 593, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 601, i32 4 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 613, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.691 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 620, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant [16 x i8] c"cdns_map_sierra\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 2137, i32 38 }
@___asan_gen_.697 = private unnamed_addr constant [19 x i8] c"cdns_ti_map_sierra\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 2209, i32 38 }
@___asan_gen_.700 = private unnamed_addr constant [22 x i8] c"pcie_phy_pcs_cmn_vals\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1579, i32 32 }
@___asan_gen_.703 = private unnamed_addr constant [25 x i8] c"pcie_100_no_ssc_cmn_vals\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1866, i32 32 }
@___asan_gen_.706 = private unnamed_addr constant [26 x i8] c"pcie_100_ext_ssc_cmn_vals\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 2010, i32 32 }
@___asan_gen_.709 = private unnamed_addr constant [26 x i8] c"pcie_100_int_ssc_cmn_vals\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1941, i32 32 }
@___asan_gen_.712 = private unnamed_addr constant [31 x i8] c"pcie_100_no_ssc_plllc_cmn_vals\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1645, i32 32 }
@___asan_gen_.715 = private unnamed_addr constant [32 x i8] c"pcie_100_ext_ssc_plllc_cmn_vals\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1801, i32 32 }
@___asan_gen_.718 = private unnamed_addr constant [32 x i8] c"pcie_100_int_ssc_plllc_cmn_vals\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1726, i32 32 }
@___asan_gen_.721 = private unnamed_addr constant [25 x i8] c"usb_100_ext_ssc_cmn_vals\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 2127, i32 32 }
@___asan_gen_.724 = private unnamed_addr constant [34 x i8] c"qsgmii_100_no_ssc_plllc1_cmn_vals\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1564, i32 32 }
@___asan_gen_.727 = private unnamed_addr constant [24 x i8] c"pcie_100_no_ssc_ln_vals\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1871, i32 32 }
@___asan_gen_.730 = private unnamed_addr constant [25 x i8] c"pcie_100_ext_ssc_ln_vals\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 2015, i32 32 }
@___asan_gen_.733 = private unnamed_addr constant [25 x i8] c"pcie_100_int_ssc_ln_vals\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1946, i32 32 }
@___asan_gen_.736 = private unnamed_addr constant [27 x i8] c"ml_pcie_100_no_ssc_ln_vals\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1650, i32 32 }
@___asan_gen_.739 = private unnamed_addr constant [28 x i8] c"ml_pcie_100_ext_ssc_ln_vals\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1806, i32 32 }
@___asan_gen_.742 = private unnamed_addr constant [28 x i8] c"ml_pcie_100_int_ssc_ln_vals\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1731, i32 32 }
@___asan_gen_.745 = private unnamed_addr constant [24 x i8] c"usb_100_ext_ssc_ln_vals\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 2132, i32 32 }
@___asan_gen_.748 = private unnamed_addr constant [33 x i8] c"qsgmii_100_no_ssc_plllc1_ln_vals\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1569, i32 32 }
@___asan_gen_.751 = private unnamed_addr constant [22 x i8] c"pcie_phy_pcs_cmn_regs\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1575, i32 30 }
@___asan_gen_.754 = private unnamed_addr constant [26 x i8] c"cdns_pcie_cmn_regs_no_ssc\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1812, i32 36 }
@___asan_gen_.757 = private unnamed_addr constant [27 x i8] c"cdns_pcie_cmn_regs_ext_ssc\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1952, i32 36 }
@___asan_gen_.760 = private unnamed_addr constant [27 x i8] c"cdns_pcie_cmn_regs_int_ssc\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1877, i32 36 }
@___asan_gen_.763 = private unnamed_addr constant [31 x i8] c"pcie_100_no_ssc_plllc_cmn_regs\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1585, i32 36 }
@___asan_gen_.766 = private unnamed_addr constant [32 x i8] c"pcie_100_ext_ssc_plllc_cmn_regs\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1737, i32 36 }
@___asan_gen_.769 = private unnamed_addr constant [32 x i8] c"pcie_100_int_ssc_plllc_cmn_regs\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1656, i32 36 }
@___asan_gen_.772 = private unnamed_addr constant [26 x i8] c"cdns_usb_cmn_regs_ext_ssc\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 2021, i32 36 }
@___asan_gen_.775 = private unnamed_addr constant [34 x i8] c"qsgmii_100_no_ssc_plllc1_cmn_regs\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1519, i32 36 }
@___asan_gen_.778 = private unnamed_addr constant [25 x i8] c"cdns_pcie_ln_regs_no_ssc\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1820, i32 36 }
@___asan_gen_.781 = private unnamed_addr constant [26 x i8] c"cdns_pcie_ln_regs_ext_ssc\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1961, i32 36 }
@___asan_gen_.784 = private unnamed_addr constant [26 x i8] c"cdns_pcie_ln_regs_int_ssc\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1892, i32 36 }
@___asan_gen_.787 = private unnamed_addr constant [27 x i8] c"ml_pcie_100_no_ssc_ln_regs\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1596, i32 36 }
@___asan_gen_.790 = private unnamed_addr constant [28 x i8] c"ml_pcie_100_ext_ssc_ln_regs\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1749, i32 36 }
@___asan_gen_.793 = private unnamed_addr constant [28 x i8] c"ml_pcie_100_int_ssc_ln_regs\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1674, i32 36 }
@___asan_gen_.796 = private unnamed_addr constant [25 x i8] c"cdns_usb_ln_regs_ext_ssc\00", align 1
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 2029, i32 36 }
@___asan_gen_.799 = private unnamed_addr constant [33 x i8] c"qsgmii_100_no_ssc_plllc1_ln_regs\00", align 1
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1525, i32 36 }
@___asan_gen_.802 = private unnamed_addr constant [23 x i8] c"qsgmii_phy_pma_ln_vals\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1513, i32 32 }
@___asan_gen_.805 = private unnamed_addr constant [23 x i8] c"qsgmii_phy_pma_ln_regs\00", align 1
@___asan_gen_.806 = private constant [44 x i8] c"../drivers/phy/cadence/phy-cadence-sierra.c\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.806, i32 1509, i32 30 }
@llvm.compiler.used = appending global [256 x ptr] [ptr @__UNIQUE_ID_alias290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_cdns_sierra_driver_exit, ptr @__initcall__kmod_phy_cadence_sierra__289_2311_cdns_sierra_driver_init6, ptr @cdns_regfield_init._entry, ptr @cdns_regfield_init._entry.101, ptr @cdns_regfield_init._entry.104, ptr @cdns_regfield_init._entry.107, ptr @cdns_regfield_init._entry.89, ptr @cdns_regfield_init._entry.92, ptr @cdns_regfield_init._entry.95, ptr @cdns_regfield_init._entry.98, ptr @cdns_regfield_init._entry_ptr, ptr @cdns_regfield_init._entry_ptr.100, ptr @cdns_regfield_init._entry_ptr.103, ptr @cdns_regfield_init._entry_ptr.106, ptr @cdns_regfield_init._entry_ptr.109, ptr @cdns_regfield_init._entry_ptr.91, ptr @cdns_regfield_init._entry_ptr.94, ptr @cdns_regfield_init._entry_ptr.97, ptr @cdns_regmap_init_blocks._entry, ptr @cdns_regmap_init_blocks._entry.20, ptr @cdns_regmap_init_blocks._entry.23, ptr @cdns_regmap_init_blocks._entry.26, ptr @cdns_regmap_init_blocks._entry.29, ptr @cdns_regmap_init_blocks._entry.32, ptr @cdns_regmap_init_blocks._entry_ptr, ptr @cdns_regmap_init_blocks._entry_ptr.22, ptr @cdns_regmap_init_blocks._entry_ptr.25, ptr @cdns_regmap_init_blocks._entry_ptr.28, ptr @cdns_regmap_init_blocks._entry_ptr.31, ptr @cdns_regmap_init_blocks._entry_ptr.34, ptr @cdns_sierra_clk_register._entry, ptr @cdns_sierra_clk_register._entry.131, ptr @cdns_sierra_clk_register._entry.134, ptr @cdns_sierra_clk_register._entry_ptr, ptr @cdns_sierra_clk_register._entry_ptr.133, ptr @cdns_sierra_clk_register._entry_ptr.136, ptr @cdns_sierra_derived_refclk_register._entry, ptr @cdns_sierra_derived_refclk_register._entry.147, ptr @cdns_sierra_derived_refclk_register._entry_ptr, ptr @cdns_sierra_derived_refclk_register._entry_ptr.149, ptr @cdns_sierra_driver_exit, ptr @cdns_sierra_phy_get_clocks._entry, ptr @cdns_sierra_phy_get_clocks._entry.114, ptr @cdns_sierra_phy_get_clocks._entry.118, ptr @cdns_sierra_phy_get_clocks._entry.122, ptr @cdns_sierra_phy_get_clocks._entry.126, ptr @cdns_sierra_phy_get_clocks._entry_ptr, ptr @cdns_sierra_phy_get_clocks._entry_ptr.116, ptr @cdns_sierra_phy_get_clocks._entry_ptr.120, ptr @cdns_sierra_phy_get_clocks._entry_ptr.124, ptr @cdns_sierra_phy_get_clocks._entry_ptr.128, ptr @cdns_sierra_phy_get_resets._entry, ptr @cdns_sierra_phy_get_resets._entry.154, ptr @cdns_sierra_phy_get_resets._entry_ptr, ptr @cdns_sierra_phy_get_resets._entry_ptr.156, ptr @cdns_sierra_phy_on._entry, ptr @cdns_sierra_phy_on._entry.163, ptr @cdns_sierra_phy_on._entry.166, ptr @cdns_sierra_phy_on._entry.169, ptr @cdns_sierra_phy_on._entry.172, ptr @cdns_sierra_phy_on._entry_ptr, ptr @cdns_sierra_phy_on._entry_ptr.165, ptr @cdns_sierra_phy_on._entry_ptr.168, ptr @cdns_sierra_phy_on._entry_ptr.171, ptr @cdns_sierra_phy_on._entry_ptr.174, ptr @cdns_sierra_phy_probe._entry, ptr @cdns_sierra_phy_probe._entry.12, ptr @cdns_sierra_phy_probe._entry.15, ptr @cdns_sierra_phy_probe._entry.9, ptr @cdns_sierra_phy_probe._entry_ptr, ptr @cdns_sierra_phy_probe._entry_ptr.11, ptr @cdns_sierra_phy_probe._entry_ptr.14, ptr @cdns_sierra_phy_probe._entry_ptr.17, ptr @cdns_sierra_phy_register_pll_mux._entry, ptr @cdns_sierra_phy_register_pll_mux._entry_ptr, ptr @cdns_sierra_pll_mux_register._entry, ptr @cdns_sierra_pll_mux_register._entry_ptr, ptr @cdns_sierra_driver, ptr @.str, ptr @cdns_sierra_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @ops, ptr @.str.16, ptr @cdns_sierra_lane_cdb_config, ptr @.str.18, ptr @.str.19, ptr @cdns_sierra_common_cdb_config, ptr @.str.21, ptr @cdns_sierra_phy_pcs_cmn_cdb_config, ptr @.str.24, ptr @cdns_sierra_phy_pcs_lane_cdb_config, ptr @.str.27, ptr @cdns_sierra_phy_pma_cmn_cdb_config, ptr @.str.30, ptr @cdns_sierra_phy_pma_lane_cdb_config, ptr @.str.33, ptr @cdns_regmap_init._key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @pll_mux_parent_index, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @clk_names, ptr @cdns_sierra_pll_mux_ops, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @cdns_sierra_pll_mux_table, ptr @cdns_sierra_derived_refclk_ops, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.173, ptr @cdns_map_sierra, ptr @cdns_ti_map_sierra, ptr @pcie_phy_pcs_cmn_vals, ptr @pcie_100_no_ssc_cmn_vals, ptr @pcie_100_ext_ssc_cmn_vals, ptr @pcie_100_int_ssc_cmn_vals, ptr @pcie_100_no_ssc_plllc_cmn_vals, ptr @pcie_100_ext_ssc_plllc_cmn_vals, ptr @pcie_100_int_ssc_plllc_cmn_vals, ptr @usb_100_ext_ssc_cmn_vals, ptr @qsgmii_100_no_ssc_plllc1_cmn_vals, ptr @pcie_100_no_ssc_ln_vals, ptr @pcie_100_ext_ssc_ln_vals, ptr @pcie_100_int_ssc_ln_vals, ptr @ml_pcie_100_no_ssc_ln_vals, ptr @ml_pcie_100_ext_ssc_ln_vals, ptr @ml_pcie_100_int_ssc_ln_vals, ptr @usb_100_ext_ssc_ln_vals, ptr @qsgmii_100_no_ssc_plllc1_ln_vals, ptr @pcie_phy_pcs_cmn_regs, ptr @cdns_pcie_cmn_regs_no_ssc, ptr @cdns_pcie_cmn_regs_ext_ssc, ptr @cdns_pcie_cmn_regs_int_ssc, ptr @pcie_100_no_ssc_plllc_cmn_regs, ptr @pcie_100_ext_ssc_plllc_cmn_regs, ptr @pcie_100_int_ssc_plllc_cmn_regs, ptr @cdns_usb_cmn_regs_ext_ssc, ptr @qsgmii_100_no_ssc_plllc1_cmn_regs, ptr @cdns_pcie_ln_regs_no_ssc, ptr @cdns_pcie_ln_regs_ext_ssc, ptr @cdns_pcie_ln_regs_int_ssc, ptr @ml_pcie_100_no_ssc_ln_regs, ptr @ml_pcie_100_ext_ssc_ln_regs, ptr @ml_pcie_100_int_ssc_ln_regs, ptr @cdns_usb_ln_regs_ext_ssc, ptr @qsgmii_100_no_ssc_plllc1_ln_regs, ptr @qsgmii_phy_pma_ln_vals, ptr @qsgmii_phy_pma_ln_regs], section "llvm.metadata"
@0 = internal global [211 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_id_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_lane_cdb_config to i32), i32 2752, i32 3424, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_regmap_init_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_common_cdb_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_regmap_init_blocks._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_pcs_cmn_cdb_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_regmap_init_blocks._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_pcs_lane_cdb_config to i32), i32 2752, i32 3424, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_regmap_init_blocks._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_pma_cmn_cdb_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_regmap_init_blocks._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_pma_lane_cdb_config to i32), i32 2752, i32 3424, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_regmap_init_blocks._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_regmap_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_regfield_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_regfield_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_regfield_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_regfield_init._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_regfield_init._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_regfield_init._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_regfield_init._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_regfield_init._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_get_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_get_clocks._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_get_clocks._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_get_clocks._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_get_clocks._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_clk_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_clk_register._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_clk_register._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_register_pll_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_mux_parent_index to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_pll_mux_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_pll_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_pll_mux_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_derived_refclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_derived_refclk_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_derived_refclk_register._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_get_resets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_get_resets._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_on._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_on._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_on._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_sierra_phy_on._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_map_sierra to i32), i32 776, i32 992, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_ti_map_sierra to i32), i32 776, i32 992, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_phy_pcs_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_100_no_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_100_ext_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_100_int_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_100_no_ssc_plllc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_100_ext_ssc_plllc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_100_int_ssc_plllc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_100_ext_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qsgmii_100_no_ssc_plllc1_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_100_no_ssc_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_100_ext_ssc_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_100_int_ssc_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ml_pcie_100_no_ssc_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ml_pcie_100_ext_ssc_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ml_pcie_100_int_ssc_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_100_ext_ssc_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qsgmii_100_no_ssc_plllc1_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_phy_pcs_cmn_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_cmn_regs_no_ssc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_cmn_regs_ext_ssc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_cmn_regs_int_ssc to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_100_no_ssc_plllc_cmn_regs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_100_ext_ssc_plllc_cmn_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_100_int_ssc_plllc_cmn_regs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_usb_cmn_regs_ext_ssc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qsgmii_100_no_ssc_plllc1_cmn_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_ln_regs_no_ssc to i32), i32 344, i32 416, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_ln_regs_ext_ssc to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_ln_regs_int_ssc to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ml_pcie_100_no_ssc_ln_regs to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ml_pcie_100_ext_ssc_ln_regs to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ml_pcie_100_int_ssc_ln_regs to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_usb_ln_regs_ext_ssc to i32), i32 760, i32 928, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qsgmii_100_no_ssc_plllc1_ln_regs to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qsgmii_phy_pma_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qsgmii_phy_pma_ln_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_sierra_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_sierra_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdns_sierra_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns_sierra_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_sierra_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %id_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id_value) #8
  %0 = ptrtoint ptr %id_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id_value, align 4, !annotation !445
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_get_next_child(ptr noundef %2, ptr noundef null) #8
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %entry.cleanup127_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup127_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %2, ptr noundef nonnull %child.06.i) #8
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %cmp = icmp eq i32 %inc.i, 0
  br i1 %cmp, label %of_get_child_count.exit.cleanup127_crit_edge, label %if.end

of_get_child_count.exit.cleanup127_crit_edge:     ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end:                                           ; preds = %of_get_child_count.exit
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup127_crit_edge, label %if.end4

if.end.cleanup127_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end4:                                          ; preds = %if.end
  %call.i233 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 824, i32 noundef 3520) #8
  %tobool6.not = icmp eq ptr %call.i233, null
  br i1 %tobool6.not, label %if.end4.cleanup127_crit_edge, label %if.end8

if.end4.cleanup127_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end8:                                          ; preds = %if.end4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i233, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %call.i233 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %call.i233, align 4
  %init_data = getelementptr inbounds %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 2
  %5 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %init_data, align 4
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  %6 = ptrtoint ptr %call10 to i32
  br label %cleanup127

if.end14:                                         ; preds = %if.end8
  %block_offset_shift = getelementptr inbounds %struct.cdns_sierra_data, ptr %call2, i32 0, i32 1
  %7 = ptrtoint ptr %block_offset_shift to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %block_offset_shift, align 4
  %reg_offset_shift = getelementptr inbounds %struct.cdns_sierra_data, ptr %call2, i32 0, i32 2
  %9 = ptrtoint ptr %reg_offset_shift to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %reg_offset_shift, align 1
  %11 = ptrtoint ptr %call.i233 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i233, align 4
  %conv.i = zext i8 %8 to i32
  %shl.i = shl i32 16384, %conv.i
  %conv3.i = zext i8 %10 to i32
  br label %for.body.i234

for.body.i234:                                    ; preds = %if.end.i.for.body.i234_crit_edge, %if.end14
  %i.0221.i = phi i32 [ 0, %if.end14 ], [ %inc.i235, %if.end.i.for.body.i234_crit_edge ]
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 12, i32 noundef 3520) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i234.cdns_regmap_init_blocks.exit.thread_crit_edge, label %cdns_regmap_init.exit.i

for.body.i234.cdns_regmap_init_blocks.exit.thread_crit_edge: ; preds = %for.body.i234
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_regmap_init_blocks.exit.thread

cdns_regmap_init.exit.i:                          ; preds = %for.body.i234
  %arrayidx.i = getelementptr [16 x %struct.regmap_config], ptr @cdns_sierra_lane_cdb_config, i32 0, i32 %i.0221.i
  %shl2.i = shl i32 %i.0221.i, 9
  %shl4.i = shl i32 %shl2.i, %conv3.i
  %add.i = add i32 %shl4.i, %shl.i
  %13 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %call.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call10, i32 %add.i
  %base3.i.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %base3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i.i, ptr %base3.i.i, align 4
  %reg_offset_shift4.i.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %reg_offset_shift4.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %10, ptr %reg_offset_shift4.i.i, align 4
  %call5.i.i = tail call ptr @__devm_regmap_init(ptr noundef %12, ptr noundef null, ptr noundef nonnull %call.i.i.i, ptr noundef %arrayidx.i, ptr noundef nonnull @cdns_regmap_init._key, ptr noundef nonnull @.str.35) #8
  %cmp.i.i = icmp ugt ptr %call5.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cdns_regmap_init.exit.i.cdns_regmap_init_blocks.exit_crit_edge, label %if.end.i

cdns_regmap_init.exit.i.cdns_regmap_init_blocks.exit_crit_edge: ; preds = %cdns_regmap_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_regmap_init_blocks.exit

if.end.i:                                         ; preds = %cdns_regmap_init.exit.i
  %arrayidx7.i = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 6, i32 %i.0221.i
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i, ptr %arrayidx7.i, align 4
  %inc.i235 = add nuw nsw i32 %i.0221.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i235, 16
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i234_crit_edge

if.end.i.for.body.i234_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i234

for.end.i:                                        ; preds = %if.end.i
  %call.i.i154.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 12, i32 noundef 3520) #8
  %tobool.not.i155.i = icmp eq ptr %call.i.i154.i, null
  br i1 %tobool.not.i155.i, label %for.end.i.cdns_regmap_init_blocks.exit.thread_crit_edge, label %cdns_regmap_init.exit161.i

for.end.i.cdns_regmap_init_blocks.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_regmap_init_blocks.exit.thread

cdns_regmap_init.exit161.i:                       ; preds = %for.end.i
  %17 = ptrtoint ptr %call.i.i154.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %12, ptr %call.i.i154.i, align 4
  %base3.i156.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i154.i, i32 0, i32 1
  %18 = ptrtoint ptr %base3.i156.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call10, ptr %base3.i156.i, align 4
  %reg_offset_shift4.i157.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i154.i, i32 0, i32 2
  %19 = ptrtoint ptr %reg_offset_shift4.i157.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %10, ptr %reg_offset_shift4.i157.i, align 4
  %call5.i158.i = tail call ptr @__devm_regmap_init(ptr noundef %12, ptr noundef null, ptr noundef nonnull %call.i.i154.i, ptr noundef nonnull @cdns_sierra_common_cdb_config, ptr noundef nonnull @cdns_regmap_init._key, ptr noundef nonnull @.str.35) #8
  %cmp.i162.i = icmp ugt ptr %call5.i158.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162.i, label %cdns_regmap_init.exit161.i.cdns_regmap_init_blocks.exit_crit_edge, label %if.end15.i

cdns_regmap_init.exit161.i.cdns_regmap_init_blocks.exit_crit_edge: ; preds = %cdns_regmap_init.exit161.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_regmap_init_blocks.exit

if.end15.i:                                       ; preds = %cdns_regmap_init.exit161.i
  %regmap_common_cdb.i = getelementptr inbounds %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 11
  %20 = ptrtoint ptr %regmap_common_cdb.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i158.i, ptr %regmap_common_cdb.i, align 4
  %call.i.i163.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 12, i32 noundef 3520) #8
  %tobool.not.i164.i = icmp eq ptr %call.i.i163.i, null
  br i1 %tobool.not.i164.i, label %if.end15.i.cdns_regmap_init_blocks.exit.thread_crit_edge, label %cdns_regmap_init.exit171.i

if.end15.i.cdns_regmap_init_blocks.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_regmap_init_blocks.exit.thread

cdns_regmap_init.exit171.i:                       ; preds = %if.end15.i
  %shl17.i = shl i32 49152, %conv.i
  %21 = ptrtoint ptr %call.i.i163.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %12, ptr %call.i.i163.i, align 4
  %add.ptr.i165.i = getelementptr i8, ptr %call10, i32 %shl17.i
  %base3.i166.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i163.i, i32 0, i32 1
  %22 = ptrtoint ptr %base3.i166.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i165.i, ptr %base3.i166.i, align 4
  %reg_offset_shift4.i167.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i163.i, i32 0, i32 2
  %23 = ptrtoint ptr %reg_offset_shift4.i167.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %10, ptr %reg_offset_shift4.i167.i, align 4
  %call5.i168.i = tail call ptr @__devm_regmap_init(ptr noundef %12, ptr noundef null, ptr noundef nonnull %call.i.i163.i, ptr noundef nonnull @cdns_sierra_phy_pcs_cmn_cdb_config, ptr noundef nonnull @cdns_regmap_init._key, ptr noundef nonnull @.str.35) #8
  %cmp.i172.i = icmp ugt ptr %call5.i168.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172.i, label %cdns_regmap_init.exit171.i.cdns_regmap_init_blocks.exit_crit_edge, label %if.end25.i

cdns_regmap_init.exit171.i.cdns_regmap_init_blocks.exit_crit_edge: ; preds = %cdns_regmap_init.exit171.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_regmap_init_blocks.exit

if.end25.i:                                       ; preds = %cdns_regmap_init.exit171.i
  %regmap_phy_pcs_common_cdb.i = getelementptr inbounds %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 7
  %24 = ptrtoint ptr %regmap_phy_pcs_common_cdb.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i168.i, ptr %regmap_phy_pcs_common_cdb.i, align 4
  %shl31.i = shl i32 53248, %conv.i
  br label %for.body29.i

for.body29.i:                                     ; preds = %if.end44.i.for.body29.i_crit_edge, %if.end25.i
  %i.1222.i = phi i32 [ 0, %if.end25.i ], [ %inc47.i, %if.end44.i.for.body29.i_crit_edge ]
  %call.i.i173.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 12, i32 noundef 3520) #8
  %tobool.not.i174.i = icmp eq ptr %call.i.i173.i, null
  br i1 %tobool.not.i174.i, label %for.body29.i.cdns_regmap_init_blocks.exit.thread_crit_edge, label %cdns_regmap_init.exit181.i

for.body29.i.cdns_regmap_init_blocks.exit.thread_crit_edge: ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_regmap_init_blocks.exit.thread

cdns_regmap_init.exit181.i:                       ; preds = %for.body29.i
  %arrayidx36.i = getelementptr [16 x %struct.regmap_config], ptr @cdns_sierra_phy_pcs_lane_cdb_config, i32 0, i32 %i.1222.i
  %shl32.i = shl i32 %i.1222.i, 8
  %shl34.i = shl i32 %shl32.i, %conv3.i
  %add35.i = add i32 %shl34.i, %shl31.i
  %25 = ptrtoint ptr %call.i.i173.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %12, ptr %call.i.i173.i, align 4
  %add.ptr.i175.i = getelementptr i8, ptr %call10, i32 %add35.i
  %base3.i176.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i173.i, i32 0, i32 1
  %26 = ptrtoint ptr %base3.i176.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i175.i, ptr %base3.i176.i, align 4
  %reg_offset_shift4.i177.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i173.i, i32 0, i32 2
  %27 = ptrtoint ptr %reg_offset_shift4.i177.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %10, ptr %reg_offset_shift4.i177.i, align 4
  %call5.i178.i = tail call ptr @__devm_regmap_init(ptr noundef %12, ptr noundef null, ptr noundef nonnull %call.i.i173.i, ptr noundef %arrayidx36.i, ptr noundef nonnull @cdns_regmap_init._key, ptr noundef nonnull @.str.35) #8
  %cmp.i182.i = icmp ugt ptr %call5.i178.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182.i, label %cdns_regmap_init.exit181.i.cdns_regmap_init_blocks.exit_crit_edge, label %if.end44.i

cdns_regmap_init.exit181.i.cdns_regmap_init_blocks.exit_crit_edge: ; preds = %cdns_regmap_init.exit181.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_regmap_init_blocks.exit

if.end44.i:                                       ; preds = %cdns_regmap_init.exit181.i
  %arrayidx45.i = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 8, i32 %i.1222.i
  %28 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call5.i178.i, ptr %arrayidx45.i, align 4
  %inc47.i = add nuw nsw i32 %i.1222.i, 1
  %exitcond224.not.i = icmp eq i32 %inc47.i, 16
  br i1 %exitcond224.not.i, label %for.end48.i, label %if.end44.i.for.body29.i_crit_edge

if.end44.i.for.body29.i_crit_edge:                ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body29.i

for.end48.i:                                      ; preds = %if.end44.i
  %call.i.i183.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 12, i32 noundef 3520) #8
  %tobool.not.i184.i = icmp eq ptr %call.i.i183.i, null
  br i1 %tobool.not.i184.i, label %for.end48.i.cdns_regmap_init_blocks.exit.thread_crit_edge, label %cdns_regmap_init.exit191.i

for.end48.i.cdns_regmap_init_blocks.exit.thread_crit_edge: ; preds = %for.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_regmap_init_blocks.exit.thread

cdns_regmap_init.exit191.i:                       ; preds = %for.end48.i
  %shl50.i = shl i32 57344, %conv.i
  %29 = ptrtoint ptr %call.i.i183.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %12, ptr %call.i.i183.i, align 4
  %add.ptr.i185.i = getelementptr i8, ptr %call10, i32 %shl50.i
  %base3.i186.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i183.i, i32 0, i32 1
  %30 = ptrtoint ptr %base3.i186.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i185.i, ptr %base3.i186.i, align 4
  %reg_offset_shift4.i187.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i183.i, i32 0, i32 2
  %31 = ptrtoint ptr %reg_offset_shift4.i187.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %10, ptr %reg_offset_shift4.i187.i, align 4
  %call5.i188.i = tail call ptr @__devm_regmap_init(ptr noundef %12, ptr noundef null, ptr noundef nonnull %call.i.i183.i, ptr noundef nonnull @cdns_sierra_phy_pma_cmn_cdb_config, ptr noundef nonnull @cdns_regmap_init._key, ptr noundef nonnull @.str.35) #8
  %cmp.i192.i = icmp ugt ptr %call5.i188.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192.i, label %cdns_regmap_init.exit191.i.cdns_regmap_init_blocks.exit_crit_edge, label %if.end58.i

cdns_regmap_init.exit191.i.cdns_regmap_init_blocks.exit_crit_edge: ; preds = %cdns_regmap_init.exit191.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_regmap_init_blocks.exit

if.end58.i:                                       ; preds = %cdns_regmap_init.exit191.i
  %regmap_phy_pma_common_cdb.i = getelementptr inbounds %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 9
  %32 = ptrtoint ptr %regmap_phy_pma_common_cdb.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call5.i188.i, ptr %regmap_phy_pma_common_cdb.i, align 4
  %shl64.i = shl i32 61440, %conv.i
  br label %for.body62.i

for.body62.i:                                     ; preds = %if.end77.i.for.body62.i_crit_edge, %if.end58.i
  %i.2223.i = phi i32 [ 0, %if.end58.i ], [ %inc80.i, %if.end77.i.for.body62.i_crit_edge ]
  %call.i.i193.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 12, i32 noundef 3520) #8
  %tobool.not.i194.i = icmp eq ptr %call.i.i193.i, null
  br i1 %tobool.not.i194.i, label %for.body62.i.cdns_regmap_init_blocks.exit.thread_crit_edge, label %cdns_regmap_init.exit201.i

for.body62.i.cdns_regmap_init_blocks.exit.thread_crit_edge: ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_regmap_init_blocks.exit.thread

cdns_regmap_init.exit201.i:                       ; preds = %for.body62.i
  %arrayidx69.i = getelementptr [16 x %struct.regmap_config], ptr @cdns_sierra_phy_pma_lane_cdb_config, i32 0, i32 %i.2223.i
  %shl65.i = shl i32 %i.2223.i, 8
  %shl67.i = shl i32 %shl65.i, %conv3.i
  %add68.i = add i32 %shl67.i, %shl64.i
  %33 = ptrtoint ptr %call.i.i193.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %12, ptr %call.i.i193.i, align 4
  %add.ptr.i195.i = getelementptr i8, ptr %call10, i32 %add68.i
  %base3.i196.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i193.i, i32 0, i32 1
  %34 = ptrtoint ptr %base3.i196.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.i195.i, ptr %base3.i196.i, align 4
  %reg_offset_shift4.i197.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i193.i, i32 0, i32 2
  %35 = ptrtoint ptr %reg_offset_shift4.i197.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %10, ptr %reg_offset_shift4.i197.i, align 4
  %call5.i198.i = tail call ptr @__devm_regmap_init(ptr noundef %12, ptr noundef null, ptr noundef nonnull %call.i.i193.i, ptr noundef %arrayidx69.i, ptr noundef nonnull @cdns_regmap_init._key, ptr noundef nonnull @.str.35) #8
  %cmp.i202.i = icmp ugt ptr %call5.i198.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202.i, label %cdns_regmap_init.exit201.i.cdns_regmap_init_blocks.exit_crit_edge, label %if.end77.i

cdns_regmap_init.exit201.i.cdns_regmap_init_blocks.exit_crit_edge: ; preds = %cdns_regmap_init.exit201.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_regmap_init_blocks.exit

if.end77.i:                                       ; preds = %cdns_regmap_init.exit201.i
  %arrayidx78.i = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 10, i32 %i.2223.i
  %36 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call5.i198.i, ptr %arrayidx78.i, align 4
  %inc80.i = add nuw nsw i32 %i.2223.i, 1
  %exitcond225.not.i = icmp eq i32 %inc80.i, 16
  br i1 %exitcond225.not.i, label %if.end77.i.if.end18_crit_edge, label %if.end77.i.for.body62.i_crit_edge

if.end77.i.for.body62.i_crit_edge:                ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62.i

if.end77.i.if.end18_crit_edge:                    ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

cdns_regmap_init_blocks.exit.thread:              ; preds = %for.body62.i.cdns_regmap_init_blocks.exit.thread_crit_edge, %for.end48.i.cdns_regmap_init_blocks.exit.thread_crit_edge, %for.body29.i.cdns_regmap_init_blocks.exit.thread_crit_edge, %if.end15.i.cdns_regmap_init_blocks.exit.thread_crit_edge, %for.end.i.cdns_regmap_init_blocks.exit.thread_crit_edge, %for.body.i234.cdns_regmap_init_blocks.exit.thread_crit_edge
  %.str.33.sink.i.ph = phi ptr [ @.str.30, %for.end48.i.cdns_regmap_init_blocks.exit.thread_crit_edge ], [ @.str.24, %if.end15.i.cdns_regmap_init_blocks.exit.thread_crit_edge ], [ @.str.21, %for.end.i.cdns_regmap_init_blocks.exit.thread_crit_edge ], [ @.str.33, %for.body62.i.cdns_regmap_init_blocks.exit.thread_crit_edge ], [ @.str.27, %for.body29.i.cdns_regmap_init_blocks.exit.thread_crit_edge ], [ @.str.18, %for.body.i234.cdns_regmap_init_blocks.exit.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull %.str.33.sink.i.ph) #11
  br label %cleanup127

cdns_regmap_init_blocks.exit:                     ; preds = %cdns_regmap_init.exit201.i.cdns_regmap_init_blocks.exit_crit_edge, %cdns_regmap_init.exit191.i.cdns_regmap_init_blocks.exit_crit_edge, %cdns_regmap_init.exit181.i.cdns_regmap_init_blocks.exit_crit_edge, %cdns_regmap_init.exit171.i.cdns_regmap_init_blocks.exit_crit_edge, %cdns_regmap_init.exit161.i.cdns_regmap_init_blocks.exit_crit_edge, %cdns_regmap_init.exit.i.cdns_regmap_init_blocks.exit_crit_edge
  %.str.33.sink.i = phi ptr [ @.str.21, %cdns_regmap_init.exit161.i.cdns_regmap_init_blocks.exit_crit_edge ], [ @.str.24, %cdns_regmap_init.exit171.i.cdns_regmap_init_blocks.exit_crit_edge ], [ @.str.30, %cdns_regmap_init.exit191.i.cdns_regmap_init_blocks.exit_crit_edge ], [ @.str.33, %cdns_regmap_init.exit201.i.cdns_regmap_init_blocks.exit_crit_edge ], [ @.str.27, %cdns_regmap_init.exit181.i.cdns_regmap_init_blocks.exit_crit_edge ], [ @.str.18, %cdns_regmap_init.exit.i.cdns_regmap_init_blocks.exit_crit_edge ]
  %retval.0.i200220.sink.i = phi ptr [ %call5.i158.i, %cdns_regmap_init.exit161.i.cdns_regmap_init_blocks.exit_crit_edge ], [ %call5.i168.i, %cdns_regmap_init.exit171.i.cdns_regmap_init_blocks.exit_crit_edge ], [ %call5.i188.i, %cdns_regmap_init.exit191.i.cdns_regmap_init_blocks.exit_crit_edge ], [ %call5.i198.i, %cdns_regmap_init.exit201.i.cdns_regmap_init_blocks.exit_crit_edge ], [ %call5.i178.i, %cdns_regmap_init.exit181.i.cdns_regmap_init_blocks.exit_crit_edge ], [ %call5.i.i, %cdns_regmap_init.exit.i.cdns_regmap_init_blocks.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull %.str.33.sink.i) #11
  %37 = ptrtoint ptr %retval.0.i200220.sink.i to i32
  %tobool16.not = icmp eq ptr %retval.0.i200220.sink.i, null
  br i1 %tobool16.not, label %cdns_regmap_init_blocks.exit.if.end18_crit_edge, label %cdns_regmap_init_blocks.exit.cleanup127_crit_edge

cdns_regmap_init_blocks.exit.cleanup127_crit_edge: ; preds = %cdns_regmap_init_blocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

cdns_regmap_init_blocks.exit.if.end18_crit_edge:  ; preds = %cdns_regmap_init_blocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end18:                                         ; preds = %cdns_regmap_init_blocks.exit.if.end18_crit_edge, %if.end77.i.if.end18_crit_edge
  %38 = ptrtoint ptr %call.i233 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i233, align 4
  %regmap_common_cdb.i236 = getelementptr inbounds %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 11
  %40 = ptrtoint ptr %regmap_common_cdb.i236 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap_common_cdb.i236, align 4
  %call.i237 = tail call ptr @devm_regmap_field_alloc(ptr noundef %39, ptr noundef %41, [5 x i32] [i32 0, i32 0, i32 15, i32 0, i32 0]) #8
  %cmp.i.i238 = icmp ugt ptr %call.i237, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i238, label %do.end.i, label %if.end.i239

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.87) #11
  br label %cdns_regfield_init.exit

if.end.i239:                                      ; preds = %if.end18
  %macro_id_type.i = getelementptr inbounds %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 12
  %42 = ptrtoint ptr %macro_id_type.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i237, ptr %macro_id_type.i, align 4
  %call4.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %39, ptr noundef %41, [5 x i32] [i32 66, i32 1, i32 1, i32 0, i32 0]) #8
  %cmp.i221.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i221.i, label %if.end.i239.do.end9.i_crit_edge, label %if.end11.i

if.end.i239.do.end9.i_crit_edge:                  ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.end31.i.do.end9.i_crit_edge, %if.end.i239.do.end9.i_crit_edge
  %i.0236.lcssa.i = phi i32 [ 0, %if.end.i239.do.end9.i_crit_edge ], [ 1, %if.end31.i.do.end9.i_crit_edge ]
  %call4.lcssa.i = phi ptr [ %call4.i, %if.end.i239.do.end9.i_crit_edge ], [ %call4.1.i, %if.end31.i.do.end9.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.90, i32 noundef %i.0236.lcssa.i) #11
  br label %cdns_regfield_init.exit

if.end11.i:                                       ; preds = %if.end.i239
  %arrayidx12.i = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 19, i32 0
  %43 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call4.i, ptr %arrayidx12.i, align 4
  %call14.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %39, ptr noundef %41, [5 x i32] [i32 184, i32 8, i32 8, i32 0, i32 0]) #8
  %cmp.i222.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222.i, label %if.end11.i.do.end19.i_crit_edge, label %if.end21.i

if.end11.i.do.end19.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.end11.1.i.do.end19.i_crit_edge, %if.end11.i.do.end19.i_crit_edge
  %call14.lcssa.i = phi ptr [ %call14.i, %if.end11.i.do.end19.i_crit_edge ], [ %call14.1.i, %if.end11.1.i.do.end19.i_crit_edge ]
  %i.0236.lcssa246.i = phi i32 [ 0, %if.end11.i.do.end19.i_crit_edge ], [ 1, %if.end11.1.i.do.end19.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.93, i32 noundef %i.0236.lcssa246.i) #11
  br label %cdns_regfield_init.exit

if.end21.i:                                       ; preds = %if.end11.i
  %arrayidx22.i = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 17, i32 0
  %44 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call14.i, ptr %arrayidx22.i, align 4
  %call24.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %39, ptr noundef %41, [5 x i32] [i32 184, i32 0, i32 0, i32 0, i32 0]) #8
  %cmp.i223.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223.i, label %if.end21.i.do.end29.i_crit_edge, label %if.end31.i

if.end21.i.do.end29.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29.i

do.end29.i:                                       ; preds = %if.end21.1.i.do.end29.i_crit_edge, %if.end21.i.do.end29.i_crit_edge
  %call24.lcssa.i = phi ptr [ %call24.i, %if.end21.i.do.end29.i_crit_edge ], [ %call24.1.i, %if.end21.1.i.do.end29.i_crit_edge ]
  %i.0236.lcssa247.i = phi i32 [ 0, %if.end21.i.do.end29.i_crit_edge ], [ 1, %if.end21.1.i.do.end29.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.96, i32 noundef %i.0236.lcssa247.i) #11
  br label %cdns_regfield_init.exit

if.end31.i:                                       ; preds = %if.end21.i
  %arrayidx32.i = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 18, i32 0
  %45 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call24.i, ptr %arrayidx32.i, align 4
  %call4.1.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %39, ptr noundef %41, [5 x i32] [i32 194, i32 1, i32 1, i32 0, i32 0]) #8
  %cmp.i221.1.i = icmp ugt ptr %call4.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i221.1.i, label %if.end31.i.do.end9.i_crit_edge, label %if.end11.1.i

if.end31.i.do.end9.i_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i

if.end11.1.i:                                     ; preds = %if.end31.i
  %arrayidx12.1.i = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 19, i32 1
  %46 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call4.1.i, ptr %arrayidx12.1.i, align 4
  %call14.1.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %39, ptr noundef %41, [5 x i32] [i32 152, i32 8, i32 8, i32 0, i32 0]) #8
  %cmp.i222.1.i = icmp ugt ptr %call14.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222.1.i, label %if.end11.1.i.do.end19.i_crit_edge, label %if.end21.1.i

if.end11.1.i.do.end19.i_crit_edge:                ; preds = %if.end11.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19.i

if.end21.1.i:                                     ; preds = %if.end11.1.i
  %arrayidx22.1.i = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 17, i32 1
  %47 = ptrtoint ptr %arrayidx22.1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call14.1.i, ptr %arrayidx22.1.i, align 4
  %call24.1.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %39, ptr noundef %41, [5 x i32] [i32 152, i32 0, i32 0, i32 0, i32 0]) #8
  %cmp.i223.1.i = icmp ugt ptr %call24.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223.1.i, label %if.end21.1.i.do.end29.i_crit_edge, label %if.end31.1.i

if.end21.1.i.do.end29.i_crit_edge:                ; preds = %if.end21.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29.i

if.end31.1.i:                                     ; preds = %if.end21.1.i
  %arrayidx32.1.i = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 18, i32 1
  %48 = ptrtoint ptr %arrayidx32.1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call24.1.i, ptr %arrayidx32.1.i, align 4
  %regmap_phy_pcs_common_cdb.i240 = getelementptr inbounds %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 7
  %49 = ptrtoint ptr %regmap_phy_pcs_common_cdb.i240 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap_phy_pcs_common_cdb.i240, align 4
  %call33.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %39, ptr noundef %50, [5 x i32] [i32 14, i32 1, i32 1, i32 0, i32 0]) #8
  %cmp.i224.i = icmp ugt ptr %call33.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i224.i, label %do.end38.i, label %if.end40.i

do.end38.i:                                       ; preds = %if.end31.1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.99) #11
  br label %cdns_regfield_init.exit

if.end40.i:                                       ; preds = %if.end31.1.i
  %phy_pll_cfg_1.i = getelementptr inbounds %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 13
  %51 = ptrtoint ptr %phy_pll_cfg_1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call33.i, ptr %phy_pll_cfg_1.i, align 4
  %regmap_phy_pma_common_cdb.i241 = getelementptr inbounds %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 9
  %52 = ptrtoint ptr %regmap_phy_pma_common_cdb.i241 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap_phy_pma_common_cdb.i241, align 4
  %call41.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %39, ptr noundef %53, [5 x i32] zeroinitializer) #8
  %cmp.i225.i = icmp ugt ptr %call41.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225.i, label %do.end46.i, label %if.end48.i

do.end46.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.102) #11
  br label %cdns_regfield_init.exit

if.end48.i:                                       ; preds = %if.end40.i
  %pma_cmn_ready.i = getelementptr inbounds %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 14
  %54 = ptrtoint ptr %pma_cmn_ready.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call41.i, ptr %pma_cmn_ready.i, align 4
  br label %for.body51.i

for.body51.i:                                     ; preds = %if.end60.i.for.body51.i_crit_edge, %if.end48.i
  %i.1237.i = phi i32 [ 0, %if.end48.i ], [ %inc63.i, %if.end60.i.for.body51.i_crit_edge ]
  %arrayidx52.i = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 6, i32 %i.1237.i
  %55 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx52.i, align 4
  %call53.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %39, ptr noundef %56, [5 x i32] [i32 68, i32 0, i32 0, i32 0, i32 0]) #8
  %cmp.i226.i = icmp ugt ptr %call53.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i226.i, label %do.end58.i, label %if.end60.i

do.end58.i:                                       ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.105, i32 noundef %i.1237.i) #11
  br label %cdns_regfield_init.exit

if.end60.i:                                       ; preds = %for.body51.i
  %arrayidx61.i = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 15, i32 %i.1237.i
  %57 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call53.i, ptr %arrayidx61.i, align 4
  %inc63.i = add nuw nsw i32 %i.1237.i, 1
  %exitcond.not.i242 = icmp eq i32 %inc63.i, 16
  br i1 %exitcond.not.i242, label %if.end60.i.for.body67.i_crit_edge, label %if.end60.i.for.body51.i_crit_edge

if.end60.i.for.body51.i_crit_edge:                ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body51.i

if.end60.i.for.body67.i_crit_edge:                ; preds = %if.end60.i
  br label %for.body67.i

for.body67.i:                                     ; preds = %if.end76.i.for.body67.i_crit_edge, %if.end60.i.for.body67.i_crit_edge
  %i.2238.i = phi i32 [ %inc79.i, %if.end76.i.for.body67.i_crit_edge ], [ 0, %if.end60.i.for.body67.i_crit_edge ]
  %arrayidx68.i = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 8, i32 %i.2238.i
  %58 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx68.i, align 4
  %call69.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %39, ptr noundef %59, [5 x i32] [i32 11, i32 1, i32 1, i32 0, i32 0]) #8
  %cmp.i227.i = icmp ugt ptr %call69.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i227.i, label %do.end74.i, label %if.end76.i

do.end74.i:                                       ; preds = %for.body67.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.108, i32 noundef %i.2238.i) #11
  br label %cdns_regfield_init.exit

if.end76.i:                                       ; preds = %for.body67.i
  %arrayidx77.i = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 16, i32 %i.2238.i
  %60 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call69.i, ptr %arrayidx77.i, align 4
  %inc79.i = add nuw nsw i32 %i.2238.i, 1
  %exitcond252.not.i = icmp eq i32 %inc79.i, 16
  br i1 %exitcond252.not.i, label %if.end76.i.if.end22_crit_edge, label %if.end76.i.for.body67.i_crit_edge

if.end76.i.for.body67.i_crit_edge:                ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body67.i

if.end76.i.if.end22_crit_edge:                    ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

cdns_regfield_init.exit:                          ; preds = %do.end74.i, %do.end58.i, %do.end46.i, %do.end38.i, %do.end29.i, %do.end19.i, %do.end9.i, %do.end.i
  %retval.0.i243.in = phi ptr [ %call.i237, %do.end.i ], [ %call4.lcssa.i, %do.end9.i ], [ %call14.lcssa.i, %do.end19.i ], [ %call24.lcssa.i, %do.end29.i ], [ %call33.i, %do.end38.i ], [ %call41.i, %do.end46.i ], [ %call53.i, %do.end58.i ], [ %call69.i, %do.end74.i ]
  %retval.0.i243 = ptrtoint ptr %retval.0.i243.in to i32
  %tobool20.not = icmp eq ptr %retval.0.i243.in, null
  br i1 %tobool20.not, label %cdns_regfield_init.exit.if.end22_crit_edge, label %cdns_regfield_init.exit.cleanup127_crit_edge

cdns_regfield_init.exit.cleanup127_crit_edge:     ; preds = %cdns_regfield_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

cdns_regfield_init.exit.if.end22_crit_edge:       ; preds = %cdns_regfield_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %cdns_regfield_init.exit.if.end22_crit_edge, %if.end76.i.if.end22_crit_edge
  %61 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i233, ptr %driver_data.i, align 4
  %call.i244 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.110) #8
  %cmp.i.i245 = icmp ugt ptr %call.i244, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i245, label %if.end22.cdns_sierra_phy_get_clocks.exit_crit_edge, label %if.end.i247

if.end22.cdns_sierra_phy_get_clocks.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_sierra_phy_get_clocks.exit

if.end.i247:                                      ; preds = %if.end22
  %input_clks.i = getelementptr inbounds %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 20
  %62 = ptrtoint ptr %input_clks.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i244, ptr %input_clks.i, align 4
  %call3.i = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.113) #8
  %cmp.i74.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74.i, label %if.end.i247.cdns_sierra_phy_get_clocks.exit_crit_edge, label %if.end10.i

if.end.i247.cdns_sierra_phy_get_clocks.exit_crit_edge: ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_sierra_phy_get_clocks.exit

if.end10.i:                                       ; preds = %if.end.i247
  %arrayidx12.i248 = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 20, i32 1
  %63 = ptrtoint ptr %arrayidx12.i248 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call3.i, ptr %arrayidx12.i248, align 4
  %call13.i = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.117) #8
  %cmp.i75.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75.i, label %if.end10.i.cdns_sierra_phy_get_clocks.exit_crit_edge, label %if.end20.i

if.end10.i.cdns_sierra_phy_get_clocks.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_sierra_phy_get_clocks.exit

if.end20.i:                                       ; preds = %if.end10.i
  %arrayidx22.i249 = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 20, i32 2
  %64 = ptrtoint ptr %arrayidx22.i249 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call13.i, ptr %arrayidx22.i249, align 4
  %call23.i = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.121) #8
  %cmp.i76.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76.i, label %if.end20.i.cdns_sierra_phy_get_clocks.exit_crit_edge, label %if.end30.i

if.end20.i.cdns_sierra_phy_get_clocks.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_sierra_phy_get_clocks.exit

if.end30.i:                                       ; preds = %if.end20.i
  %arrayidx32.i250 = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 20, i32 3
  %65 = ptrtoint ptr %arrayidx32.i250 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call23.i, ptr %arrayidx32.i250, align 4
  %call33.i251 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.125) #8
  %cmp.i77.i = icmp ugt ptr %call33.i251, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77.i, label %if.end30.i.cdns_sierra_phy_get_clocks.exit_crit_edge, label %cdns_sierra_phy_get_clocks.exit.thread

if.end30.i.cdns_sierra_phy_get_clocks.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_sierra_phy_get_clocks.exit

cdns_sierra_phy_get_clocks.exit.thread:           ; preds = %if.end30.i
  %arrayidx42.i = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 20, i32 4
  %66 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call33.i251, ptr %arrayidx42.i, align 4
  %call27 = tail call fastcc i32 @cdns_sierra_clk_register(ptr noundef nonnull %call.i233)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %cdns_sierra_phy_get_clocks.exit.thread.cleanup127_crit_edge

cdns_sierra_phy_get_clocks.exit.thread.cleanup127_crit_edge: ; preds = %cdns_sierra_phy_get_clocks.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

cdns_sierra_phy_get_clocks.exit:                  ; preds = %if.end30.i.cdns_sierra_phy_get_clocks.exit_crit_edge, %if.end20.i.cdns_sierra_phy_get_clocks.exit_crit_edge, %if.end10.i.cdns_sierra_phy_get_clocks.exit_crit_edge, %if.end.i247.cdns_sierra_phy_get_clocks.exit_crit_edge, %if.end22.cdns_sierra_phy_get_clocks.exit_crit_edge
  %.str.111.sink = phi ptr [ @.str.111, %if.end22.cdns_sierra_phy_get_clocks.exit_crit_edge ], [ @.str.115, %if.end.i247.cdns_sierra_phy_get_clocks.exit_crit_edge ], [ @.str.119, %if.end10.i.cdns_sierra_phy_get_clocks.exit_crit_edge ], [ @.str.123, %if.end20.i.cdns_sierra_phy_get_clocks.exit_crit_edge ], [ @.str.127, %if.end30.i.cdns_sierra_phy_get_clocks.exit_crit_edge ]
  %retval.0.i254.in = phi ptr [ %call.i244, %if.end22.cdns_sierra_phy_get_clocks.exit_crit_edge ], [ %call3.i, %if.end.i247.cdns_sierra_phy_get_clocks.exit_crit_edge ], [ %call13.i, %if.end10.i.cdns_sierra_phy_get_clocks.exit_crit_edge ], [ %call23.i, %if.end20.i.cdns_sierra_phy_get_clocks.exit_crit_edge ], [ %call33.i251, %if.end30.i.cdns_sierra_phy_get_clocks.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.111.sink) #11
  %retval.0.i254 = ptrtoint ptr %retval.0.i254.in to i32
  br label %cleanup127

if.end30:                                         ; preds = %cdns_sierra_phy_get_clocks.exit.thread
  %call31 = tail call fastcc i32 @cdns_sierra_phy_get_resets(ptr noundef nonnull %call.i233, ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.unregister_clk_crit_edge

if.end30.unregister_clk_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %unregister_clk

if.end34:                                         ; preds = %if.end30
  %call35 = tail call fastcc i32 @cdns_sierra_phy_enable_clocks(ptr noundef nonnull %call.i233)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.unregister_clk_crit_edge

if.end34.unregister_clk_crit_edge:                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %unregister_clk

if.end38:                                         ; preds = %if.end34
  %apb_rst = getelementptr inbounds %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 5
  %67 = ptrtoint ptr %apb_rst to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %apb_rst, align 4
  %call39 = tail call i32 @reset_control_deassert(ptr noundef %68) #8
  %macro_id_type = getelementptr inbounds %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 12
  %69 = ptrtoint ptr %macro_id_type to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %macro_id_type, align 4
  %call40 = call i32 @regmap_field_read(ptr noundef %70, ptr noundef nonnull %id_value) #8
  %71 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %init_data, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %75 = ptrtoint ptr %id_value to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %id_value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp43.not = icmp eq i32 %74, %76
  br i1 %cmp43.not, label %if.end45, label %if.end38.clk_disable_crit_edge

if.end38.clk_disable_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_disable

if.end45:                                         ; preds = %if.end38
  %call.i255 = call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef null) #8
  %tobool.i = icmp ne ptr %call.i255, null
  %autoconf = getelementptr inbounds %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 23
  %frombool = zext i1 %tobool.i to i8
  %77 = ptrtoint ptr %autoconf to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %frombool, ptr %autoconf, align 4
  %call47 = call ptr @of_get_next_available_child(ptr noundef %2, ptr noundef null) #8
  %cmp48.not289 = icmp eq ptr %call47, null
  br i1 %cmp48.not289, label %if.end45.for.end_crit_edge, label %for.body.lr.ph

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end45
  %num_lanes85 = getelementptr inbounds %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %child.0291 = phi ptr [ %call47, %for.body.lr.ph ], [ %call98, %for.inc.for.body_crit_edge ]
  %node.0290 = phi i32 [ 0, %for.body.lr.ph ], [ %node.1, %for.inc.for.body_crit_edge ]
  %call49 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child.0291, ptr noundef nonnull @.str.7) #8
  br i1 %call49, label %for.body.if.end52_crit_edge, label %lor.lhs.false

for.body.if.end52_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

lor.lhs.false:                                    ; preds = %for.body
  %call50 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child.0291, ptr noundef nonnull @.str.8) #8
  br i1 %call50, label %lor.lhs.false.if.end52_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.if.end52_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.end52:                                         ; preds = %lor.lhs.false.if.end52_crit_edge, %for.body.if.end52_crit_edge
  %call.i256 = call ptr @of_reset_control_array_get(ptr noundef nonnull %child.0291, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %arrayidx = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 3, i32 %node.0290
  %lnk_rst = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 3, i32 %node.0290, i32 4
  %78 = ptrtoint ptr %lnk_rst to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i256, ptr %lnk_rst, align 4
  %cmp.i257 = icmp ugt ptr %call.i256, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i257, label %do.end61, label %if.end66

do.end61:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %full_name = getelementptr inbounds %struct.device_node, ptr %child.0291, i32 0, i32 2
  %79 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %full_name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef %80) #11
  %81 = ptrtoint ptr %lnk_rst to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lnk_rst, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @of_node_put(ptr noundef nonnull %child.0291) #8
  br label %put_control

if.end66:                                         ; preds = %if.end52
  %84 = ptrtoint ptr %autoconf to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %autoconf, align 4, !range !446
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool68.not = icmp eq i8 %85, 0
  br i1 %tobool68.not, label %if.then69, label %if.end66.if.end82_crit_edge

if.end66.if.end82_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then69:                                        ; preds = %if.end66
  %call72 = call fastcc i32 @cdns_sierra_get_optional(ptr noundef %arrayidx, ptr noundef nonnull %child.0291)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then69.if.end82_crit_edge, label %do.end77

if.then69.if.end82_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

do.end77:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %child.0291 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %child.0291, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef %87) #11
  call void @of_node_put(ptr noundef nonnull %child.0291) #8
  %88 = ptrtoint ptr %lnk_rst to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lnk_rst, align 4
  call void @reset_control_put(ptr noundef %89) #8
  br label %put_control

if.end82:                                         ; preds = %if.then69.if.end82_crit_edge, %if.end66.if.end82_crit_edge
  %num_lanes = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 3, i32 %node.0290, i32 2
  %90 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_lanes, align 4
  %92 = ptrtoint ptr %num_lanes85 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_lanes85, align 4
  %add = add i32 %93, %91
  store i32 %add, ptr %num_lanes85, align 4
  %call86 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef nonnull %child.0291, ptr noundef nonnull @ops) #8
  %cmp.i258 = icmp ugt ptr %call86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i258, label %if.then88, label %if.end93

if.then88:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %call86 to i32
  call void @of_node_put(ptr noundef nonnull %child.0291) #8
  %95 = ptrtoint ptr %lnk_rst to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %lnk_rst, align 4
  call void @reset_control_put(ptr noundef %96) #8
  br label %put_control

if.end93:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call86, ptr %arrayidx, align 4
  %driver_data.i.i259 = getelementptr inbounds %struct.device, ptr %call86, i32 0, i32 8
  %98 = ptrtoint ptr %driver_data.i.i259 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %arrayidx, ptr %driver_data.i.i259, align 4
  %inc = add i32 %node.0290, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end93, %lor.lhs.false.for.inc_crit_edge
  %node.1 = phi i32 [ %inc, %if.end93 ], [ %node.0290, %lor.lhs.false.for.inc_crit_edge ]
  %call98 = call ptr @of_get_next_available_child(ptr noundef %2, ptr noundef nonnull %child.0291) #8
  %cmp48.not = icmp eq ptr %call98, null
  br i1 %cmp48.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end45.for.end_crit_edge
  %node.0.lcssa = phi i32 [ 0, %if.end45.for.end_crit_edge ], [ %node.1, %for.inc.for.end_crit_edge ]
  %nsubnodes = getelementptr inbounds %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 21
  %99 = ptrtoint ptr %nsubnodes to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %node.0.lcssa, ptr %nsubnodes, align 4
  %num_lanes99 = getelementptr inbounds %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 22
  %100 = ptrtoint ptr %num_lanes99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_lanes99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %101)
  %cmp100 = icmp ugt i32 %101, 16
  br i1 %cmp100, label %if.then101, label %if.end105

if.then101:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #11
  br label %put_control

if.end105:                                        ; preds = %for.end
  %102 = ptrtoint ptr %autoconf to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %autoconf, align 4, !range !446
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool107.not = icmp eq i8 %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %node.0.lcssa)
  %cmp109 = icmp sgt i32 %node.0.lcssa, 1
  %or.cond = select i1 %tobool107.not, i1 %cmp109, i1 false
  br i1 %or.cond, label %if.then110, label %if.end105.if.end115_crit_edge

if.end105.if.end115_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then110:                                       ; preds = %if.end105
  %call111 = call fastcc i32 @cdns_sierra_phy_configure_multilink(ptr noundef nonnull %call.i233)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.then110.if.end115_crit_edge, label %if.then110.put_control_crit_edge

if.then110.put_control_crit_edge:                 ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_control

if.then110.if.end115_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.end115:                                        ; preds = %if.then110.if.end115_crit_edge, %if.end105.if.end115_crit_edge
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  %call116 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #8
  %cmp.i260 = icmp ugt ptr %call116, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i260, label %if.then118, label %if.end115.cleanup127_crit_edge

if.end115.cleanup127_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %call116 to i32
  br label %put_control

put_control:                                      ; preds = %if.then118, %if.then110.put_control_crit_edge, %if.then101, %if.then88, %do.end77, %do.end61
  %node.0282 = phi i32 [ %node.0.lcssa, %if.then101 ], [ %node.0.lcssa, %if.then118 ], [ %node.0.lcssa, %if.then110.put_control_crit_edge ], [ %node.0290, %do.end77 ], [ %node.0290, %if.then88 ], [ %node.0290, %do.end61 ]
  %ret.3 = phi i32 [ -22, %if.then101 ], [ %104, %if.then118 ], [ %call111, %if.then110.put_control_crit_edge ], [ %call72, %do.end77 ], [ %94, %if.then88 ], [ %83, %do.end61 ]
  %dec293 = add i32 %node.0282, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec293)
  %cmp121294 = icmp sgt i32 %dec293, -1
  br i1 %cmp121294, label %put_control.while.body_crit_edge, label %put_control.clk_disable_crit_edge

put_control.clk_disable_crit_edge:                ; preds = %put_control
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_disable

put_control.while.body_crit_edge:                 ; preds = %put_control
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %put_control.while.body_crit_edge
  %dec295 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec293, %put_control.while.body_crit_edge ]
  %lnk_rst124 = getelementptr %struct.cdns_sierra_phy, ptr %call.i233, i32 0, i32 3, i32 %dec295, i32 4
  %105 = ptrtoint ptr %lnk_rst124 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %lnk_rst124, align 4
  call void @reset_control_put(ptr noundef %106) #8
  %dec = add nsw i32 %dec295, -1
  %cmp121 = icmp sgt i32 %dec295, 0
  br i1 %cmp121, label %while.body.while.body_crit_edge, label %while.body.clk_disable_crit_edge

while.body.clk_disable_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_disable

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

clk_disable:                                      ; preds = %while.body.clk_disable_crit_edge, %put_control.clk_disable_crit_edge, %if.end38.clk_disable_crit_edge
  %ret.4 = phi i32 [ -22, %if.end38.clk_disable_crit_edge ], [ %ret.3, %put_control.clk_disable_crit_edge ], [ %ret.3, %while.body.clk_disable_crit_edge ]
  call fastcc void @cdns_sierra_phy_disable_clocks(ptr noundef nonnull %call.i233)
  %107 = ptrtoint ptr %apb_rst to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %apb_rst, align 4
  %call126 = call i32 @reset_control_assert(ptr noundef %108) #8
  br label %unregister_clk

unregister_clk:                                   ; preds = %clk_disable, %if.end34.unregister_clk_crit_edge, %if.end30.unregister_clk_crit_edge
  %ret.5 = phi i32 [ %call31, %if.end30.unregister_clk_crit_edge ], [ %call35, %if.end34.unregister_clk_crit_edge ], [ %ret.4, %clk_disable ]
  %109 = ptrtoint ptr %call.i233 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %call.i233, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %110, i32 0, i32 27
  %111 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %of_node.i, align 8
  call void @of_clk_del_provider(ptr noundef %112) #8
  br label %cleanup127

cleanup127:                                       ; preds = %unregister_clk, %if.end115.cleanup127_crit_edge, %cdns_sierra_phy_get_clocks.exit, %cdns_sierra_phy_get_clocks.exit.thread.cleanup127_crit_edge, %cdns_regfield_init.exit.cleanup127_crit_edge, %cdns_regmap_init_blocks.exit.cleanup127_crit_edge, %cdns_regmap_init_blocks.exit.thread, %do.end, %if.end4.cleanup127_crit_edge, %if.end.cleanup127_crit_edge, %of_get_child_count.exit.cleanup127_crit_edge, %entry.cleanup127_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ %ret.5, %unregister_clk ], [ -19, %of_get_child_count.exit.cleanup127_crit_edge ], [ -22, %if.end.cleanup127_crit_edge ], [ -12, %if.end4.cleanup127_crit_edge ], [ %37, %cdns_regmap_init_blocks.exit.cleanup127_crit_edge ], [ %retval.0.i243, %cdns_regfield_init.exit.cleanup127_crit_edge ], [ %retval.0.i254, %cdns_sierra_phy_get_clocks.exit ], [ %call27, %cdns_sierra_phy_get_clocks.exit.thread.cleanup127_crit_edge ], [ 0, %if.end115.cleanup127_crit_edge ], [ -19, %entry.cleanup127_crit_edge ], [ -12, %cdns_regmap_init_blocks.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id_value) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_sierra_phy_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phy_rst = getelementptr inbounds %struct.cdns_sierra_phy, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #8
  %apb_rst = getelementptr inbounds %struct.cdns_sierra_phy, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %apb_rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_rst, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %5) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %output_clks.i = getelementptr inbounds %struct.cdns_sierra_phy, ptr %1, i32 0, i32 25
  %arrayidx.i = getelementptr %struct.cdns_sierra_phy, ptr %1, i32 0, i32 25, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %8 = ptrtoint ptr %output_clks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %output_clks.i, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  %input_clks.i = getelementptr inbounds %struct.cdns_sierra_phy, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %input_clks.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input_clks.i, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  %nsubnodes = getelementptr inbounds %struct.cdns_sierra_phy, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %nsubnodes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nsubnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp17 = icmp sgt i32 %13, 0
  br i1 %cmp17, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %lnk_rst = getelementptr %struct.cdns_sierra_phy, ptr %1, i32 0, i32 3, i32 %i.018, i32 4
  %14 = ptrtoint ptr %lnk_rst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lnk_rst, align 4
  %call3 = tail call i32 @reset_control_assert(ptr noundef %15) #8
  %16 = ptrtoint ptr %lnk_rst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lnk_rst, align 4
  tail call void @reset_control_put(ptr noundef %17) #8
  %inc = add nuw nsw i32 %i.018, 1
  %18 = ptrtoint ptr %nsubnodes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nsubnodes, align 4
  %cmp = icmp slt i32 %inc, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node.i, align 8
  tail call void @of_clk_del_provider(ptr noundef %23) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_sierra_clk_register(ptr noundef %sp) unnamed_addr #2 align 64 {
entry:
  %clk_name.i = alloca [100 x i8], align 1
  %clk_name.i.i = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sp, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %cmp.i = phi i1 [ true, %entry ], [ false, %for.inc.i.for.body.i_crit_edge ]
  %clk_index.028.i = phi i32 [ 0, %entry ], [ 1, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 19, i32 %clk_index.028.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 17, i32 %clk_index.028.i
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 18, i32 %clk_index.028.i
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3.i, align 4
  %10 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sp, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %clk_name.i.i) #8
  %12 = call ptr @memset(ptr %clk_name.i.i, i32 255, i32 100)
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 52, i32 noundef 3520) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.cdns_sierra_phy_register_pll_mux.exit.thread43_crit_edge, label %if.end.i.i

for.body.i.cdns_sierra_phy_register_pll_mux.exit.thread43_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_sierra_phy_register_pll_mux.exit.thread43

if.end.i.i:                                       ; preds = %for.body.i
  %call.i70.i.i = call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 8, i32 noundef 3520) #8
  %tobool3.not.i.i = icmp eq ptr %call.i70.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.cdns_sierra_phy_register_pll_mux.exit.thread43_crit_edge, label %for.body.preheader.i.i

if.end.i.i.cdns_sierra_phy_register_pll_mux.exit.thread43_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_sierra_phy_register_pll_mux.exit.thread43

for.body.preheader.i.i:                           ; preds = %if.end.i.i
  %arrayidx6.i.i = getelementptr [2 x [2 x i32]], ptr @pll_mux_parent_index, i32 0, i32 %clk_index.028.i, i32 0
  %13 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx6.i.i, align 4
  %arrayidx7.i.i = getelementptr %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 20, i32 %14
  %15 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %16, null
  %cmp.i.i.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %for.body.preheader.i.i.do.end.i.i_crit_edge, label %if.end12.i.i

for.body.preheader.i.i.do.end.i.i_crit_edge:      ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end12.i.i.do.end.i.i_crit_edge, %for.body.preheader.i.i.do.end.i.i_crit_edge
  %.lcssa.i.i = phi ptr [ %16, %for.body.preheader.i.i.do.end.i.i_crit_edge ], [ %21, %if.end12.i.i.do.end.i.i_crit_edge ]
  %cmp.i.lcssa.i.i = phi i1 [ %cmp.i.i.i, %for.body.preheader.i.i.do.end.i.i_crit_edge ], [ %cmp.i.1.i.i, %if.end12.i.i.do.end.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.139) #11
  br i1 %cmp.i.lcssa.i.i, label %do.end.i.i.cdns_sierra_pll_mux_register.exit.i_crit_edge, label %do.end.i.i.cdns_sierra_phy_register_pll_mux.exit.thread43_crit_edge

do.end.i.i.cdns_sierra_phy_register_pll_mux.exit.thread43_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_sierra_phy_register_pll_mux.exit.thread43

do.end.i.i.cdns_sierra_pll_mux_register.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_sierra_pll_mux_register.exit.i

if.end12.i.i:                                     ; preds = %for.body.preheader.i.i
  %call13.i.i = call ptr @__clk_get_name(ptr noundef nonnull %16) #8
  %17 = ptrtoint ptr %call.i70.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call13.i.i, ptr %call.i70.i.i, align 4
  %arrayidx6.1.i.i = getelementptr [2 x [2 x i32]], ptr @pll_mux_parent_index, i32 0, i32 %clk_index.028.i, i32 1
  %18 = ptrtoint ptr %arrayidx6.1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx6.1.i.i, align 4
  %arrayidx7.1.i.i = getelementptr %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 20, i32 %19
  %20 = ptrtoint ptr %arrayidx7.1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx7.1.i.i, align 4
  %tobool.not.i.1.i.i = icmp eq ptr %21, null
  %cmp.i.1.i.i = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  %spec.select.i.1.i.i = or i1 %tobool.not.i.1.i.i, %cmp.i.1.i.i
  br i1 %spec.select.i.1.i.i, label %if.end12.i.i.do.end.i.i_crit_edge, label %if.end12.1.i.i

if.end12.i.i.do.end.i.i_crit_edge:                ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

if.end12.1.i.i:                                   ; preds = %if.end12.i.i
  %call13.1.i.i = call ptr @__clk_get_name(ptr noundef nonnull %21) #8
  %arrayidx14.1.i.i = getelementptr ptr, ptr %call.i70.i.i, i32 1
  %22 = ptrtoint ptr %arrayidx14.1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call13.1.i.i, ptr %arrayidx14.1.i.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %23 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i72.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i72.i.i, label %if.end.i.i.i, label %if.end12.1.i.i.dev_name.exit.i.i_crit_edge

if.end12.1.i.i.dev_name.exit.i.i_crit_edge:       ; preds = %if.end12.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end12.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %11, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.end12.1.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %26, %if.end.i.i.i ], [ %24, %if.end12.1.i.i.dev_name.exit.i.i_crit_edge ]
  %arrayidx16.i.i = getelementptr [3 x ptr], ptr @clk_names, i32 0, i32 %clk_index.028.i
  %27 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx16.i.i, align 4
  %call17.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i.i, i32 noundef 100, ptr noundef nonnull @.str.141, ptr noundef %retval.0.i.i.i, ptr noundef %28) #8
  %clk_data.i.i = getelementptr inbounds %struct.cdns_sierra_pll_mux, ptr %call.i.i.i, i32 0, i32 4
  %ops.i.i = getelementptr inbounds %struct.cdns_sierra_pll_mux, ptr %call.i.i.i, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @cdns_sierra_pll_mux_ops, ptr %ops.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.cdns_sierra_pll_mux, ptr %call.i.i.i, i32 0, i32 4, i32 6
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 128, ptr %flags.i.i, align 4
  %parent_names18.i.i = getelementptr inbounds %struct.cdns_sierra_pll_mux, ptr %call.i.i.i, i32 0, i32 4, i32 2
  %31 = ptrtoint ptr %parent_names18.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i70.i.i, ptr %parent_names18.i.i, align 4
  %num_parents19.i.i = getelementptr inbounds %struct.cdns_sierra_pll_mux, ptr %call.i.i.i, i32 0, i32 4, i32 5
  %32 = ptrtoint ptr %num_parents19.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %num_parents19.i.i, align 4
  %33 = ptrtoint ptr %clk_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %clk_name.i.i, ptr %clk_data.i.i, align 4
  %pfdclk_sel_preg.i.i = getelementptr inbounds %struct.cdns_sierra_pll_mux, ptr %call.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %pfdclk_sel_preg.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %5, ptr %pfdclk_sel_preg.i.i, align 4
  %plllc1en_field21.i.i = getelementptr inbounds %struct.cdns_sierra_pll_mux, ptr %call.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %plllc1en_field21.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %7, ptr %plllc1en_field21.i.i, align 4
  %termen_field22.i.i = getelementptr inbounds %struct.cdns_sierra_pll_mux, ptr %call.i.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %termen_field22.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %9, ptr %termen_field22.i.i, align 4
  %init23.i.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %init23.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %clk_data.i.i, ptr %init23.i.i, align 4
  %call25.i.i = call ptr @devm_clk_register(ptr noundef %11, ptr noundef nonnull %call.i.i.i) #8
  %cmp.i73.i.i = icmp ugt ptr %call25.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73.i.i, label %dev_name.exit.i.i.cdns_sierra_pll_mux_register.exit.i_crit_edge, label %cdns_sierra_pll_mux_register.exit.thread24.i

dev_name.exit.i.i.cdns_sierra_pll_mux_register.exit.i_crit_edge: ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_sierra_pll_mux_register.exit.i

cdns_sierra_pll_mux_register.exit.thread24.i:     ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx30.i.i = getelementptr %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 25, i32 %clk_index.028.i
  %38 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call25.i.i, ptr %arrayidx30.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i.i) #8
  br label %for.inc.i

cdns_sierra_phy_register_pll_mux.exit.thread43:   ; preds = %do.end.i.i.cdns_sierra_phy_register_pll_mux.exit.thread43_crit_edge, %if.end.i.i.cdns_sierra_phy_register_pll_mux.exit.thread43_crit_edge, %for.body.i.cdns_sierra_phy_register_pll_mux.exit.thread43_crit_edge
  %retval.0.i.ph.i = phi i32 [ -2, %do.end.i.i.cdns_sierra_phy_register_pll_mux.exit.thread43_crit_edge ], [ -12, %if.end.i.i.cdns_sierra_phy_register_pll_mux.exit.thread43_crit_edge ], [ -12, %for.body.i.cdns_sierra_phy_register_pll_mux.exit.thread43_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i.i) #8
  br label %do.end

cdns_sierra_pll_mux_register.exit.i:              ; preds = %dev_name.exit.i.i.cdns_sierra_pll_mux_register.exit.i_crit_edge, %do.end.i.i.cdns_sierra_pll_mux_register.exit.i_crit_edge
  %retval.0.i.in.i = phi ptr [ %.lcssa.i.i, %do.end.i.i.cdns_sierra_pll_mux_register.exit.i_crit_edge ], [ %call25.i.i, %dev_name.exit.i.i.cdns_sierra_pll_mux_register.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i.i) #8
  %tobool.not.i = icmp eq ptr %retval.0.i.in.i, null
  br i1 %tobool.not.i, label %cdns_sierra_pll_mux_register.exit.i.for.inc.i_crit_edge, label %cdns_sierra_phy_register_pll_mux.exit

cdns_sierra_pll_mux_register.exit.i.for.inc.i_crit_edge: ; preds = %cdns_sierra_pll_mux_register.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %cdns_sierra_pll_mux_register.exit.i.for.inc.i_crit_edge, %cdns_sierra_pll_mux_register.exit.thread24.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cdns_sierra_phy_register_pll_mux.exit:            ; preds = %cdns_sierra_pll_mux_register.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %retval.0.i.le.i = ptrtoint ptr %retval.0.i.in.i to i32
  br label %do.end

do.end:                                           ; preds = %cdns_sierra_phy_register_pll_mux.exit, %cdns_sierra_phy_register_pll_mux.exit.thread43
  %retval.0.i23.i46 = phi i32 [ %retval.0.i.ph.i, %cdns_sierra_phy_register_pll_mux.exit.thread43 ], [ %retval.0.i.le.i, %cdns_sierra_phy_register_pll_mux.exit ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.137) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.129) #11
  br label %cleanup

if.end:                                           ; preds = %for.inc.i
  %39 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sp, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %clk_name.i) #8
  %41 = call ptr @memset(ptr %clk_name.i, i32 255, i32 100)
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %40, i32 noundef 48, i32 noundef 3520) #8
  %tobool.not.i35 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i35, label %cdns_sierra_derived_refclk_register.exit.thread49, label %if.end.i

cdns_sierra_derived_refclk_register.exit.thread49: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i) #8
  br label %do.end7

if.end.i:                                         ; preds = %if.end
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 3
  %42 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i36 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i36, label %if.end.i.i37, label %if.end.i.dev_name.exit.i_crit_edge

if.end.i.dev_name.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i37:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %40, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i37, %if.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %45, %if.end.i.i37 ], [ %43, %if.end.i.dev_name.exit.i_crit_edge ]
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 100, ptr noundef nonnull @.str.141, ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.144) #8
  %clk_data.i = getelementptr inbounds %struct.cdns_sierra_derived_refclk, ptr %call.i.i, i32 0, i32 3
  %ops.i = getelementptr inbounds %struct.cdns_sierra_derived_refclk, ptr %call.i.i, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @cdns_sierra_derived_refclk_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.cdns_sierra_derived_refclk, ptr %call.i.i, i32 0, i32 3, i32 6
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %flags.i, align 4
  %48 = ptrtoint ptr %clk_data.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %clk_name.i, ptr %clk_data.i, align 4
  %regmap_common_cdb.i = getelementptr inbounds %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 11
  %49 = ptrtoint ptr %regmap_common_cdb.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap_common_cdb.i, align 4
  %call5.i = call ptr @devm_regmap_field_alloc(ptr noundef %40, ptr noundef %50, [5 x i32] [i32 77, i32 0, i32 6, i32 0, i32 0]) #8
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %dev_name.exit.i.cdns_sierra_derived_refclk_register.exit.sink.split_crit_edge, label %if.end9.i

dev_name.exit.i.cdns_sierra_derived_refclk_register.exit.sink.split_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_sierra_derived_refclk_register.exit.sink.split

if.end9.i:                                        ; preds = %dev_name.exit.i
  %cmn_plllc_clk1outdiv_preg.i = getelementptr inbounds %struct.cdns_sierra_derived_refclk, ptr %call.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %cmn_plllc_clk1outdiv_preg.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call5.i, ptr %cmn_plllc_clk1outdiv_preg.i, align 4
  %call10.i = call ptr @devm_regmap_field_alloc(ptr noundef %40, ptr noundef %50, [5 x i32] [i32 77, i32 12, i32 12, i32 0, i32 0]) #8
  %cmp.i63.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63.i, label %if.end9.i.cdns_sierra_derived_refclk_register.exit.sink.split_crit_edge, label %if.end17.i

if.end9.i.cdns_sierra_derived_refclk_register.exit.sink.split_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_sierra_derived_refclk_register.exit.sink.split

if.end17.i:                                       ; preds = %if.end9.i
  %cmn_plllc_clk1_en_preg.i = getelementptr inbounds %struct.cdns_sierra_derived_refclk, ptr %call.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %cmn_plllc_clk1_en_preg.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call10.i, ptr %cmn_plllc_clk1_en_preg.i, align 4
  %init18.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %init18.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %clk_data.i, ptr %init18.i, align 4
  %call20.i = call ptr @devm_clk_register(ptr noundef %40, ptr noundef nonnull %call.i.i) #8
  %cmp.i64.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64.i, label %if.end17.i.cdns_sierra_derived_refclk_register.exit_crit_edge, label %cdns_sierra_derived_refclk_register.exit.thread

if.end17.i.cdns_sierra_derived_refclk_register.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_sierra_derived_refclk_register.exit

cdns_sierra_derived_refclk_register.exit.thread:  ; preds = %if.end17.i
  %arrayidx.i39 = getelementptr %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 25, i32 2
  %54 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call20.i, ptr %arrayidx.i39, align 4
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i) #8
  %output_clks = getelementptr inbounds %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 25
  %clk_data = getelementptr inbounds %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 24
  %55 = ptrtoint ptr %clk_data to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %output_clks, ptr %clk_data, align 4
  %clk_num = getelementptr inbounds %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 24, i32 1
  %56 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3, ptr %clk_num, align 4
  %call11 = call i32 @of_clk_add_provider(ptr noundef %3, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %clk_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cdns_sierra_derived_refclk_register.exit.thread.cleanup_crit_edge, label %do.end16

cdns_sierra_derived_refclk_register.exit.thread.cleanup_crit_edge: ; preds = %cdns_sierra_derived_refclk_register.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cdns_sierra_derived_refclk_register.exit.sink.split: ; preds = %if.end9.i.cdns_sierra_derived_refclk_register.exit.sink.split_crit_edge, %dev_name.exit.i.cdns_sierra_derived_refclk_register.exit.sink.split_crit_edge
  %.str.145.sink = phi ptr [ @.str.145, %dev_name.exit.i.cdns_sierra_derived_refclk_register.exit.sink.split_crit_edge ], [ @.str.148, %if.end9.i.cdns_sierra_derived_refclk_register.exit.sink.split_crit_edge ]
  %retval.0.i40.in.ph = phi ptr [ %call5.i, %dev_name.exit.i.cdns_sierra_derived_refclk_register.exit.sink.split_crit_edge ], [ %call10.i, %if.end9.i.cdns_sierra_derived_refclk_register.exit.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull %.str.145.sink) #11
  br label %cdns_sierra_derived_refclk_register.exit

cdns_sierra_derived_refclk_register.exit:         ; preds = %cdns_sierra_derived_refclk_register.exit.sink.split, %if.end17.i.cdns_sierra_derived_refclk_register.exit_crit_edge
  %retval.0.i40.in = phi ptr [ %call20.i, %if.end17.i.cdns_sierra_derived_refclk_register.exit_crit_edge ], [ %retval.0.i40.in.ph, %cdns_sierra_derived_refclk_register.exit.sink.split ]
  %retval.0.i40 = ptrtoint ptr %retval.0.i40.in to i32
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i) #8
  br label %do.end7

do.end7:                                          ; preds = %cdns_sierra_derived_refclk_register.exit, %cdns_sierra_derived_refclk_register.exit.thread49
  %retval.0.i4052 = phi i32 [ -12, %cdns_sierra_derived_refclk_register.exit.thread49 ], [ %retval.0.i40, %cdns_sierra_derived_refclk_register.exit ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.132) #11
  br label %cleanup

do.end16:                                         ; preds = %cdns_sierra_derived_refclk_register.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.135, ptr noundef %58) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %do.end7, %cdns_sierra_derived_refclk_register.exit.thread.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i23.i46, %do.end ], [ %retval.0.i4052, %do.end7 ], [ %call11, %do.end16 ], [ 0, %cdns_sierra_derived_refclk_register.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_sierra_phy_get_resets(ptr nocapture noundef writeonly %sp, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.150, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.151) #11
  %0 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_rst = getelementptr inbounds %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 4
  %1 = ptrtoint ptr %phy_rst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %phy_rst, align 4
  %call.i20 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.153, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %cmp.i21 = icmp ugt ptr %call.i20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i21, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.155) #11
  %2 = ptrtoint ptr %call.i20 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %apb_rst = getelementptr inbounds %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 5
  %3 = ptrtoint ptr %apb_rst to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i20, ptr %apb_rst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end8, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %2, %do.end8 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_sierra_phy_enable_clocks(ptr nocapture noundef readonly %sp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %input_clks = getelementptr inbounds %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 20
  %0 = ptrtoint ptr %input_clks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input_clks, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %output_clks = getelementptr inbounds %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 25
  %2 = ptrtoint ptr %output_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output_clks, align 4
  %call.i24 = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i25 = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i25, label %if.end.i28, label %if.end.err_pll_cmnlc_crit_edge

if.end.err_pll_cmnlc_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pll_cmnlc

if.end.i28:                                       ; preds = %if.end
  %call1.i26 = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool2.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool2.not.i27, label %if.end5, label %if.end.i28.err_pll_cmnlc.sink.split_crit_edge

if.end.i28.err_pll_cmnlc.sink.split_crit_edge:    ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pll_cmnlc.sink.split

if.end5:                                          ; preds = %if.end.i28
  %arrayidx7 = getelementptr %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 25, i32 1
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx7, align 4
  %call.i32 = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not.i33 = icmp eq i32 %call.i32, 0
  br i1 %tobool.not.i33, label %if.end.i36, label %if.end5.err_pll_cmnlc1_crit_edge

if.end5.err_pll_cmnlc1_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pll_cmnlc1

if.end.i36:                                       ; preds = %if.end5
  %call1.i34 = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool2.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool2.not.i35, label %if.end.i36.cleanup_crit_edge, label %if.then3.i37

if.end.i36.cleanup_crit_edge:                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i37:                                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %err_pll_cmnlc1

err_pll_cmnlc1:                                   ; preds = %if.then3.i37, %if.end5.err_pll_cmnlc1_crit_edge
  %retval.0.i38.ph = phi i32 [ %call1.i34, %if.then3.i37 ], [ %call.i32, %if.end5.err_pll_cmnlc1_crit_edge ]
  %6 = ptrtoint ptr %output_clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %output_clks, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  br label %err_pll_cmnlc.sink.split

err_pll_cmnlc.sink.split:                         ; preds = %err_pll_cmnlc1, %if.end.i28.err_pll_cmnlc.sink.split_crit_edge
  %.sink = phi ptr [ %7, %err_pll_cmnlc1 ], [ %3, %if.end.i28.err_pll_cmnlc.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %retval.0.i38.ph, %err_pll_cmnlc1 ], [ %call1.i26, %if.end.i28.err_pll_cmnlc.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #8
  br label %err_pll_cmnlc

err_pll_cmnlc:                                    ; preds = %err_pll_cmnlc.sink.split, %if.end.err_pll_cmnlc_crit_edge
  %ret.0 = phi i32 [ %call.i24, %if.end.err_pll_cmnlc_crit_edge ], [ %ret.0.ph, %err_pll_cmnlc.sink.split ]
  %8 = ptrtoint ptr %input_clks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input_clks, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_pll_cmnlc, %if.end.i.cleanup.sink.split_crit_edge
  %.sink47 = phi ptr [ %9, %err_pll_cmnlc ], [ %1, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.0, %err_pll_cmnlc ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink47) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i36.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i36.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_sierra_get_optional(ptr noundef %inst, ptr noundef %child) unnamed_addr #2 align 64 {
entry:
  %phy_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_type) #8
  %0 = ptrtoint ptr %phy_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %phy_type, align 4, !annotation !445
  %mlane = getelementptr inbounds %struct.cdns_sierra_inst, ptr %inst, i32 0, i32 3
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %child, ptr noundef nonnull @.str.157, ptr noundef %mlane, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_lanes = getelementptr inbounds %struct.cdns_sierra_inst, ptr %inst, i32 0, i32 2
  %call.i.i25 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %child, ptr noundef nonnull @.str.158, ptr noundef %num_lanes, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i25)
  %tobool2.not = icmp sgt i32 %call.i.i25, -1
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i.i26 = call i32 @of_property_read_variable_u32_array(ptr noundef %child, ptr noundef nonnull @.str.159, ptr noundef nonnull %phy_type, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i26)
  %tobool6.not = icmp sgt i32 %call.i.i26, -1
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %1 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %phy_type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.end8.cleanup_crit_edge [
    i32 2, label %if.end8.sw.epilog_crit_edge
    i32 4, label %sw.bb10
    i32 9, label %sw.bb12
  ]

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb10:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb10, %if.end8.sw.epilog_crit_edge
  %.sink = phi i32 [ 3, %sw.bb12 ], [ 2, %sw.bb10 ], [ 1, %if.end8.sw.epilog_crit_edge ]
  %phy_type13 = getelementptr inbounds %struct.cdns_sierra_inst, ptr %inst, i32 0, i32 1
  %4 = ptrtoint ptr %phy_type13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %phy_type13, align 4
  %ssc_mode = getelementptr inbounds %struct.cdns_sierra_inst, ptr %inst, i32 0, i32 5
  %5 = ptrtoint ptr %ssc_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %ssc_mode, align 4
  %call.i.i27 = call i32 @of_property_read_variable_u32_array(ptr noundef %child, ptr noundef nonnull @.str.160, ptr noundef %ssc_mode, i32 noundef 1, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_type) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_sierra_phy_configure_multilink(ptr nocapture noundef readonly %sp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %init_data1 = getelementptr inbounds %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 2
  %0 = ptrtoint ptr %init_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_data1, align 4
  %nsubnodes = getelementptr inbounds %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 21
  %2 = ptrtoint ptr %nsubnodes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nsubnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 20, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %5, i32 noundef 25000000) #8
  %arrayidx3 = getelementptr %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 20, i32 2
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %call4 = tail call i32 @clk_set_rate(ptr noundef %7, i32 noundef 25000000) #8
  %phy_pll_cfg_1 = getelementptr inbounds %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 13
  %8 = ptrtoint ptr %phy_pll_cfg_1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_pll_cfg_1, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %10 = ptrtoint ptr %nsubnodes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nsubnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11247 = icmp sgt i32 %11, 0
  br i1 %cmp11247, label %for.body.lr.ph, label %if.end.for.end129_crit_edge

if.end.for.end129_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end129

for.body.lr.ph:                                   ; preds = %if.end
  %phy_type9 = getelementptr %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 3, i32 1, i32 1
  %12 = ptrtoint ptr %phy_type9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phy_type9, align 4
  %phy_type = getelementptr inbounds %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 3, i32 0, i32 1
  %14 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy_type, align 4
  %regmap_phy_pcs_common_cdb = getelementptr inbounds %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 7
  %regmap_common_cdb = getelementptr inbounds %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc127.for.body_crit_edge, %for.body.lr.ph
  %node.0250 = phi i32 [ 0, %for.body.lr.ph ], [ %inc128, %for.inc127.for.body_crit_edge ]
  %phy_t2.0249 = phi i32 [ %13, %for.body.lr.ph ], [ %spec.select234, %for.inc127.for.body_crit_edge ]
  %phy_t1.0248 = phi i32 [ %15, %for.body.lr.ph ], [ %spec.select, %for.inc127.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %node.0250)
  %cmp12 = icmp eq i32 %node.0250, 1
  %spec.select = select i1 %cmp12, i32 %phy_t2.0249, i32 %phy_t1.0248
  %spec.select234 = select i1 %cmp12, i32 %phy_t1.0248, i32 %phy_t2.0249
  %mlane17 = getelementptr %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 3, i32 %node.0250, i32 3
  %16 = ptrtoint ptr %mlane17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mlane17, align 4
  %ssc_mode = getelementptr %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 3, i32 %node.0250, i32 5
  %18 = ptrtoint ptr %ssc_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ssc_mode, align 4
  %num_lanes22 = getelementptr %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 3, i32 %node.0250, i32 2
  %20 = ptrtoint ptr %num_lanes22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_lanes22, align 4
  %arrayidx26 = getelementptr %struct.cdns_sierra_data, ptr %1, i32 0, i32 3, i32 %spec.select, i32 %spec.select234, i32 %19
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx26, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %for.body.if.end36_crit_edge, label %if.then27

for.body.if.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then27:                                        ; preds = %for.body
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %num_regs29 = getelementptr inbounds %struct.cdns_sierra_vals, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %num_regs29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_regs29, align 4
  %28 = ptrtoint ptr %regmap_phy_pcs_common_cdb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap_phy_pcs_common_cdb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp31235.not = icmp eq i32 %27, 0
  br i1 %cmp31235.not, label %if.then27.if.end36_crit_edge, label %if.then27.for.body32_crit_edge

if.then27.for.body32_crit_edge:                   ; preds = %if.then27
  br label %for.body32

if.then27.if.end36_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %if.then27.for.body32_crit_edge
  %i.0236 = phi i32 [ %inc, %for.body32.for.body32_crit_edge ], [ 0, %if.then27.for.body32_crit_edge ]
  %arrayidx33 = getelementptr %struct.cdns_reg_pairs, ptr %25, i32 %i.0236
  %off = getelementptr %struct.cdns_reg_pairs, ptr %25, i32 %i.0236, i32 1
  %30 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %off, align 4
  %32 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx33, align 4
  %conv = zext i16 %33 to i32
  %call35 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %31, i32 noundef %conv) #8
  %inc = add nuw i32 %i.0236, 1
  %exitcond.not = icmp eq i32 %inc, %27
  br i1 %exitcond.not, label %for.body32.if.end36_crit_edge, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body32

for.body32.if.end36_crit_edge:                    ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.end36:                                         ; preds = %for.body32.if.end36_crit_edge, %if.then27.if.end36_crit_edge, %for.body.if.end36_crit_edge
  %arrayidx40 = getelementptr %struct.cdns_sierra_data, ptr %1, i32 0, i32 4, i32 %spec.select, i32 %spec.select234, i32 %19
  %34 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx40, align 4
  %tobool41.not = icmp eq ptr %35, null
  br i1 %tobool41.not, label %if.end36.if.end66_crit_edge, label %if.then42

if.end36.if.end66_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then42:                                        ; preds = %if.end36
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %num_regs44 = getelementptr inbounds %struct.cdns_sierra_vals, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %num_regs44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_regs44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp46239 = icmp sgt i32 %21, 0
  br i1 %cmp46239, label %for.body48.lr.ph, label %if.then42.if.end66_crit_edge

if.then42.if.end66_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

for.body48.lr.ph:                                 ; preds = %if.then42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp51237.not = icmp eq i32 %39, 0
  br label %for.body48

for.body48:                                       ; preds = %for.inc63.for.body48_crit_edge, %for.body48.lr.ph
  %i.1240 = phi i32 [ 0, %for.body48.lr.ph ], [ %inc64, %for.inc63.for.body48_crit_edge ]
  %add = add i32 %i.1240, %17
  %arrayidx49 = getelementptr %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 10, i32 %add
  %40 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx49, align 4
  br i1 %cmp51237.not, label %for.body48.for.inc63_crit_edge, label %for.body48.for.body53_crit_edge

for.body48.for.body53_crit_edge:                  ; preds = %for.body48
  br label %for.body53

for.body48.for.inc63_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc63

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %for.body48.for.body53_crit_edge
  %j.0238 = phi i32 [ %inc61, %for.body53.for.body53_crit_edge ], [ 0, %for.body48.for.body53_crit_edge ]
  %arrayidx54 = getelementptr %struct.cdns_reg_pairs, ptr %37, i32 %j.0238
  %off55 = getelementptr %struct.cdns_reg_pairs, ptr %37, i32 %j.0238, i32 1
  %42 = ptrtoint ptr %off55 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %off55, align 4
  %44 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx54, align 4
  %conv58 = zext i16 %45 to i32
  %call59 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef %43, i32 noundef %conv58) #8
  %inc61 = add nuw i32 %j.0238, 1
  %exitcond252.not = icmp eq i32 %inc61, %39
  br i1 %exitcond252.not, label %for.body53.for.inc63_crit_edge, label %for.body53.for.body53_crit_edge

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body53

for.body53.for.inc63_crit_edge:                   ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc63

for.inc63:                                        ; preds = %for.body53.for.inc63_crit_edge, %for.body48.for.inc63_crit_edge
  %inc64 = add nuw nsw i32 %i.1240, 1
  %exitcond253.not = icmp eq i32 %inc64, %21
  br i1 %exitcond253.not, label %for.inc63.if.end66_crit_edge, label %for.inc63.for.body48_crit_edge

for.inc63.for.body48_crit_edge:                   ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body48

for.inc63.if.end66_crit_edge:                     ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.end66:                                         ; preds = %for.inc63.if.end66_crit_edge, %if.then42.if.end66_crit_edge, %if.end36.if.end66_crit_edge
  %arrayidx70 = getelementptr %struct.cdns_sierra_data, ptr %1, i32 0, i32 5, i32 %spec.select, i32 %spec.select234, i32 %19
  %46 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx70, align 4
  %tobool71.not = icmp eq ptr %47, null
  br i1 %tobool71.not, label %if.end66.if.end88_crit_edge, label %if.then72

if.end66.if.end88_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then72:                                        ; preds = %if.end66
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %num_regs74 = getelementptr inbounds %struct.cdns_sierra_vals, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %num_regs74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_regs74, align 4
  %52 = ptrtoint ptr %regmap_common_cdb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap_common_cdb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp76241.not = icmp eq i32 %51, 0
  br i1 %cmp76241.not, label %if.then72.if.end88_crit_edge, label %if.then72.for.body78_crit_edge

if.then72.for.body78_crit_edge:                   ; preds = %if.then72
  br label %for.body78

if.then72.if.end88_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

for.body78:                                       ; preds = %for.body78.for.body78_crit_edge, %if.then72.for.body78_crit_edge
  %i.2242 = phi i32 [ %inc86, %for.body78.for.body78_crit_edge ], [ 0, %if.then72.for.body78_crit_edge ]
  %arrayidx79 = getelementptr %struct.cdns_reg_pairs, ptr %49, i32 %i.2242
  %off80 = getelementptr %struct.cdns_reg_pairs, ptr %49, i32 %i.2242, i32 1
  %54 = ptrtoint ptr %off80 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %off80, align 4
  %56 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx79, align 4
  %conv83 = zext i16 %57 to i32
  %call84 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef %55, i32 noundef %conv83) #8
  %inc86 = add nuw i32 %i.2242, 1
  %exitcond254.not = icmp eq i32 %inc86, %51
  br i1 %exitcond254.not, label %for.body78.if.end88_crit_edge, label %for.body78.for.body78_crit_edge

for.body78.for.body78_crit_edge:                  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body78

for.body78.if.end88_crit_edge:                    ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.end88:                                         ; preds = %for.body78.if.end88_crit_edge, %if.then72.if.end88_crit_edge, %if.end66.if.end88_crit_edge
  %arrayidx92 = getelementptr %struct.cdns_sierra_data, ptr %1, i32 0, i32 6, i32 %spec.select, i32 %spec.select234, i32 %19
  %58 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx92, align 4
  %tobool93.not = icmp eq ptr %59, null
  br i1 %tobool93.not, label %if.end88.if.end119_crit_edge, label %if.then94

if.end88.if.end119_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.then94:                                        ; preds = %if.end88
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %num_regs96 = getelementptr inbounds %struct.cdns_sierra_vals, ptr %59, i32 0, i32 1
  %62 = ptrtoint ptr %num_regs96 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_regs96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp98245 = icmp sgt i32 %21, 0
  br i1 %cmp98245, label %for.body100.lr.ph, label %if.then94.if.end119_crit_edge

if.then94.if.end119_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

for.body100.lr.ph:                                ; preds = %if.then94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp104243.not = icmp eq i32 %63, 0
  br label %for.body100

for.body100:                                      ; preds = %for.inc116.for.body100_crit_edge, %for.body100.lr.ph
  %i.3246 = phi i32 [ 0, %for.body100.lr.ph ], [ %inc117, %for.inc116.for.body100_crit_edge ]
  %add101 = add i32 %i.3246, %17
  %arrayidx102 = getelementptr %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 6, i32 %add101
  %64 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx102, align 4
  br i1 %cmp104243.not, label %for.body100.for.inc116_crit_edge, label %for.body100.for.body106_crit_edge

for.body100.for.body106_crit_edge:                ; preds = %for.body100
  br label %for.body106

for.body100.for.inc116_crit_edge:                 ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc116

for.body106:                                      ; preds = %for.body106.for.body106_crit_edge, %for.body100.for.body106_crit_edge
  %j.1244 = phi i32 [ %inc114, %for.body106.for.body106_crit_edge ], [ 0, %for.body100.for.body106_crit_edge ]
  %arrayidx107 = getelementptr %struct.cdns_reg_pairs, ptr %61, i32 %j.1244
  %off108 = getelementptr %struct.cdns_reg_pairs, ptr %61, i32 %j.1244, i32 1
  %66 = ptrtoint ptr %off108 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %off108, align 4
  %68 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx107, align 4
  %conv111 = zext i16 %69 to i32
  %call112 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef %67, i32 noundef %conv111) #8
  %inc114 = add nuw i32 %j.1244, 1
  %exitcond255.not = icmp eq i32 %inc114, %63
  br i1 %exitcond255.not, label %for.body106.for.inc116_crit_edge, label %for.body106.for.body106_crit_edge

for.body106.for.body106_crit_edge:                ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body106

for.body106.for.inc116_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc116

for.inc116:                                       ; preds = %for.body106.for.inc116_crit_edge, %for.body100.for.inc116_crit_edge
  %inc117 = add nuw nsw i32 %i.3246, 1
  %exitcond256.not = icmp eq i32 %inc117, %21
  br i1 %exitcond256.not, label %for.inc116.if.end119_crit_edge, label %for.inc116.for.body100_crit_edge

for.inc116.for.body100_crit_edge:                 ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body100

for.inc116.if.end119_crit_edge:                   ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.end119:                                        ; preds = %for.inc116.if.end119_crit_edge, %if.then94.if.end119_crit_edge, %if.end88.if.end119_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.select)
  %cmp120 = icmp eq i32 %spec.select, 3
  br i1 %cmp120, label %if.then122, label %if.end119.for.inc127_crit_edge

if.end119.for.inc127_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc127

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  %lnk_rst = getelementptr %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 3, i32 %node.0250, i32 4
  %70 = ptrtoint ptr %lnk_rst to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lnk_rst, align 4
  %call125 = tail call i32 @reset_control_deassert(ptr noundef %71) #8
  br label %for.inc127

for.inc127:                                       ; preds = %if.then122, %if.end119.for.inc127_crit_edge
  %inc128 = add nuw nsw i32 %node.0250, 1
  %72 = ptrtoint ptr %nsubnodes to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nsubnodes, align 4
  %cmp11 = icmp slt i32 %inc128, %73
  br i1 %cmp11, label %for.inc127.for.body_crit_edge, label %for.inc127.for.end129_crit_edge

for.inc127.for.end129_crit_edge:                  ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end129

for.inc127.for.body_crit_edge:                    ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end129:                                       ; preds = %for.inc127.for.end129_crit_edge, %if.end.for.end129_crit_edge
  %phy_rst = getelementptr inbounds %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 4
  %74 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %phy_rst, align 4
  %call130 = tail call i32 @reset_control_deassert(ptr noundef %75) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end129, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call130, %for.end129 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_sierra_phy_disable_clocks(ptr nocapture noundef readonly %sp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %output_clks = getelementptr inbounds %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 25
  %arrayidx = getelementptr %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 25, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %1) #8
  tail call void @clk_unprepare(ptr noundef %1) #8
  %2 = ptrtoint ptr %output_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output_clks, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %input_clks = getelementptr inbounds %struct.cdns_sierra_phy, ptr %sp, i32 0, i32 20
  %4 = ptrtoint ptr %input_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_clks, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_regmap_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_offset_shift = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %reg_offset_shift to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg_offset_shift, align 4
  %conv = zext i8 %1 to i32
  %shl = shl i32 %reg, %conv
  %base = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !447
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  %conv2 = zext i16 %5 to i32
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv2, ptr %val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_regmap_write(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_offset_shift = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %reg_offset_shift to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg_offset_shift, align 4
  %conv = zext i8 %1 to i32
  %shl = shl i32 %reg, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !449
  tail call void @arm_heavy_mb() #8
  %conv1 = trunc i32 %val to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv1)
  %base = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %context, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %shl
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #8, !srcloc !450
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_sierra_pll_mux_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %plllc1en_field1 = getelementptr inbounds %struct.cdns_sierra_pll_mux, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %plllc1en_field1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plllc1en_field1, align 4
  %termen_field2 = getelementptr inbounds %struct.cdns_sierra_pll_mux, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %termen_field2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %termen_field2, align 4
  %pfdclk_sel_preg = getelementptr inbounds %struct.cdns_sierra_pll_mux, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %pfdclk_sel_preg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pfdclk_sel_preg, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i28 = tail call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %or = or i32 %call.i28, %call.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %index)
  %cmp = icmp eq i8 %index, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i29 = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %or6 = or i32 %call.i29, %or
  %call.i30 = tail call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %or8 = or i32 %or6, %call.i30
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %or8, %if.then ], [ %or, %entry.if.end_crit_edge ]
  %call9 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #8
  %call10 = tail call ptr @strstr(ptr noundef %call9, ptr noundef nonnull @.str.143)
  %tobool.not = icmp eq ptr %call10, null
  %cdns_sierra_pll_mux_table. = select i1 %tobool.not, ptr @cdns_sierra_pll_mux_table, ptr getelementptr inbounds ([2 x [2 x i32]], ptr @cdns_sierra_pll_mux_table, i32 0, i32 1)
  %conv = zext i8 %index to i32
  %val.0.in = getelementptr [2 x i32], ptr %cdns_sierra_pll_mux_table., i32 0, i32 %conv
  %6 = ptrtoint ptr %val.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %val.0 = load i32, ptr %val.0.in, align 4
  %call.i31 = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %or16 = or i32 %call.i31, %ret.0
  ret i32 %or16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @cdns_sierra_pll_mux_get_parent(ptr noundef %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %plllc1en_field1 = getelementptr inbounds %struct.cdns_sierra_pll_mux, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %plllc1en_field1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plllc1en_field1, align 4
  %termen_field2 = getelementptr inbounds %struct.cdns_sierra_pll_mux, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %termen_field2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %termen_field2, align 4
  %pfdclk_sel_preg = getelementptr inbounds %struct.cdns_sierra_pll_mux, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %pfdclk_sel_preg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pfdclk_sel_preg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !445
  %call = call i32 @regmap_field_read(ptr noundef %5, ptr noundef nonnull %val) #8
  %call3 = call ptr @clk_hw_get_name(ptr noundef %hw) #8
  %call4 = call ptr @strstr(ptr noundef %call3, ptr noundef nonnull @.str.143)
  %tobool.not = icmp eq ptr %call4, null
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call5 = call i32 @clk_mux_val_to_index(ptr noundef %hw, ptr noundef getelementptr inbounds ([2 x [2 x i32]], ptr @cdns_sierra_pll_mux_table, i32 0, i32 1), i32 noundef 0, i32 noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp = icmp eq i32 %call5, 1
  br i1 %cmp, label %if.then6, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i17 = call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 @clk_mux_val_to_index(ptr noundef %hw, ptr noundef nonnull @cdns_sierra_pll_mux_table, i32 noundef 0, i32 noundef %8) #8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6, %if.then.if.end10_crit_edge
  %index.0 = phi i32 [ 1, %if.then6 ], [ %call5, %if.then.if.end10_crit_edge ], [ %call9, %if.else ]
  %conv = trunc i32 %index.0 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_val_to_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_sierra_derived_refclk_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmn_plllc_clk1_en_preg = getelementptr inbounds %struct.cdns_sierra_derived_refclk, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %cmn_plllc_clk1_en_preg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmn_plllc_clk1_en_preg, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %cmn_plllc_clk1outdiv_preg = getelementptr inbounds %struct.cdns_sierra_derived_refclk, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %cmn_plllc_clk1outdiv_preg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmn_plllc_clk1outdiv_preg, align 4
  %call.i3 = tail call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef 46, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_sierra_derived_refclk_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmn_plllc_clk1_en_preg = getelementptr inbounds %struct.cdns_sierra_derived_refclk, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %cmn_plllc_clk1_en_preg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmn_plllc_clk1_en_preg, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_sierra_derived_refclk_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !445
  %cmn_plllc_clk1_en_preg = getelementptr inbounds %struct.cdns_sierra_derived_refclk, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %cmn_plllc_clk1_en_preg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmn_plllc_clk1_en_preg, align 4
  %call = call i32 @regmap_field_read(ptr noundef %2, ptr noundef nonnull %val) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %lnot.ext = zext i1 %tobool to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_sierra_phy_init(ptr nocapture noundef readonly %gphy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %gphy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %gphy, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %init_data2 = getelementptr inbounds %struct.cdns_sierra_phy, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %init_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_data2, align 4
  %phy_type3 = getelementptr inbounds %struct.cdns_sierra_inst, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %phy_type3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_type3, align 4
  %ssc_mode = getelementptr inbounds %struct.cdns_sierra_inst, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %ssc_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ssc_mode, align 4
  %autoconf = getelementptr inbounds %struct.cdns_sierra_phy, ptr %5, i32 0, i32 23
  %12 = ptrtoint ptr %autoconf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %autoconf, align 4, !range !446
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nsubnodes = getelementptr inbounds %struct.cdns_sierra_phy, ptr %5, i32 0, i32 21
  %14 = ptrtoint ptr %nsubnodes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nsubnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp sgt i32 %15, 1
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.cdns_sierra_phy, ptr %5, i32 0, i32 20, i32 1
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @clk_set_rate(ptr noundef %17, i32 noundef 25000000) #8
  %arrayidx6 = getelementptr %struct.cdns_sierra_phy, ptr %5, i32 0, i32 20, i32 2
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx6, align 4
  %call7 = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef 25000000) #8
  %arrayidx9 = getelementptr %struct.cdns_sierra_data, ptr %7, i32 0, i32 3, i32 %9
  %arrayidx11 = getelementptr [3 x ptr], ptr %arrayidx9, i32 0, i32 %11
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %21, null
  br i1 %tobool12.not, label %if.end.if.end20_crit_edge, label %if.then13

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then13:                                        ; preds = %if.end
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %num_regs15 = getelementptr inbounds %struct.cdns_sierra_vals, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %num_regs15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_regs15, align 4
  %regmap_phy_pcs_common_cdb = getelementptr inbounds %struct.cdns_sierra_phy, ptr %5, i32 0, i32 7
  %26 = ptrtoint ptr %regmap_phy_pcs_common_cdb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap_phy_pcs_common_cdb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp16186.not = icmp eq i32 %25, 0
  br i1 %cmp16186.not, label %if.then13.if.end20_crit_edge, label %if.then13.for.body_crit_edge

if.then13.for.body_crit_edge:                     ; preds = %if.then13
  br label %for.body

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then13.for.body_crit_edge
  %i.0187 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then13.for.body_crit_edge ]
  %arrayidx17 = getelementptr %struct.cdns_reg_pairs, ptr %23, i32 %i.0187
  %off = getelementptr %struct.cdns_reg_pairs, ptr %23, i32 %i.0187, i32 1
  %28 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %off, align 4
  %30 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx17, align 4
  %conv = zext i16 %31 to i32
  %call19 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef %29, i32 noundef %conv) #8
  %inc = add nuw i32 %i.0187, 1
  %exitcond.not = icmp eq i32 %inc, %25
  br i1 %exitcond.not, label %for.body.if.end20_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20:                                         ; preds = %for.body.if.end20_crit_edge, %if.then13.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %arrayidx22 = getelementptr %struct.cdns_sierra_data, ptr %7, i32 0, i32 4, i32 %9
  %arrayidx24 = getelementptr [3 x ptr], ptr %arrayidx22, i32 0, i32 %11
  %32 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %33, null
  br i1 %tobool25.not, label %if.end20.if.end50_crit_edge, label %if.then26

if.end20.if.end50_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then26:                                        ; preds = %if.end20
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %num_regs28 = getelementptr inbounds %struct.cdns_sierra_vals, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %num_regs28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_regs28, align 4
  %num_lanes = getelementptr inbounds %struct.cdns_sierra_inst, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp30190.not = icmp eq i32 %39, 0
  br i1 %cmp30190.not, label %if.then26.if.end50_crit_edge, label %for.body32.lr.ph

if.then26.if.end50_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

for.body32.lr.ph:                                 ; preds = %if.then26
  %mlane = getelementptr inbounds %struct.cdns_sierra_inst, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp35188.not = icmp eq i32 %37, 0
  br label %for.body32

for.body32:                                       ; preds = %for.inc47.for.body32_crit_edge, %for.body32.lr.ph
  %i.1191 = phi i32 [ 0, %for.body32.lr.ph ], [ %inc48, %for.inc47.for.body32_crit_edge ]
  %40 = ptrtoint ptr %mlane to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mlane, align 4
  %add = add i32 %41, %i.1191
  %arrayidx33 = getelementptr %struct.cdns_sierra_phy, ptr %5, i32 0, i32 10, i32 %add
  %42 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx33, align 4
  br i1 %cmp35188.not, label %for.body32.for.inc47_crit_edge, label %for.body32.for.body37_crit_edge

for.body32.for.body37_crit_edge:                  ; preds = %for.body32
  br label %for.body37

for.body32.for.inc47_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %for.body32.for.body37_crit_edge
  %j.0189 = phi i32 [ %inc45, %for.body37.for.body37_crit_edge ], [ 0, %for.body32.for.body37_crit_edge ]
  %arrayidx38 = getelementptr %struct.cdns_reg_pairs, ptr %35, i32 %j.0189
  %off39 = getelementptr %struct.cdns_reg_pairs, ptr %35, i32 %j.0189, i32 1
  %44 = ptrtoint ptr %off39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %off39, align 4
  %46 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx38, align 4
  %conv42 = zext i16 %47 to i32
  %call43 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef %45, i32 noundef %conv42) #8
  %inc45 = add nuw i32 %j.0189, 1
  %exitcond198.not = icmp eq i32 %inc45, %37
  br i1 %exitcond198.not, label %for.body37.for.inc47_crit_edge, label %for.body37.for.body37_crit_edge

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body37

for.body37.for.inc47_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47

for.inc47:                                        ; preds = %for.body37.for.inc47_crit_edge, %for.body32.for.inc47_crit_edge
  %inc48 = add nuw i32 %i.1191, 1
  %48 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_lanes, align 4
  %cmp30 = icmp ult i32 %inc48, %49
  br i1 %cmp30, label %for.inc47.for.body32_crit_edge, label %for.inc47.if.end50_crit_edge

for.inc47.if.end50_crit_edge:                     ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

for.inc47.for.body32_crit_edge:                   ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body32

if.end50:                                         ; preds = %for.inc47.if.end50_crit_edge, %if.then26.if.end50_crit_edge, %if.end20.if.end50_crit_edge
  %arrayidx52 = getelementptr %struct.cdns_sierra_data, ptr %7, i32 0, i32 5, i32 %9
  %arrayidx54 = getelementptr [3 x ptr], ptr %arrayidx52, i32 0, i32 %11
  %50 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx54, align 4
  %tobool55.not = icmp eq ptr %51, null
  br i1 %tobool55.not, label %if.end50.if.end72_crit_edge, label %if.then56

if.end50.if.end72_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then56:                                        ; preds = %if.end50
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %num_regs58 = getelementptr inbounds %struct.cdns_sierra_vals, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %num_regs58 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_regs58, align 4
  %regmap_common_cdb = getelementptr inbounds %struct.cdns_sierra_phy, ptr %5, i32 0, i32 11
  %56 = ptrtoint ptr %regmap_common_cdb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap_common_cdb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp60192.not = icmp eq i32 %55, 0
  br i1 %cmp60192.not, label %if.then56.if.end72_crit_edge, label %if.then56.for.body62_crit_edge

if.then56.for.body62_crit_edge:                   ; preds = %if.then56
  br label %for.body62

if.then56.if.end72_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

for.body62:                                       ; preds = %for.body62.for.body62_crit_edge, %if.then56.for.body62_crit_edge
  %i.2193 = phi i32 [ %inc70, %for.body62.for.body62_crit_edge ], [ 0, %if.then56.for.body62_crit_edge ]
  %arrayidx63 = getelementptr %struct.cdns_reg_pairs, ptr %53, i32 %i.2193
  %off64 = getelementptr %struct.cdns_reg_pairs, ptr %53, i32 %i.2193, i32 1
  %58 = ptrtoint ptr %off64 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %off64, align 4
  %60 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx63, align 4
  %conv67 = zext i16 %61 to i32
  %call68 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef %59, i32 noundef %conv67) #8
  %inc70 = add nuw i32 %i.2193, 1
  %exitcond199.not = icmp eq i32 %inc70, %55
  br i1 %exitcond199.not, label %for.body62.if.end72_crit_edge, label %for.body62.for.body62_crit_edge

for.body62.for.body62_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62

for.body62.if.end72_crit_edge:                    ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.end72:                                         ; preds = %for.body62.if.end72_crit_edge, %if.then56.if.end72_crit_edge, %if.end50.if.end72_crit_edge
  %arrayidx74 = getelementptr %struct.cdns_sierra_data, ptr %7, i32 0, i32 6, i32 %9
  %arrayidx76 = getelementptr [3 x ptr], ptr %arrayidx74, i32 0, i32 %11
  %62 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx76, align 4
  %tobool77.not = icmp eq ptr %63, null
  br i1 %tobool77.not, label %if.end72.cleanup_crit_edge, label %if.then78

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then78:                                        ; preds = %if.end72
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %num_regs80 = getelementptr inbounds %struct.cdns_sierra_vals, ptr %63, i32 0, i32 1
  %66 = ptrtoint ptr %num_regs80 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_regs80, align 4
  %num_lanes82 = getelementptr inbounds %struct.cdns_sierra_inst, ptr %1, i32 0, i32 2
  %68 = ptrtoint ptr %num_lanes82 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_lanes82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp83196.not = icmp eq i32 %69, 0
  br i1 %cmp83196.not, label %if.then78.cleanup_crit_edge, label %for.body85.lr.ph

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body85.lr.ph:                                 ; preds = %if.then78
  %mlane86 = getelementptr inbounds %struct.cdns_sierra_inst, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp90194.not = icmp eq i32 %67, 0
  br label %for.body85

for.body85:                                       ; preds = %for.inc102.for.body85_crit_edge, %for.body85.lr.ph
  %i.3197 = phi i32 [ 0, %for.body85.lr.ph ], [ %inc103, %for.inc102.for.body85_crit_edge ]
  %70 = ptrtoint ptr %mlane86 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mlane86, align 4
  %add87 = add i32 %71, %i.3197
  %arrayidx88 = getelementptr %struct.cdns_sierra_phy, ptr %5, i32 0, i32 6, i32 %add87
  %72 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx88, align 4
  br i1 %cmp90194.not, label %for.body85.for.inc102_crit_edge, label %for.body85.for.body92_crit_edge

for.body85.for.body92_crit_edge:                  ; preds = %for.body85
  br label %for.body92

for.body85.for.inc102_crit_edge:                  ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc102

for.body92:                                       ; preds = %for.body92.for.body92_crit_edge, %for.body85.for.body92_crit_edge
  %j.1195 = phi i32 [ %inc100, %for.body92.for.body92_crit_edge ], [ 0, %for.body85.for.body92_crit_edge ]
  %arrayidx93 = getelementptr %struct.cdns_reg_pairs, ptr %65, i32 %j.1195
  %off94 = getelementptr %struct.cdns_reg_pairs, ptr %65, i32 %j.1195, i32 1
  %74 = ptrtoint ptr %off94 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %off94, align 4
  %76 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx93, align 4
  %conv97 = zext i16 %77 to i32
  %call98 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef %75, i32 noundef %conv97) #8
  %inc100 = add nuw i32 %j.1195, 1
  %exitcond200.not = icmp eq i32 %inc100, %67
  br i1 %exitcond200.not, label %for.body92.for.inc102_crit_edge, label %for.body92.for.body92_crit_edge

for.body92.for.body92_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body92

for.body92.for.inc102_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc102

for.inc102:                                       ; preds = %for.body92.for.inc102_crit_edge, %for.body85.for.inc102_crit_edge
  %inc103 = add nuw i32 %i.3197, 1
  %78 = ptrtoint ptr %num_lanes82 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_lanes82, align 4
  %cmp83 = icmp ult i32 %inc103, %79
  br i1 %cmp83, label %for.inc102.for.body85_crit_edge, label %for.inc102.cleanup_crit_edge

for.inc102.cleanup_crit_edge:                     ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc102.for.body85_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body85

cleanup:                                          ; preds = %for.inc102.cleanup_crit_edge, %if.then78.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_sierra_phy_on(ptr nocapture noundef readonly %gphy) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %gphy, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %gphy, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val, align 4, !annotation !445
  %nsubnodes = getelementptr inbounds %struct.cdns_sierra_phy, ptr %3, i32 0, i32 21
  %9 = ptrtoint ptr %nsubnodes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nsubnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %phy_rst = getelementptr inbounds %struct.cdns_sierra_phy, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy_rst, align 4
  %call4 = tail call i32 @reset_control_deassert(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.161) #11
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %lnk_rst = getelementptr inbounds %struct.cdns_sierra_inst, ptr %5, i32 0, i32 4
  %13 = ptrtoint ptr %lnk_rst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lnk_rst, align 4
  %call7 = tail call i32 @reset_control_deassert(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end13, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.164) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %phy_type = getelementptr inbounds %struct.cdns_sierra_inst, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phy_type, align 4
  %.off = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then17, label %if.end13.if.end62_crit_edge

if.end13.if.end62_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then17:                                        ; preds = %if.end13
  %call18 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call18, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 599) #8
  %mlane = getelementptr inbounds %struct.cdns_sierra_inst, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %mlane to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mlane, align 4
  %arrayidx293 = getelementptr %struct.cdns_sierra_phy, ptr %3, i32 0, i32 16, i32 %18
  %19 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx293, align 4
  %call32294 = call i32 @regmap_field_read(ptr noundef %20, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32294)
  %tobool33.not295 = icmp eq i32 %call32294, 0
  br i1 %tobool33.not295, label %if.then17.lor.lhs.false34_crit_edge, label %if.then17.do.end60_crit_edge

if.then17.do.end60_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

if.then17.lor.lhs.false34_crit_edge:              ; preds = %if.then17
  br label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.then49.lor.lhs.false34_crit_edge, %if.then17.lor.lhs.false34_crit_edge
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool35.not = icmp eq i32 %22, 0
  br i1 %tobool35.not, label %lor.lhs.false34.if.end62_crit_edge, label %land.lhs.true

lor.lhs.false34.if.end62_crit_edge:               ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

land.lhs.true:                                    ; preds = %lor.lhs.false34
  %call39 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call39, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call39, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then49

if.then49:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %23 = ptrtoint ptr %mlane to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mlane, align 4
  %arrayidx = getelementptr %struct.cdns_sierra_phy, ptr %3, i32 0, i32 16, i32 %24
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %call32 = call i32 @regmap_field_read(ptr noundef %26, ptr noundef nonnull %val) #8
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then49.lor.lhs.false34_crit_edge, label %if.then49.do.end60_crit_edge

if.then49.do.end60_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

if.then49.lor.lhs.false34_crit_edge:              ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false34

for.end:                                          ; preds = %land.lhs.true
  %27 = ptrtoint ptr %mlane to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mlane, align 4
  %arrayidx45 = getelementptr %struct.cdns_sierra_phy, ptr %3, i32 0, i32 16, i32 %28
  %29 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx45, align 4
  %call46 = call i32 @regmap_field_read(ptr noundef %30, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool51.not = icmp eq i32 %call46, 0
  br i1 %tobool51.not, label %lor.end, label %for.end.do.end60_crit_edge

for.end.do.end60_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

lor.end:                                          ; preds = %for.end
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool52.not = icmp eq i32 %.pr, 0
  br i1 %tobool52.not, label %lor.end.if.end62_crit_edge, label %lor.end.do.end60_crit_edge

lor.end.do.end60_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

lor.end.if.end62_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

do.end60:                                         ; preds = %lor.end.do.end60_crit_edge, %for.end.do.end60_crit_edge, %if.then49.do.end60_crit_edge, %if.then17.do.end60_crit_edge
  %32 = phi i32 [ -110, %lor.end.do.end60_crit_edge ], [ %call32294, %if.then17.do.end60_crit_edge ], [ %call46, %for.end.do.end60_crit_edge ], [ %call32, %if.then49.do.end60_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.167) #11
  br label %cleanup

if.end62:                                         ; preds = %lor.end.if.end62_crit_edge, %lor.lhs.false34.if.end62_crit_edge, %if.end13.if.end62_crit_edge
  %call68 = call i64 @ktime_get() #8
  %add.i237 = add i64 %call68, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 611) #8
  %pma_cmn_ready = getelementptr inbounds %struct.cdns_sierra_phy, ptr %3, i32 0, i32 14
  %33 = ptrtoint ptr %pma_cmn_ready to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pma_cmn_ready, align 4
  %call83299 = call i32 @regmap_field_read(ptr noundef %34, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83299)
  %tobool84.not300 = icmp eq i32 %call83299, 0
  br i1 %tobool84.not300, label %if.end62.lor.lhs.false85_crit_edge, label %if.end62.do.end120_crit_edge

if.end62.do.end120_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end120

if.end62.lor.lhs.false85_crit_edge:               ; preds = %if.end62
  br label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %if.then99.lor.lhs.false85_crit_edge, %if.end62.lor.lhs.false85_crit_edge
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool86.not = icmp eq i32 %36, 0
  br i1 %tobool86.not, label %land.lhs.true90, label %lor.lhs.false85.if.end121_crit_edge

lor.lhs.false85.if.end121_crit_edge:              ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

land.lhs.true90:                                  ; preds = %lor.lhs.false85
  %call91 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call91, i64 %add.i237)
  %cmp3.i239 = icmp sgt i64 %call91, %add.i237
  br i1 %cmp3.i239, label %for.end103, label %if.then99

if.then99:                                        ; preds = %land.lhs.true90
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %37 = ptrtoint ptr %pma_cmn_ready to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pma_cmn_ready, align 4
  %call83 = call i32 @regmap_field_read(ptr noundef %38, ptr noundef nonnull %val) #8
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then99.lor.lhs.false85_crit_edge, label %if.then99.do.end120_crit_edge

if.then99.do.end120_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end120

if.then99.lor.lhs.false85_crit_edge:              ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false85

for.end103:                                       ; preds = %land.lhs.true90
  %39 = ptrtoint ptr %pma_cmn_ready to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pma_cmn_ready, align 4
  %call96 = call i32 @regmap_field_read(ptr noundef %40, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool105.not = icmp eq i32 %call96, 0
  br i1 %tobool105.not, label %lor.rhs106, label %for.end103.do.end120_crit_edge

for.end103.do.end120_crit_edge:                   ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end120

lor.rhs106:                                       ; preds = %for.end103
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr324 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr324)
  %tobool107.not = icmp eq i32 %.pr324, 0
  br i1 %tobool107.not, label %lor.rhs106.do.end120_crit_edge, label %lor.rhs106.if.end121_crit_edge

lor.rhs106.if.end121_crit_edge:                   ; preds = %lor.rhs106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

lor.rhs106.do.end120_crit_edge:                   ; preds = %lor.rhs106
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end120

do.end120:                                        ; preds = %lor.rhs106.do.end120_crit_edge, %for.end103.do.end120_crit_edge, %if.then99.do.end120_crit_edge, %if.end62.do.end120_crit_edge
  %tobool105.not270.ph = phi i32 [ %call83299, %if.end62.do.end120_crit_edge ], [ %call96, %for.end103.do.end120_crit_edge ], [ -110, %lor.rhs106.do.end120_crit_edge ], [ %call83, %if.then99.do.end120_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.170) #11
  br label %cleanup

if.end121:                                        ; preds = %lor.rhs106.if.end121_crit_edge, %lor.lhs.false85.if.end121_crit_edge
  %call127 = call i64 @ktime_get() #8
  %add.i242 = add i64 %call127, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 618) #8
  %mlane142 = getelementptr inbounds %struct.cdns_sierra_inst, ptr %5, i32 0, i32 3
  %42 = ptrtoint ptr %mlane142 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mlane142, align 4
  %arrayidx143302 = getelementptr %struct.cdns_sierra_phy, ptr %3, i32 0, i32 15, i32 %43
  %44 = ptrtoint ptr %arrayidx143302 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx143302, align 4
  %call144303 = call i32 @regmap_field_read(ptr noundef %45, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144303)
  %tobool145.not304 = icmp eq i32 %call144303, 0
  br i1 %tobool145.not304, label %if.end121.lor.lhs.false146_crit_edge, label %if.end121.lor.end171_crit_edge

if.end121.lor.end171_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end171

if.end121.lor.lhs.false146_crit_edge:             ; preds = %if.end121
  br label %lor.lhs.false146

lor.lhs.false146:                                 ; preds = %if.then162.lor.lhs.false146_crit_edge, %if.end121.lor.lhs.false146_crit_edge
  %46 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool147.not = icmp eq i32 %47, 0
  br i1 %tobool147.not, label %land.lhs.true151, label %lor.lhs.false146.cleanup_crit_edge

lor.lhs.false146.cleanup_crit_edge:               ; preds = %lor.lhs.false146
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true151:                                 ; preds = %lor.lhs.false146
  %call152 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call152, i64 %add.i242)
  %cmp3.i244 = icmp sgt i64 %call152, %add.i242
  br i1 %cmp3.i244, label %for.end166, label %if.then162

if.then162:                                       ; preds = %land.lhs.true151
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %48 = ptrtoint ptr %mlane142 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mlane142, align 4
  %arrayidx143 = getelementptr %struct.cdns_sierra_phy, ptr %3, i32 0, i32 15, i32 %49
  %50 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx143, align 4
  %call144 = call i32 @regmap_field_read(ptr noundef %51, ptr noundef nonnull %val) #8
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.then162.lor.lhs.false146_crit_edge, label %if.then162.lor.end171_crit_edge

if.then162.lor.end171_crit_edge:                  ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end171

if.then162.lor.lhs.false146_crit_edge:            ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false146

for.end166:                                       ; preds = %land.lhs.true151
  %52 = ptrtoint ptr %mlane142 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mlane142, align 4
  %arrayidx158 = getelementptr %struct.cdns_sierra_phy, ptr %3, i32 0, i32 15, i32 %53
  %54 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx158, align 4
  %call159 = call i32 @regmap_field_read(ptr noundef %55, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool168.not = icmp eq i32 %call159, 0
  br i1 %tobool168.not, label %lor.rhs169, label %for.end166.lor.end171_crit_edge

for.end166.lor.end171_crit_edge:                  ; preds = %for.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end171

lor.rhs169:                                       ; preds = %for.end166
  %56 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr326 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr326)
  %tobool170.not = icmp eq i32 %.pr326, 0
  br i1 %tobool170.not, label %lor.rhs169.do.end183_crit_edge, label %lor.rhs169.cleanup_crit_edge

lor.rhs169.cleanup_crit_edge:                     ; preds = %lor.rhs169
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs169.do.end183_crit_edge:                   ; preds = %lor.rhs169
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end183

lor.end171:                                       ; preds = %for.end166.lor.end171_crit_edge, %if.then162.lor.end171_crit_edge, %if.end121.lor.end171_crit_edge
  %tobool168.not279 = phi i32 [ %call159, %for.end166.lor.end171_crit_edge ], [ %call144303, %if.end121.lor.end171_crit_edge ], [ %call144, %if.then162.lor.end171_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool168.not279)
  %cmp179 = icmp slt i32 %tobool168.not279, 0
  br i1 %cmp179, label %lor.end171.do.end183_crit_edge, label %lor.end171.cleanup_crit_edge

lor.end171.cleanup_crit_edge:                     ; preds = %lor.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.end171.do.end183_crit_edge:                   ; preds = %lor.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end183

do.end183:                                        ; preds = %lor.end171.do.end183_crit_edge, %lor.rhs169.do.end183_crit_edge
  %tobool168.not279320 = phi i32 [ %tobool168.not279, %lor.end171.do.end183_crit_edge ], [ -110, %lor.rhs169.do.end183_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.173) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end183, %lor.end171.cleanup_crit_edge, %lor.rhs169.cleanup_crit_edge, %lor.lhs.false146.cleanup_crit_edge, %do.end120, %do.end60, %do.end12, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call7, %do.end12 ], [ %32, %do.end60 ], [ %tobool105.not270.ph, %do.end120 ], [ %tobool168.not279320, %do.end183 ], [ %tobool168.not279, %lor.end171.cleanup_crit_edge ], [ 0, %lor.rhs169.cleanup_crit_edge ], [ 0, %lor.lhs.false146.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_sierra_phy_off(ptr nocapture noundef readonly %gphy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %gphy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lnk_rst = getelementptr inbounds %struct.cdns_sierra_inst, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lnk_rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lnk_rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_sierra_phy_reset(ptr nocapture noundef readonly %gphy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %gphy, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %phy_rst = getelementptr inbounds %struct.cdns_sierra_phy, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %5) #8
  %6 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_rst, align 4
  %call3 = tail call i32 @reset_control_deassert(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 211)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 211)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !221, !223, !225, !227, !229, !231, !233, !234, !235, !236, !238, !240, !241, !242, !244, !246, !247, !248, !250, !252, !253, !254, !256, !258, !259, !260, !262, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !278, !280, !281, !282, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !302, !303, !304, !306, !307, !308, !310, !312, !314, !316, !318, !319, !320, !321, !323, !325, !326, !327, !329, !331, !333, !335, !337, !339, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434}
!llvm.module.flags = !{!436, !437, !438, !439, !440, !441, !442, !443}
!llvm.ident = !{!444}

!0 = !{ptr @__initcall__kmod_phy_cadence_sierra__289_2311_cdns_sierra_driver_init6, !1, !"__initcall__kmod_phy_cadence_sierra__289_2311_cdns_sierra_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 2311, i32 1}
!2 = !{ptr @__exitcall_cdns_sierra_driver_exit, !1, !"__exitcall_cdns_sierra_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias290, !4, !"__UNIQUE_ID_alias290", i1 false, i1 false}
!4 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 2313, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 2314, i32 1}
!7 = !{ptr @__UNIQUE_ID_description292, !8, !"__UNIQUE_ID_description292", i1 false, i1 false}
!8 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 2315, i32 1}
!9 = !{ptr @__UNIQUE_ID_file293, !10, !"__UNIQUE_ID_file293", i1 false, i1 false}
!10 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 2316, i32 1}
!11 = !{ptr @__UNIQUE_ID_license294, !10, !"__UNIQUE_ID_license294", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 2307, i32 11}
!14 = !{ptr @cdns_sierra_driver, !15, !"cdns_sierra_driver", i1 false, i1 false}
!15 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 2303, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1362, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cdns_sierra_phy_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @cdns_sierra_phy_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1403, i32 43}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1408, i32 32}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1409, i32 32}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1416, i32 4}
!32 = !{ptr @cdns_sierra_phy_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cdns_sierra_phy_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1426, i32 5}
!36 = !{ptr @cdns_sierra_phy_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @cdns_sierra_phy_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1453, i32 3}
!40 = !{ptr @cdns_sierra_phy_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @cdns_sierra_phy_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1053, i32 4}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cdns_regmap_init_blocks._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @cdns_regmap_init_blocks._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1063, i32 3}
!49 = !{ptr @cdns_regmap_init_blocks._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @cdns_regmap_init_blocks._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1072, i32 3}
!53 = !{ptr @cdns_regmap_init_blocks._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cdns_regmap_init_blocks._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1084, i32 4}
!57 = !{ptr @cdns_regmap_init_blocks._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @cdns_regmap_init_blocks._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1094, i32 3}
!61 = !{ptr @cdns_regmap_init_blocks._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @cdns_regmap_init_blocks._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1106, i32 4}
!65 = !{ptr @cdns_regmap_init_blocks._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @cdns_regmap_init_blocks._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @cdns_regmap_init._key, !68, !"_key", i1 false, i1 false}
!68 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 953, i32 9}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 406, i32 2}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 407, i32 2}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 408, i32 2}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 409, i32 2}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 410, i32 2}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 411, i32 2}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 412, i32 2}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 413, i32 2}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 414, i32 2}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 415, i32 2}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 416, i32 2}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 417, i32 2}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 418, i32 2}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 419, i32 2}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 420, i32 2}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 421, i32 2}
!102 = !{ptr @cdns_sierra_lane_cdb_config, !103, !"cdns_sierra_lane_cdb_config", i1 false, i1 false}
!103 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 405, i32 35}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 425, i32 10}
!106 = !{ptr @cdns_sierra_common_cdb_config, !107, !"cdns_sierra_common_cdb_config", i1 false, i1 false}
!107 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 424, i32 35}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 433, i32 10}
!110 = !{ptr @cdns_sierra_phy_pcs_cmn_cdb_config, !111, !"cdns_sierra_phy_pcs_cmn_cdb_config", i1 false, i1 false}
!111 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 432, i32 35}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 450, i32 2}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 451, i32 2}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 452, i32 2}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 453, i32 2}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 454, i32 2}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 455, i32 2}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 456, i32 2}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 457, i32 2}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 458, i32 2}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 459, i32 2}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 460, i32 2}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 461, i32 2}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 462, i32 2}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 463, i32 2}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 464, i32 2}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 465, i32 2}
!144 = !{ptr @cdns_sierra_phy_pcs_lane_cdb_config, !145, !"cdns_sierra_phy_pcs_lane_cdb_config", i1 false, i1 false}
!145 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 449, i32 35}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 469, i32 10}
!148 = !{ptr @cdns_sierra_phy_pma_cmn_cdb_config, !149, !"cdns_sierra_phy_pma_cmn_cdb_config", i1 false, i1 false}
!149 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 468, i32 35}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 486, i32 2}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 487, i32 2}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 488, i32 2}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 489, i32 2}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 490, i32 2}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 491, i32 2}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 492, i32 2}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 493, i32 2}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 494, i32 2}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 495, i32 2}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 496, i32 2}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 497, i32 2}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 498, i32 2}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 499, i32 2}
!178 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 500, i32 2}
!180 = !{ptr @.str.86, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 501, i32 2}
!182 = !{ptr @cdns_sierra_phy_pma_lane_cdb_config, !183, !"cdns_sierra_phy_pma_lane_cdb_config", i1 false, i1 false}
!183 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 485, i32 35}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 967, i32 3}
!186 = !{ptr @.str.88, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @cdns_regfield_init._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @cdns_regfield_init._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.90, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 976, i32 4}
!191 = !{ptr @cdns_regfield_init._entry.89, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @cdns_regfield_init._entry_ptr.91, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.93, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 984, i32 4}
!195 = !{ptr @cdns_regfield_init._entry.92, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @cdns_regfield_init._entry_ptr.94, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.96, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 992, i32 4}
!199 = !{ptr @cdns_regfield_init._entry.95, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @cdns_regfield_init._entry_ptr.97, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.99, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1001, i32 3}
!203 = !{ptr @cdns_regfield_init._entry.98, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @cdns_regfield_init._entry_ptr.100, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.102, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1009, i32 3}
!207 = !{ptr @cdns_regfield_init._entry.101, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @cdns_regfield_init._entry_ptr.103, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.105, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1018, i32 4}
!211 = !{ptr @cdns_regfield_init._entry.104, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @cdns_regfield_init._entry_ptr.106, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.108, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1028, i32 4}
!215 = !{ptr @cdns_regfield_init._entry.107, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @cdns_regfield_init._entry_ptr.109, !214, !"_entry_ptr", i1 false, i1 false}
!217 = distinct !{null, !218, !"macro_id_type", i1 false, i1 false}
!218 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 220, i32 31}
!219 = distinct !{null, !220, !"cmn_plllc_pfdclk1_sel_preg", i1 false, i1 false}
!220 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 252, i32 52}
!221 = distinct !{null, !222, !"phy_pll_cfg_1", i1 false, i1 false}
!222 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 222, i32 31}
!223 = distinct !{null, !224, !"pma_cmn_ready", i1 false, i1 false}
!224 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 224, i32 31}
!225 = distinct !{null, !226, !"pllctrl_lock", i1 false, i1 false}
!226 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 226, i32 31}
!227 = distinct !{null, !228, !"phy_iso_link_ctrl_1", i1 false, i1 false}
!228 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 228, i32 31}
!229 = !{ptr @.str.110, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1121, i32 35}
!231 = !{ptr @.str.111, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1123, i32 3}
!233 = !{ptr @.str.112, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @cdns_sierra_phy_get_clocks._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @cdns_sierra_phy_get_clocks._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.113, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1128, i32 35}
!238 = !{ptr @.str.115, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1130, i32 3}
!240 = !{ptr @cdns_sierra_phy_get_clocks._entry.114, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @cdns_sierra_phy_get_clocks._entry_ptr.116, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.117, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1136, i32 35}
!244 = !{ptr @.str.119, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1138, i32 3}
!246 = !{ptr @cdns_sierra_phy_get_clocks._entry.118, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @cdns_sierra_phy_get_clocks._entry_ptr.120, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.121, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1144, i32 35}
!250 = !{ptr @.str.123, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1146, i32 3}
!252 = !{ptr @cdns_sierra_phy_get_clocks._entry.122, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @cdns_sierra_phy_get_clocks._entry_ptr.124, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.125, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1152, i32 35}
!256 = !{ptr @.str.127, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1154, i32 3}
!258 = !{ptr @cdns_sierra_phy_get_clocks._entry.126, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @cdns_sierra_phy_get_clocks._entry_ptr.128, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.129, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 886, i32 3}
!262 = !{ptr @.str.130, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @cdns_sierra_clk_register._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @cdns_sierra_clk_register._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.132, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 892, i32 3}
!267 = !{ptr @cdns_sierra_clk_register._entry.131, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @cdns_sierra_clk_register._entry_ptr.133, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.135, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 900, i32 3}
!271 = !{ptr @cdns_sierra_clk_register._entry.134, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @cdns_sierra_clk_register._entry_ptr.136, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.137, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 777, i32 4}
!275 = !{ptr @.str.138, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @cdns_sierra_phy_register_pll_mux._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @cdns_sierra_phy_register_pll_mux._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.139, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 730, i32 4}
!280 = !{ptr @.str.140, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @cdns_sierra_pll_mux_register._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @cdns_sierra_pll_mux_register._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.141, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 736, i32 39}
!285 = !{ptr @pll_mux_parent_index, !286, !"pll_mux_parent_index", i1 false, i1 false}
!286 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 276, i32 18}
!287 = !{ptr @.str.142, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 236, i32 28}
!289 = !{ptr @.str.143, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 237, i32 29}
!291 = !{ptr @.str.144, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 238, i32 33}
!293 = !{ptr @clk_names, !294, !"clk_names", i1 false, i1 false}
!294 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 235, i32 27}
!295 = !{ptr @cdns_sierra_pll_mux_ops, !296, !"cdns_sierra_pll_mux_ops", i1 false, i1 false}
!296 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 698, i32 29}
!297 = !{ptr @cdns_sierra_pll_mux_table, !298, !"cdns_sierra_pll_mux_table", i1 false, i1 false}
!298 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 281, i32 12}
!299 = !{ptr @.str.145, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 847, i32 3}
!301 = !{ptr @.str.146, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @cdns_sierra_derived_refclk_register._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @cdns_sierra_derived_refclk_register._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.148, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 854, i32 3}
!306 = !{ptr @cdns_sierra_derived_refclk_register._entry.147, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @cdns_sierra_derived_refclk_register._entry_ptr.149, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @cdns_sierra_derived_refclk_ops, !309, !"cdns_sierra_derived_refclk_ops", i1 false, i1 false}
!309 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 814, i32 29}
!310 = distinct !{null, !311, !"cmn_plllc_clk1outdiv_preg", i1 false, i1 false}
!311 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 230, i32 31}
!312 = distinct !{null, !313, !"cmn_plllc_clk1_en_preg", i1 false, i1 false}
!313 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 232, i32 31}
!314 = !{ptr @.str.150, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1202, i32 46}
!316 = !{ptr @.str.151, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1204, i32 3}
!318 = !{ptr @.str.152, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @cdns_sierra_phy_get_resets._entry, !317, !"_entry", i1 false, i1 false}
!320 = !{ptr @cdns_sierra_phy_get_resets._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.153, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1209, i32 55}
!323 = !{ptr @.str.155, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1211, i32 3}
!325 = !{ptr @cdns_sierra_phy_get_resets._entry.154, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @cdns_sierra_phy_get_resets._entry_ptr.156, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.157, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 910, i32 34}
!329 = !{ptr @.str.158, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 913, i32 34}
!331 = !{ptr @.str.159, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 916, i32 34}
!333 = !{ptr @.str.160, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 934, i32 30}
!335 = !{ptr @ops, !336, !"ops", i1 false, i1 false}
!336 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 641, i32 29}
!337 = !{ptr @.str.161, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 585, i32 4}
!339 = !{ptr @.str.162, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @cdns_sierra_phy_on._entry, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @cdns_sierra_phy_on._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.164, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 593, i32 3}
!344 = !{ptr @cdns_sierra_phy_on._entry.163, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @cdns_sierra_phy_on._entry_ptr.165, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.167, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 601, i32 4}
!348 = !{ptr @cdns_sierra_phy_on._entry.166, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @cdns_sierra_phy_on._entry_ptr.168, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.170, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 613, i32 3}
!352 = !{ptr @cdns_sierra_phy_on._entry.169, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @cdns_sierra_phy_on._entry_ptr.171, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.173, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 620, i32 3}
!356 = !{ptr @cdns_sierra_phy_on._entry.172, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @cdns_sierra_phy_on._entry_ptr.174, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @cdns_sierra_id_table, !359, !"cdns_sierra_id_table", i1 false, i1 false}
!359 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 2290, i32 34}
!360 = !{ptr @cdns_map_sierra, !361, !"cdns_map_sierra", i1 false, i1 false}
!361 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 2137, i32 38}
!362 = !{ptr @pcie_phy_pcs_cmn_vals, !363, !"pcie_phy_pcs_cmn_vals", i1 false, i1 false}
!363 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1579, i32 32}
!364 = !{ptr @pcie_phy_pcs_cmn_regs, !365, !"pcie_phy_pcs_cmn_regs", i1 false, i1 false}
!365 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1575, i32 30}
!366 = !{ptr @pcie_100_no_ssc_cmn_vals, !367, !"pcie_100_no_ssc_cmn_vals", i1 false, i1 false}
!367 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1866, i32 32}
!368 = !{ptr @cdns_pcie_cmn_regs_no_ssc, !369, !"cdns_pcie_cmn_regs_no_ssc", i1 false, i1 false}
!369 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1812, i32 36}
!370 = !{ptr @pcie_100_ext_ssc_cmn_vals, !371, !"pcie_100_ext_ssc_cmn_vals", i1 false, i1 false}
!371 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 2010, i32 32}
!372 = !{ptr @cdns_pcie_cmn_regs_ext_ssc, !373, !"cdns_pcie_cmn_regs_ext_ssc", i1 false, i1 false}
!373 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1952, i32 36}
!374 = !{ptr @pcie_100_int_ssc_cmn_vals, !375, !"pcie_100_int_ssc_cmn_vals", i1 false, i1 false}
!375 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1941, i32 32}
!376 = !{ptr @cdns_pcie_cmn_regs_int_ssc, !377, !"cdns_pcie_cmn_regs_int_ssc", i1 false, i1 false}
!377 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1877, i32 36}
!378 = !{ptr @pcie_100_no_ssc_plllc_cmn_vals, !379, !"pcie_100_no_ssc_plllc_cmn_vals", i1 false, i1 false}
!379 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1645, i32 32}
!380 = !{ptr @pcie_100_no_ssc_plllc_cmn_regs, !381, !"pcie_100_no_ssc_plllc_cmn_regs", i1 false, i1 false}
!381 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1585, i32 36}
!382 = !{ptr @pcie_100_ext_ssc_plllc_cmn_vals, !383, !"pcie_100_ext_ssc_plllc_cmn_vals", i1 false, i1 false}
!383 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1801, i32 32}
!384 = !{ptr @pcie_100_ext_ssc_plllc_cmn_regs, !385, !"pcie_100_ext_ssc_plllc_cmn_regs", i1 false, i1 false}
!385 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1737, i32 36}
!386 = !{ptr @pcie_100_int_ssc_plllc_cmn_vals, !387, !"pcie_100_int_ssc_plllc_cmn_vals", i1 false, i1 false}
!387 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1726, i32 32}
!388 = !{ptr @pcie_100_int_ssc_plllc_cmn_regs, !389, !"pcie_100_int_ssc_plllc_cmn_regs", i1 false, i1 false}
!389 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1656, i32 36}
!390 = !{ptr @usb_100_ext_ssc_cmn_vals, !391, !"usb_100_ext_ssc_cmn_vals", i1 false, i1 false}
!391 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 2127, i32 32}
!392 = !{ptr @cdns_usb_cmn_regs_ext_ssc, !393, !"cdns_usb_cmn_regs_ext_ssc", i1 false, i1 false}
!393 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 2021, i32 36}
!394 = !{ptr @qsgmii_100_no_ssc_plllc1_cmn_vals, !395, !"qsgmii_100_no_ssc_plllc1_cmn_vals", i1 false, i1 false}
!395 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1564, i32 32}
!396 = !{ptr @qsgmii_100_no_ssc_plllc1_cmn_regs, !397, !"qsgmii_100_no_ssc_plllc1_cmn_regs", i1 false, i1 false}
!397 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1519, i32 36}
!398 = !{ptr @pcie_100_no_ssc_ln_vals, !399, !"pcie_100_no_ssc_ln_vals", i1 false, i1 false}
!399 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1871, i32 32}
!400 = !{ptr @cdns_pcie_ln_regs_no_ssc, !401, !"cdns_pcie_ln_regs_no_ssc", i1 false, i1 false}
!401 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1820, i32 36}
!402 = !{ptr @pcie_100_ext_ssc_ln_vals, !403, !"pcie_100_ext_ssc_ln_vals", i1 false, i1 false}
!403 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 2015, i32 32}
!404 = !{ptr @cdns_pcie_ln_regs_ext_ssc, !405, !"cdns_pcie_ln_regs_ext_ssc", i1 false, i1 false}
!405 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1961, i32 36}
!406 = !{ptr @pcie_100_int_ssc_ln_vals, !407, !"pcie_100_int_ssc_ln_vals", i1 false, i1 false}
!407 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1946, i32 32}
!408 = !{ptr @cdns_pcie_ln_regs_int_ssc, !409, !"cdns_pcie_ln_regs_int_ssc", i1 false, i1 false}
!409 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1892, i32 36}
!410 = !{ptr @ml_pcie_100_no_ssc_ln_vals, !411, !"ml_pcie_100_no_ssc_ln_vals", i1 false, i1 false}
!411 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1650, i32 32}
!412 = !{ptr @ml_pcie_100_no_ssc_ln_regs, !413, !"ml_pcie_100_no_ssc_ln_regs", i1 false, i1 false}
!413 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1596, i32 36}
!414 = !{ptr @ml_pcie_100_ext_ssc_ln_vals, !415, !"ml_pcie_100_ext_ssc_ln_vals", i1 false, i1 false}
!415 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1806, i32 32}
!416 = !{ptr @ml_pcie_100_ext_ssc_ln_regs, !417, !"ml_pcie_100_ext_ssc_ln_regs", i1 false, i1 false}
!417 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1749, i32 36}
!418 = !{ptr @ml_pcie_100_int_ssc_ln_vals, !419, !"ml_pcie_100_int_ssc_ln_vals", i1 false, i1 false}
!419 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1731, i32 32}
!420 = !{ptr @ml_pcie_100_int_ssc_ln_regs, !421, !"ml_pcie_100_int_ssc_ln_regs", i1 false, i1 false}
!421 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1674, i32 36}
!422 = !{ptr @usb_100_ext_ssc_ln_vals, !423, !"usb_100_ext_ssc_ln_vals", i1 false, i1 false}
!423 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 2132, i32 32}
!424 = !{ptr @cdns_usb_ln_regs_ext_ssc, !425, !"cdns_usb_ln_regs_ext_ssc", i1 false, i1 false}
!425 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 2029, i32 36}
!426 = !{ptr @qsgmii_100_no_ssc_plllc1_ln_vals, !427, !"qsgmii_100_no_ssc_plllc1_ln_vals", i1 false, i1 false}
!427 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1569, i32 32}
!428 = !{ptr @qsgmii_100_no_ssc_plllc1_ln_regs, !429, !"qsgmii_100_no_ssc_plllc1_ln_regs", i1 false, i1 false}
!429 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1525, i32 36}
!430 = !{ptr @cdns_ti_map_sierra, !431, !"cdns_ti_map_sierra", i1 false, i1 false}
!431 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 2209, i32 38}
!432 = !{ptr @qsgmii_phy_pma_ln_vals, !433, !"qsgmii_phy_pma_ln_vals", i1 false, i1 false}
!433 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1513, i32 32}
!434 = !{ptr @qsgmii_phy_pma_ln_regs, !435, !"qsgmii_phy_pma_ln_regs", i1 false, i1 false}
!435 = !{!"../drivers/phy/cadence/phy-cadence-sierra.c", i32 1509, i32 30}
!436 = !{i32 1, !"wchar_size", i32 2}
!437 = !{i32 1, !"min_enum_size", i32 4}
!438 = !{i32 8, !"branch-target-enforcement", i32 0}
!439 = !{i32 8, !"sign-return-address", i32 0}
!440 = !{i32 8, !"sign-return-address-all", i32 0}
!441 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!442 = !{i32 7, !"uwtable", i32 1}
!443 = !{i32 7, !"frame-pointer", i32 2}
!444 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!445 = !{!"auto-init"}
!446 = !{i8 0, i8 2}
!447 = !{i64 4650577}
!448 = !{i64 2155336785}
!449 = !{i64 2155336119}
!450 = !{i64 4650377}
