; ModuleID = '/llk/IR_all_yes/drivers/phy/cadence/phy-cadence-torrent.c_pt.bc'
source_filename = "../drivers/phy/cadence/phy-cadence-torrent.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.coefficients = type { i16, i16, i16 }
%struct.cdns_torrent_data = type { i8, i8, [6 x [6 x [3 x ptr]]], [6 x [6 x [3 x ptr]]], [6 x [6 x [3 x ptr]]], [3 x [6 x [6 x [3 x ptr]]]], [3 x [6 x [6 x [3 x ptr]]]], [3 x [6 x [6 x [3 x ptr]]]] }
%struct.cdns_torrent_vals = type { ptr, i32 }
%struct.cdns_reg_pairs = type { i32, i32 }
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
%struct.cdns_torrent_phy = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.cdns_torrent_inst], i32, ptr, ptr, ptr, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr], ptr }
%struct.cdns_torrent_inst = type { ptr, i32, i32, i32, ptr, i32 }
%struct.cdns_regmap_cdb_context = type { ptr, ptr, i8 }
%struct.cdns_torrent_derived_refclk = type { %struct.clk_hw, ptr, ptr, %struct.clk_init_data }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.cdns_torrent_received_refclk = type { %struct.clk_hw, ptr, ptr, %struct.clk_init_data }
%struct.cdns_torrent_refclk_driver = type { %struct.clk_hw, [4 x ptr], %struct.clk_init_data }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.phy_configure_opts_dp = type { i32, i32, [4 x i32], [4 x i32], i8 }

@__initcall__kmod_phy_cadence_torrent__292_4718_cdns_torrent_phy_driver_init6 = internal global ptr @cdns_torrent_phy_driver_init, section ".initcall6.init", align 4
@cdns_torrent_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdns_torrent_phy_probe, ptr @cdns_torrent_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdns_torrent_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cdns_torrent_phy_driver_exit = internal global ptr @cdns_torrent_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [56 x i8] c"phy_cadence_torrent.author=Cadence Design Systems, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [59 x i8] c"phy_cadence_torrent.description=Cadence Torrent PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [65 x i8] c"phy_cadence_torrent.file=drivers/phy/cadence/phy-cadence-torrent\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [35 x i8] c"phy_cadence_torrent.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cdns-torrent-phy\00", [47 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,torrent-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_map_torrent }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j721e-serdes-10g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_j721e_map_torrent }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2558, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No available link subnodes found\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cdns_torrent_phy_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/phy/cadence/phy-cadence-torrent.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_probe._entry_ptr = internal global ptr @cdns_torrent_phy_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 2600, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: failed to get reset\0A\00", [39 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_probe._entry_ptr.9 = internal global ptr @cdns_torrent_phy_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 2608, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: No \22reg\22-property.\0A\00", [40 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_probe._entry_ptr.13 = internal global ptr @cdns_torrent_phy_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdns,phy-type\00", [18 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 2615, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: No \22cdns,phy-type\22-property.\0A\00", [62 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_probe._entry_ptr.17 = internal global ptr @cdns_torrent_phy_probe._entry.15, section ".printk_index", align 4
@cdns_torrent_phy_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 2637, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unsupported protocol\0A\00", [42 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_probe._entry_ptr.20 = internal global ptr @cdns_torrent_phy_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cdns,num-lanes\00", [17 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 2645, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: No \22cdns,num-lanes\22-property.\0A\00", [61 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_probe._entry_ptr.24 = internal global ptr @cdns_torrent_phy_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdns,ssc-mode\00", [18 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @cdns_torrent_phy_init, ptr null, ptr @cdns_torrent_phy_on, ptr @cdns_torrent_phy_off, ptr null, ptr null, ptr null, ptr @cdns_torrent_dp_configure, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@noop_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @cdns_torrent_noop_phy_on, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 2675, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unsupported number of lanes: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_probe._entry_ptr.28 = internal global ptr @cdns_torrent_phy_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cdns,max-bit-rate\00", [46 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 2697, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unsupported max bit rate: %dMbps\0A\00", [62 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_probe._entry_ptr.32 = internal global ptr @cdns_torrent_phy_probe._entry.30, section ".printk_index", align 4
@cdns_torrent_phy_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.2, ptr @.str.3, ptr @.str.34, i8 2, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"phy_cadence_torrent\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DP max bit rate %d.%03d Gbps\0A\00", [34 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 2738, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid lane configuration\0A\00", [36 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_probe._entry_ptr.37 = internal global ptr @cdns_torrent_phy_probe._entry.35, section ".printk_index", align 4
@cdns_torrent_phy_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.2, ptr @.str.3, ptr @.str.38, i8 2, i8 -78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Multi-link: %s (%d lanes) & %s (%d lanes)\00", [54 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_probe.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.2, ptr @.str.3, ptr @.str.39, i8 2, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Single link: %s (%d lanes)\00", [37 x i8] zeroinitializer }, align 32
@cdns_torrent_tx_lane_cdb_config = internal constant { [4 x %struct.regmap_config], [176 x i8] } { [4 x %struct.regmap_config] [%struct.regmap_config { ptr @.str.58, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.59, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.60, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.61, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }], [176 x i8] zeroinitializer }, align 32
@cdns_torrent_regmap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 2082, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to init tx lane CDB regmap\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cdns_torrent_regmap_init\00", [39 x i8] zeroinitializer }, align 32
@cdns_torrent_regmap_init._entry_ptr = internal global ptr @cdns_torrent_regmap_init._entry, section ".printk_index", align 4
@cdns_torrent_rx_lane_cdb_config = internal constant { [4 x %struct.regmap_config], [176 x i8] } { [4 x %struct.regmap_config] [%struct.regmap_config { ptr @.str.62, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.63, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.64, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.65, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }], [176 x i8] zeroinitializer }, align 32
@cdns_torrent_regmap_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 2093, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to init rx lane CDB regmap\0A\00", [61 x i8] zeroinitializer }, align 32
@cdns_torrent_regmap_init._entry_ptr.44 = internal global ptr @cdns_torrent_regmap_init._entry.42, section ".printk_index", align 4
@cdns_torrent_phy_pcs_lane_cdb_config = internal constant { [4 x %struct.regmap_config], [176 x i8] } { [4 x %struct.regmap_config] [%struct.regmap_config { ptr @.str.66, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.67, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.68, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.69, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }], [176 x i8] zeroinitializer }, align 32
@cdns_torrent_regmap_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.3, i32 2104, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to init PHY PCS lane CDB regmap\0A\00", [56 x i8] zeroinitializer }, align 32
@cdns_torrent_regmap_init._entry_ptr.47 = internal global ptr @cdns_torrent_regmap_init._entry.45, section ".printk_index", align 4
@cdns_torrent_common_cdb_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.70, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@cdns_torrent_regmap_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.3, i32 2115, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to init common CDB regmap\0A\00", [62 x i8] zeroinitializer }, align 32
@cdns_torrent_regmap_init._entry_ptr.50 = internal global ptr @cdns_torrent_regmap_init._entry.48, section ".printk_index", align 4
@cdns_torrent_phy_pcs_cmn_cdb_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.71, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@cdns_torrent_regmap_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.3, i32 2125, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to init PHY PCS common CDB regmap\0A\00", [54 x i8] zeroinitializer }, align 32
@cdns_torrent_regmap_init._entry_ptr.53 = internal global ptr @cdns_torrent_regmap_init._entry.51, section ".printk_index", align 4
@cdns_torrent_phy_pma_cmn_cdb_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.72, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_read, ptr @cdns_regmap_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@cdns_torrent_regmap_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.41, ptr @.str.3, i32 2135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to init PHY PMA common CDB regmap\0A\00", [54 x i8] zeroinitializer }, align 32
@cdns_torrent_regmap_init._entry_ptr.56 = internal global ptr @cdns_torrent_regmap_init._entry.54, section ".printk_index", align 4
@cdns_regmap_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"phy_cadence_torrent:1952:(config)->lock\00", [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"torrent_tx_lane0_cdb\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"torrent_tx_lane1_cdb\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"torrent_tx_lane2_cdb\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"torrent_tx_lane3_cdb\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"torrent_rx_lane0_cdb\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"torrent_rx_lane1_cdb\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"torrent_rx_lane2_cdb\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"torrent_rx_lane3_cdb\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"torrent_phy_pcs_lane0_cdb\00", [38 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"torrent_phy_pcs_lane1_cdb\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"torrent_phy_pcs_lane2_cdb\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"torrent_phy_pcs_lane3_cdb\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"torrent_common_cdb\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"torrent_phy_pcs_cmn_cdb\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"torrent_phy_pma_cmn_cdb\00", [40 x i8] zeroinitializer }, align 32
@cdns_torrent_regfield_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 1982, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PHY_PLL_CFG reg field init failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cdns_torrent_regfield_init\00", [37 x i8] zeroinitializer }, align 32
@cdns_torrent_regfield_init._entry_ptr = internal global ptr @cdns_torrent_regfield_init._entry, section ".printk_index", align 4
@cdns_torrent_regfield_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.3, i32 1990, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"phy_pipe_cmn_ctrl1_0 reg field init failed\0A\00", [52 x i8] zeroinitializer }, align 32
@cdns_torrent_regfield_init._entry_ptr.77 = internal global ptr @cdns_torrent_regfield_init._entry.75, section ".printk_index", align 4
@cdns_torrent_regfield_init._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.3, i32 1998, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"cmn_cdiag_refclk_ovrd_4 reg field init failed\0A\00", [49 x i8] zeroinitializer }, align 32
@cdns_torrent_regfield_init._entry_ptr.80 = internal global ptr @cdns_torrent_regfield_init._entry.78, section ".printk_index", align 4
@cdns_torrent_regfield_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.74, ptr @.str.3, i32 2006, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PHY_PMA_CMN_CTRL1 reg field init failed\0A\00", [55 x i8] zeroinitializer }, align 32
@cdns_torrent_regfield_init._entry_ptr.83 = internal global ptr @cdns_torrent_regfield_init._entry.81, section ".printk_index", align 4
@cdns_torrent_regfield_init._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.74, ptr @.str.3, i32 2014, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PHY_PMA_CMN_CTRL2 reg field init failed\0A\00", [55 x i8] zeroinitializer }, align 32
@cdns_torrent_regfield_init._entry_ptr.86 = internal global ptr @cdns_torrent_regfield_init._entry.84, section ".printk_index", align 4
@cdns_torrent_regfield_init._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.74, ptr @.str.3, i32 2022, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"PHY_PMA_PLL_RAW_CTRL reg field init failed\0A\00", [52 x i8] zeroinitializer }, align 32
@cdns_torrent_regfield_init._entry_ptr.89 = internal global ptr @cdns_torrent_regfield_init._entry.87, section ".printk_index", align 4
@cdns_torrent_regfield_init._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.74, ptr @.str.3, i32 2031, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"PHY_PCS_ISO_LINK_CTRL reg field init for ln %d failed\0A\00", [41 x i8] zeroinitializer }, align 32
@cdns_torrent_regfield_init._entry_ptr.92 = internal global ptr @cdns_torrent_regfield_init._entry.90, section ".printk_index", align 4
@cdns_torrent_clk_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.3, i32 2436, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register derived refclk\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cdns_torrent_clk_register\00", [38 x i8] zeroinitializer }, align 32
@cdns_torrent_clk_register._entry_ptr = internal global ptr @cdns_torrent_clk_register._entry, section ".printk_index", align 4
@cdns_torrent_clk_register._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.3, i32 2442, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register received refclk\0A\00", [60 x i8] zeroinitializer }, align 32
@cdns_torrent_clk_register._entry_ptr.97 = internal global ptr @cdns_torrent_clk_register._entry.95, section ".printk_index", align 4
@cdns_torrent_clk_register._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.3, i32 2448, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register refclk driver\0A\00", [62 x i8] zeroinitializer }, align 32
@cdns_torrent_clk_register._entry_ptr.100 = internal global ptr @cdns_torrent_clk_register._entry.98, section ".printk_index", align 4
@cdns_torrent_clk_register._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.94, ptr @.str.3, i32 2454, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to add clock provider: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@cdns_torrent_clk_register._entry_ptr.103 = internal global ptr @cdns_torrent_clk_register._entry.101, section ".printk_index", align 4
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_%s\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phy_en_refclk\00", [18 x i8] zeroinitializer }, align 32
@cdns_torrent_derived_refclk_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.3, i32 1702, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No parent clock for derived_refclk\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cdns_torrent_derived_refclk_register\00", [59 x i8] zeroinitializer }, align 32
@cdns_torrent_derived_refclk_register._entry_ptr = internal global ptr @cdns_torrent_derived_refclk_register._entry, section ".printk_index", align 4
@cdns_torrent_derived_refclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @cdns_torrent_derived_refclk_enable, ptr @cdns_torrent_derived_refclk_disable, ptr @cdns_torrent_derived_refclk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"refclk-driver\00", [18 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"refclk-der\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"refclk-rec\00", [21 x i8] zeroinitializer }, align 32
@cdns_torrent_received_refclk_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.3, i32 1785, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No parent clock for received_refclk\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cdns_torrent_received_refclk_register\00", [58 x i8] zeroinitializer }, align 32
@cdns_torrent_received_refclk_register._entry_ptr = internal global ptr @cdns_torrent_received_refclk_register._entry, section ".printk_index", align 4
@cdns_torrent_received_refclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @cdns_torrent_received_refclk_enable, ptr @cdns_torrent_received_refclk_disable, ptr @cdns_torrent_received_refclk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@cdns_torrent_refclk_driver_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.3, i32 1894, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"No parent clock for refclk driver clock\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cdns_torrent_refclk_driver_register\00", [60 x i8] zeroinitializer }, align 32
@cdns_torrent_refclk_driver_register._entry_ptr = internal global ptr @cdns_torrent_refclk_driver_register._entry, section ".printk_index", align 4
@cdns_torrent_refclk_driver_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @cdns_torrent_refclk_driver_enable, ptr @cdns_torrent_refclk_driver_disable, ptr @cdns_torrent_refclk_driver_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_torrent_refclk_driver_set_parent, ptr @cdns_torrent_refclk_driver_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@cdns_torrent_refclk_driver_register._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.3, i32 1916, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Refclk driver CMN reg field init failed\0A\00", [55 x i8] zeroinitializer }, align 32
@cdns_torrent_refclk_driver_register._entry_ptr.117 = internal global ptr @cdns_torrent_refclk_driver_register._entry.115, section ".printk_index", align 4
@cdns_torrent_refclk_driver_mux_table = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 0], [24 x i8] zeroinitializer }, align 32
@cdns_torrent_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.118, ptr @.str.3, i32 2468, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cdns_torrent_reset\00", [45 x i8] zeroinitializer }, align 32
@cdns_torrent_reset._entry_ptr = internal global ptr @cdns_torrent_reset._entry, section ".printk_index", align 4
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"torrent_apb\00", [20 x i8] zeroinitializer }, align 32
@cdns_torrent_reset._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.118, ptr @.str.3, i32 2475, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: failed to get apb reset\0A\00", [35 x i8] zeroinitializer }, align 32
@cdns_torrent_reset._entry_ptr.122 = internal global ptr @cdns_torrent_reset._entry.120, section ".printk_index", align 4
@.str.123 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refclk\00", [25 x i8] zeroinitializer }, align 32
@cdns_torrent_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.3, i32 2490, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"phy ref clock not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cdns_torrent_clk\00", [47 x i8] zeroinitializer }, align 32
@cdns_torrent_clk._entry_ptr = internal global ptr @cdns_torrent_clk._entry, section ".printk_index", align 4
@cdns_torrent_clk._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.3, i32 2496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to prepare ref clock\0A\00", [35 x i8] zeroinitializer }, align 32
@cdns_torrent_clk._entry_ptr.128 = internal global ptr @cdns_torrent_clk._entry.126, section ".printk_index", align 4
@cdns_torrent_clk._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.125, ptr @.str.3, i32 2502, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get ref clock rate\0A\00", [34 x i8] zeroinitializer }, align 32
@cdns_torrent_clk._entry_ptr.131 = internal global ptr @cdns_torrent_clk._entry.129, section ".printk_index", align 4
@cdns_torrent_clk._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.125, ptr @.str.3, i32 2518, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid Ref Clock Rate\0A\00", [40 x i8] zeroinitializer }, align 32
@cdns_torrent_clk._entry_ptr.134 = internal global ptr @cdns_torrent_clk._entry.132, section ".printk_index", align 4
@cdns_torrent_dp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.3, i32 1639, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported Ref Clock Rate\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cdns_torrent_dp_init\00", [43 x i8] zeroinitializer }, align 32
@cdns_torrent_dp_init._entry_ptr = internal global ptr @cdns_torrent_dp_init._entry, section ".printk_index", align 4
@cdns_torrent_dp_wait_pma_cmn_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.3, i32 1139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"timeout waiting for PMA common ready\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cdns_torrent_dp_wait_pma_cmn_ready\00", [61 x i8] zeroinitializer }, align 32
@cdns_torrent_dp_wait_pma_cmn_ready._entry_ptr = internal global ptr @cdns_torrent_dp_wait_pma_cmn_ready._entry, section ".printk_index", align 4
@cdns_torrent_dp_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.3, i32 1112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"timeout waiting for link PLL clock enable ack\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cdns_torrent_dp_run\00", [44 x i8] zeroinitializer }, align 32
@cdns_torrent_dp_run._entry_ptr = internal global ptr @cdns_torrent_dp_run._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cdns_torrent_phy_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.3, i32 1528, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Timeout waiting for CMN ready\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cdns_torrent_phy_on\00", [44 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_on._entry_ptr = internal global ptr @cdns_torrent_phy_on._entry, section ".printk_index", align 4
@cdns_torrent_phy_on._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str.3, i32 1537, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Timeout waiting for PHY status ready\0A\00", [58 x i8] zeroinitializer }, align 32
@cdns_torrent_phy_on._entry_ptr.145 = internal global ptr @cdns_torrent_phy_on._entry.143, section ".printk_index", align 4
@cdns_torrent_dp_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.3, i32 1477, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid params for phy configure\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cdns_torrent_dp_configure\00", [38 x i8] zeroinitializer }, align 32
@cdns_torrent_dp_configure._entry_ptr = internal global ptr @cdns_torrent_dp_configure._entry, section ".printk_index", align 4
@cdns_torrent_dp_configure._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.147, ptr @.str.3, i32 1484, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cdns_torrent_dp_set_lanes failed\0A\00", [62 x i8] zeroinitializer }, align 32
@cdns_torrent_dp_configure._entry_ptr.150 = internal global ptr @cdns_torrent_dp_configure._entry.148, section ".printk_index", align 4
@cdns_torrent_dp_configure._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.147, ptr @.str.3, i32 1492, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cdns_torrent_dp_set_rate failed\0A\00", [63 x i8] zeroinitializer }, align 32
@cdns_torrent_dp_configure._entry_ptr.153 = internal global ptr @cdns_torrent_dp_configure._entry.151, section ".printk_index", align 4
@vltg_coeff = internal constant { [4 x [4 x %struct.coefficients]], [32 x i8] } { [4 x [4 x %struct.coefficients]] [[4 x %struct.coefficients] [%struct.coefficients { i16 3, i16 42, i16 0 }, %struct.coefficients { i16 3, i16 31, i16 20 }, %struct.coefficients { i16 3, i16 18, i16 32 }, %struct.coefficients { i16 3, i16 0, i16 42 }], [4 x %struct.coefficients] [%struct.coefficients { i16 3, i16 31, i16 0 }, %struct.coefficients { i16 3, i16 19, i16 18 }, %struct.coefficients { i16 3, i16 0, i16 31 }, %struct.coefficients { i16 -1, i16 -1, i16 -1 }], [4 x %struct.coefficients] [%struct.coefficients { i16 3, i16 19, i16 0 }, %struct.coefficients { i16 3, i16 0, i16 19 }, %struct.coefficients { i16 -1, i16 -1, i16 -1 }, %struct.coefficients { i16 -1, i16 -1, i16 -1 }], [4 x %struct.coefficients] [%struct.coefficients { i16 3, i16 0, i16 0 }, %struct.coefficients { i16 -1, i16 -1, i16 -1 }, %struct.coefficients { i16 -1, i16 -1, i16 -1 }, %struct.coefficients { i16 -1, i16 -1, i16 -1 }]], [32 x i8] zeroinitializer }, align 32
@cdns_torrent_dptx_phy_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.156, i32 0, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cdns_regmap_dptx_read, ptr @cdns_regmap_dptx_write, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@cdns_torrent_dp_regmap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.3, i32 2055, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to init DPTX PHY regmap\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cdns_torrent_dp_regmap_init\00", [36 x i8] zeroinitializer }, align 32
@cdns_torrent_dp_regmap_init._entry_ptr = internal global ptr @cdns_torrent_dp_regmap_init._entry, section ".printk_index", align 4
@.str.156 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"torrent_dptx_phy\00", [47 x i8] zeroinitializer }, align 32
@cdns_torrent_dp_regfield_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.3, i32 1964, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PHY_RESET reg field init failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cdns_torrent_dp_regfield_init\00", [34 x i8] zeroinitializer }, align 32
@cdns_torrent_dp_regfield_init._entry_ptr = internal global ptr @cdns_torrent_dp_regfield_init._entry, section ".printk_index", align 4
@.str.159 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DisplayPort\00", [20 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCIe\00", [27 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SGMII\00", [26 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"QSGMII\00", [25 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"USB\00", [28 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@cdns_map_torrent = internal constant { %struct.cdns_torrent_data, [1308 x i8] } { %struct.cdns_torrent_data { i8 2, i8 2, [6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_link_cmn_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] [[3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @pcie_sgmii_link_cmn_vals, ptr @pcie_sgmii_link_cmn_vals, ptr @pcie_sgmii_link_cmn_vals], [3 x ptr] [ptr @pcie_sgmii_link_cmn_vals, ptr @pcie_sgmii_link_cmn_vals, ptr @pcie_sgmii_link_cmn_vals], [3 x ptr] [ptr @pcie_usb_link_cmn_vals, ptr @pcie_usb_link_cmn_vals, ptr @pcie_usb_link_cmn_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_sgmii_link_cmn_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @pcie_sgmii_link_cmn_vals, ptr @pcie_sgmii_link_cmn_vals, ptr @pcie_sgmii_link_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @usb_sgmii_link_cmn_vals, ptr @usb_sgmii_link_cmn_vals, ptr @usb_sgmii_link_cmn_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_sgmii_link_cmn_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @pcie_sgmii_link_cmn_vals, ptr @pcie_sgmii_link_cmn_vals, ptr @pcie_sgmii_link_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @usb_sgmii_link_cmn_vals, ptr @usb_sgmii_link_cmn_vals, ptr @usb_sgmii_link_cmn_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_usb_link_cmn_vals, ptr @sl_usb_link_cmn_vals, ptr @sl_usb_link_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @pcie_usb_link_cmn_vals, ptr @pcie_usb_link_cmn_vals, ptr @pcie_usb_link_cmn_vals], [3 x ptr] [ptr @usb_sgmii_link_cmn_vals, ptr @usb_sgmii_link_cmn_vals, ptr @usb_sgmii_link_cmn_vals], [3 x ptr] [ptr @usb_sgmii_link_cmn_vals, ptr @usb_sgmii_link_cmn_vals, ptr @usb_sgmii_link_cmn_vals], [3 x ptr] zeroinitializer]], [6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_xcvr_diag_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] [[3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @pcie_sgmii_xcvr_diag_ln_vals, ptr @pcie_sgmii_xcvr_diag_ln_vals, ptr @pcie_sgmii_xcvr_diag_ln_vals], [3 x ptr] [ptr @pcie_sgmii_xcvr_diag_ln_vals, ptr @pcie_sgmii_xcvr_diag_ln_vals, ptr @pcie_sgmii_xcvr_diag_ln_vals], [3 x ptr] [ptr @pcie_usb_xcvr_diag_ln_vals, ptr @pcie_usb_xcvr_diag_ln_vals, ptr @pcie_usb_xcvr_diag_ln_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_sgmii_xcvr_diag_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @sgmii_pcie_xcvr_diag_ln_vals, ptr @sgmii_pcie_xcvr_diag_ln_vals, ptr @sgmii_pcie_xcvr_diag_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @sgmii_usb_xcvr_diag_ln_vals, ptr @sgmii_usb_xcvr_diag_ln_vals, ptr @sgmii_usb_xcvr_diag_ln_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_sgmii_xcvr_diag_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @sgmii_pcie_xcvr_diag_ln_vals, ptr @sgmii_pcie_xcvr_diag_ln_vals, ptr @sgmii_pcie_xcvr_diag_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @sgmii_usb_xcvr_diag_ln_vals, ptr @sgmii_usb_xcvr_diag_ln_vals, ptr @sgmii_usb_xcvr_diag_ln_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_usb_xcvr_diag_ln_vals, ptr @sl_usb_xcvr_diag_ln_vals, ptr @sl_usb_xcvr_diag_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @usb_pcie_xcvr_diag_ln_vals, ptr @usb_pcie_xcvr_diag_ln_vals, ptr @usb_pcie_xcvr_diag_ln_vals], [3 x ptr] [ptr @usb_sgmii_xcvr_diag_ln_vals, ptr @usb_sgmii_xcvr_diag_ln_vals, ptr @usb_sgmii_xcvr_diag_ln_vals], [3 x ptr] [ptr @usb_sgmii_xcvr_diag_ln_vals, ptr @usb_sgmii_xcvr_diag_ln_vals, ptr @usb_sgmii_xcvr_diag_ln_vals], [3 x ptr] zeroinitializer]], [6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @usb_phy_pcs_cmn_vals, ptr @usb_phy_pcs_cmn_vals, ptr @usb_phy_pcs_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @usb_phy_pcs_cmn_vals, ptr @usb_phy_pcs_cmn_vals, ptr @usb_phy_pcs_cmn_vals], [3 x ptr] [ptr @usb_phy_pcs_cmn_vals, ptr @usb_phy_pcs_cmn_vals, ptr @usb_phy_pcs_cmn_vals], [3 x ptr] [ptr @usb_phy_pcs_cmn_vals, ptr @usb_phy_pcs_cmn_vals, ptr @usb_phy_pcs_cmn_vals], [3 x ptr] zeroinitializer]], [3 x [6 x [6 x [3 x ptr]]]] [[6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_19_2_no_ssc_cmn_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer], [6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_25_no_ssc_cmn_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer], [6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_100_no_ssc_cmn_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] [[3 x ptr] [ptr null, ptr null, ptr @sl_pcie_100_int_ssc_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @pcie_100_no_ssc_cmn_vals, ptr @pcie_100_no_ssc_cmn_vals, ptr @pcie_100_int_ssc_cmn_vals], [3 x ptr] [ptr @pcie_100_no_ssc_cmn_vals, ptr @pcie_100_no_ssc_cmn_vals, ptr @pcie_100_int_ssc_cmn_vals], [3 x ptr] [ptr @pcie_100_no_ssc_cmn_vals, ptr @pcie_100_no_ssc_cmn_vals, ptr @pcie_100_int_ssc_cmn_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_sgmii_100_no_ssc_cmn_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @sgmii_100_no_ssc_cmn_vals, ptr @sgmii_100_no_ssc_cmn_vals, ptr @sgmii_100_int_ssc_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @sgmii_100_no_ssc_cmn_vals, ptr @sgmii_100_no_ssc_cmn_vals, ptr @sgmii_100_no_ssc_cmn_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_qsgmii_100_no_ssc_cmn_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @qsgmii_100_no_ssc_cmn_vals, ptr @qsgmii_100_no_ssc_cmn_vals, ptr @qsgmii_100_int_ssc_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @qsgmii_100_no_ssc_cmn_vals, ptr @qsgmii_100_no_ssc_cmn_vals, ptr @qsgmii_100_no_ssc_cmn_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_usb_100_no_ssc_cmn_vals, ptr @sl_usb_100_no_ssc_cmn_vals, ptr @sl_usb_100_int_ssc_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @usb_100_no_ssc_cmn_vals, ptr @usb_100_no_ssc_cmn_vals, ptr @usb_100_int_ssc_cmn_vals], [3 x ptr] [ptr @sl_usb_100_no_ssc_cmn_vals, ptr @sl_usb_100_no_ssc_cmn_vals, ptr @sl_usb_100_int_ssc_cmn_vals], [3 x ptr] [ptr @sl_usb_100_no_ssc_cmn_vals, ptr @sl_usb_100_no_ssc_cmn_vals, ptr @sl_usb_100_int_ssc_cmn_vals], [3 x ptr] zeroinitializer]]], [3 x [6 x [6 x [3 x ptr]]]] [[6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_19_2_no_ssc_tx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer], [6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_25_no_ssc_tx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer], [6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_100_no_ssc_tx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sgmii_100_no_ssc_tx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @sgmii_100_no_ssc_tx_ln_vals, ptr @sgmii_100_no_ssc_tx_ln_vals, ptr @sgmii_100_no_ssc_tx_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @sgmii_100_no_ssc_tx_ln_vals, ptr @sgmii_100_no_ssc_tx_ln_vals, ptr @sgmii_100_no_ssc_tx_ln_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @qsgmii_100_no_ssc_tx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @qsgmii_100_no_ssc_tx_ln_vals, ptr @qsgmii_100_no_ssc_tx_ln_vals, ptr @qsgmii_100_no_ssc_tx_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @qsgmii_100_no_ssc_tx_ln_vals, ptr @qsgmii_100_no_ssc_tx_ln_vals, ptr @qsgmii_100_no_ssc_tx_ln_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @usb_100_no_ssc_tx_ln_vals, ptr @usb_100_no_ssc_tx_ln_vals, ptr @usb_100_no_ssc_tx_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @usb_100_no_ssc_tx_ln_vals, ptr @usb_100_no_ssc_tx_ln_vals, ptr @usb_100_no_ssc_tx_ln_vals], [3 x ptr] [ptr @usb_100_no_ssc_tx_ln_vals, ptr @usb_100_no_ssc_tx_ln_vals, ptr @usb_100_no_ssc_tx_ln_vals], [3 x ptr] [ptr @usb_100_no_ssc_tx_ln_vals, ptr @usb_100_no_ssc_tx_ln_vals, ptr @usb_100_no_ssc_tx_ln_vals], [3 x ptr] zeroinitializer]]], [3 x [6 x [6 x [3 x ptr]]]] [[6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_19_2_no_ssc_rx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer], [6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_25_no_ssc_rx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer], [6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_100_no_ssc_rx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] [[3 x ptr] [ptr @pcie_100_no_ssc_rx_ln_vals, ptr @pcie_100_no_ssc_rx_ln_vals, ptr @pcie_100_no_ssc_rx_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @pcie_100_no_ssc_rx_ln_vals, ptr @pcie_100_no_ssc_rx_ln_vals, ptr @pcie_100_no_ssc_rx_ln_vals], [3 x ptr] [ptr @pcie_100_no_ssc_rx_ln_vals, ptr @pcie_100_no_ssc_rx_ln_vals, ptr @pcie_100_no_ssc_rx_ln_vals], [3 x ptr] [ptr @pcie_100_no_ssc_rx_ln_vals, ptr @pcie_100_no_ssc_rx_ln_vals, ptr @pcie_100_no_ssc_rx_ln_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sgmii_100_no_ssc_rx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @sgmii_100_no_ssc_rx_ln_vals, ptr @sgmii_100_no_ssc_rx_ln_vals, ptr @sgmii_100_no_ssc_rx_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @sgmii_100_no_ssc_rx_ln_vals, ptr @sgmii_100_no_ssc_rx_ln_vals, ptr @sgmii_100_no_ssc_rx_ln_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @qsgmii_100_no_ssc_rx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @qsgmii_100_no_ssc_rx_ln_vals, ptr @qsgmii_100_no_ssc_rx_ln_vals, ptr @qsgmii_100_no_ssc_rx_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @qsgmii_100_no_ssc_rx_ln_vals, ptr @qsgmii_100_no_ssc_rx_ln_vals, ptr @qsgmii_100_no_ssc_rx_ln_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @usb_100_no_ssc_rx_ln_vals, ptr @usb_100_no_ssc_rx_ln_vals, ptr @usb_100_no_ssc_rx_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @usb_100_no_ssc_rx_ln_vals, ptr @usb_100_no_ssc_rx_ln_vals, ptr @usb_100_no_ssc_rx_ln_vals], [3 x ptr] [ptr @usb_100_no_ssc_rx_ln_vals, ptr @usb_100_no_ssc_rx_ln_vals, ptr @usb_100_no_ssc_rx_ln_vals], [3 x ptr] [ptr @usb_100_no_ssc_rx_ln_vals, ptr @usb_100_no_ssc_rx_ln_vals, ptr @usb_100_no_ssc_rx_ln_vals], [3 x ptr] zeroinitializer]]] }, [1308 x i8] zeroinitializer }, align 32
@ti_j721e_map_torrent = internal constant { %struct.cdns_torrent_data, [1308 x i8] } { %struct.cdns_torrent_data { i8 0, i8 1, [6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_link_cmn_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] [[3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @pcie_sgmii_link_cmn_vals, ptr @pcie_sgmii_link_cmn_vals, ptr @pcie_sgmii_link_cmn_vals], [3 x ptr] [ptr @pcie_sgmii_link_cmn_vals, ptr @pcie_sgmii_link_cmn_vals, ptr @pcie_sgmii_link_cmn_vals], [3 x ptr] [ptr @pcie_usb_link_cmn_vals, ptr @pcie_usb_link_cmn_vals, ptr @pcie_usb_link_cmn_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_sgmii_link_cmn_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @pcie_sgmii_link_cmn_vals, ptr @pcie_sgmii_link_cmn_vals, ptr @pcie_sgmii_link_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @usb_sgmii_link_cmn_vals, ptr @usb_sgmii_link_cmn_vals, ptr @usb_sgmii_link_cmn_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_sgmii_link_cmn_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @pcie_sgmii_link_cmn_vals, ptr @pcie_sgmii_link_cmn_vals, ptr @pcie_sgmii_link_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @usb_sgmii_link_cmn_vals, ptr @usb_sgmii_link_cmn_vals, ptr @usb_sgmii_link_cmn_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_usb_link_cmn_vals, ptr @sl_usb_link_cmn_vals, ptr @sl_usb_link_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @pcie_usb_link_cmn_vals, ptr @pcie_usb_link_cmn_vals, ptr @pcie_usb_link_cmn_vals], [3 x ptr] [ptr @usb_sgmii_link_cmn_vals, ptr @usb_sgmii_link_cmn_vals, ptr @usb_sgmii_link_cmn_vals], [3 x ptr] [ptr @usb_sgmii_link_cmn_vals, ptr @usb_sgmii_link_cmn_vals, ptr @usb_sgmii_link_cmn_vals], [3 x ptr] zeroinitializer]], [6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_xcvr_diag_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] [[3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @pcie_sgmii_xcvr_diag_ln_vals, ptr @pcie_sgmii_xcvr_diag_ln_vals, ptr @pcie_sgmii_xcvr_diag_ln_vals], [3 x ptr] [ptr @pcie_sgmii_xcvr_diag_ln_vals, ptr @pcie_sgmii_xcvr_diag_ln_vals, ptr @pcie_sgmii_xcvr_diag_ln_vals], [3 x ptr] [ptr @pcie_usb_xcvr_diag_ln_vals, ptr @pcie_usb_xcvr_diag_ln_vals, ptr @pcie_usb_xcvr_diag_ln_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_sgmii_xcvr_diag_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @sgmii_pcie_xcvr_diag_ln_vals, ptr @sgmii_pcie_xcvr_diag_ln_vals, ptr @sgmii_pcie_xcvr_diag_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @sgmii_usb_xcvr_diag_ln_vals, ptr @sgmii_usb_xcvr_diag_ln_vals, ptr @sgmii_usb_xcvr_diag_ln_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_sgmii_xcvr_diag_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @sgmii_pcie_xcvr_diag_ln_vals, ptr @sgmii_pcie_xcvr_diag_ln_vals, ptr @sgmii_pcie_xcvr_diag_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @sgmii_usb_xcvr_diag_ln_vals, ptr @sgmii_usb_xcvr_diag_ln_vals, ptr @sgmii_usb_xcvr_diag_ln_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_usb_xcvr_diag_ln_vals, ptr @sl_usb_xcvr_diag_ln_vals, ptr @sl_usb_xcvr_diag_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @usb_pcie_xcvr_diag_ln_vals, ptr @usb_pcie_xcvr_diag_ln_vals, ptr @usb_pcie_xcvr_diag_ln_vals], [3 x ptr] [ptr @usb_sgmii_xcvr_diag_ln_vals, ptr @usb_sgmii_xcvr_diag_ln_vals, ptr @usb_sgmii_xcvr_diag_ln_vals], [3 x ptr] [ptr @usb_sgmii_xcvr_diag_ln_vals, ptr @usb_sgmii_xcvr_diag_ln_vals, ptr @usb_sgmii_xcvr_diag_ln_vals], [3 x ptr] zeroinitializer]], [6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @usb_phy_pcs_cmn_vals, ptr @usb_phy_pcs_cmn_vals, ptr @usb_phy_pcs_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @usb_phy_pcs_cmn_vals, ptr @usb_phy_pcs_cmn_vals, ptr @usb_phy_pcs_cmn_vals], [3 x ptr] [ptr @usb_phy_pcs_cmn_vals, ptr @usb_phy_pcs_cmn_vals, ptr @usb_phy_pcs_cmn_vals], [3 x ptr] [ptr @usb_phy_pcs_cmn_vals, ptr @usb_phy_pcs_cmn_vals, ptr @usb_phy_pcs_cmn_vals], [3 x ptr] zeroinitializer]], [3 x [6 x [6 x [3 x ptr]]]] [[6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_19_2_no_ssc_cmn_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer], [6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_25_no_ssc_cmn_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer], [6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_100_no_ssc_cmn_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] [[3 x ptr] [ptr null, ptr null, ptr @sl_pcie_100_int_ssc_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @pcie_100_no_ssc_cmn_vals, ptr @pcie_100_no_ssc_cmn_vals, ptr @pcie_100_int_ssc_cmn_vals], [3 x ptr] [ptr @pcie_100_no_ssc_cmn_vals, ptr @pcie_100_no_ssc_cmn_vals, ptr @pcie_100_int_ssc_cmn_vals], [3 x ptr] [ptr @pcie_100_no_ssc_cmn_vals, ptr @pcie_100_no_ssc_cmn_vals, ptr @pcie_100_int_ssc_cmn_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_sgmii_100_no_ssc_cmn_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @sgmii_100_no_ssc_cmn_vals, ptr @sgmii_100_no_ssc_cmn_vals, ptr @sgmii_100_int_ssc_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @sgmii_100_no_ssc_cmn_vals, ptr @sgmii_100_no_ssc_cmn_vals, ptr @sgmii_100_no_ssc_cmn_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_qsgmii_100_no_ssc_cmn_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @qsgmii_100_no_ssc_cmn_vals, ptr @qsgmii_100_no_ssc_cmn_vals, ptr @qsgmii_100_int_ssc_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @qsgmii_100_no_ssc_cmn_vals, ptr @qsgmii_100_no_ssc_cmn_vals, ptr @qsgmii_100_no_ssc_cmn_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_usb_100_no_ssc_cmn_vals, ptr @sl_usb_100_no_ssc_cmn_vals, ptr @sl_usb_100_int_ssc_cmn_vals], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @usb_100_no_ssc_cmn_vals, ptr @usb_100_no_ssc_cmn_vals, ptr @usb_100_int_ssc_cmn_vals], [3 x ptr] [ptr @sl_usb_100_no_ssc_cmn_vals, ptr @sl_usb_100_no_ssc_cmn_vals, ptr @sl_usb_100_int_ssc_cmn_vals], [3 x ptr] [ptr @sl_usb_100_no_ssc_cmn_vals, ptr @sl_usb_100_no_ssc_cmn_vals, ptr @sl_usb_100_int_ssc_cmn_vals], [3 x ptr] zeroinitializer]]], [3 x [6 x [6 x [3 x ptr]]]] [[6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_19_2_no_ssc_tx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer], [6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_25_no_ssc_tx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer], [6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_100_no_ssc_tx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @ti_sgmii_100_no_ssc_tx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @ti_sgmii_100_no_ssc_tx_ln_vals, ptr @ti_sgmii_100_no_ssc_tx_ln_vals, ptr @ti_sgmii_100_no_ssc_tx_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @ti_sgmii_100_no_ssc_tx_ln_vals, ptr @ti_sgmii_100_no_ssc_tx_ln_vals, ptr @ti_sgmii_100_no_ssc_tx_ln_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @ti_qsgmii_100_no_ssc_tx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @ti_qsgmii_100_no_ssc_tx_ln_vals, ptr @ti_qsgmii_100_no_ssc_tx_ln_vals, ptr @ti_qsgmii_100_no_ssc_tx_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @ti_qsgmii_100_no_ssc_tx_ln_vals, ptr @ti_qsgmii_100_no_ssc_tx_ln_vals, ptr @ti_qsgmii_100_no_ssc_tx_ln_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @usb_100_no_ssc_tx_ln_vals, ptr @usb_100_no_ssc_tx_ln_vals, ptr @usb_100_no_ssc_tx_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @usb_100_no_ssc_tx_ln_vals, ptr @usb_100_no_ssc_tx_ln_vals, ptr @usb_100_no_ssc_tx_ln_vals], [3 x ptr] [ptr @usb_100_no_ssc_tx_ln_vals, ptr @usb_100_no_ssc_tx_ln_vals, ptr @usb_100_no_ssc_tx_ln_vals], [3 x ptr] [ptr @usb_100_no_ssc_tx_ln_vals, ptr @usb_100_no_ssc_tx_ln_vals, ptr @usb_100_no_ssc_tx_ln_vals], [3 x ptr] zeroinitializer]]], [3 x [6 x [6 x [3 x ptr]]]] [[6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_19_2_no_ssc_rx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer], [6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_25_no_ssc_rx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] zeroinitializer], [6 x [6 x [3 x ptr]]] [[6 x [3 x ptr]] zeroinitializer, [6 x [3 x ptr]] [[3 x ptr] [ptr @sl_dp_100_no_ssc_rx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer], [6 x [3 x ptr]] [[3 x ptr] [ptr @pcie_100_no_ssc_rx_ln_vals, ptr @pcie_100_no_ssc_rx_ln_vals, ptr @pcie_100_no_ssc_rx_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @pcie_100_no_ssc_rx_ln_vals, ptr @pcie_100_no_ssc_rx_ln_vals, ptr @pcie_100_no_ssc_rx_ln_vals], [3 x ptr] [ptr @pcie_100_no_ssc_rx_ln_vals, ptr @pcie_100_no_ssc_rx_ln_vals, ptr @pcie_100_no_ssc_rx_ln_vals], [3 x ptr] [ptr @pcie_100_no_ssc_rx_ln_vals, ptr @pcie_100_no_ssc_rx_ln_vals, ptr @pcie_100_no_ssc_rx_ln_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @sgmii_100_no_ssc_rx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @sgmii_100_no_ssc_rx_ln_vals, ptr @sgmii_100_no_ssc_rx_ln_vals, ptr @sgmii_100_no_ssc_rx_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @sgmii_100_no_ssc_rx_ln_vals, ptr @sgmii_100_no_ssc_rx_ln_vals, ptr @sgmii_100_no_ssc_rx_ln_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @qsgmii_100_no_ssc_rx_ln_vals, ptr null, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @qsgmii_100_no_ssc_rx_ln_vals, ptr @qsgmii_100_no_ssc_rx_ln_vals, ptr @qsgmii_100_no_ssc_rx_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] [ptr @qsgmii_100_no_ssc_rx_ln_vals, ptr @qsgmii_100_no_ssc_rx_ln_vals, ptr @qsgmii_100_no_ssc_rx_ln_vals]], [6 x [3 x ptr]] [[3 x ptr] [ptr @usb_100_no_ssc_rx_ln_vals, ptr @usb_100_no_ssc_rx_ln_vals, ptr @usb_100_no_ssc_rx_ln_vals], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @usb_100_no_ssc_rx_ln_vals, ptr @usb_100_no_ssc_rx_ln_vals, ptr @usb_100_no_ssc_rx_ln_vals], [3 x ptr] [ptr @usb_100_no_ssc_rx_ln_vals, ptr @usb_100_no_ssc_rx_ln_vals, ptr @usb_100_no_ssc_rx_ln_vals], [3 x ptr] [ptr @usb_100_no_ssc_rx_ln_vals, ptr @usb_100_no_ssc_rx_ln_vals, ptr @usb_100_no_ssc_rx_ln_vals], [3 x ptr] zeroinitializer]]] }, [1308 x i8] zeroinitializer }, align 32
@sl_dp_link_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_dp_link_cmn_regs, i32 1 }, [24 x i8] zeroinitializer }, align 32
@pcie_sgmii_link_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @pcie_sgmii_link_cmn_regs, i32 4 }, [24 x i8] zeroinitializer }, align 32
@pcie_usb_link_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @pcie_usb_link_cmn_regs, i32 4 }, [24 x i8] zeroinitializer }, align 32
@sl_sgmii_link_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_sgmii_link_cmn_regs, i32 2 }, [24 x i8] zeroinitializer }, align 32
@usb_sgmii_link_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @usb_sgmii_link_cmn_regs, i32 3 }, [24 x i8] zeroinitializer }, align 32
@sl_usb_link_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_usb_link_cmn_regs, i32 2 }, [24 x i8] zeroinitializer }, align 32
@sl_dp_xcvr_diag_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_dp_xcvr_diag_ln_regs, i32 2 }, [24 x i8] zeroinitializer }, align 32
@pcie_sgmii_xcvr_diag_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @pcie_sgmii_xcvr_diag_ln_regs, i32 3 }, [24 x i8] zeroinitializer }, align 32
@pcie_usb_xcvr_diag_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @pcie_usb_xcvr_diag_ln_regs, i32 3 }, [24 x i8] zeroinitializer }, align 32
@sl_sgmii_xcvr_diag_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_sgmii_xcvr_diag_ln_regs, i32 3 }, [24 x i8] zeroinitializer }, align 32
@sgmii_pcie_xcvr_diag_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sgmii_pcie_xcvr_diag_ln_regs, i32 3 }, [24 x i8] zeroinitializer }, align 32
@sgmii_usb_xcvr_diag_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sgmii_usb_xcvr_diag_ln_regs, i32 3 }, [24 x i8] zeroinitializer }, align 32
@sl_usb_xcvr_diag_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_usb_xcvr_diag_ln_regs, i32 3 }, [24 x i8] zeroinitializer }, align 32
@usb_pcie_xcvr_diag_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @usb_pcie_xcvr_diag_ln_regs, i32 3 }, [24 x i8] zeroinitializer }, align 32
@usb_sgmii_xcvr_diag_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @usb_sgmii_xcvr_diag_ln_regs, i32 3 }, [24 x i8] zeroinitializer }, align 32
@usb_phy_pcs_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @usb_phy_pcs_cmn_regs, i32 3 }, [24 x i8] zeroinitializer }, align 32
@sl_dp_19_2_no_ssc_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_dp_19_2_no_ssc_cmn_regs, i32 34 }, [24 x i8] zeroinitializer }, align 32
@sl_dp_25_no_ssc_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_dp_25_no_ssc_cmn_regs, i32 34 }, [24 x i8] zeroinitializer }, align 32
@sl_dp_100_no_ssc_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_dp_100_no_ssc_cmn_regs, i32 2 }, [24 x i8] zeroinitializer }, align 32
@sl_pcie_100_int_ssc_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_pcie_100_int_ssc_cmn_regs, i32 46 }, [24 x i8] zeroinitializer }, align 32
@pcie_100_no_ssc_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @pcie_100_ext_no_ssc_cmn_regs, i32 3 }, [24 x i8] zeroinitializer }, align 32
@pcie_100_int_ssc_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @pcie_100_int_ssc_cmn_regs, i32 46 }, [24 x i8] zeroinitializer }, align 32
@sl_sgmii_100_no_ssc_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_sgmii_100_no_ssc_cmn_regs, i32 5 }, [24 x i8] zeroinitializer }, align 32
@sgmii_100_no_ssc_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sgmii_100_no_ssc_cmn_regs, i32 2 }, [24 x i8] zeroinitializer }, align 32
@sgmii_100_int_ssc_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sgmii_100_int_ssc_cmn_regs, i32 48 }, [24 x i8] zeroinitializer }, align 32
@sl_qsgmii_100_no_ssc_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_qsgmii_100_no_ssc_cmn_regs, i32 5 }, [24 x i8] zeroinitializer }, align 32
@qsgmii_100_no_ssc_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @qsgmii_100_no_ssc_cmn_regs, i32 2 }, [24 x i8] zeroinitializer }, align 32
@qsgmii_100_int_ssc_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @qsgmii_100_int_ssc_cmn_regs, i32 48 }, [24 x i8] zeroinitializer }, align 32
@sl_usb_100_no_ssc_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_usb_100_no_ssc_cmn_regs, i32 7 }, [24 x i8] zeroinitializer }, align 32
@sl_usb_100_int_ssc_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_usb_100_int_ssc_cmn_regs, i32 38 }, [24 x i8] zeroinitializer }, align 32
@usb_100_no_ssc_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @usb_100_no_ssc_cmn_regs, i32 4 }, [24 x i8] zeroinitializer }, align 32
@usb_100_int_ssc_cmn_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @usb_100_int_ssc_cmn_regs, i32 50 }, [24 x i8] zeroinitializer }, align 32
@sl_dp_19_2_no_ssc_tx_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_dp_19_2_no_ssc_tx_ln_regs, i32 5 }, [24 x i8] zeroinitializer }, align 32
@sl_dp_25_no_ssc_tx_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_dp_25_no_ssc_tx_ln_regs, i32 5 }, [24 x i8] zeroinitializer }, align 32
@sl_dp_100_no_ssc_tx_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_dp_100_no_ssc_tx_ln_regs, i32 4 }, [24 x i8] zeroinitializer }, align 32
@sgmii_100_no_ssc_tx_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sgmii_100_no_ssc_tx_ln_regs, i32 5 }, [24 x i8] zeroinitializer }, align 32
@qsgmii_100_no_ssc_tx_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @qsgmii_100_no_ssc_tx_ln_regs, i32 6 }, [24 x i8] zeroinitializer }, align 32
@usb_100_no_ssc_tx_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @usb_100_no_ssc_tx_ln_regs, i32 7 }, [24 x i8] zeroinitializer }, align 32
@sl_dp_19_2_no_ssc_rx_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_dp_19_2_no_ssc_rx_ln_regs, i32 7 }, [24 x i8] zeroinitializer }, align 32
@sl_dp_25_no_ssc_rx_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_dp_25_no_ssc_rx_ln_regs, i32 7 }, [24 x i8] zeroinitializer }, align 32
@sl_dp_100_no_ssc_rx_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sl_dp_100_no_ssc_rx_ln_regs, i32 7 }, [24 x i8] zeroinitializer }, align 32
@pcie_100_no_ssc_rx_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @pcie_100_ext_no_ssc_rx_ln_regs, i32 3 }, [24 x i8] zeroinitializer }, align 32
@sgmii_100_no_ssc_rx_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @sgmii_100_no_ssc_rx_ln_regs, i32 15 }, [24 x i8] zeroinitializer }, align 32
@qsgmii_100_no_ssc_rx_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @qsgmii_100_no_ssc_rx_ln_regs, i32 15 }, [24 x i8] zeroinitializer }, align 32
@usb_100_no_ssc_rx_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @usb_100_no_ssc_rx_ln_regs, i32 20 }, [24 x i8] zeroinitializer }, align 32
@sl_dp_link_cmn_regs = internal global { [1 x %struct.cdns_reg_pairs], [24 x i8] } { [1 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 0, i32 14 }], [24 x i8] zeroinitializer }, align 32
@pcie_sgmii_link_cmn_regs = internal global { [4 x %struct.cdns_reg_pairs], [32 x i8] } { [4 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 3, i32 14 }, %struct.cdns_reg_pairs { i32 1537, i32 417 }, %struct.cdns_reg_pairs { i32 1024, i32 433 }, %struct.cdns_reg_pairs { i32 1537, i32 449 }], [32 x i8] zeroinitializer }, align 32
@pcie_usb_link_cmn_regs = internal global { [4 x %struct.cdns_reg_pairs], [32 x i8] } { [4 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 3, i32 14 }, %struct.cdns_reg_pairs { i32 1537, i32 417 }, %struct.cdns_reg_pairs { i32 1024, i32 433 }, %struct.cdns_reg_pairs { i32 34304, i32 449 }], [32 x i8] zeroinitializer }, align 32
@sl_sgmii_link_cmn_regs = internal global { [2 x %struct.cdns_reg_pairs], [16 x i8] } { [2 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 0, i32 14 }, %struct.cdns_reg_pairs { i32 1537, i32 417 }], [16 x i8] zeroinitializer }, align 32
@usb_sgmii_link_cmn_regs = internal global { [3 x %struct.cdns_reg_pairs], [40 x i8] } { [3 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 2, i32 14 }, %struct.cdns_reg_pairs { i32 34304, i32 417 }, %struct.cdns_reg_pairs { i32 1537, i32 449 }], [40 x i8] zeroinitializer }, align 32
@sl_usb_link_cmn_regs = internal global { [2 x %struct.cdns_reg_pairs], [16 x i8] } { [2 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 0, i32 14 }, %struct.cdns_reg_pairs { i32 34304, i32 417 }], [16 x i8] zeroinitializer }, align 32
@sl_dp_xcvr_diag_ln_regs = internal global { [2 x %struct.cdns_reg_pairs], [16 x i8] } { [2 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 0, i32 230 }, %struct.cdns_reg_pairs { i32 1, i32 229 }], [16 x i8] zeroinitializer }, align 32
@pcie_sgmii_xcvr_diag_ln_regs = internal global { [3 x %struct.cdns_reg_pairs], [40 x i8] } { [3 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 0, i32 230 }, %struct.cdns_reg_pairs { i32 1, i32 231 }, %struct.cdns_reg_pairs { i32 18, i32 229 }], [40 x i8] zeroinitializer }, align 32
@pcie_usb_xcvr_diag_ln_regs = internal global { [3 x %struct.cdns_reg_pairs], [40 x i8] } { [3 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 0, i32 230 }, %struct.cdns_reg_pairs { i32 1, i32 231 }, %struct.cdns_reg_pairs { i32 18, i32 229 }], [40 x i8] zeroinitializer }, align 32
@sl_sgmii_xcvr_diag_ln_regs = internal global { [3 x %struct.cdns_reg_pairs], [40 x i8] } { [3 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 0, i32 230 }, %struct.cdns_reg_pairs { i32 3, i32 231 }, %struct.cdns_reg_pairs { i32 19, i32 229 }], [40 x i8] zeroinitializer }, align 32
@sgmii_pcie_xcvr_diag_ln_regs = internal global { [3 x %struct.cdns_reg_pairs], [40 x i8] } { [3 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 17, i32 230 }, %struct.cdns_reg_pairs { i32 3, i32 231 }, %struct.cdns_reg_pairs { i32 155, i32 229 }], [40 x i8] zeroinitializer }, align 32
@sgmii_usb_xcvr_diag_ln_regs = internal global { [3 x %struct.cdns_reg_pairs], [40 x i8] } { [3 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 17, i32 230 }, %struct.cdns_reg_pairs { i32 3, i32 231 }, %struct.cdns_reg_pairs { i32 155, i32 229 }], [40 x i8] zeroinitializer }, align 32
@sl_usb_xcvr_diag_ln_regs = internal global { [3 x %struct.cdns_reg_pairs], [40 x i8] } { [3 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 0, i32 230 }, %struct.cdns_reg_pairs { i32 1, i32 231 }, %struct.cdns_reg_pairs { i32 65, i32 229 }], [40 x i8] zeroinitializer }, align 32
@usb_pcie_xcvr_diag_ln_regs = internal global { [3 x %struct.cdns_reg_pairs], [40 x i8] } { [3 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 17, i32 230 }, %struct.cdns_reg_pairs { i32 1, i32 231 }, %struct.cdns_reg_pairs { i32 201, i32 229 }], [40 x i8] zeroinitializer }, align 32
@usb_sgmii_xcvr_diag_ln_regs = internal global { [3 x %struct.cdns_reg_pairs], [40 x i8] } { [3 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 0, i32 230 }, %struct.cdns_reg_pairs { i32 1, i32 231 }, %struct.cdns_reg_pairs { i32 65, i32 229 }], [40 x i8] zeroinitializer }, align 32
@usb_phy_pcs_cmn_regs = internal global { [3 x %struct.cdns_reg_pairs], [40 x i8] } { [3 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 2570, i32 32 }, %struct.cdns_reg_pairs { i32 4096, i32 34 }, %struct.cdns_reg_pairs { i32 16, i32 35 }], [40 x i8] zeroinitializer }, align 32
@sl_dp_19_2_no_ssc_cmn_regs = internal global { [34 x %struct.cdns_reg_pairs], [80 x i8] } { [34 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 20, i32 34 }, %struct.cdns_reg_pairs { i32 39, i32 42 }, %struct.cdns_reg_pairs { i32 161, i32 44 }, %struct.cdns_reg_pairs { i32 39, i32 50 }, %struct.cdns_reg_pairs { i32 161, i32 52 }, %struct.cdns_reg_pairs { i32 96, i32 100 }, %struct.cdns_reg_pairs { i32 96, i32 101 }, %struct.cdns_reg_pairs { i32 20, i32 116 }, %struct.cdns_reg_pairs { i32 24, i32 260 }, %struct.cdns_reg_pairs { i32 5, i32 261 }, %struct.cdns_reg_pairs { i32 24, i32 268 }, %struct.cdns_reg_pairs { i32 5, i32 269 }, %struct.cdns_reg_pairs { i32 576, i32 276 }, %struct.cdns_reg_pairs { i32 5, i32 277 }, %struct.cdns_reg_pairs { i32 2, i32 292 }, %struct.cdns_reg_pairs { i32 2, i32 293 }, %struct.cdns_reg_pairs { i32 11, i32 294 }, %struct.cdns_reg_pairs { i32 311, i32 296 }, %struct.cdns_reg_pairs { i32 1289, i32 420 }, %struct.cdns_reg_pairs { i32 3840, i32 421 }, %struct.cdns_reg_pairs { i32 3848, i32 422 }, %struct.cdns_reg_pairs { i32 4, i32 148 }, %struct.cdns_reg_pairs { i32 1289, i32 452 }, %struct.cdns_reg_pairs { i32 3840, i32 453 }, %struct.cdns_reg_pairs { i32 3848, i32 454 }, %struct.cdns_reg_pairs { i32 4, i32 212 }, %struct.cdns_reg_pairs { i32 192, i32 132 }, %struct.cdns_reg_pairs { i32 4, i32 133 }, %struct.cdns_reg_pairs { i32 192, i32 196 }, %struct.cdns_reg_pairs { i32 4, i32 197 }, %struct.cdns_reg_pairs { i32 608, i32 134 }, %struct.cdns_reg_pairs { i32 3, i32 130 }, %struct.cdns_reg_pairs { i32 608, i32 198 }, %struct.cdns_reg_pairs { i32 3, i32 194 }], [80 x i8] zeroinitializer }, align 32
@sl_dp_25_no_ssc_cmn_regs = internal global { [34 x %struct.cdns_reg_pairs], [80 x i8] } { [34 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 25, i32 34 }, %struct.cdns_reg_pairs { i32 50, i32 42 }, %struct.cdns_reg_pairs { i32 209, i32 44 }, %struct.cdns_reg_pairs { i32 50, i32 50 }, %struct.cdns_reg_pairs { i32 209, i32 52 }, %struct.cdns_reg_pairs { i32 125, i32 100 }, %struct.cdns_reg_pairs { i32 125, i32 101 }, %struct.cdns_reg_pairs { i32 25, i32 116 }, %struct.cdns_reg_pairs { i32 30, i32 260 }, %struct.cdns_reg_pairs { i32 6, i32 261 }, %struct.cdns_reg_pairs { i32 30, i32 268 }, %struct.cdns_reg_pairs { i32 6, i32 269 }, %struct.cdns_reg_pairs { i32 750, i32 276 }, %struct.cdns_reg_pairs { i32 6, i32 277 }, %struct.cdns_reg_pairs { i32 2, i32 292 }, %struct.cdns_reg_pairs { i32 2, i32 293 }, %struct.cdns_reg_pairs { i32 14, i32 294 }, %struct.cdns_reg_pairs { i32 299, i32 296 }, %struct.cdns_reg_pairs { i32 1289, i32 420 }, %struct.cdns_reg_pairs { i32 3840, i32 421 }, %struct.cdns_reg_pairs { i32 3848, i32 422 }, %struct.cdns_reg_pairs { i32 4, i32 148 }, %struct.cdns_reg_pairs { i32 1289, i32 452 }, %struct.cdns_reg_pairs { i32 3840, i32 453 }, %struct.cdns_reg_pairs { i32 3848, i32 454 }, %struct.cdns_reg_pairs { i32 4, i32 212 }, %struct.cdns_reg_pairs { i32 250, i32 132 }, %struct.cdns_reg_pairs { i32 4, i32 133 }, %struct.cdns_reg_pairs { i32 250, i32 196 }, %struct.cdns_reg_pairs { i32 4, i32 197 }, %struct.cdns_reg_pairs { i32 791, i32 134 }, %struct.cdns_reg_pairs { i32 3, i32 130 }, %struct.cdns_reg_pairs { i32 791, i32 198 }, %struct.cdns_reg_pairs { i32 3, i32 194 }], [80 x i8] zeroinitializer }, align 32
@sl_dp_100_no_ssc_cmn_regs = internal global { [2 x %struct.cdns_reg_pairs], [16 x i8] } { [2 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 3, i32 130 }, %struct.cdns_reg_pairs { i32 3, i32 194 }], [16 x i8] zeroinitializer }, align 32
@sl_pcie_100_int_ssc_cmn_regs = internal global { [46 x %struct.cdns_reg_pairs], [80 x i8] } { [46 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 4, i32 148 }, %struct.cdns_reg_pairs { i32 4, i32 164 }, %struct.cdns_reg_pairs { i32 4, i32 212 }, %struct.cdns_reg_pairs { i32 1289, i32 420 }, %struct.cdns_reg_pairs { i32 1289, i32 436 }, %struct.cdns_reg_pairs { i32 1289, i32 452 }, %struct.cdns_reg_pairs { i32 3840, i32 421 }, %struct.cdns_reg_pairs { i32 3840, i32 437 }, %struct.cdns_reg_pairs { i32 3840, i32 453 }, %struct.cdns_reg_pairs { i32 3848, i32 422 }, %struct.cdns_reg_pairs { i32 3848, i32 438 }, %struct.cdns_reg_pairs { i32 3848, i32 454 }, %struct.cdns_reg_pairs { i32 100, i32 144 }, %struct.cdns_reg_pairs { i32 80, i32 160 }, %struct.cdns_reg_pairs { i32 80, i32 208 }, %struct.cdns_reg_pairs { i32 2, i32 146 }, %struct.cdns_reg_pairs { i32 2, i32 162 }, %struct.cdns_reg_pairs { i32 2, i32 210 }, %struct.cdns_reg_pairs { i32 68, i32 147 }, %struct.cdns_reg_pairs { i32 54, i32 163 }, %struct.cdns_reg_pairs { i32 54, i32 211 }, %struct.cdns_reg_pairs { i32 2, i32 416 }, %struct.cdns_reg_pairs { i32 2, i32 432 }, %struct.cdns_reg_pairs { i32 2, i32 448 }, %struct.cdns_reg_pairs { i32 1, i32 152 }, %struct.cdns_reg_pairs { i32 1, i32 168 }, %struct.cdns_reg_pairs { i32 1, i32 216 }, %struct.cdns_reg_pairs { i32 283, i32 153 }, %struct.cdns_reg_pairs { i32 283, i32 169 }, %struct.cdns_reg_pairs { i32 283, i32 217 }, %struct.cdns_reg_pairs { i32 110, i32 154 }, %struct.cdns_reg_pairs { i32 88, i32 170 }, %struct.cdns_reg_pairs { i32 88, i32 218 }, %struct.cdns_reg_pairs { i32 14, i32 155 }, %struct.cdns_reg_pairs { i32 18, i32 171 }, %struct.cdns_reg_pairs { i32 18, i32 219 }, %struct.cdns_reg_pairs { i32 3166, i32 134 }, %struct.cdns_reg_pairs { i32 3166, i32 198 }, %struct.cdns_reg_pairs { i32 3158, i32 136 }, %struct.cdns_reg_pairs { i32 3158, i32 200 }, %struct.cdns_reg_pairs { i32 199, i32 156 }, %struct.cdns_reg_pairs { i32 199, i32 220 }, %struct.cdns_reg_pairs { i32 199, i32 158 }, %struct.cdns_reg_pairs { i32 199, i32 222 }, %struct.cdns_reg_pairs { i32 5, i32 159 }, %struct.cdns_reg_pairs { i32 5, i32 223 }], [80 x i8] zeroinitializer }, align 32
@pcie_100_ext_no_ssc_cmn_regs = internal global { [3 x %struct.cdns_reg_pairs], [40 x i8] } { [3 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 40, i32 452 }, %struct.cdns_reg_pairs { i32 30, i32 213 }, %struct.cdns_reg_pairs { i32 12, i32 214 }], [40 x i8] zeroinitializer }, align 32
@pcie_100_int_ssc_cmn_regs = internal global { [46 x %struct.cdns_reg_pairs], [80 x i8] } { [46 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 4, i32 148 }, %struct.cdns_reg_pairs { i32 4, i32 164 }, %struct.cdns_reg_pairs { i32 4, i32 212 }, %struct.cdns_reg_pairs { i32 1289, i32 420 }, %struct.cdns_reg_pairs { i32 1289, i32 436 }, %struct.cdns_reg_pairs { i32 1289, i32 452 }, %struct.cdns_reg_pairs { i32 3840, i32 421 }, %struct.cdns_reg_pairs { i32 3840, i32 437 }, %struct.cdns_reg_pairs { i32 3840, i32 453 }, %struct.cdns_reg_pairs { i32 3848, i32 422 }, %struct.cdns_reg_pairs { i32 3848, i32 438 }, %struct.cdns_reg_pairs { i32 3848, i32 454 }, %struct.cdns_reg_pairs { i32 100, i32 144 }, %struct.cdns_reg_pairs { i32 80, i32 160 }, %struct.cdns_reg_pairs { i32 100, i32 208 }, %struct.cdns_reg_pairs { i32 2, i32 146 }, %struct.cdns_reg_pairs { i32 2, i32 162 }, %struct.cdns_reg_pairs { i32 2, i32 210 }, %struct.cdns_reg_pairs { i32 68, i32 147 }, %struct.cdns_reg_pairs { i32 54, i32 163 }, %struct.cdns_reg_pairs { i32 68, i32 211 }, %struct.cdns_reg_pairs { i32 2, i32 416 }, %struct.cdns_reg_pairs { i32 2, i32 432 }, %struct.cdns_reg_pairs { i32 2, i32 448 }, %struct.cdns_reg_pairs { i32 1, i32 152 }, %struct.cdns_reg_pairs { i32 1, i32 168 }, %struct.cdns_reg_pairs { i32 1, i32 216 }, %struct.cdns_reg_pairs { i32 283, i32 153 }, %struct.cdns_reg_pairs { i32 283, i32 169 }, %struct.cdns_reg_pairs { i32 283, i32 217 }, %struct.cdns_reg_pairs { i32 110, i32 154 }, %struct.cdns_reg_pairs { i32 88, i32 170 }, %struct.cdns_reg_pairs { i32 110, i32 218 }, %struct.cdns_reg_pairs { i32 14, i32 155 }, %struct.cdns_reg_pairs { i32 18, i32 171 }, %struct.cdns_reg_pairs { i32 14, i32 219 }, %struct.cdns_reg_pairs { i32 3166, i32 134 }, %struct.cdns_reg_pairs { i32 3166, i32 198 }, %struct.cdns_reg_pairs { i32 3158, i32 136 }, %struct.cdns_reg_pairs { i32 3158, i32 200 }, %struct.cdns_reg_pairs { i32 199, i32 156 }, %struct.cdns_reg_pairs { i32 199, i32 220 }, %struct.cdns_reg_pairs { i32 199, i32 158 }, %struct.cdns_reg_pairs { i32 199, i32 222 }, %struct.cdns_reg_pairs { i32 5, i32 159 }, %struct.cdns_reg_pairs { i32 5, i32 223 }], [80 x i8] zeroinitializer }, align 32
@sl_sgmii_100_no_ssc_cmn_regs = internal global { [5 x %struct.cdns_reg_pairs], [56 x i8] } { [5 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 40, i32 452 }, %struct.cdns_reg_pairs { i32 30, i32 213 }, %struct.cdns_reg_pairs { i32 12, i32 214 }, %struct.cdns_reg_pairs { i32 3, i32 130 }, %struct.cdns_reg_pairs { i32 3, i32 194 }], [56 x i8] zeroinitializer }, align 32
@sgmii_100_no_ssc_cmn_regs = internal global { [2 x %struct.cdns_reg_pairs], [16 x i8] } { [2 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 127, i32 259 }, %struct.cdns_reg_pairs { i32 127, i32 267 }], [16 x i8] zeroinitializer }, align 32
@sgmii_100_int_ssc_cmn_regs = internal global { [48 x %struct.cdns_reg_pairs], [96 x i8] } { [48 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 4, i32 148 }, %struct.cdns_reg_pairs { i32 4, i32 164 }, %struct.cdns_reg_pairs { i32 4, i32 212 }, %struct.cdns_reg_pairs { i32 1289, i32 420 }, %struct.cdns_reg_pairs { i32 1289, i32 436 }, %struct.cdns_reg_pairs { i32 1289, i32 452 }, %struct.cdns_reg_pairs { i32 3840, i32 421 }, %struct.cdns_reg_pairs { i32 3840, i32 437 }, %struct.cdns_reg_pairs { i32 3840, i32 453 }, %struct.cdns_reg_pairs { i32 3848, i32 422 }, %struct.cdns_reg_pairs { i32 3848, i32 438 }, %struct.cdns_reg_pairs { i32 3848, i32 454 }, %struct.cdns_reg_pairs { i32 100, i32 144 }, %struct.cdns_reg_pairs { i32 80, i32 160 }, %struct.cdns_reg_pairs { i32 100, i32 208 }, %struct.cdns_reg_pairs { i32 2, i32 146 }, %struct.cdns_reg_pairs { i32 2, i32 162 }, %struct.cdns_reg_pairs { i32 2, i32 210 }, %struct.cdns_reg_pairs { i32 68, i32 147 }, %struct.cdns_reg_pairs { i32 54, i32 163 }, %struct.cdns_reg_pairs { i32 68, i32 211 }, %struct.cdns_reg_pairs { i32 2, i32 416 }, %struct.cdns_reg_pairs { i32 2, i32 432 }, %struct.cdns_reg_pairs { i32 2, i32 448 }, %struct.cdns_reg_pairs { i32 1, i32 152 }, %struct.cdns_reg_pairs { i32 1, i32 168 }, %struct.cdns_reg_pairs { i32 1, i32 216 }, %struct.cdns_reg_pairs { i32 283, i32 153 }, %struct.cdns_reg_pairs { i32 283, i32 169 }, %struct.cdns_reg_pairs { i32 283, i32 217 }, %struct.cdns_reg_pairs { i32 110, i32 154 }, %struct.cdns_reg_pairs { i32 88, i32 170 }, %struct.cdns_reg_pairs { i32 110, i32 218 }, %struct.cdns_reg_pairs { i32 14, i32 155 }, %struct.cdns_reg_pairs { i32 18, i32 171 }, %struct.cdns_reg_pairs { i32 14, i32 219 }, %struct.cdns_reg_pairs { i32 3166, i32 134 }, %struct.cdns_reg_pairs { i32 3166, i32 198 }, %struct.cdns_reg_pairs { i32 3158, i32 136 }, %struct.cdns_reg_pairs { i32 3158, i32 200 }, %struct.cdns_reg_pairs { i32 199, i32 156 }, %struct.cdns_reg_pairs { i32 199, i32 220 }, %struct.cdns_reg_pairs { i32 199, i32 158 }, %struct.cdns_reg_pairs { i32 199, i32 222 }, %struct.cdns_reg_pairs { i32 5, i32 159 }, %struct.cdns_reg_pairs { i32 5, i32 223 }, %struct.cdns_reg_pairs { i32 127, i32 259 }, %struct.cdns_reg_pairs { i32 127, i32 267 }], [96 x i8] zeroinitializer }, align 32
@sl_qsgmii_100_no_ssc_cmn_regs = internal global { [5 x %struct.cdns_reg_pairs], [56 x i8] } { [5 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 40, i32 452 }, %struct.cdns_reg_pairs { i32 30, i32 213 }, %struct.cdns_reg_pairs { i32 12, i32 214 }, %struct.cdns_reg_pairs { i32 3, i32 130 }, %struct.cdns_reg_pairs { i32 3, i32 194 }], [56 x i8] zeroinitializer }, align 32
@qsgmii_100_no_ssc_cmn_regs = internal global { [2 x %struct.cdns_reg_pairs], [16 x i8] } { [2 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 127, i32 259 }, %struct.cdns_reg_pairs { i32 127, i32 267 }], [16 x i8] zeroinitializer }, align 32
@qsgmii_100_int_ssc_cmn_regs = internal global { [48 x %struct.cdns_reg_pairs], [96 x i8] } { [48 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 4, i32 148 }, %struct.cdns_reg_pairs { i32 4, i32 164 }, %struct.cdns_reg_pairs { i32 4, i32 212 }, %struct.cdns_reg_pairs { i32 1289, i32 420 }, %struct.cdns_reg_pairs { i32 1289, i32 436 }, %struct.cdns_reg_pairs { i32 1289, i32 452 }, %struct.cdns_reg_pairs { i32 3840, i32 421 }, %struct.cdns_reg_pairs { i32 3840, i32 437 }, %struct.cdns_reg_pairs { i32 3840, i32 453 }, %struct.cdns_reg_pairs { i32 3848, i32 422 }, %struct.cdns_reg_pairs { i32 3848, i32 438 }, %struct.cdns_reg_pairs { i32 3848, i32 454 }, %struct.cdns_reg_pairs { i32 100, i32 144 }, %struct.cdns_reg_pairs { i32 80, i32 160 }, %struct.cdns_reg_pairs { i32 100, i32 208 }, %struct.cdns_reg_pairs { i32 2, i32 146 }, %struct.cdns_reg_pairs { i32 2, i32 162 }, %struct.cdns_reg_pairs { i32 2, i32 210 }, %struct.cdns_reg_pairs { i32 68, i32 147 }, %struct.cdns_reg_pairs { i32 54, i32 163 }, %struct.cdns_reg_pairs { i32 68, i32 211 }, %struct.cdns_reg_pairs { i32 2, i32 416 }, %struct.cdns_reg_pairs { i32 2, i32 432 }, %struct.cdns_reg_pairs { i32 2, i32 448 }, %struct.cdns_reg_pairs { i32 1, i32 152 }, %struct.cdns_reg_pairs { i32 1, i32 168 }, %struct.cdns_reg_pairs { i32 1, i32 216 }, %struct.cdns_reg_pairs { i32 283, i32 153 }, %struct.cdns_reg_pairs { i32 283, i32 169 }, %struct.cdns_reg_pairs { i32 283, i32 217 }, %struct.cdns_reg_pairs { i32 110, i32 154 }, %struct.cdns_reg_pairs { i32 88, i32 170 }, %struct.cdns_reg_pairs { i32 110, i32 218 }, %struct.cdns_reg_pairs { i32 14, i32 155 }, %struct.cdns_reg_pairs { i32 18, i32 171 }, %struct.cdns_reg_pairs { i32 14, i32 219 }, %struct.cdns_reg_pairs { i32 3166, i32 134 }, %struct.cdns_reg_pairs { i32 3166, i32 198 }, %struct.cdns_reg_pairs { i32 3158, i32 136 }, %struct.cdns_reg_pairs { i32 3158, i32 200 }, %struct.cdns_reg_pairs { i32 199, i32 156 }, %struct.cdns_reg_pairs { i32 199, i32 220 }, %struct.cdns_reg_pairs { i32 199, i32 158 }, %struct.cdns_reg_pairs { i32 199, i32 222 }, %struct.cdns_reg_pairs { i32 5, i32 159 }, %struct.cdns_reg_pairs { i32 5, i32 223 }, %struct.cdns_reg_pairs { i32 127, i32 259 }, %struct.cdns_reg_pairs { i32 127, i32 267 }], [96 x i8] zeroinitializer }, align 32
@sl_usb_100_no_ssc_cmn_regs = internal global { [7 x %struct.cdns_reg_pairs], [40 x i8] } { [7 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 40, i32 452 }, %struct.cdns_reg_pairs { i32 30, i32 213 }, %struct.cdns_reg_pairs { i32 12, i32 214 }, %struct.cdns_reg_pairs { i32 3, i32 130 }, %struct.cdns_reg_pairs { i32 3, i32 194 }, %struct.cdns_reg_pairs { i32 33280, i32 65 }, %struct.cdns_reg_pairs { i32 33280, i32 71 }], [40 x i8] zeroinitializer }, align 32
@sl_usb_100_int_ssc_cmn_regs = internal global { [38 x %struct.cdns_reg_pairs], [80 x i8] } { [38 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 4, i32 148 }, %struct.cdns_reg_pairs { i32 4, i32 212 }, %struct.cdns_reg_pairs { i32 1289, i32 420 }, %struct.cdns_reg_pairs { i32 1289, i32 452 }, %struct.cdns_reg_pairs { i32 3840, i32 421 }, %struct.cdns_reg_pairs { i32 3840, i32 453 }, %struct.cdns_reg_pairs { i32 3848, i32 422 }, %struct.cdns_reg_pairs { i32 3848, i32 454 }, %struct.cdns_reg_pairs { i32 100, i32 144 }, %struct.cdns_reg_pairs { i32 100, i32 208 }, %struct.cdns_reg_pairs { i32 2, i32 146 }, %struct.cdns_reg_pairs { i32 2, i32 210 }, %struct.cdns_reg_pairs { i32 68, i32 147 }, %struct.cdns_reg_pairs { i32 68, i32 211 }, %struct.cdns_reg_pairs { i32 2, i32 416 }, %struct.cdns_reg_pairs { i32 2, i32 448 }, %struct.cdns_reg_pairs { i32 1, i32 152 }, %struct.cdns_reg_pairs { i32 1, i32 216 }, %struct.cdns_reg_pairs { i32 283, i32 153 }, %struct.cdns_reg_pairs { i32 283, i32 217 }, %struct.cdns_reg_pairs { i32 110, i32 154 }, %struct.cdns_reg_pairs { i32 110, i32 218 }, %struct.cdns_reg_pairs { i32 14, i32 155 }, %struct.cdns_reg_pairs { i32 14, i32 219 }, %struct.cdns_reg_pairs { i32 3166, i32 134 }, %struct.cdns_reg_pairs { i32 3166, i32 198 }, %struct.cdns_reg_pairs { i32 3158, i32 136 }, %struct.cdns_reg_pairs { i32 3158, i32 200 }, %struct.cdns_reg_pairs { i32 3, i32 130 }, %struct.cdns_reg_pairs { i32 3, i32 194 }, %struct.cdns_reg_pairs { i32 199, i32 156 }, %struct.cdns_reg_pairs { i32 199, i32 220 }, %struct.cdns_reg_pairs { i32 199, i32 158 }, %struct.cdns_reg_pairs { i32 199, i32 222 }, %struct.cdns_reg_pairs { i32 5, i32 159 }, %struct.cdns_reg_pairs { i32 5, i32 223 }, %struct.cdns_reg_pairs { i32 33280, i32 65 }, %struct.cdns_reg_pairs { i32 33280, i32 71 }], [80 x i8] zeroinitializer }, align 32
@usb_100_no_ssc_cmn_regs = internal global { [4 x %struct.cdns_reg_pairs], [32 x i8] } { [4 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 33280, i32 65 }, %struct.cdns_reg_pairs { i32 33280, i32 71 }, %struct.cdns_reg_pairs { i32 127, i32 259 }, %struct.cdns_reg_pairs { i32 127, i32 267 }], [32 x i8] zeroinitializer }, align 32
@usb_100_int_ssc_cmn_regs = internal global { [50 x %struct.cdns_reg_pairs], [112 x i8] } { [50 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 4, i32 148 }, %struct.cdns_reg_pairs { i32 4, i32 164 }, %struct.cdns_reg_pairs { i32 4, i32 212 }, %struct.cdns_reg_pairs { i32 1289, i32 420 }, %struct.cdns_reg_pairs { i32 1289, i32 436 }, %struct.cdns_reg_pairs { i32 1289, i32 452 }, %struct.cdns_reg_pairs { i32 3840, i32 421 }, %struct.cdns_reg_pairs { i32 3840, i32 437 }, %struct.cdns_reg_pairs { i32 3840, i32 453 }, %struct.cdns_reg_pairs { i32 3848, i32 422 }, %struct.cdns_reg_pairs { i32 3848, i32 438 }, %struct.cdns_reg_pairs { i32 3848, i32 454 }, %struct.cdns_reg_pairs { i32 100, i32 144 }, %struct.cdns_reg_pairs { i32 80, i32 160 }, %struct.cdns_reg_pairs { i32 100, i32 208 }, %struct.cdns_reg_pairs { i32 2, i32 146 }, %struct.cdns_reg_pairs { i32 2, i32 162 }, %struct.cdns_reg_pairs { i32 2, i32 210 }, %struct.cdns_reg_pairs { i32 68, i32 147 }, %struct.cdns_reg_pairs { i32 54, i32 163 }, %struct.cdns_reg_pairs { i32 68, i32 211 }, %struct.cdns_reg_pairs { i32 2, i32 416 }, %struct.cdns_reg_pairs { i32 2, i32 432 }, %struct.cdns_reg_pairs { i32 2, i32 448 }, %struct.cdns_reg_pairs { i32 1, i32 152 }, %struct.cdns_reg_pairs { i32 1, i32 168 }, %struct.cdns_reg_pairs { i32 1, i32 216 }, %struct.cdns_reg_pairs { i32 283, i32 153 }, %struct.cdns_reg_pairs { i32 283, i32 169 }, %struct.cdns_reg_pairs { i32 283, i32 217 }, %struct.cdns_reg_pairs { i32 110, i32 154 }, %struct.cdns_reg_pairs { i32 88, i32 170 }, %struct.cdns_reg_pairs { i32 110, i32 218 }, %struct.cdns_reg_pairs { i32 14, i32 155 }, %struct.cdns_reg_pairs { i32 18, i32 171 }, %struct.cdns_reg_pairs { i32 14, i32 219 }, %struct.cdns_reg_pairs { i32 3166, i32 134 }, %struct.cdns_reg_pairs { i32 3166, i32 198 }, %struct.cdns_reg_pairs { i32 3158, i32 136 }, %struct.cdns_reg_pairs { i32 3158, i32 200 }, %struct.cdns_reg_pairs { i32 199, i32 156 }, %struct.cdns_reg_pairs { i32 199, i32 220 }, %struct.cdns_reg_pairs { i32 199, i32 158 }, %struct.cdns_reg_pairs { i32 199, i32 222 }, %struct.cdns_reg_pairs { i32 5, i32 159 }, %struct.cdns_reg_pairs { i32 5, i32 223 }, %struct.cdns_reg_pairs { i32 33280, i32 65 }, %struct.cdns_reg_pairs { i32 33280, i32 71 }, %struct.cdns_reg_pairs { i32 127, i32 259 }, %struct.cdns_reg_pairs { i32 127, i32 267 }], [112 x i8] zeroinitializer }, align 32
@sl_dp_19_2_no_ssc_tx_ln_regs = internal global { [5 x %struct.cdns_reg_pairs], [56 x i8] } { [5 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 1920, i32 291 }, %struct.cdns_reg_pairs { i32 251, i32 256 }, %struct.cdns_reg_pairs { i32 1194, i32 258 }, %struct.cdns_reg_pairs { i32 1194, i32 259 }, %struct.cdns_reg_pairs { i32 15, i32 234 }], [56 x i8] zeroinitializer }, align 32
@sl_dp_25_no_ssc_tx_ln_regs = internal global { [5 x %struct.cdns_reg_pairs], [56 x i8] } { [5 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 2500, i32 291 }, %struct.cdns_reg_pairs { i32 251, i32 256 }, %struct.cdns_reg_pairs { i32 1194, i32 258 }, %struct.cdns_reg_pairs { i32 1194, i32 259 }, %struct.cdns_reg_pairs { i32 15, i32 234 }], [56 x i8] zeroinitializer }, align 32
@sl_dp_100_no_ssc_tx_ln_regs = internal global { [4 x %struct.cdns_reg_pairs], [32 x i8] } { [4 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 251, i32 256 }, %struct.cdns_reg_pairs { i32 1194, i32 258 }, %struct.cdns_reg_pairs { i32 1194, i32 259 }, %struct.cdns_reg_pairs { i32 15, i32 234 }], [32 x i8] zeroinitializer }, align 32
@sgmii_100_no_ssc_tx_ln_regs = internal global { [5 x %struct.cdns_reg_pairs], [56 x i8] } { [5 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 243, i32 256 }, %struct.cdns_reg_pairs { i32 1186, i32 258 }, %struct.cdns_reg_pairs { i32 1186, i32 259 }, %struct.cdns_reg_pairs { i32 0, i32 76 }, %struct.cdns_reg_pairs { i32 179, i32 198 }], [56 x i8] zeroinitializer }, align 32
@qsgmii_100_no_ssc_tx_ln_regs = internal global { [6 x %struct.cdns_reg_pairs], [48 x i8] } { [6 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 243, i32 256 }, %struct.cdns_reg_pairs { i32 1186, i32 258 }, %struct.cdns_reg_pairs { i32 1186, i32 259 }, %struct.cdns_reg_pairs { i32 0, i32 76 }, %struct.cdns_reg_pairs { i32 17, i32 84 }, %struct.cdns_reg_pairs { i32 3, i32 198 }], [48 x i8] zeroinitializer }, align 32
@usb_100_no_ssc_tx_ln_regs = internal global { [7 x %struct.cdns_reg_pairs], [40 x i8] } { [7 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 767, i32 256 }, %struct.cdns_reg_pairs { i32 1711, i32 257 }, %struct.cdns_reg_pairs { i32 1710, i32 258 }, %struct.cdns_reg_pairs { i32 1710, i32 259 }, %struct.cdns_reg_pairs { i32 10882, i32 64 }, %struct.cdns_reg_pairs { i32 20, i32 77 }, %struct.cdns_reg_pairs { i32 3, i32 235 }], [40 x i8] zeroinitializer }, align 32
@sl_dp_19_2_no_ssc_rx_ln_regs = internal global { [7 x %struct.cdns_reg_pairs], [40 x i8] } { [7 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs zeroinitializer, %struct.cdns_reg_pairs { i32 0, i32 2 }, %struct.cdns_reg_pairs { i32 0, i32 3 }, %struct.cdns_reg_pairs { i32 0, i32 6 }, %struct.cdns_reg_pairs { i32 0, i32 264 }, %struct.cdns_reg_pairs { i32 0, i32 272 }, %struct.cdns_reg_pairs { i32 0, i32 280 }], [40 x i8] zeroinitializer }, align 32
@sl_dp_25_no_ssc_rx_ln_regs = internal global { [7 x %struct.cdns_reg_pairs], [40 x i8] } { [7 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs zeroinitializer, %struct.cdns_reg_pairs { i32 0, i32 2 }, %struct.cdns_reg_pairs { i32 0, i32 3 }, %struct.cdns_reg_pairs { i32 0, i32 6 }, %struct.cdns_reg_pairs { i32 0, i32 264 }, %struct.cdns_reg_pairs { i32 0, i32 272 }, %struct.cdns_reg_pairs { i32 0, i32 280 }], [40 x i8] zeroinitializer }, align 32
@sl_dp_100_no_ssc_rx_ln_regs = internal global { [7 x %struct.cdns_reg_pairs], [40 x i8] } { [7 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs zeroinitializer, %struct.cdns_reg_pairs { i32 0, i32 2 }, %struct.cdns_reg_pairs { i32 0, i32 3 }, %struct.cdns_reg_pairs { i32 0, i32 6 }, %struct.cdns_reg_pairs { i32 0, i32 264 }, %struct.cdns_reg_pairs { i32 0, i32 272 }, %struct.cdns_reg_pairs { i32 0, i32 280 }], [40 x i8] zeroinitializer }, align 32
@pcie_100_ext_no_ssc_rx_ln_regs = internal global { [3 x %struct.cdns_reg_pairs], [40 x i8] } { [3 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 25, i32 369 }, %struct.cdns_reg_pairs { i32 25, i32 370 }, %struct.cdns_reg_pairs { i32 1, i32 511 }], [40 x i8] zeroinitializer }, align 32
@sgmii_100_no_ssc_rx_ln_regs = internal global { [15 x %struct.cdns_reg_pairs], [40 x i8] } { [15 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 2333, i32 0 }, %struct.cdns_reg_pairs { i32 2304, i32 2 }, %struct.cdns_reg_pairs { i32 256, i32 3 }, %struct.cdns_reg_pairs { i32 967, i32 265 }, %struct.cdns_reg_pairs { i32 455, i32 266 }, %struct.cdns_reg_pairs { i32 0, i32 480 }, %struct.cdns_reg_pairs { i32 25, i32 369 }, %struct.cdns_reg_pairs { i32 25, i32 370 }, %struct.cdns_reg_pairs { i32 152, i32 485 }, %struct.cdns_reg_pairs { i32 3073, i32 482 }, %struct.cdns_reg_pairs { i32 0, i32 483 }, %struct.cdns_reg_pairs { i32 0, i32 501 }, %struct.cdns_reg_pairs { i32 16, i32 500 }, %struct.cdns_reg_pairs { i32 1, i32 511 }, %struct.cdns_reg_pairs { i32 396, i32 128 }], [40 x i8] zeroinitializer }, align 32
@qsgmii_100_no_ssc_rx_ln_regs = internal global { [15 x %struct.cdns_reg_pairs], [40 x i8] } { [15 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 2333, i32 0 }, %struct.cdns_reg_pairs { i32 2304, i32 2 }, %struct.cdns_reg_pairs { i32 256, i32 3 }, %struct.cdns_reg_pairs { i32 967, i32 265 }, %struct.cdns_reg_pairs { i32 455, i32 266 }, %struct.cdns_reg_pairs { i32 0, i32 480 }, %struct.cdns_reg_pairs { i32 25, i32 369 }, %struct.cdns_reg_pairs { i32 25, i32 370 }, %struct.cdns_reg_pairs { i32 152, i32 485 }, %struct.cdns_reg_pairs { i32 3073, i32 482 }, %struct.cdns_reg_pairs { i32 0, i32 483 }, %struct.cdns_reg_pairs { i32 0, i32 501 }, %struct.cdns_reg_pairs { i32 16, i32 500 }, %struct.cdns_reg_pairs { i32 1, i32 511 }, %struct.cdns_reg_pairs { i32 396, i32 128 }], [40 x i8] zeroinitializer }, align 32
@usb_100_no_ssc_rx_ln_regs = internal global { [20 x %struct.cdns_reg_pairs], [32 x i8] } { [20 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 3357, i32 0 }, %struct.cdns_reg_pairs { i32 3357, i32 1 }, %struct.cdns_reg_pairs { i32 3328, i32 2 }, %struct.cdns_reg_pairs { i32 1280, i32 3 }, %struct.cdns_reg_pairs { i32 19, i32 144 }, %struct.cdns_reg_pairs { i32 0, i32 264 }, %struct.cdns_reg_pairs { i32 3074, i32 329 }, %struct.cdns_reg_pairs { i32 816, i32 375 }, %struct.cdns_reg_pairs { i32 768, i32 376 }, %struct.cdns_reg_pairs { i32 25, i32 369 }, %struct.cdns_reg_pairs { i32 25, i32 370 }, %struct.cdns_reg_pairs { i32 4100, i32 488 }, %struct.cdns_reg_pairs { i32 249, i32 485 }, %struct.cdns_reg_pairs { i32 3073, i32 482 }, %struct.cdns_reg_pairs { i32 2, i32 483 }, %struct.cdns_reg_pairs { i32 0, i32 501 }, %struct.cdns_reg_pairs { i32 49, i32 500 }, %struct.cdns_reg_pairs { i32 1, i32 511 }, %struct.cdns_reg_pairs { i32 396, i32 128 }, %struct.cdns_reg_pairs { i32 3, i32 130 }], [32 x i8] zeroinitializer }, align 32
@ti_sgmii_100_no_ssc_tx_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @ti_sgmii_100_no_ssc_tx_ln_regs, i32 6 }, [24 x i8] zeroinitializer }, align 32
@ti_qsgmii_100_no_ssc_tx_ln_vals = internal global { %struct.cdns_torrent_vals, [24 x i8] } { %struct.cdns_torrent_vals { ptr @ti_qsgmii_100_no_ssc_tx_ln_regs, i32 7 }, [24 x i8] zeroinitializer }, align 32
@ti_sgmii_100_no_ssc_tx_ln_regs = internal global { [6 x %struct.cdns_reg_pairs], [48 x i8] } { [6 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 243, i32 256 }, %struct.cdns_reg_pairs { i32 1186, i32 258 }, %struct.cdns_reg_pairs { i32 1186, i32 259 }, %struct.cdns_reg_pairs { i32 0, i32 76 }, %struct.cdns_reg_pairs { i32 179, i32 198 }, %struct.cdns_reg_pairs { i32 16384, i32 233 }], [48 x i8] zeroinitializer }, align 32
@ti_qsgmii_100_no_ssc_tx_ln_regs = internal global { [7 x %struct.cdns_reg_pairs], [40 x i8] } { [7 x %struct.cdns_reg_pairs] [%struct.cdns_reg_pairs { i32 243, i32 256 }, %struct.cdns_reg_pairs { i32 1186, i32 258 }, %struct.cdns_reg_pairs { i32 1186, i32 259 }, %struct.cdns_reg_pairs { i32 0, i32 76 }, %struct.cdns_reg_pairs { i32 17, i32 84 }, %struct.cdns_reg_pairs { i32 3, i32 198 }, %struct.cdns_reg_pairs { i32 16384, i32 233 }], [40 x i8] zeroinitializer }, align 32
@switch.table.cdns_torrent_phy_probe = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 2, i32 5, i32 2, i32 1, i32 2, i32 3, i32 4], [32 x i8] zeroinitializer }, align 32
@switch.table.cdns_torrent_phy_probe.165 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163], [44 x i8] zeroinitializer }, align 32
@switch.table.cdns_torrent_phy_probe.166 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163], [44 x i8] zeroinitializer }, align 32
@switch.table.cdns_torrent_phy_probe.167 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.168 = internal global [10 x i64] [i64 8, i64 32, i64 1620, i64 2160, i64 2430, i64 2700, i64 3240, i64 4320, i64 5400, i64 8100]
@__sancov_gen_cov_switch_values.169 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 19200000, i64 25000000, i64 100000000]
@__sancov_gen_cov_switch_values.170 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.172 = internal global [10 x i64] [i64 8, i64 32, i64 1620, i64 2160, i64 2430, i64 2700, i64 3240, i64 4320, i64 5400, i64 8100]
@__sancov_gen_cov_switch_values.173 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.174 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.175 = internal global [10 x i64] [i64 8, i64 32, i64 1620, i64 2160, i64 2430, i64 2700, i64 3240, i64 4320, i64 5400, i64 8100]
@__sancov_gen_cov_switch_values.176 = internal global [10 x i64] [i64 8, i64 32, i64 1620, i64 2160, i64 2430, i64 2700, i64 3240, i64 4320, i64 5400, i64 8100]
@__sancov_gen_cov_switch_values.177 = internal global [10 x i64] [i64 8, i64 32, i64 1620, i64 2160, i64 2430, i64 2700, i64 3240, i64 4320, i64 5400, i64 8100]
@__sancov_gen_cov_switch_values.178 = internal global [10 x i64] [i64 8, i64 32, i64 1620, i64 2160, i64 2430, i64 2700, i64 3240, i64 4320, i64 5400, i64 8100]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.180 = private unnamed_addr constant [24 x i8] c"cdns_torrent_phy_driver\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 4710, i32 31 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 4714, i32 11 }
@___asan_gen_.186 = private unnamed_addr constant [26 x i8] c"cdns_torrent_phy_of_match\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 4697, i32 34 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2558, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2593, i32 32 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2599, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2605, i32 35 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2607, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2613, i32 35 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2614, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2637, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2642, i32 35 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2644, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2654, i32 31 }
@___asan_gen_.252 = private unnamed_addr constant [21 x i8] c"cdns_torrent_phy_ops\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2253, i32 29 }
@___asan_gen_.255 = private unnamed_addr constant [9 x i8] c"noop_ops\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2269, i32 29 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2674, i32 5 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2681, i32 32 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2696, i32 5 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2721, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2738, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2756, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2762, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [32 x i8] c"cdns_torrent_tx_lane_cdb_config\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 480, i32 35 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2082, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant [32 x i8] c"cdns_torrent_rx_lane_cdb_config\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 487, i32 35 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2093, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant [37 x i8] c"cdns_torrent_phy_pcs_lane_cdb_config\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 511, i32 35 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2104, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant [31 x i8] c"cdns_torrent_common_cdb_config\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 494, i32 35 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2115, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant [36 x i8] c"cdns_torrent_phy_pcs_cmn_cdb_config\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 518, i32 35 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2125, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant [36 x i8] c"cdns_torrent_phy_pma_cmn_cdb_config\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 526, i32 35 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2135, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1952, i32 9 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 481, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 482, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 483, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 484, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 488, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 489, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 490, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 491, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 512, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 513, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 514, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 515, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 495, i32 10 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 519, i32 10 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 527, i32 10 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1982, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1990, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1998, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2006, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2014, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2022, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2031, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2436, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2442, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2448, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2454, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1697, i32 39 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1700, i32 35 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1702, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant [32 x i8] c"cdns_torrent_derived_refclk_ops\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1676, i32 29 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 241, i32 33 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 242, i32 34 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 243, i32 35 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1785, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant [33 x i8] c"cdns_torrent_received_refclk_ops\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1759, i32 29 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1894, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant [31 x i8] c"cdns_torrent_refclk_driver_ops\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1861, i32 29 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1916, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant [37 x i8] c"cdns_torrent_refclk_driver_mux_table\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 290, i32 12 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2467, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2472, i32 69 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2474, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2488, i32 36 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2490, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2496, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2502, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2518, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1639, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1138, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1111, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1528, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1537, i32 4 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1477, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1484, i32 4 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1492, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant [11 x i8] c"vltg_coeff\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 590, i32 34 }
@___asan_gen_.642 = private unnamed_addr constant [29 x i8] c"cdns_torrent_dptx_phy_config\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 534, i32 35 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2055, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 535, i32 10 }
@___asan_gen_.657 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1964, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 640, i32 10 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 642, i32 10 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 644, i32 10 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 646, i32 10 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 648, i32 10 }
@___asan_gen_.681 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 650, i32 10 }
@___asan_gen_.684 = private unnamed_addr constant [17 x i8] c"cdns_map_torrent\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3733, i32 39 }
@___asan_gen_.687 = private unnamed_addr constant [21 x i8] c"ti_j721e_map_torrent\00", align 1
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 4215, i32 39 }
@___asan_gen_.690 = private unnamed_addr constant [20 x i8] c"sl_dp_link_cmn_vals\00", align 1
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2809, i32 33 }
@___asan_gen_.693 = private unnamed_addr constant [25 x i8] c"pcie_sgmii_link_cmn_vals\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3299, i32 33 }
@___asan_gen_.696 = private unnamed_addr constant [23 x i8] c"pcie_usb_link_cmn_vals\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3053, i32 33 }
@___asan_gen_.699 = private unnamed_addr constant [23 x i8] c"sl_sgmii_link_cmn_vals\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3590, i32 33 }
@___asan_gen_.702 = private unnamed_addr constant [24 x i8] c"usb_sgmii_link_cmn_vals\00", align 1
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3018, i32 33 }
@___asan_gen_.705 = private unnamed_addr constant [21 x i8] c"sl_usb_link_cmn_vals\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3139, i32 33 }
@___asan_gen_.708 = private unnamed_addr constant [24 x i8] c"sl_dp_xcvr_diag_ln_vals\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2814, i32 33 }
@___asan_gen_.711 = private unnamed_addr constant [29 x i8] c"pcie_sgmii_xcvr_diag_ln_vals\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3304, i32 33 }
@___asan_gen_.714 = private unnamed_addr constant [27 x i8] c"pcie_usb_xcvr_diag_ln_vals\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3058, i32 33 }
@___asan_gen_.717 = private unnamed_addr constant [27 x i8] c"sl_sgmii_xcvr_diag_ln_vals\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3595, i32 33 }
@___asan_gen_.720 = private unnamed_addr constant [29 x i8] c"sgmii_pcie_xcvr_diag_ln_vals\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3309, i32 33 }
@___asan_gen_.723 = private unnamed_addr constant [28 x i8] c"sgmii_usb_xcvr_diag_ln_vals\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3028, i32 33 }
@___asan_gen_.726 = private unnamed_addr constant [25 x i8] c"sl_usb_xcvr_diag_ln_vals\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3144, i32 33 }
@___asan_gen_.729 = private unnamed_addr constant [27 x i8] c"usb_pcie_xcvr_diag_ln_vals\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3063, i32 33 }
@___asan_gen_.732 = private unnamed_addr constant [28 x i8] c"usb_sgmii_xcvr_diag_ln_vals\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3023, i32 33 }
@___asan_gen_.735 = private unnamed_addr constant [21 x i8] c"usb_phy_pcs_cmn_vals\00", align 1
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3156, i32 33 }
@___asan_gen_.738 = private unnamed_addr constant [27 x i8] c"sl_dp_19_2_no_ssc_cmn_vals\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2875, i32 33 }
@___asan_gen_.741 = private unnamed_addr constant [25 x i8] c"sl_dp_25_no_ssc_cmn_vals\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2946, i32 33 }
@___asan_gen_.744 = private unnamed_addr constant [26 x i8] c"sl_dp_100_no_ssc_cmn_vals\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2984, i32 33 }
@___asan_gen_.747 = private unnamed_addr constant [29 x i8] c"sl_pcie_100_int_ssc_cmn_vals\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3705, i32 33 }
@___asan_gen_.750 = private unnamed_addr constant [25 x i8] c"pcie_100_no_ssc_cmn_vals\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3723, i32 33 }
@___asan_gen_.753 = private unnamed_addr constant [26 x i8] c"pcie_100_int_ssc_cmn_vals\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3650, i32 33 }
@___asan_gen_.756 = private unnamed_addr constant [29 x i8] c"sl_sgmii_100_no_ssc_cmn_vals\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3323, i32 33 }
@___asan_gen_.759 = private unnamed_addr constant [26 x i8] c"sgmii_100_no_ssc_cmn_vals\00", align 1
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3368, i32 33 }
@___asan_gen_.762 = private unnamed_addr constant [27 x i8] c"sgmii_100_int_ssc_cmn_vals\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3440, i32 33 }
@___asan_gen_.765 = private unnamed_addr constant [30 x i8] c"sl_qsgmii_100_no_ssc_cmn_vals\00", align 1
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3454, i32 33 }
@___asan_gen_.768 = private unnamed_addr constant [27 x i8] c"qsgmii_100_no_ssc_cmn_vals\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3501, i32 33 }
@___asan_gen_.771 = private unnamed_addr constant [28 x i8] c"qsgmii_100_int_ssc_cmn_vals\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3573, i32 33 }
@___asan_gen_.774 = private unnamed_addr constant [27 x i8] c"sl_usb_100_no_ssc_cmn_vals\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3172, i32 33 }
@___asan_gen_.777 = private unnamed_addr constant [28 x i8] c"sl_usb_100_int_ssc_cmn_vals\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3274, i32 33 }
@___asan_gen_.780 = private unnamed_addr constant [24 x i8] c"usb_100_no_ssc_cmn_vals\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3217, i32 33 }
@___asan_gen_.783 = private unnamed_addr constant [25 x i8] c"usb_100_int_ssc_cmn_vals\00", align 1
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3122, i32 33 }
@___asan_gen_.786 = private unnamed_addr constant [29 x i8] c"sl_dp_19_2_no_ssc_tx_ln_vals\00", align 1
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2880, i32 33 }
@___asan_gen_.789 = private unnamed_addr constant [27 x i8] c"sl_dp_25_no_ssc_tx_ln_vals\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2951, i32 33 }
@___asan_gen_.792 = private unnamed_addr constant [28 x i8] c"sl_dp_100_no_ssc_tx_ln_vals\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2989, i32 33 }
@___asan_gen_.795 = private unnamed_addr constant [28 x i8] c"sgmii_100_no_ssc_tx_ln_vals\00", align 1
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3373, i32 33 }
@___asan_gen_.798 = private unnamed_addr constant [29 x i8] c"qsgmii_100_no_ssc_tx_ln_vals\00", align 1
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3506, i32 33 }
@___asan_gen_.801 = private unnamed_addr constant [26 x i8] c"usb_100_no_ssc_tx_ln_vals\00", align 1
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3222, i32 33 }
@___asan_gen_.804 = private unnamed_addr constant [29 x i8] c"sl_dp_19_2_no_ssc_rx_ln_vals\00", align 1
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2885, i32 33 }
@___asan_gen_.807 = private unnamed_addr constant [27 x i8] c"sl_dp_25_no_ssc_rx_ln_vals\00", align 1
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2956, i32 33 }
@___asan_gen_.810 = private unnamed_addr constant [28 x i8] c"sl_dp_100_no_ssc_rx_ln_vals\00", align 1
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2994, i32 33 }
@___asan_gen_.813 = private unnamed_addr constant [27 x i8] c"pcie_100_no_ssc_rx_ln_vals\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3728, i32 33 }
@___asan_gen_.816 = private unnamed_addr constant [28 x i8] c"sgmii_100_no_ssc_rx_ln_vals\00", align 1
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3383, i32 33 }
@___asan_gen_.819 = private unnamed_addr constant [29 x i8] c"qsgmii_100_no_ssc_rx_ln_vals\00", align 1
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3516, i32 33 }
@___asan_gen_.822 = private unnamed_addr constant [26 x i8] c"usb_100_no_ssc_rx_ln_vals\00", align 1
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3227, i32 33 }
@___asan_gen_.825 = private unnamed_addr constant [20 x i8] c"sl_dp_link_cmn_regs\00", align 1
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2800, i32 30 }
@___asan_gen_.828 = private unnamed_addr constant [25 x i8] c"pcie_sgmii_link_cmn_regs\00", align 1
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3280, i32 30 }
@___asan_gen_.831 = private unnamed_addr constant [23 x i8] c"pcie_usb_link_cmn_regs\00", align 1
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3034, i32 30 }
@___asan_gen_.834 = private unnamed_addr constant [23 x i8] c"sl_sgmii_link_cmn_regs\00", align 1
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3579, i32 30 }
@___asan_gen_.837 = private unnamed_addr constant [24 x i8] c"usb_sgmii_link_cmn_regs\00", align 1
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3000, i32 30 }
@___asan_gen_.840 = private unnamed_addr constant [21 x i8] c"sl_usb_link_cmn_regs\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3128, i32 30 }
@___asan_gen_.843 = private unnamed_addr constant [24 x i8] c"sl_dp_xcvr_diag_ln_regs\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2804, i32 30 }
@___asan_gen_.846 = private unnamed_addr constant [29 x i8] c"pcie_sgmii_xcvr_diag_ln_regs\00", align 1
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3287, i32 30 }
@___asan_gen_.849 = private unnamed_addr constant [27 x i8] c"pcie_usb_xcvr_diag_ln_regs\00", align 1
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3041, i32 30 }
@___asan_gen_.852 = private unnamed_addr constant [27 x i8] c"sl_sgmii_xcvr_diag_ln_regs\00", align 1
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3584, i32 30 }
@___asan_gen_.855 = private unnamed_addr constant [29 x i8] c"sgmii_pcie_xcvr_diag_ln_regs\00", align 1
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3293, i32 30 }
@___asan_gen_.858 = private unnamed_addr constant [28 x i8] c"sgmii_usb_xcvr_diag_ln_regs\00", align 1
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3012, i32 30 }
@___asan_gen_.861 = private unnamed_addr constant [25 x i8] c"sl_usb_xcvr_diag_ln_regs\00", align 1
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3133, i32 30 }
@___asan_gen_.864 = private unnamed_addr constant [27 x i8] c"usb_pcie_xcvr_diag_ln_regs\00", align 1
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3047, i32 30 }
@___asan_gen_.867 = private unnamed_addr constant [28 x i8] c"usb_sgmii_xcvr_diag_ln_regs\00", align 1
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3006, i32 30 }
@___asan_gen_.870 = private unnamed_addr constant [21 x i8] c"usb_phy_pcs_cmn_regs\00", align 1
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3150, i32 30 }
@___asan_gen_.873 = private unnamed_addr constant [27 x i8] c"sl_dp_19_2_no_ssc_cmn_regs\00", align 1
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2820, i32 30 }
@___asan_gen_.876 = private unnamed_addr constant [25 x i8] c"sl_dp_25_no_ssc_cmn_regs\00", align 1
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2891, i32 30 }
@___asan_gen_.879 = private unnamed_addr constant [26 x i8] c"sl_dp_100_no_ssc_cmn_regs\00", align 1
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2962, i32 30 }
@___asan_gen_.882 = private unnamed_addr constant [29 x i8] c"sl_pcie_100_int_ssc_cmn_regs\00", align 1
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3656, i32 30 }
@___asan_gen_.885 = private unnamed_addr constant [29 x i8] c"pcie_100_ext_no_ssc_cmn_regs\00", align 1
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3711, i32 30 }
@___asan_gen_.888 = private unnamed_addr constant [26 x i8] c"pcie_100_int_ssc_cmn_regs\00", align 1
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3601, i32 30 }
@___asan_gen_.891 = private unnamed_addr constant [29 x i8] c"sl_sgmii_100_no_ssc_cmn_regs\00", align 1
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3315, i32 30 }
@___asan_gen_.894 = private unnamed_addr constant [26 x i8] c"sgmii_100_no_ssc_cmn_regs\00", align 1
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3328, i32 30 }
@___asan_gen_.897 = private unnamed_addr constant [27 x i8] c"sgmii_100_int_ssc_cmn_regs\00", align 1
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3389, i32 30 }
@___asan_gen_.900 = private unnamed_addr constant [30 x i8] c"sl_qsgmii_100_no_ssc_cmn_regs\00", align 1
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3446, i32 30 }
@___asan_gen_.903 = private unnamed_addr constant [27 x i8] c"qsgmii_100_no_ssc_cmn_regs\00", align 1
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3459, i32 30 }
@___asan_gen_.906 = private unnamed_addr constant [28 x i8] c"qsgmii_100_int_ssc_cmn_regs\00", align 1
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3522, i32 30 }
@___asan_gen_.909 = private unnamed_addr constant [27 x i8] c"sl_usb_100_no_ssc_cmn_regs\00", align 1
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3162, i32 30 }
@___asan_gen_.912 = private unnamed_addr constant [28 x i8] c"sl_usb_100_int_ssc_cmn_regs\00", align 1
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3233, i32 30 }
@___asan_gen_.915 = private unnamed_addr constant [24 x i8] c"usb_100_no_ssc_cmn_regs\00", align 1
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3177, i32 30 }
@___asan_gen_.918 = private unnamed_addr constant [25 x i8] c"usb_100_int_ssc_cmn_regs\00", align 1
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3069, i32 30 }
@___asan_gen_.921 = private unnamed_addr constant [29 x i8] c"sl_dp_19_2_no_ssc_tx_ln_regs\00", align 1
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2857, i32 30 }
@___asan_gen_.924 = private unnamed_addr constant [27 x i8] c"sl_dp_25_no_ssc_tx_ln_regs\00", align 1
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2928, i32 30 }
@___asan_gen_.927 = private unnamed_addr constant [28 x i8] c"sl_dp_100_no_ssc_tx_ln_regs\00", align 1
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2967, i32 30 }
@___asan_gen_.930 = private unnamed_addr constant [28 x i8] c"sgmii_100_no_ssc_tx_ln_regs\00", align 1
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3333, i32 30 }
@___asan_gen_.933 = private unnamed_addr constant [29 x i8] c"qsgmii_100_no_ssc_tx_ln_regs\00", align 1
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3464, i32 30 }
@___asan_gen_.936 = private unnamed_addr constant [26 x i8] c"usb_100_no_ssc_tx_ln_regs\00", align 1
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3184, i32 30 }
@___asan_gen_.939 = private unnamed_addr constant [29 x i8] c"sl_dp_19_2_no_ssc_rx_ln_regs\00", align 1
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2865, i32 30 }
@___asan_gen_.942 = private unnamed_addr constant [27 x i8] c"sl_dp_25_no_ssc_rx_ln_regs\00", align 1
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2936, i32 30 }
@___asan_gen_.945 = private unnamed_addr constant [28 x i8] c"sl_dp_100_no_ssc_rx_ln_regs\00", align 1
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 2974, i32 30 }
@___asan_gen_.948 = private unnamed_addr constant [31 x i8] c"pcie_100_ext_no_ssc_rx_ln_regs\00", align 1
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3717, i32 30 }
@___asan_gen_.951 = private unnamed_addr constant [28 x i8] c"sgmii_100_no_ssc_rx_ln_regs\00", align 1
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3350, i32 30 }
@___asan_gen_.954 = private unnamed_addr constant [29 x i8] c"qsgmii_100_no_ssc_rx_ln_regs\00", align 1
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3483, i32 30 }
@___asan_gen_.957 = private unnamed_addr constant [26 x i8] c"usb_100_no_ssc_rx_ln_regs\00", align 1
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3194, i32 30 }
@___asan_gen_.960 = private unnamed_addr constant [31 x i8] c"ti_sgmii_100_no_ssc_tx_ln_vals\00", align 1
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3378, i32 33 }
@___asan_gen_.963 = private unnamed_addr constant [32 x i8] c"ti_qsgmii_100_no_ssc_tx_ln_vals\00", align 1
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3511, i32 33 }
@___asan_gen_.966 = private unnamed_addr constant [31 x i8] c"ti_sgmii_100_no_ssc_tx_ln_regs\00", align 1
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3341, i32 30 }
@___asan_gen_.969 = private unnamed_addr constant [32 x i8] c"ti_qsgmii_100_no_ssc_tx_ln_regs\00", align 1
@___asan_gen_.970 = private constant [45 x i8] c"../drivers/phy/cadence/phy-cadence-torrent.c\00", align 1
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 3473, i32 30 }
@___asan_gen_.972 = private unnamed_addr constant [36 x i8] c"switch.table.cdns_torrent_phy_probe\00", align 1
@___asan_gen_.973 = private unnamed_addr constant [40 x i8] c"switch.table.cdns_torrent_phy_probe.165\00", align 1
@___asan_gen_.974 = private unnamed_addr constant [40 x i8] c"switch.table.cdns_torrent_phy_probe.166\00", align 1
@___asan_gen_.975 = private unnamed_addr constant [40 x i8] c"switch.table.cdns_torrent_phy_probe.167\00", align 1
@llvm.compiler.used = appending global [321 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_cdns_torrent_phy_driver_exit, ptr @__initcall__kmod_phy_cadence_torrent__292_4718_cdns_torrent_phy_driver_init6, ptr @cdns_torrent_clk._entry, ptr @cdns_torrent_clk._entry.126, ptr @cdns_torrent_clk._entry.129, ptr @cdns_torrent_clk._entry.132, ptr @cdns_torrent_clk._entry_ptr, ptr @cdns_torrent_clk._entry_ptr.128, ptr @cdns_torrent_clk._entry_ptr.131, ptr @cdns_torrent_clk._entry_ptr.134, ptr @cdns_torrent_clk_register._entry, ptr @cdns_torrent_clk_register._entry.101, ptr @cdns_torrent_clk_register._entry.95, ptr @cdns_torrent_clk_register._entry.98, ptr @cdns_torrent_clk_register._entry_ptr, ptr @cdns_torrent_clk_register._entry_ptr.100, ptr @cdns_torrent_clk_register._entry_ptr.103, ptr @cdns_torrent_clk_register._entry_ptr.97, ptr @cdns_torrent_derived_refclk_register._entry, ptr @cdns_torrent_derived_refclk_register._entry_ptr, ptr @cdns_torrent_dp_configure._entry, ptr @cdns_torrent_dp_configure._entry.148, ptr @cdns_torrent_dp_configure._entry.151, ptr @cdns_torrent_dp_configure._entry_ptr, ptr @cdns_torrent_dp_configure._entry_ptr.150, ptr @cdns_torrent_dp_configure._entry_ptr.153, ptr @cdns_torrent_dp_init._entry, ptr @cdns_torrent_dp_init._entry_ptr, ptr @cdns_torrent_dp_regfield_init._entry, ptr @cdns_torrent_dp_regfield_init._entry_ptr, ptr @cdns_torrent_dp_regmap_init._entry, ptr @cdns_torrent_dp_regmap_init._entry_ptr, ptr @cdns_torrent_dp_run._entry, ptr @cdns_torrent_dp_run._entry_ptr, ptr @cdns_torrent_dp_wait_pma_cmn_ready._entry, ptr @cdns_torrent_dp_wait_pma_cmn_ready._entry_ptr, ptr @cdns_torrent_phy_driver_exit, ptr @cdns_torrent_phy_on._entry, ptr @cdns_torrent_phy_on._entry.143, ptr @cdns_torrent_phy_on._entry_ptr, ptr @cdns_torrent_phy_on._entry_ptr.145, ptr @cdns_torrent_phy_probe._entry, ptr @cdns_torrent_phy_probe._entry.11, ptr @cdns_torrent_phy_probe._entry.15, ptr @cdns_torrent_phy_probe._entry.18, ptr @cdns_torrent_phy_probe._entry.22, ptr @cdns_torrent_phy_probe._entry.26, ptr @cdns_torrent_phy_probe._entry.30, ptr @cdns_torrent_phy_probe._entry.35, ptr @cdns_torrent_phy_probe._entry.7, ptr @cdns_torrent_phy_probe._entry_ptr, ptr @cdns_torrent_phy_probe._entry_ptr.13, ptr @cdns_torrent_phy_probe._entry_ptr.17, ptr @cdns_torrent_phy_probe._entry_ptr.20, ptr @cdns_torrent_phy_probe._entry_ptr.24, ptr @cdns_torrent_phy_probe._entry_ptr.28, ptr @cdns_torrent_phy_probe._entry_ptr.32, ptr @cdns_torrent_phy_probe._entry_ptr.37, ptr @cdns_torrent_phy_probe._entry_ptr.9, ptr @cdns_torrent_received_refclk_register._entry, ptr @cdns_torrent_received_refclk_register._entry_ptr, ptr @cdns_torrent_refclk_driver_register._entry, ptr @cdns_torrent_refclk_driver_register._entry.115, ptr @cdns_torrent_refclk_driver_register._entry_ptr, ptr @cdns_torrent_refclk_driver_register._entry_ptr.117, ptr @cdns_torrent_regfield_init._entry, ptr @cdns_torrent_regfield_init._entry.75, ptr @cdns_torrent_regfield_init._entry.78, ptr @cdns_torrent_regfield_init._entry.81, ptr @cdns_torrent_regfield_init._entry.84, ptr @cdns_torrent_regfield_init._entry.87, ptr @cdns_torrent_regfield_init._entry.90, ptr @cdns_torrent_regfield_init._entry_ptr, ptr @cdns_torrent_regfield_init._entry_ptr.77, ptr @cdns_torrent_regfield_init._entry_ptr.80, ptr @cdns_torrent_regfield_init._entry_ptr.83, ptr @cdns_torrent_regfield_init._entry_ptr.86, ptr @cdns_torrent_regfield_init._entry_ptr.89, ptr @cdns_torrent_regfield_init._entry_ptr.92, ptr @cdns_torrent_regmap_init._entry, ptr @cdns_torrent_regmap_init._entry.42, ptr @cdns_torrent_regmap_init._entry.45, ptr @cdns_torrent_regmap_init._entry.48, ptr @cdns_torrent_regmap_init._entry.51, ptr @cdns_torrent_regmap_init._entry.54, ptr @cdns_torrent_regmap_init._entry_ptr, ptr @cdns_torrent_regmap_init._entry_ptr.44, ptr @cdns_torrent_regmap_init._entry_ptr.47, ptr @cdns_torrent_regmap_init._entry_ptr.50, ptr @cdns_torrent_regmap_init._entry_ptr.53, ptr @cdns_torrent_regmap_init._entry_ptr.56, ptr @cdns_torrent_reset._entry, ptr @cdns_torrent_reset._entry.120, ptr @cdns_torrent_reset._entry_ptr, ptr @cdns_torrent_reset._entry_ptr.122, ptr @cdns_torrent_phy_driver, ptr @.str, ptr @cdns_torrent_phy_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @cdns_torrent_phy_ops, ptr @noop_ops, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @cdns_torrent_tx_lane_cdb_config, ptr @.str.40, ptr @.str.41, ptr @cdns_torrent_rx_lane_cdb_config, ptr @.str.43, ptr @cdns_torrent_phy_pcs_lane_cdb_config, ptr @.str.46, ptr @cdns_torrent_common_cdb_config, ptr @.str.49, ptr @cdns_torrent_phy_pcs_cmn_cdb_config, ptr @.str.52, ptr @cdns_torrent_phy_pma_cmn_cdb_config, ptr @.str.55, ptr @cdns_regmap_init._key, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @cdns_torrent_derived_refclk_ops, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @cdns_torrent_received_refclk_ops, ptr @.str.113, ptr @.str.114, ptr @cdns_torrent_refclk_driver_ops, ptr @.str.116, ptr @cdns_torrent_refclk_driver_mux_table, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @.str.146, ptr @.str.147, ptr @.str.149, ptr @.str.152, ptr @vltg_coeff, ptr @cdns_torrent_dptx_phy_config, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @cdns_map_torrent, ptr @ti_j721e_map_torrent, ptr @sl_dp_link_cmn_vals, ptr @pcie_sgmii_link_cmn_vals, ptr @pcie_usb_link_cmn_vals, ptr @sl_sgmii_link_cmn_vals, ptr @usb_sgmii_link_cmn_vals, ptr @sl_usb_link_cmn_vals, ptr @sl_dp_xcvr_diag_ln_vals, ptr @pcie_sgmii_xcvr_diag_ln_vals, ptr @pcie_usb_xcvr_diag_ln_vals, ptr @sl_sgmii_xcvr_diag_ln_vals, ptr @sgmii_pcie_xcvr_diag_ln_vals, ptr @sgmii_usb_xcvr_diag_ln_vals, ptr @sl_usb_xcvr_diag_ln_vals, ptr @usb_pcie_xcvr_diag_ln_vals, ptr @usb_sgmii_xcvr_diag_ln_vals, ptr @usb_phy_pcs_cmn_vals, ptr @sl_dp_19_2_no_ssc_cmn_vals, ptr @sl_dp_25_no_ssc_cmn_vals, ptr @sl_dp_100_no_ssc_cmn_vals, ptr @sl_pcie_100_int_ssc_cmn_vals, ptr @pcie_100_no_ssc_cmn_vals, ptr @pcie_100_int_ssc_cmn_vals, ptr @sl_sgmii_100_no_ssc_cmn_vals, ptr @sgmii_100_no_ssc_cmn_vals, ptr @sgmii_100_int_ssc_cmn_vals, ptr @sl_qsgmii_100_no_ssc_cmn_vals, ptr @qsgmii_100_no_ssc_cmn_vals, ptr @qsgmii_100_int_ssc_cmn_vals, ptr @sl_usb_100_no_ssc_cmn_vals, ptr @sl_usb_100_int_ssc_cmn_vals, ptr @usb_100_no_ssc_cmn_vals, ptr @usb_100_int_ssc_cmn_vals, ptr @sl_dp_19_2_no_ssc_tx_ln_vals, ptr @sl_dp_25_no_ssc_tx_ln_vals, ptr @sl_dp_100_no_ssc_tx_ln_vals, ptr @sgmii_100_no_ssc_tx_ln_vals, ptr @qsgmii_100_no_ssc_tx_ln_vals, ptr @usb_100_no_ssc_tx_ln_vals, ptr @sl_dp_19_2_no_ssc_rx_ln_vals, ptr @sl_dp_25_no_ssc_rx_ln_vals, ptr @sl_dp_100_no_ssc_rx_ln_vals, ptr @pcie_100_no_ssc_rx_ln_vals, ptr @sgmii_100_no_ssc_rx_ln_vals, ptr @qsgmii_100_no_ssc_rx_ln_vals, ptr @usb_100_no_ssc_rx_ln_vals, ptr @sl_dp_link_cmn_regs, ptr @pcie_sgmii_link_cmn_regs, ptr @pcie_usb_link_cmn_regs, ptr @sl_sgmii_link_cmn_regs, ptr @usb_sgmii_link_cmn_regs, ptr @sl_usb_link_cmn_regs, ptr @sl_dp_xcvr_diag_ln_regs, ptr @pcie_sgmii_xcvr_diag_ln_regs, ptr @pcie_usb_xcvr_diag_ln_regs, ptr @sl_sgmii_xcvr_diag_ln_regs, ptr @sgmii_pcie_xcvr_diag_ln_regs, ptr @sgmii_usb_xcvr_diag_ln_regs, ptr @sl_usb_xcvr_diag_ln_regs, ptr @usb_pcie_xcvr_diag_ln_regs, ptr @usb_sgmii_xcvr_diag_ln_regs, ptr @usb_phy_pcs_cmn_regs, ptr @sl_dp_19_2_no_ssc_cmn_regs, ptr @sl_dp_25_no_ssc_cmn_regs, ptr @sl_dp_100_no_ssc_cmn_regs, ptr @sl_pcie_100_int_ssc_cmn_regs, ptr @pcie_100_ext_no_ssc_cmn_regs, ptr @pcie_100_int_ssc_cmn_regs, ptr @sl_sgmii_100_no_ssc_cmn_regs, ptr @sgmii_100_no_ssc_cmn_regs, ptr @sgmii_100_int_ssc_cmn_regs, ptr @sl_qsgmii_100_no_ssc_cmn_regs, ptr @qsgmii_100_no_ssc_cmn_regs, ptr @qsgmii_100_int_ssc_cmn_regs, ptr @sl_usb_100_no_ssc_cmn_regs, ptr @sl_usb_100_int_ssc_cmn_regs, ptr @usb_100_no_ssc_cmn_regs, ptr @usb_100_int_ssc_cmn_regs, ptr @sl_dp_19_2_no_ssc_tx_ln_regs, ptr @sl_dp_25_no_ssc_tx_ln_regs, ptr @sl_dp_100_no_ssc_tx_ln_regs, ptr @sgmii_100_no_ssc_tx_ln_regs, ptr @qsgmii_100_no_ssc_tx_ln_regs, ptr @usb_100_no_ssc_tx_ln_regs, ptr @sl_dp_19_2_no_ssc_rx_ln_regs, ptr @sl_dp_25_no_ssc_rx_ln_regs, ptr @sl_dp_100_no_ssc_rx_ln_regs, ptr @pcie_100_ext_no_ssc_rx_ln_regs, ptr @sgmii_100_no_ssc_rx_ln_regs, ptr @qsgmii_100_no_ssc_rx_ln_regs, ptr @usb_100_no_ssc_rx_ln_regs, ptr @ti_sgmii_100_no_ssc_tx_ln_vals, ptr @ti_qsgmii_100_no_ssc_tx_ln_vals, ptr @ti_sgmii_100_no_ssc_tx_ln_regs, ptr @ti_qsgmii_100_no_ssc_tx_ln_regs, ptr @switch.table.cdns_torrent_phy_probe, ptr @switch.table.cdns_torrent_phy_probe.165, ptr @switch.table.cdns_torrent_phy_probe.166, ptr @switch.table.cdns_torrent_phy_probe.167], section "llvm.metadata"
@0 = internal global [268 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_phy_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_phy_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_phy_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_phy_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_phy_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_phy_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noop_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_phy_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_phy_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_phy_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_tx_lane_cdb_config to i32), i32 688, i32 864, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_regmap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_rx_lane_cdb_config to i32), i32 688, i32 864, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_regmap_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_phy_pcs_lane_cdb_config to i32), i32 688, i32 864, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_regmap_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_common_cdb_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_regmap_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_phy_pcs_cmn_cdb_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_regmap_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_phy_pma_cmn_cdb_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_regmap_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_regmap_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_regfield_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_regfield_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_regfield_init._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_regfield_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_regfield_init._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_regfield_init._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_regfield_init._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_clk_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_clk_register._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_clk_register._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_clk_register._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_derived_refclk_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_derived_refclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_received_refclk_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_received_refclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_refclk_driver_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_refclk_driver_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_refclk_driver_register._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_refclk_driver_mux_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_reset._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_clk._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_clk._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_clk._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_dp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_dp_wait_pma_cmn_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_dp_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_phy_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_phy_on._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_dp_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_dp_configure._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_dp_configure._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vltg_coeff to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_dptx_phy_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_dp_regmap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_torrent_dp_regfield_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_map_torrent to i32), i32 5188, i32 6496, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_j721e_map_torrent to i32), i32 5188, i32 6496, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_link_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_sgmii_link_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_usb_link_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_sgmii_link_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_sgmii_link_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_usb_link_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_xcvr_diag_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_sgmii_xcvr_diag_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_usb_xcvr_diag_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_sgmii_xcvr_diag_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgmii_pcie_xcvr_diag_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgmii_usb_xcvr_diag_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_usb_xcvr_diag_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcie_xcvr_diag_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_sgmii_xcvr_diag_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_phy_pcs_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_19_2_no_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_25_no_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_100_no_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_pcie_100_int_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_100_no_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_100_int_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_sgmii_100_no_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgmii_100_no_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgmii_100_int_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_qsgmii_100_no_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qsgmii_100_no_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qsgmii_100_int_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_usb_100_no_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_usb_100_int_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_100_no_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_100_int_ssc_cmn_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_19_2_no_ssc_tx_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_25_no_ssc_tx_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_100_no_ssc_tx_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgmii_100_no_ssc_tx_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qsgmii_100_no_ssc_tx_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_100_no_ssc_tx_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_19_2_no_ssc_rx_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_25_no_ssc_rx_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_100_no_ssc_rx_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_100_no_ssc_rx_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgmii_100_no_ssc_rx_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qsgmii_100_no_ssc_rx_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_100_no_ssc_rx_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_link_cmn_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_sgmii_link_cmn_regs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_usb_link_cmn_regs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_sgmii_link_cmn_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_sgmii_link_cmn_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_usb_link_cmn_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_xcvr_diag_ln_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_sgmii_xcvr_diag_ln_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_usb_xcvr_diag_ln_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_sgmii_xcvr_diag_ln_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgmii_pcie_xcvr_diag_ln_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgmii_usb_xcvr_diag_ln_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_usb_xcvr_diag_ln_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pcie_xcvr_diag_ln_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_sgmii_xcvr_diag_ln_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_phy_pcs_cmn_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_19_2_no_ssc_cmn_regs to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_25_no_ssc_cmn_regs to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_100_no_ssc_cmn_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_pcie_100_int_ssc_cmn_regs to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_100_ext_no_ssc_cmn_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_100_int_ssc_cmn_regs to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_sgmii_100_no_ssc_cmn_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgmii_100_no_ssc_cmn_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgmii_100_int_ssc_cmn_regs to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_qsgmii_100_no_ssc_cmn_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qsgmii_100_no_ssc_cmn_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qsgmii_100_int_ssc_cmn_regs to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_usb_100_no_ssc_cmn_regs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_usb_100_int_ssc_cmn_regs to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_100_no_ssc_cmn_regs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_100_int_ssc_cmn_regs to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_19_2_no_ssc_tx_ln_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_25_no_ssc_tx_ln_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_100_no_ssc_tx_ln_regs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgmii_100_no_ssc_tx_ln_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qsgmii_100_no_ssc_tx_ln_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_100_no_ssc_tx_ln_regs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_19_2_no_ssc_rx_ln_regs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_25_no_ssc_rx_ln_regs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_dp_100_no_ssc_rx_ln_regs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_100_ext_no_ssc_rx_ln_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgmii_100_no_ssc_rx_ln_regs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qsgmii_100_no_ssc_rx_ln_regs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_100_no_ssc_rx_ln_regs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sgmii_100_no_ssc_tx_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qsgmii_100_no_ssc_tx_ln_vals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sgmii_100_no_ssc_tx_ln_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_qsgmii_100_no_ssc_tx_ln_regs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cdns_torrent_phy_probe to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cdns_torrent_phy_probe.165 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cdns_torrent_phy_probe.166 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cdns_torrent_phy_probe.167 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_torrent_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_torrent_phy_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdns_torrent_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns_torrent_phy_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_torrent_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_name.i87.i = alloca [100 x i8], align 1
  %parent_name.i51.i = alloca ptr, align 4
  %clk_name.i52.i = alloca [100 x i8], align 1
  %parent_name.i.i = alloca ptr, align 4
  %clk_name.i.i = alloca [100 x i8], align 1
  %already_configured = alloca i32, align 4
  %phy_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %already_configured) #7
  %0 = ptrtoint ptr %already_configured to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %already_configured, align 4, !annotation !552
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_type) #7
  %1 = ptrtoint ptr %phy_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %phy_type, align 4, !annotation !552
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup290_crit_edge, label %if.end

entry.cleanup290_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup290

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 252, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup290_crit_edge, label %if.end5

if.end.cleanup290_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup290

if.end5:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %dev6 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev6, align 4
  %init_data = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %init_data, align 4
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %sd_base = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %sd_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %sd_base, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call7 to i32
  br label %cleanup290

if.end13:                                         ; preds = %if.end5
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i450 = tail call ptr @of_get_next_available_child(ptr noundef %8, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i450, null
  br i1 %cmp.not5.i, label %if.end13.do.end_crit_edge, label %if.end13.for.body.i_crit_edge

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

if.end13.do.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end13.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i450, %if.end13.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_available_child(ptr noundef %8, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_available_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

of_get_available_child_count.exit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %cmp = icmp eq i32 %inc.i, 0
  br i1 %cmp, label %of_get_available_child_count.exit.do.end_crit_edge, label %if.end16

of_get_available_child_count.exit.do.end_crit_edge: ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %of_get_available_child_count.exit.do.end_crit_edge, %if.end13.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup290

if.end16:                                         ; preds = %of_get_available_child_count.exit
  %9 = ptrtoint ptr %sd_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_base, align 4
  %11 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev6, align 4
  %13 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4
  %reg_offset_shift5.i = getelementptr inbounds %struct.cdns_torrent_data, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %reg_offset_shift5.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reg_offset_shift5.i, align 1
  %conv.i = zext i8 %16 to i32
  %conv7.i = zext i8 %18 to i32
  %shl.i = shl i32 16384, %conv.i
  %shl13.i = shl i32 32768, %conv.i
  %shl29.i = shl i32 53248, %conv.i
  br label %for.body.i451

for.body.i451:                                    ; preds = %if.end42.i.for.body.i451_crit_edge, %if.end16
  %i.0214.i = phi i32 [ 0, %if.end16 ], [ %inc.i452, %if.end42.i.for.body.i451_crit_edge ]
  %shl6.i = shl i32 %i.0214.i, 9
  %shl8.i = shl i32 %shl6.i, %conv7.i
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 12, i32 noundef 3520) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i451.cdns_torrent_regmap_init.exit_crit_edge, label %cdns_regmap_init.exit.i

for.body.i451.cdns_torrent_regmap_init.exit_crit_edge: ; preds = %for.body.i451
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_regmap_init.exit

cdns_regmap_init.exit.i:                          ; preds = %for.body.i451
  %arrayidx.i = getelementptr [4 x %struct.regmap_config], ptr @cdns_torrent_tx_lane_cdb_config, i32 0, i32 %i.0214.i
  %add.i = add i32 %shl8.i, %shl.i
  %19 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %12, ptr %call.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %add.i
  %base3.i.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %base3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i.i, ptr %base3.i.i, align 4
  %reg_offset_shift4.i.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %reg_offset_shift4.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %18, ptr %reg_offset_shift4.i.i, align 4
  %call5.i.i = tail call ptr @__devm_regmap_init(ptr noundef %12, ptr noundef null, ptr noundef nonnull %call.i.i.i, ptr noundef %arrayidx.i, ptr noundef nonnull @cdns_regmap_init._key, ptr noundef nonnull @.str.57) #7
  %cmp.i.i = icmp ugt ptr %call5.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cdns_regmap_init.exit.i.cdns_torrent_regmap_init.exit_crit_edge, label %if.end.i

cdns_regmap_init.exit.i.cdns_torrent_regmap_init.exit_crit_edge: ; preds = %cdns_regmap_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_regmap_init.exit

if.end.i:                                         ; preds = %cdns_regmap_init.exit.i
  %arrayidx11.i = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 15, i32 %i.0214.i
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i.i, ptr %arrayidx11.i, align 4
  %call.i.i147.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 12, i32 noundef 3520) #7
  %tobool.not.i148.i = icmp eq ptr %call.i.i147.i, null
  br i1 %tobool.not.i148.i, label %if.end.i.cdns_torrent_regmap_init.exit_crit_edge, label %cdns_regmap_init.exit155.i

if.end.i.cdns_torrent_regmap_init.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_regmap_init.exit

cdns_regmap_init.exit155.i:                       ; preds = %if.end.i
  %arrayidx18.i = getelementptr [4 x %struct.regmap_config], ptr @cdns_torrent_rx_lane_cdb_config, i32 0, i32 %i.0214.i
  %add17.i = add i32 %shl8.i, %shl13.i
  %23 = ptrtoint ptr %call.i.i147.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %12, ptr %call.i.i147.i, align 4
  %add.ptr.i149.i = getelementptr i8, ptr %10, i32 %add17.i
  %base3.i150.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i147.i, i32 0, i32 1
  %24 = ptrtoint ptr %base3.i150.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i149.i, ptr %base3.i150.i, align 4
  %reg_offset_shift4.i151.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i147.i, i32 0, i32 2
  %25 = ptrtoint ptr %reg_offset_shift4.i151.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %18, ptr %reg_offset_shift4.i151.i, align 4
  %call5.i152.i = tail call ptr @__devm_regmap_init(ptr noundef %12, ptr noundef null, ptr noundef nonnull %call.i.i147.i, ptr noundef %arrayidx18.i, ptr noundef nonnull @cdns_regmap_init._key, ptr noundef nonnull @.str.57) #7
  %cmp.i156.i = icmp ugt ptr %call5.i152.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156.i, label %cdns_regmap_init.exit155.i.cdns_torrent_regmap_init.exit_crit_edge, label %if.end26.i

cdns_regmap_init.exit155.i.cdns_torrent_regmap_init.exit_crit_edge: ; preds = %cdns_regmap_init.exit155.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_regmap_init.exit

if.end26.i:                                       ; preds = %cdns_regmap_init.exit155.i
  %arrayidx27.i = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 16, i32 %i.0214.i
  %26 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i152.i, ptr %arrayidx27.i, align 4
  %call.i.i157.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 12, i32 noundef 3520) #7
  %tobool.not.i158.i = icmp eq ptr %call.i.i157.i, null
  br i1 %tobool.not.i158.i, label %if.end26.i.cdns_torrent_regmap_init.exit_crit_edge, label %cdns_regmap_init.exit165.i

if.end26.i.cdns_torrent_regmap_init.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_regmap_init.exit

cdns_regmap_init.exit165.i:                       ; preds = %if.end26.i
  %arrayidx34.i = getelementptr [4 x %struct.regmap_config], ptr @cdns_torrent_phy_pcs_lane_cdb_config, i32 0, i32 %i.0214.i
  %shl30.i = shl i32 %i.0214.i, 8
  %shl32.i = shl i32 %shl30.i, %conv7.i
  %add33.i = add i32 %shl32.i, %shl29.i
  %27 = ptrtoint ptr %call.i.i157.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %12, ptr %call.i.i157.i, align 4
  %add.ptr.i159.i = getelementptr i8, ptr %10, i32 %add33.i
  %base3.i160.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i157.i, i32 0, i32 1
  %28 = ptrtoint ptr %base3.i160.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i159.i, ptr %base3.i160.i, align 4
  %reg_offset_shift4.i161.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i157.i, i32 0, i32 2
  %29 = ptrtoint ptr %reg_offset_shift4.i161.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %18, ptr %reg_offset_shift4.i161.i, align 4
  %call5.i162.i = tail call ptr @__devm_regmap_init(ptr noundef %12, ptr noundef null, ptr noundef nonnull %call.i.i157.i, ptr noundef %arrayidx34.i, ptr noundef nonnull @cdns_regmap_init._key, ptr noundef nonnull @.str.57) #7
  %cmp.i166.i = icmp ugt ptr %call5.i162.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166.i, label %cdns_regmap_init.exit165.i.cdns_torrent_regmap_init.exit_crit_edge, label %if.end42.i

cdns_regmap_init.exit165.i.cdns_torrent_regmap_init.exit_crit_edge: ; preds = %cdns_regmap_init.exit165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_regmap_init.exit

if.end42.i:                                       ; preds = %cdns_regmap_init.exit165.i
  %arrayidx43.i = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 17, i32 %i.0214.i
  %30 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call5.i162.i, ptr %arrayidx43.i, align 4
  %inc.i452 = add nuw nsw i32 %i.0214.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i452, 4
  br i1 %exitcond.not.i, label %for.end.i, label %if.end42.i.for.body.i451_crit_edge

if.end42.i.for.body.i451_crit_edge:               ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i451

for.end.i:                                        ; preds = %if.end42.i
  %call.i.i167.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 12, i32 noundef 3520) #7
  %tobool.not.i168.i = icmp eq ptr %call.i.i167.i, null
  br i1 %tobool.not.i168.i, label %for.end.i.cdns_torrent_regmap_init.exit_crit_edge, label %cdns_regmap_init.exit174.i

for.end.i.cdns_torrent_regmap_init.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_regmap_init.exit

cdns_regmap_init.exit174.i:                       ; preds = %for.end.i
  %31 = ptrtoint ptr %call.i.i167.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %12, ptr %call.i.i167.i, align 4
  %base3.i169.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i167.i, i32 0, i32 1
  %32 = ptrtoint ptr %base3.i169.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %10, ptr %base3.i169.i, align 4
  %reg_offset_shift4.i170.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i167.i, i32 0, i32 2
  %33 = ptrtoint ptr %reg_offset_shift4.i170.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %18, ptr %reg_offset_shift4.i170.i, align 4
  %call5.i171.i = tail call ptr @__devm_regmap_init(ptr noundef %12, ptr noundef null, ptr noundef nonnull %call.i.i167.i, ptr noundef nonnull @cdns_torrent_common_cdb_config, ptr noundef nonnull @cdns_regmap_init._key, ptr noundef nonnull @.str.57) #7
  %cmp.i175.i = icmp ugt ptr %call5.i171.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175.i, label %cdns_regmap_init.exit174.i.cdns_torrent_regmap_init.exit_crit_edge, label %if.end51.i

cdns_regmap_init.exit174.i.cdns_torrent_regmap_init.exit_crit_edge: ; preds = %cdns_regmap_init.exit174.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_regmap_init.exit

if.end51.i:                                       ; preds = %cdns_regmap_init.exit174.i
  %regmap_common_cdb.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 12
  %34 = ptrtoint ptr %regmap_common_cdb.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call5.i171.i, ptr %regmap_common_cdb.i, align 4
  %call.i.i176.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 12, i32 noundef 3520) #7
  %tobool.not.i177.i = icmp eq ptr %call.i.i176.i, null
  br i1 %tobool.not.i177.i, label %if.end51.i.cdns_torrent_regmap_init.exit_crit_edge, label %cdns_regmap_init.exit184.i

if.end51.i.cdns_torrent_regmap_init.exit_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_regmap_init.exit

cdns_regmap_init.exit184.i:                       ; preds = %if.end51.i
  %shl53.i = shl i32 49152, %conv.i
  %35 = ptrtoint ptr %call.i.i176.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %12, ptr %call.i.i176.i, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %10, i32 %shl53.i
  %base3.i179.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i176.i, i32 0, i32 1
  %36 = ptrtoint ptr %base3.i179.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i178.i, ptr %base3.i179.i, align 4
  %reg_offset_shift4.i180.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i176.i, i32 0, i32 2
  %37 = ptrtoint ptr %reg_offset_shift4.i180.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %18, ptr %reg_offset_shift4.i180.i, align 4
  %call5.i181.i = tail call ptr @__devm_regmap_init(ptr noundef %12, ptr noundef null, ptr noundef nonnull %call.i.i176.i, ptr noundef nonnull @cdns_torrent_phy_pcs_cmn_cdb_config, ptr noundef nonnull @cdns_regmap_init._key, ptr noundef nonnull @.str.57) #7
  %cmp.i185.i = icmp ugt ptr %call5.i181.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185.i, label %cdns_regmap_init.exit184.i.cdns_torrent_regmap_init.exit_crit_edge, label %if.end61.i

cdns_regmap_init.exit184.i.cdns_torrent_regmap_init.exit_crit_edge: ; preds = %cdns_regmap_init.exit184.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_regmap_init.exit

if.end61.i:                                       ; preds = %cdns_regmap_init.exit184.i
  %regmap_phy_pcs_common_cdb.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 13
  %38 = ptrtoint ptr %regmap_phy_pcs_common_cdb.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call5.i181.i, ptr %regmap_phy_pcs_common_cdb.i, align 4
  %call.i.i186.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 12, i32 noundef 3520) #7
  %tobool.not.i187.i = icmp eq ptr %call.i.i186.i, null
  br i1 %tobool.not.i187.i, label %if.end61.i.cdns_torrent_regmap_init.exit_crit_edge, label %cdns_regmap_init.exit194.i

if.end61.i.cdns_torrent_regmap_init.exit_crit_edge: ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_regmap_init.exit

cdns_regmap_init.exit194.i:                       ; preds = %if.end61.i
  %shl63.i = shl i32 57344, %conv.i
  %39 = ptrtoint ptr %call.i.i186.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %12, ptr %call.i.i186.i, align 4
  %add.ptr.i188.i = getelementptr i8, ptr %10, i32 %shl63.i
  %base3.i189.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i186.i, i32 0, i32 1
  %40 = ptrtoint ptr %base3.i189.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i188.i, ptr %base3.i189.i, align 4
  %reg_offset_shift4.i190.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i186.i, i32 0, i32 2
  %41 = ptrtoint ptr %reg_offset_shift4.i190.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %18, ptr %reg_offset_shift4.i190.i, align 4
  %call5.i191.i = tail call ptr @__devm_regmap_init(ptr noundef %12, ptr noundef null, ptr noundef nonnull %call.i.i186.i, ptr noundef nonnull @cdns_torrent_phy_pma_cmn_cdb_config, ptr noundef nonnull @cdns_regmap_init._key, ptr noundef nonnull @.str.57) #7
  %cmp.i195.i = icmp ugt ptr %call5.i191.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i195.i, label %cdns_regmap_init.exit194.i.cdns_torrent_regmap_init.exit_crit_edge, label %cdns_torrent_regmap_init.exit.thread

cdns_regmap_init.exit194.i.cdns_torrent_regmap_init.exit_crit_edge: ; preds = %cdns_regmap_init.exit194.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_regmap_init.exit

cdns_torrent_regmap_init.exit.thread:             ; preds = %cdns_regmap_init.exit194.i
  call void @__sanitizer_cov_trace_pc() #9
  %regmap_phy_pma_common_cdb.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 14
  %42 = ptrtoint ptr %regmap_phy_pma_common_cdb.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call5.i191.i, ptr %regmap_phy_pma_common_cdb.i, align 4
  br label %if.end20

cdns_torrent_regmap_init.exit:                    ; preds = %cdns_regmap_init.exit194.i.cdns_torrent_regmap_init.exit_crit_edge, %if.end61.i.cdns_torrent_regmap_init.exit_crit_edge, %cdns_regmap_init.exit184.i.cdns_torrent_regmap_init.exit_crit_edge, %if.end51.i.cdns_torrent_regmap_init.exit_crit_edge, %cdns_regmap_init.exit174.i.cdns_torrent_regmap_init.exit_crit_edge, %for.end.i.cdns_torrent_regmap_init.exit_crit_edge, %cdns_regmap_init.exit165.i.cdns_torrent_regmap_init.exit_crit_edge, %if.end26.i.cdns_torrent_regmap_init.exit_crit_edge, %cdns_regmap_init.exit155.i.cdns_torrent_regmap_init.exit_crit_edge, %if.end.i.cdns_torrent_regmap_init.exit_crit_edge, %cdns_regmap_init.exit.i.cdns_torrent_regmap_init.exit_crit_edge, %for.body.i451.cdns_torrent_regmap_init.exit_crit_edge
  %.str.40.sink = phi ptr [ @.str.49, %cdns_regmap_init.exit174.i.cdns_torrent_regmap_init.exit_crit_edge ], [ @.str.49, %for.end.i.cdns_torrent_regmap_init.exit_crit_edge ], [ @.str.52, %cdns_regmap_init.exit184.i.cdns_torrent_regmap_init.exit_crit_edge ], [ @.str.52, %if.end51.i.cdns_torrent_regmap_init.exit_crit_edge ], [ @.str.55, %cdns_regmap_init.exit194.i.cdns_torrent_regmap_init.exit_crit_edge ], [ @.str.55, %if.end61.i.cdns_torrent_regmap_init.exit_crit_edge ], [ @.str.40, %cdns_regmap_init.exit.i.cdns_torrent_regmap_init.exit_crit_edge ], [ @.str.40, %for.body.i451.cdns_torrent_regmap_init.exit_crit_edge ], [ @.str.43, %cdns_regmap_init.exit155.i.cdns_torrent_regmap_init.exit_crit_edge ], [ @.str.43, %if.end.i.cdns_torrent_regmap_init.exit_crit_edge ], [ @.str.46, %cdns_regmap_init.exit165.i.cdns_torrent_regmap_init.exit_crit_edge ], [ @.str.46, %if.end26.i.cdns_torrent_regmap_init.exit_crit_edge ]
  %retval.0.i453.in = phi ptr [ %call5.i171.i, %cdns_regmap_init.exit174.i.cdns_torrent_regmap_init.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.end.i.cdns_torrent_regmap_init.exit_crit_edge ], [ %call5.i181.i, %cdns_regmap_init.exit184.i.cdns_torrent_regmap_init.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end51.i.cdns_torrent_regmap_init.exit_crit_edge ], [ %call5.i191.i, %cdns_regmap_init.exit194.i.cdns_torrent_regmap_init.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end61.i.cdns_torrent_regmap_init.exit_crit_edge ], [ %call5.i.i, %cdns_regmap_init.exit.i.cdns_torrent_regmap_init.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.body.i451.cdns_torrent_regmap_init.exit_crit_edge ], [ %call5.i152.i, %cdns_regmap_init.exit155.i.cdns_torrent_regmap_init.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.cdns_torrent_regmap_init.exit_crit_edge ], [ %call5.i162.i, %cdns_regmap_init.exit165.i.cdns_torrent_regmap_init.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end26.i.cdns_torrent_regmap_init.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull %.str.40.sink) #10
  %retval.0.i453 = ptrtoint ptr %retval.0.i453.in to i32
  %tobool18.not = icmp eq ptr %retval.0.i453.in, null
  br i1 %tobool18.not, label %cdns_torrent_regmap_init.exit.if.end20_crit_edge, label %cdns_torrent_regmap_init.exit.cleanup290_crit_edge

cdns_torrent_regmap_init.exit.cleanup290_crit_edge: ; preds = %cdns_torrent_regmap_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup290

cdns_torrent_regmap_init.exit.if.end20_crit_edge: ; preds = %cdns_torrent_regmap_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end20:                                         ; preds = %cdns_torrent_regmap_init.exit.if.end20_crit_edge, %cdns_torrent_regmap_init.exit.thread
  %43 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev6, align 4
  %regmap_phy_pcs_common_cdb.i454 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 13
  %45 = ptrtoint ptr %regmap_phy_pcs_common_cdb.i454 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap_phy_pcs_common_cdb.i454, align 4
  %call.i455 = tail call ptr @devm_regmap_field_alloc(ptr noundef %44, ptr noundef %46, [5 x i32] [i32 14, i32 0, i32 1, i32 0, i32 0]) #7
  %cmp.i.i456 = icmp ugt ptr %call.i455, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i456, label %do.end.i457, label %if.end.i458

do.end.i457:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.73) #10
  br label %cdns_torrent_regfield_init.exit

if.end.i458:                                      ; preds = %if.end20
  %phy_pll_cfg.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 19
  %47 = ptrtoint ptr %phy_pll_cfg.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i455, ptr %phy_pll_cfg.i, align 4
  %48 = ptrtoint ptr %regmap_phy_pcs_common_cdb.i454 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap_phy_pcs_common_cdb.i454, align 4
  %call5.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %44, ptr noundef %49, [5 x i32] zeroinitializer) #7
  %cmp.i136.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136.i, label %do.end10.i, label %if.end12.i

do.end10.i:                                       ; preds = %if.end.i458
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.76) #10
  br label %cdns_torrent_regfield_init.exit

if.end12.i:                                       ; preds = %if.end.i458
  %phy_pipe_cmn_ctrl1_0.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 20
  %50 = ptrtoint ptr %phy_pipe_cmn_ctrl1_0.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call5.i, ptr %phy_pipe_cmn_ctrl1_0.i, align 4
  %regmap_common_cdb.i459 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 12
  %51 = ptrtoint ptr %regmap_common_cdb.i459 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap_common_cdb.i459, align 4
  %call13.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %44, ptr noundef %52, [5 x i32] [i32 76, i32 4, i32 4, i32 0, i32 0]) #7
  %cmp.i137.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i137.i, label %do.end18.i, label %if.end20.i

do.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.79) #10
  br label %cdns_torrent_regfield_init.exit

if.end20.i:                                       ; preds = %if.end12.i
  %cmn_cdiag_refclk_ovrd_4.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 21
  %53 = ptrtoint ptr %cmn_cdiag_refclk_ovrd_4.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call13.i, ptr %cmn_cdiag_refclk_ovrd_4.i, align 4
  %regmap_phy_pma_common_cdb.i460 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 14
  %54 = ptrtoint ptr %regmap_phy_pma_common_cdb.i460 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap_phy_pma_common_cdb.i460, align 4
  %call21.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %44, ptr noundef %55, [5 x i32] zeroinitializer) #7
  %cmp.i138.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138.i, label %do.end26.i, label %if.end28.i

do.end26.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.82) #10
  br label %cdns_torrent_regfield_init.exit

if.end28.i:                                       ; preds = %if.end20.i
  %phy_pma_cmn_ctrl_1.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 22
  %56 = ptrtoint ptr %phy_pma_cmn_ctrl_1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call21.i, ptr %phy_pma_cmn_ctrl_1.i, align 4
  %57 = ptrtoint ptr %regmap_phy_pma_common_cdb.i460 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap_phy_pma_common_cdb.i460, align 4
  %call30.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %44, ptr noundef %58, [5 x i32] [i32 1, i32 0, i32 7, i32 0, i32 0]) #7
  %cmp.i139.i = icmp ugt ptr %call30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139.i, label %do.end35.i, label %if.end37.i

do.end35.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.85) #10
  br label %cdns_torrent_regfield_init.exit

if.end37.i:                                       ; preds = %if.end28.i
  %phy_pma_cmn_ctrl_2.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 23
  %59 = ptrtoint ptr %phy_pma_cmn_ctrl_2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call30.i, ptr %phy_pma_cmn_ctrl_2.i, align 4
  %60 = ptrtoint ptr %regmap_phy_pma_common_cdb.i460 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap_phy_pma_common_cdb.i460, align 4
  %call39.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %44, ptr noundef %61, [5 x i32] [i32 3, i32 0, i32 1, i32 0, i32 0]) #7
  %cmp.i140.i = icmp ugt ptr %call39.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140.i, label %do.end44.i, label %if.end46.i

do.end44.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.88) #10
  br label %cdns_torrent_regfield_init.exit

if.end46.i:                                       ; preds = %if.end37.i
  %phy_pma_pll_raw_ctrl.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 24
  %62 = ptrtoint ptr %phy_pma_pll_raw_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call39.i, ptr %phy_pma_pll_raw_ctrl.i, align 4
  %arrayidx.i461 = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 17, i32 0
  %63 = ptrtoint ptr %arrayidx.i461 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i461, align 4
  %call47.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %44, ptr noundef %64, [5 x i32] [i32 11, i32 1, i32 1, i32 0, i32 0]) #7
  %cmp.i141.i = icmp ugt ptr %call47.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141.i, label %if.end46.i.do.end52.i_crit_edge, label %if.end54.i

if.end46.i.do.end52.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52.i

do.end52.i:                                       ; preds = %if.end54.2.i.do.end52.i_crit_edge, %if.end54.1.i.do.end52.i_crit_edge, %if.end54.i.do.end52.i_crit_edge, %if.end46.i.do.end52.i_crit_edge
  %i.0143.lcssa.i = phi i32 [ 0, %if.end46.i.do.end52.i_crit_edge ], [ 1, %if.end54.i.do.end52.i_crit_edge ], [ 2, %if.end54.1.i.do.end52.i_crit_edge ], [ 3, %if.end54.2.i.do.end52.i_crit_edge ]
  %call47.lcssa.i = phi ptr [ %call47.i, %if.end46.i.do.end52.i_crit_edge ], [ %call47.1.i, %if.end54.i.do.end52.i_crit_edge ], [ %call47.2.i, %if.end54.1.i.do.end52.i_crit_edge ], [ %call47.3.i, %if.end54.2.i.do.end52.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.91, i32 noundef %i.0143.lcssa.i) #10
  br label %cdns_torrent_regfield_init.exit

if.end54.i:                                       ; preds = %if.end46.i
  %arrayidx55.i = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 26, i32 0
  %65 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call47.i, ptr %arrayidx55.i, align 4
  %arrayidx.1.i = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 17, i32 1
  %66 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.1.i, align 4
  %call47.1.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %44, ptr noundef %67, [5 x i32] [i32 11, i32 1, i32 1, i32 0, i32 0]) #7
  %cmp.i141.1.i = icmp ugt ptr %call47.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141.1.i, label %if.end54.i.do.end52.i_crit_edge, label %if.end54.1.i

if.end54.i.do.end52.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52.i

if.end54.1.i:                                     ; preds = %if.end54.i
  %arrayidx55.1.i = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 26, i32 1
  %68 = ptrtoint ptr %arrayidx55.1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call47.1.i, ptr %arrayidx55.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 17, i32 2
  %69 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.2.i, align 4
  %call47.2.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %44, ptr noundef %70, [5 x i32] [i32 11, i32 1, i32 1, i32 0, i32 0]) #7
  %cmp.i141.2.i = icmp ugt ptr %call47.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141.2.i, label %if.end54.1.i.do.end52.i_crit_edge, label %if.end54.2.i

if.end54.1.i.do.end52.i_crit_edge:                ; preds = %if.end54.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52.i

if.end54.2.i:                                     ; preds = %if.end54.1.i
  %arrayidx55.2.i = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 26, i32 2
  %71 = ptrtoint ptr %arrayidx55.2.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call47.2.i, ptr %arrayidx55.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 17, i32 3
  %72 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.3.i, align 4
  %call47.3.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %44, ptr noundef %73, [5 x i32] [i32 11, i32 1, i32 1, i32 0, i32 0]) #7
  %cmp.i141.3.i = icmp ugt ptr %call47.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141.3.i, label %if.end54.2.i.do.end52.i_crit_edge, label %cdns_torrent_regfield_init.exit.thread

if.end54.2.i.do.end52.i_crit_edge:                ; preds = %if.end54.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52.i

cdns_torrent_regfield_init.exit.thread:           ; preds = %if.end54.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx55.3.i = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 26, i32 3
  %74 = ptrtoint ptr %arrayidx55.3.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call47.3.i, ptr %arrayidx55.3.i, align 4
  br label %if.end24

cdns_torrent_regfield_init.exit:                  ; preds = %do.end52.i, %do.end44.i, %do.end35.i, %do.end26.i, %do.end18.i, %do.end10.i, %do.end.i457
  %retval.0.i462.in = phi ptr [ %call.i455, %do.end.i457 ], [ %call5.i, %do.end10.i ], [ %call13.i, %do.end18.i ], [ %call21.i, %do.end26.i ], [ %call30.i, %do.end35.i ], [ %call39.i, %do.end44.i ], [ %call47.lcssa.i, %do.end52.i ]
  %retval.0.i462 = ptrtoint ptr %retval.0.i462.in to i32
  %tobool22.not = icmp eq ptr %retval.0.i462.in, null
  br i1 %tobool22.not, label %cdns_torrent_regfield_init.exit.if.end24_crit_edge, label %cdns_torrent_regfield_init.exit.cleanup290_crit_edge

cdns_torrent_regfield_init.exit.cleanup290_crit_edge: ; preds = %cdns_torrent_regfield_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup290

cdns_torrent_regfield_init.exit.if.end24_crit_edge: ; preds = %cdns_torrent_regfield_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end24:                                         ; preds = %cdns_torrent_regfield_init.exit.if.end24_crit_edge, %cdns_torrent_regfield_init.exit.thread
  %75 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev6, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %76, i32 0, i32 27
  %77 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %76, i32 noundef 16, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end24.cleanup290_crit_edge, label %if.end.i466

if.end24.cleanup290_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup290

if.end.i466:                                      ; preds = %if.end24
  %79 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 3, ptr %call.i.i, align 4
  %clk_hw_data.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 27
  %80 = ptrtoint ptr %clk_hw_data.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i.i, ptr %clk_hw_data.i, align 4
  %81 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.i.i) #7
  %83 = ptrtoint ptr %parent_name.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_name.i.i, align 4, !annotation !552
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %clk_name.i.i) #7
  %84 = call ptr @memset(ptr %clk_name.i.i, i32 255, i32 100)
  %call.i.i.i464 = tail call noalias ptr @devm_kmalloc(ptr noundef %82, i32 noundef 48, i32 noundef 3520) #7
  %tobool.not.i.i465 = icmp eq ptr %call.i.i.i464, null
  br i1 %tobool.not.i.i465, label %if.end.i466.cdns_torrent_derived_refclk_register.exit.thread.i_crit_edge, label %if.end.i.i

if.end.i466.cdns_torrent_derived_refclk_register.exit.thread.i_crit_edge: ; preds = %if.end.i466
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_derived_refclk_register.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i466
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %82, i32 0, i32 3
  %85 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.i.dev_name.exit.i.i_crit_edge

if.end.i.i.dev_name.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %82, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.end.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %88, %if.end.i.i.i ], [ %86, %if.end.i.i.dev_name.exit.i.i_crit_edge ]
  %call3.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i.i, i32 noundef 100, ptr noundef nonnull @.str.104, ptr noundef %retval.0.i.i.i, ptr noundef nonnull @.str.109) #7
  %call4.i.i = tail call ptr @devm_clk_get_optional(ptr noundef %82, ptr noundef nonnull @.str.105) #7
  %cmp.i.i.i = icmp ugt ptr %call4.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %cdns_torrent_derived_refclk_register.exit.i, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %dev_name.exit.i.i
  %clk_data.i.i = getelementptr inbounds %struct.cdns_torrent_derived_refclk, ptr %call.i.i.i464, i32 0, i32 3
  %tobool9.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool9.not.i.i, label %if.end8.i.i.if.end12.i.i_crit_edge, label %if.then10.i.i

if.end8.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = tail call ptr @__clk_get_name(ptr noundef nonnull %call4.i.i) #7
  %89 = ptrtoint ptr %parent_name.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call11.i.i, ptr %parent_name.i.i, align 4
  %parent_names.i.i = getelementptr inbounds %struct.cdns_torrent_derived_refclk, ptr %call.i.i.i464, i32 0, i32 3, i32 2
  %90 = ptrtoint ptr %parent_names.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %parent_name.i.i, ptr %parent_names.i.i, align 4
  %num_parents.i.i = getelementptr inbounds %struct.cdns_torrent_derived_refclk, ptr %call.i.i.i464, i32 0, i32 3, i32 5
  %91 = ptrtoint ptr %num_parents.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %num_parents.i.i, align 4
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then10.i.i, %if.end8.i.i.if.end12.i.i_crit_edge
  %ops.i.i = getelementptr inbounds %struct.cdns_torrent_derived_refclk, ptr %call.i.i.i464, i32 0, i32 3, i32 1
  %92 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @cdns_torrent_derived_refclk_ops, ptr %ops.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.cdns_torrent_derived_refclk, ptr %call.i.i.i464, i32 0, i32 3, i32 6
  %93 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %flags.i.i, align 4
  %94 = ptrtoint ptr %clk_data.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %clk_name.i.i, ptr %clk_data.i.i, align 4
  %phy_pipe_cmn_ctrl1_0.i.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 20
  %95 = ptrtoint ptr %phy_pipe_cmn_ctrl1_0.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %phy_pipe_cmn_ctrl1_0.i.i, align 4
  %phy_pipe_cmn_ctrl1_014.i.i = getelementptr inbounds %struct.cdns_torrent_derived_refclk, ptr %call.i.i.i464, i32 0, i32 1
  %97 = ptrtoint ptr %phy_pipe_cmn_ctrl1_014.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %phy_pipe_cmn_ctrl1_014.i.i, align 4
  %cmn_cdiag_refclk_ovrd_4.i.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 21
  %98 = ptrtoint ptr %cmn_cdiag_refclk_ovrd_4.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cmn_cdiag_refclk_ovrd_4.i.i, align 4
  %cmn_cdiag_refclk_ovrd_415.i.i = getelementptr inbounds %struct.cdns_torrent_derived_refclk, ptr %call.i.i.i464, i32 0, i32 2
  %100 = ptrtoint ptr %cmn_cdiag_refclk_ovrd_415.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %cmn_cdiag_refclk_ovrd_415.i.i, align 4
  %init17.i.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i.i464, i32 0, i32 2
  %101 = ptrtoint ptr %init17.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %clk_data.i.i, ptr %init17.i.i, align 4
  %call19.i.i = call i32 @devm_clk_hw_register(ptr noundef %82, ptr noundef nonnull %call.i.i.i464) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %cdns_torrent_derived_refclk_register.exit.thread107.i, label %if.end12.i.i.cdns_torrent_derived_refclk_register.exit.thread.i_crit_edge

if.end12.i.i.cdns_torrent_derived_refclk_register.exit.thread.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_derived_refclk_register.exit.thread.i

cdns_torrent_derived_refclk_register.exit.thread107.i: ; preds = %if.end12.i.i
  %102 = ptrtoint ptr %clk_hw_data.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %clk_hw_data.i, align 4
  %arrayidx.i.i = getelementptr %struct.clk_hw_onecell_data, ptr %103, i32 2
  %104 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i.i.i464, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i.i) #7
  %105 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.i51.i) #7
  %107 = ptrtoint ptr %parent_name.i51.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_name.i51.i, align 4, !annotation !552
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %clk_name.i52.i) #7
  %108 = call ptr @memset(ptr %clk_name.i52.i, i32 255, i32 100)
  %call.i.i54.i = call noalias ptr @devm_kmalloc(ptr noundef %106, i32 noundef 48, i32 noundef 3520) #7
  %tobool.not.i55.i = icmp eq ptr %call.i.i54.i, null
  br i1 %tobool.not.i55.i, label %cdns_torrent_derived_refclk_register.exit.thread107.i.cdns_torrent_received_refclk_register.exit.thread.i_crit_edge, label %if.end.i58.i

cdns_torrent_derived_refclk_register.exit.thread107.i.cdns_torrent_received_refclk_register.exit.thread.i_crit_edge: ; preds = %cdns_torrent_derived_refclk_register.exit.thread107.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_received_refclk_register.exit.thread.i

cdns_torrent_derived_refclk_register.exit.thread.i: ; preds = %if.end12.i.i.cdns_torrent_derived_refclk_register.exit.thread.i_crit_edge, %if.end.i466.cdns_torrent_derived_refclk_register.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call19.i.i, %if.end12.i.i.cdns_torrent_derived_refclk_register.exit.thread.i_crit_edge ], [ -12, %if.end.i466.cdns_torrent_derived_refclk_register.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i.i) #7
  br label %cdns_torrent_clk_register.exit

cdns_torrent_derived_refclk_register.exit.i:      ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.106) #10
  %109 = ptrtoint ptr %call4.i.i to i32
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i.i) #7
  br label %cdns_torrent_clk_register.exit

if.end.i58.i:                                     ; preds = %cdns_torrent_derived_refclk_register.exit.thread107.i
  %init_name.i.i56.i = getelementptr inbounds %struct.device, ptr %106, i32 0, i32 3
  %110 = ptrtoint ptr %init_name.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %init_name.i.i56.i, align 8
  %tobool.not.i.i57.i = icmp eq ptr %111, null
  br i1 %tobool.not.i.i57.i, label %if.end.i.i59.i, label %if.end.i58.i.dev_name.exit.i64.i_crit_edge

if.end.i58.i.dev_name.exit.i64.i_crit_edge:       ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i64.i

if.end.i.i59.i:                                   ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %106, align 4
  br label %dev_name.exit.i64.i

dev_name.exit.i64.i:                              ; preds = %if.end.i.i59.i, %if.end.i58.i.dev_name.exit.i64.i_crit_edge
  %retval.0.i.i60.i = phi ptr [ %113, %if.end.i.i59.i ], [ %111, %if.end.i58.i.dev_name.exit.i64.i_crit_edge ]
  %call3.i61.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i52.i, i32 noundef 100, ptr noundef nonnull @.str.104, ptr noundef %retval.0.i.i60.i, ptr noundef nonnull @.str.110) #7
  %call4.i62.i = call ptr @devm_clk_get_optional(ptr noundef %106, ptr noundef nonnull @.str.105) #7
  %cmp.i.i63.i = icmp ugt ptr %call4.i62.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i63.i, label %cdns_torrent_received_refclk_register.exit.i, label %if.end8.i68.i

if.end8.i68.i:                                    ; preds = %dev_name.exit.i64.i
  %clk_data.i66.i = getelementptr inbounds %struct.cdns_torrent_received_refclk, ptr %call.i.i54.i, i32 0, i32 3
  %tobool9.not.i67.i = icmp eq ptr %call4.i62.i, null
  br i1 %tobool9.not.i67.i, label %if.end8.i68.i.if.end12.i82.i_crit_edge, label %if.then10.i72.i

if.end8.i68.i.if.end12.i82.i_crit_edge:           ; preds = %if.end8.i68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i82.i

if.then10.i72.i:                                  ; preds = %if.end8.i68.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i69.i = call ptr @__clk_get_name(ptr noundef nonnull %call4.i62.i) #7
  %114 = ptrtoint ptr %parent_name.i51.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call11.i69.i, ptr %parent_name.i51.i, align 4
  %parent_names.i70.i = getelementptr inbounds %struct.cdns_torrent_received_refclk, ptr %call.i.i54.i, i32 0, i32 3, i32 2
  %115 = ptrtoint ptr %parent_names.i70.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %parent_name.i51.i, ptr %parent_names.i70.i, align 4
  %num_parents.i71.i = getelementptr inbounds %struct.cdns_torrent_received_refclk, ptr %call.i.i54.i, i32 0, i32 3, i32 5
  %116 = ptrtoint ptr %num_parents.i71.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %num_parents.i71.i, align 4
  br label %if.end12.i82.i

if.end12.i82.i:                                   ; preds = %if.then10.i72.i, %if.end8.i68.i.if.end12.i82.i_crit_edge
  %ops.i73.i = getelementptr inbounds %struct.cdns_torrent_received_refclk, ptr %call.i.i54.i, i32 0, i32 3, i32 1
  %117 = ptrtoint ptr %ops.i73.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @cdns_torrent_received_refclk_ops, ptr %ops.i73.i, align 4
  %flags.i74.i = getelementptr inbounds %struct.cdns_torrent_received_refclk, ptr %call.i.i54.i, i32 0, i32 3, i32 6
  %118 = ptrtoint ptr %flags.i74.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %flags.i74.i, align 4
  %119 = ptrtoint ptr %clk_data.i66.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %clk_name.i52.i, ptr %clk_data.i66.i, align 4
  %120 = ptrtoint ptr %phy_pipe_cmn_ctrl1_0.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %phy_pipe_cmn_ctrl1_0.i.i, align 4
  %phy_pipe_cmn_ctrl1_014.i76.i = getelementptr inbounds %struct.cdns_torrent_received_refclk, ptr %call.i.i54.i, i32 0, i32 1
  %122 = ptrtoint ptr %phy_pipe_cmn_ctrl1_014.i76.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %121, ptr %phy_pipe_cmn_ctrl1_014.i76.i, align 4
  %123 = ptrtoint ptr %cmn_cdiag_refclk_ovrd_4.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cmn_cdiag_refclk_ovrd_4.i.i, align 4
  %cmn_cdiag_refclk_ovrd_415.i78.i = getelementptr inbounds %struct.cdns_torrent_received_refclk, ptr %call.i.i54.i, i32 0, i32 2
  %125 = ptrtoint ptr %cmn_cdiag_refclk_ovrd_415.i78.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %124, ptr %cmn_cdiag_refclk_ovrd_415.i78.i, align 4
  %init17.i79.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i54.i, i32 0, i32 2
  %126 = ptrtoint ptr %init17.i79.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %clk_data.i66.i, ptr %init17.i79.i, align 4
  %call19.i80.i = call i32 @devm_clk_hw_register(ptr noundef %106, ptr noundef nonnull %call.i.i54.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i80.i)
  %tobool20.not.i81.i = icmp eq i32 %call19.i80.i, 0
  br i1 %tobool20.not.i81.i, label %cdns_torrent_received_refclk_register.exit.thread113.i, label %if.end12.i82.i.cdns_torrent_received_refclk_register.exit.thread.i_crit_edge

if.end12.i82.i.cdns_torrent_received_refclk_register.exit.thread.i_crit_edge: ; preds = %if.end12.i82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_received_refclk_register.exit.thread.i

cdns_torrent_received_refclk_register.exit.thread113.i: ; preds = %if.end12.i82.i
  %127 = ptrtoint ptr %clk_hw_data.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %clk_hw_data.i, align 4
  %arrayidx.i84.i = getelementptr %struct.clk_hw_onecell_data, ptr %128, i32 3
  %129 = ptrtoint ptr %arrayidx.i84.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call.i.i54.i, ptr %arrayidx.i84.i, align 4
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i52.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i51.i) #7
  %130 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev6, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %clk_name.i87.i) #7
  %132 = call ptr @memset(ptr %clk_name.i87.i, i32 255, i32 100)
  %call.i.i89.i = call noalias ptr @devm_kmalloc(ptr noundef %131, i32 noundef 56, i32 noundef 3520) #7
  %tobool.not.i90.i = icmp eq ptr %call.i.i89.i, null
  br i1 %tobool.not.i90.i, label %cdns_torrent_received_refclk_register.exit.thread113.i.cdns_torrent_refclk_driver_register.exit.thread.i_crit_edge, label %if.end.i91.i

cdns_torrent_received_refclk_register.exit.thread113.i.cdns_torrent_refclk_driver_register.exit.thread.i_crit_edge: ; preds = %cdns_torrent_received_refclk_register.exit.thread113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_refclk_driver_register.exit.thread.i

cdns_torrent_received_refclk_register.exit.thread.i: ; preds = %if.end12.i82.i.cdns_torrent_received_refclk_register.exit.thread.i_crit_edge, %cdns_torrent_derived_refclk_register.exit.thread107.i.cdns_torrent_received_refclk_register.exit.thread.i_crit_edge
  %retval.0.i86.ph.i = phi i32 [ %call19.i80.i, %if.end12.i82.i.cdns_torrent_received_refclk_register.exit.thread.i_crit_edge ], [ -12, %cdns_torrent_derived_refclk_register.exit.thread107.i.cdns_torrent_received_refclk_register.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i52.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i51.i) #7
  br label %cdns_torrent_clk_register.exit

cdns_torrent_received_refclk_register.exit.i:     ; preds = %dev_name.exit.i64.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.111) #10
  %133 = ptrtoint ptr %call4.i62.i to i32
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i52.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i51.i) #7
  br label %cdns_torrent_clk_register.exit

if.end.i91.i:                                     ; preds = %cdns_torrent_received_refclk_register.exit.thread113.i
  %call.i105.i.i = call noalias ptr @devm_kmalloc(ptr noundef %131, i32 noundef 8, i32 noundef 3520) #7
  %tobool3.not.i.i = icmp eq ptr %call.i105.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i91.i.cdns_torrent_refclk_driver_register.exit.thread.i_crit_edge, label %for.cond.preheader.i.i

if.end.i91.i.cdns_torrent_refclk_driver_register.exit.thread.i_crit_edge: ; preds = %if.end.i91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_refclk_driver_register.exit.thread.i

for.cond.preheader.i.i:                           ; preds = %if.end.i91.i
  %134 = ptrtoint ptr %clk_hw_data.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %clk_hw_data.i, align 4
  %arrayidx6.i.i = getelementptr %struct.clk_hw_onecell_data, ptr %135, i32 0, i32 1, i32 1
  %136 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx6.i.i, align 4
  %tobool.not.i.i93.i = icmp eq ptr %137, null
  %cmp.i.i94.i = icmp ugt ptr %137, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i93.i, %cmp.i.i94.i
  br i1 %spec.select.i.i.i, label %for.cond.preheader.i.i.do.end.i95.i_crit_edge, label %if.end11.i.i

for.cond.preheader.i.i.do.end.i95.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i95.i

do.end.i95.i:                                     ; preds = %if.end11.i.i.do.end.i95.i_crit_edge, %for.cond.preheader.i.i.do.end.i95.i_crit_edge
  %.lcssa.i.i = phi ptr [ %137, %for.cond.preheader.i.i.do.end.i95.i_crit_edge ], [ %142, %if.end11.i.i.do.end.i95.i_crit_edge ]
  %cmp.i.lcssa.i.i = phi i1 [ %cmp.i.i94.i, %for.cond.preheader.i.i.do.end.i95.i_crit_edge ], [ %cmp.i.1.i.i, %if.end11.i.i.do.end.i95.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.113) #10
  br i1 %cmp.i.lcssa.i.i, label %do.end.i95.i.cdns_torrent_refclk_driver_register.exit.i_crit_edge, label %do.end.i95.i.cdns_torrent_refclk_driver_register.exit.thread.i_crit_edge

do.end.i95.i.cdns_torrent_refclk_driver_register.exit.thread.i_crit_edge: ; preds = %do.end.i95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_refclk_driver_register.exit.thread.i

do.end.i95.i.cdns_torrent_refclk_driver_register.exit.i_crit_edge: ; preds = %do.end.i95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_refclk_driver_register.exit.i

if.end11.i.i:                                     ; preds = %for.cond.preheader.i.i
  %call12.i.i = call ptr @clk_hw_get_name(ptr noundef nonnull %137) #7
  %138 = ptrtoint ptr %call.i105.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call12.i.i, ptr %call.i105.i.i, align 4
  %139 = ptrtoint ptr %clk_hw_data.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %clk_hw_data.i, align 4
  %arrayidx6.1.i.i = getelementptr %struct.clk_hw_onecell_data, ptr %140, i32 0, i32 1, i32 2
  %141 = ptrtoint ptr %arrayidx6.1.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx6.1.i.i, align 4
  %tobool.not.i.1.i.i = icmp eq ptr %142, null
  %cmp.i.1.i.i = icmp ugt ptr %142, inttoptr (i32 -4096 to ptr)
  %spec.select.i.1.i.i = or i1 %tobool.not.i.1.i.i, %cmp.i.1.i.i
  br i1 %spec.select.i.1.i.i, label %if.end11.i.i.do.end.i95.i_crit_edge, label %if.end11.1.i.i

if.end11.i.i.do.end.i95.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i95.i

if.end11.1.i.i:                                   ; preds = %if.end11.i.i
  %call12.1.i.i = call ptr @clk_hw_get_name(ptr noundef nonnull %142) #7
  %arrayidx13.1.i.i = getelementptr ptr, ptr %call.i105.i.i, i32 1
  %143 = ptrtoint ptr %arrayidx13.1.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call12.1.i.i, ptr %arrayidx13.1.i.i, align 4
  %init_name.i.i96.i = getelementptr inbounds %struct.device, ptr %131, i32 0, i32 3
  %144 = ptrtoint ptr %init_name.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %init_name.i.i96.i, align 8
  %tobool.not.i107.i.i = icmp eq ptr %145, null
  br i1 %tobool.not.i107.i.i, label %if.end.i.i97.i, label %if.end11.1.i.i.dev_name.exit.i102.i_crit_edge

if.end11.1.i.i.dev_name.exit.i102.i_crit_edge:    ; preds = %if.end11.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i102.i

if.end.i.i97.i:                                   ; preds = %if.end11.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %131, align 4
  br label %dev_name.exit.i102.i

dev_name.exit.i102.i:                             ; preds = %if.end.i.i97.i, %if.end11.1.i.i.dev_name.exit.i102.i_crit_edge
  %retval.0.i.i98.i = phi ptr [ %147, %if.end.i.i97.i ], [ %145, %if.end11.1.i.i.dev_name.exit.i102.i_crit_edge ]
  %call15.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i87.i, i32 noundef 100, ptr noundef nonnull @.str.104, ptr noundef %retval.0.i.i98.i, ptr noundef nonnull @.str.108) #7
  %clk_data.i99.i = getelementptr inbounds %struct.cdns_torrent_refclk_driver, ptr %call.i.i89.i, i32 0, i32 2
  %ops.i100.i = getelementptr inbounds %struct.cdns_torrent_refclk_driver, ptr %call.i.i89.i, i32 0, i32 2, i32 1
  %148 = ptrtoint ptr %ops.i100.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @cdns_torrent_refclk_driver_ops, ptr %ops.i100.i, align 4
  %flags.i101.i = getelementptr inbounds %struct.cdns_torrent_refclk_driver, ptr %call.i.i89.i, i32 0, i32 2, i32 6
  %149 = ptrtoint ptr %flags.i101.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 128, ptr %flags.i101.i, align 4
  %parent_names16.i.i = getelementptr inbounds %struct.cdns_torrent_refclk_driver, ptr %call.i.i89.i, i32 0, i32 2, i32 2
  %150 = ptrtoint ptr %parent_names16.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call.i105.i.i, ptr %parent_names16.i.i, align 4
  %num_parents17.i.i = getelementptr inbounds %struct.cdns_torrent_refclk_driver, ptr %call.i.i89.i, i32 0, i32 2, i32 5
  %151 = ptrtoint ptr %num_parents17.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 2, ptr %num_parents17.i.i, align 4
  %152 = ptrtoint ptr %clk_data.i99.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %clk_name.i87.i, ptr %clk_data.i99.i, align 4
  %regmap_common_cdb.i.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 12
  %153 = ptrtoint ptr %regmap_common_cdb.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regmap_common_cdb.i.i, align 4
  %call24.i.i = call ptr @devm_regmap_field_alloc(ptr noundef %131, ptr noundef %154, [5 x i32] [i32 80, i32 1, i32 1, i32 0, i32 0]) #7
  %cmp.i108.i.i = icmp ugt ptr %call24.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108.i.i, label %dev_name.exit.i102.i.do.end29.i.i_crit_edge, label %if.end31.i.i

dev_name.exit.i102.i.do.end29.i.i_crit_edge:      ; preds = %dev_name.exit.i102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29.i.i

do.end29.i.i:                                     ; preds = %if.end31.2.i.i.do.end29.i.i_crit_edge, %if.end31.1.i.i.do.end29.i.i_crit_edge, %if.end31.i.i.do.end29.i.i_crit_edge, %dev_name.exit.i102.i.do.end29.i.i_crit_edge
  %call24.lcssa.i.i = phi ptr [ %call24.i.i, %dev_name.exit.i102.i.do.end29.i.i_crit_edge ], [ %call24.1.i.i, %if.end31.i.i.do.end29.i.i_crit_edge ], [ %call24.2.i.i, %if.end31.1.i.i.do.end29.i.i_crit_edge ], [ %call24.3.i.i, %if.end31.2.i.i.do.end29.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.116) #10
  br label %cdns_torrent_refclk_driver_register.exit.i

if.end31.i.i:                                     ; preds = %dev_name.exit.i102.i
  %arrayidx32.i.i = getelementptr %struct.cdns_torrent_refclk_driver, ptr %call.i.i89.i, i32 0, i32 1, i32 0
  %155 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call24.i.i, ptr %arrayidx32.i.i, align 4
  %call24.1.i.i = call ptr @devm_regmap_field_alloc(ptr noundef %131, ptr noundef %154, [5 x i32] [i32 80, i32 4, i32 4, i32 0, i32 0]) #7
  %cmp.i108.1.i.i = icmp ugt ptr %call24.1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108.1.i.i, label %if.end31.i.i.do.end29.i.i_crit_edge, label %if.end31.1.i.i

if.end31.i.i.do.end29.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29.i.i

if.end31.1.i.i:                                   ; preds = %if.end31.i.i
  %arrayidx32.1.i.i = getelementptr %struct.cdns_torrent_refclk_driver, ptr %call.i.i89.i, i32 0, i32 1, i32 1
  %156 = ptrtoint ptr %arrayidx32.1.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call24.1.i.i, ptr %arrayidx32.1.i.i, align 4
  %call24.2.i.i = call ptr @devm_regmap_field_alloc(ptr noundef %131, ptr noundef %154, [5 x i32] [i32 80, i32 5, i32 5, i32 0, i32 0]) #7
  %cmp.i108.2.i.i = icmp ugt ptr %call24.2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108.2.i.i, label %if.end31.1.i.i.do.end29.i.i_crit_edge, label %if.end31.2.i.i

if.end31.1.i.i.do.end29.i.i_crit_edge:            ; preds = %if.end31.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29.i.i

if.end31.2.i.i:                                   ; preds = %if.end31.1.i.i
  %arrayidx32.2.i.i = getelementptr %struct.cdns_torrent_refclk_driver, ptr %call.i.i89.i, i32 0, i32 1, i32 2
  %157 = ptrtoint ptr %arrayidx32.2.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call24.2.i.i, ptr %arrayidx32.2.i.i, align 4
  %call24.3.i.i = call ptr @devm_regmap_field_alloc(ptr noundef %131, ptr noundef %154, [5 x i32] [i32 80, i32 6, i32 6, i32 0, i32 0]) #7
  %cmp.i108.3.i.i = icmp ugt ptr %call24.3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108.3.i.i, label %if.end31.2.i.i.do.end29.i.i_crit_edge, label %if.end31.3.i.i

if.end31.2.i.i.do.end29.i.i_crit_edge:            ; preds = %if.end31.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29.i.i

if.end31.3.i.i:                                   ; preds = %if.end31.2.i.i
  %arrayidx32.3.i.i = getelementptr %struct.cdns_torrent_refclk_driver, ptr %call.i.i89.i, i32 0, i32 1, i32 3
  %158 = ptrtoint ptr %arrayidx32.3.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call24.3.i.i, ptr %arrayidx32.3.i.i, align 4
  %159 = ptrtoint ptr %arrayidx32.1.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx32.1.i.i, align 4
  %call.i109.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %160, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %init40.i.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i89.i, i32 0, i32 2
  %161 = ptrtoint ptr %init40.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %clk_data.i99.i, ptr %init40.i.i, align 4
  %call42.i.i = call i32 @devm_clk_hw_register(ptr noundef %131, ptr noundef nonnull %call.i.i89.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %tobool43.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool43.not.i.i, label %cdns_torrent_refclk_driver_register.exit.thread119.i, label %if.end31.3.i.i.cdns_torrent_refclk_driver_register.exit.thread.i_crit_edge

if.end31.3.i.i.cdns_torrent_refclk_driver_register.exit.thread.i_crit_edge: ; preds = %if.end31.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_refclk_driver_register.exit.thread.i

cdns_torrent_refclk_driver_register.exit.thread119.i: ; preds = %if.end31.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %162 = ptrtoint ptr %clk_hw_data.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %clk_hw_data.i, align 4
  %hws47.i.i = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %hws47.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call.i.i89.i, ptr %hws47.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i87.i) #7
  br label %if.end20.i469

cdns_torrent_refclk_driver_register.exit.thread.i: ; preds = %if.end31.3.i.i.cdns_torrent_refclk_driver_register.exit.thread.i_crit_edge, %do.end.i95.i.cdns_torrent_refclk_driver_register.exit.thread.i_crit_edge, %if.end.i91.i.cdns_torrent_refclk_driver_register.exit.thread.i_crit_edge, %cdns_torrent_received_refclk_register.exit.thread113.i.cdns_torrent_refclk_driver_register.exit.thread.i_crit_edge
  %retval.0.i103.ph.i = phi i32 [ -2, %do.end.i95.i.cdns_torrent_refclk_driver_register.exit.thread.i_crit_edge ], [ %call42.i.i, %if.end31.3.i.i.cdns_torrent_refclk_driver_register.exit.thread.i_crit_edge ], [ -12, %if.end.i91.i.cdns_torrent_refclk_driver_register.exit.thread.i_crit_edge ], [ -12, %cdns_torrent_received_refclk_register.exit.thread113.i.cdns_torrent_refclk_driver_register.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i87.i) #7
  br label %cdns_torrent_clk_register.exit

cdns_torrent_refclk_driver_register.exit.i:       ; preds = %do.end29.i.i, %do.end.i95.i.cdns_torrent_refclk_driver_register.exit.i_crit_edge
  %retval.0.i103.in.i = phi ptr [ %call24.lcssa.i.i, %do.end29.i.i ], [ %.lcssa.i.i, %do.end.i95.i.cdns_torrent_refclk_driver_register.exit.i_crit_edge ]
  %retval.0.i103.i = ptrtoint ptr %retval.0.i103.in.i to i32
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i87.i) #7
  %tobool15.not.i = icmp eq ptr %retval.0.i103.in.i, null
  br i1 %tobool15.not.i, label %cdns_torrent_refclk_driver_register.exit.i.if.end20.i469_crit_edge, label %cdns_torrent_refclk_driver_register.exit.i.cdns_torrent_clk_register.exit_crit_edge

cdns_torrent_refclk_driver_register.exit.i.cdns_torrent_clk_register.exit_crit_edge: ; preds = %cdns_torrent_refclk_driver_register.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_clk_register.exit

cdns_torrent_refclk_driver_register.exit.i.if.end20.i469_crit_edge: ; preds = %cdns_torrent_refclk_driver_register.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i469

if.end20.i469:                                    ; preds = %cdns_torrent_refclk_driver_register.exit.i.if.end20.i469_crit_edge, %cdns_torrent_refclk_driver_register.exit.thread119.i
  %call21.i468 = call i32 @of_clk_add_hw_provider(ptr noundef %78, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i468)
  %tobool22.not.i = icmp eq i32 %call21.i468, 0
  br i1 %tobool22.not.i, label %if.end20.i469.if.end28_crit_edge, label %do.end26.i470

if.end20.i469.if.end28_crit_edge:                 ; preds = %if.end20.i469
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.end26.i470:                                    ; preds = %if.end20.i469
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %78, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.102, ptr noundef %166) #10
  br label %cleanup290

cdns_torrent_clk_register.exit:                   ; preds = %cdns_torrent_refclk_driver_register.exit.i.cdns_torrent_clk_register.exit_crit_edge, %cdns_torrent_refclk_driver_register.exit.thread.i, %cdns_torrent_received_refclk_register.exit.i, %cdns_torrent_received_refclk_register.exit.thread.i, %cdns_torrent_derived_refclk_register.exit.i, %cdns_torrent_derived_refclk_register.exit.thread.i
  %.str.93.sink = phi ptr [ @.str.93, %cdns_torrent_derived_refclk_register.exit.i ], [ @.str.93, %cdns_torrent_derived_refclk_register.exit.thread.i ], [ @.str.96, %cdns_torrent_received_refclk_register.exit.i ], [ @.str.96, %cdns_torrent_received_refclk_register.exit.thread.i ], [ @.str.99, %cdns_torrent_refclk_driver_register.exit.i.cdns_torrent_clk_register.exit_crit_edge ], [ @.str.99, %cdns_torrent_refclk_driver_register.exit.thread.i ]
  %retval.0.i471 = phi i32 [ %109, %cdns_torrent_derived_refclk_register.exit.i ], [ %retval.0.i.ph.i, %cdns_torrent_derived_refclk_register.exit.thread.i ], [ %133, %cdns_torrent_received_refclk_register.exit.i ], [ %retval.0.i86.ph.i, %cdns_torrent_received_refclk_register.exit.thread.i ], [ %retval.0.i103.i, %cdns_torrent_refclk_driver_register.exit.i.cdns_torrent_clk_register.exit_crit_edge ], [ %retval.0.i103.ph.i, %cdns_torrent_refclk_driver_register.exit.thread.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull %.str.93.sink) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i471)
  %tobool26.not = icmp eq i32 %retval.0.i471, 0
  br i1 %tobool26.not, label %cdns_torrent_clk_register.exit.if.end28_crit_edge, label %cdns_torrent_clk_register.exit.cleanup290_crit_edge

cdns_torrent_clk_register.exit.cleanup290_crit_edge: ; preds = %cdns_torrent_clk_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup290

cdns_torrent_clk_register.exit.if.end28_crit_edge: ; preds = %cdns_torrent_clk_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end28:                                         ; preds = %cdns_torrent_clk_register.exit.if.end28_crit_edge, %if.end20.i469.if.end28_crit_edge
  %phy_pma_cmn_ctrl_1 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 22
  %167 = ptrtoint ptr %phy_pma_cmn_ctrl_1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %phy_pma_cmn_ctrl_1, align 4
  %call29 = call i32 @regmap_field_read(ptr noundef %168, ptr noundef nonnull %already_configured) #7
  %169 = ptrtoint ptr %already_configured to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %already_configured, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool30.not = icmp eq i32 %170, 0
  br i1 %tobool30.not, label %if.then31, label %if.end28.if.end41_crit_edge

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then31:                                        ; preds = %if.end28
  %call32 = call fastcc i32 @cdns_torrent_reset(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then31.clk_cleanup_crit_edge

if.then31.clk_cleanup_crit_edge:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_cleanup

if.end35:                                         ; preds = %if.then31
  %call36 = call fastcc i32 @cdns_torrent_clk(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.clk_cleanup_crit_edge

if.end35.clk_cleanup_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_cleanup

if.end39:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %apb_rst = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 4
  %171 = ptrtoint ptr %apb_rst to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %apb_rst, align 4
  %call40 = call i32 @reset_control_deassert(ptr noundef %172) #7
  br label %if.end41

if.end41:                                         ; preds = %if.end39, %if.end28.if.end41_crit_edge
  %173 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %of_node, align 8
  %call43 = call ptr @of_get_next_available_child(ptr noundef %174, ptr noundef null) #7
  %cmp44.not586 = icmp eq ptr %call43, null
  br i1 %cmp44.not586, label %if.end205.thread, label %for.body.lr.ph

if.end205.thread:                                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %nsubnodes644 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 9
  %175 = ptrtoint ptr %nsubnodes644 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %nsubnodes644, align 4
  br label %if.end214

for.body.lr.ph:                                   ; preds = %if.end41
  %max_bit_rate = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %child.0592 = phi ptr [ %call43, %for.body.lr.ph ], [ %call199, %for.inc.for.body_crit_edge ]
  %init_dp_regmap.0591 = phi i8 [ 0, %for.body.lr.ph ], [ %init_dp_regmap.3.ph, %for.inc.for.body_crit_edge ]
  %total_num_lanes.0590 = phi i32 [ 0, %for.body.lr.ph ], [ %total_num_lanes.1.ph, %for.inc.for.body_crit_edge ]
  %node.0587 = phi i32 [ 0, %for.body.lr.ph ], [ %node.1.ph, %for.inc.for.body_crit_edge ]
  %call45 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child.0592, ptr noundef nonnull @.str.6) #7
  br i1 %call45, label %if.end47, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end47:                                         ; preds = %for.body
  %call.i472 = call ptr @of_reset_control_array_get(ptr noundef nonnull %child.0592, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %arrayidx = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 8, i32 %node.0587
  %lnk_rst = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 8, i32 %node.0587, i32 4
  %176 = ptrtoint ptr %lnk_rst to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call.i472, ptr %lnk_rst, align 4
  %cmp.i473 = icmp ugt ptr %call.i472, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i473, label %cleanup, label %if.end61

if.end61:                                         ; preds = %if.end47
  %mlane = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 8, i32 %node.0587, i32 1
  %call.i.i474 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0592, ptr noundef nonnull @.str.10, ptr noundef %mlane, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i474)
  %tobool65.not = icmp sgt i32 %call.i.i474, -1
  br i1 %tobool65.not, label %if.end71, label %do.end69

do.end69:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %full_name70 = getelementptr inbounds %struct.device_node, ptr %child.0592, i32 0, i32 2
  %177 = ptrtoint ptr %full_name70 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %full_name70, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, ptr noundef %178) #10
  br label %put_child

if.end71:                                         ; preds = %if.end61
  %call.i.i475 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0592, ptr noundef nonnull @.str.14, ptr noundef nonnull %phy_type, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i475)
  %tobool73.not = icmp sgt i32 %call.i.i475, -1
  br i1 %tobool73.not, label %if.end79, label %do.end77

do.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %full_name78 = getelementptr inbounds %struct.device_node, ptr %child.0592, i32 0, i32 2
  %179 = ptrtoint ptr %full_name78 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %full_name78, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef %180) #10
  br label %put_child

if.end79:                                         ; preds = %if.end71
  %181 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %phy_type, align 4
  %switch.tableidx = add i32 %182, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %183 = icmp ult i32 %switch.tableidx, 8
  br i1 %183, label %switch.hole_check, label %if.end79.do.end101_crit_edge

if.end79.do.end101_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end101

do.end101:                                        ; preds = %switch.hole_check.do.end101_crit_edge, %if.end79.do.end101_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #10
  br label %put_child

switch.hole_check:                                ; preds = %if.end79
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -43, %switch.maskindex
  %184 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %switch.lobit.not = icmp eq i8 %184, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end101_crit_edge, label %switch.lookup

switch.hole_check.do.end101_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end101

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.cdns_torrent_phy_probe, i32 0, i32 %switch.tableidx
  %185 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %185)
  %switch.load = load i32, ptr %switch.gep, align 4
  %phy_type98 = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 8, i32 %node.0587, i32 2
  %186 = ptrtoint ptr %phy_type98 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %switch.load, ptr %phy_type98, align 4
  %num_lanes = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 8, i32 %node.0587, i32 3
  %call.i.i476 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0592, ptr noundef nonnull @.str.21, ptr noundef %num_lanes, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i476)
  %tobool105.not = icmp sgt i32 %call.i.i476, -1
  br i1 %tobool105.not, label %if.end111, label %do.end109

do.end109:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %full_name110 = getelementptr inbounds %struct.device_node, ptr %child.0592, i32 0, i32 2
  %187 = ptrtoint ptr %full_name110 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %full_name110, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, ptr noundef %188) #10
  br label %put_child

if.end111:                                        ; preds = %switch.lookup
  %189 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %num_lanes, align 4
  %add = add i32 %190, %total_num_lanes.0590
  %ssc_mode = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 8, i32 %node.0587, i32 5
  %191 = ptrtoint ptr %ssc_mode to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 0, ptr %ssc_mode, align 4
  %call.i.i477 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0592, ptr noundef nonnull @.str.25, ptr noundef %ssc_mode, i32 noundef 1, i32 noundef 0) #7
  %192 = ptrtoint ptr %already_configured to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %already_configured, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool121.not = icmp eq i32 %193, 0
  %cdns_torrent_phy_ops.noop_ops = select i1 %tobool121.not, ptr @cdns_torrent_phy_ops, ptr @noop_ops
  %call124 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef nonnull %child.0592, ptr noundef nonnull %cdns_torrent_phy_ops.noop_ops) #7
  %cmp.i478 = icmp ugt ptr %call124, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i478, label %if.then127, label %if.end129

if.then127:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %194 = ptrtoint ptr %call124 to i32
  br label %put_child

if.end129:                                        ; preds = %if.end111
  %phy_type132 = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 8, i32 %node.0587, i32 2
  %195 = ptrtoint ptr %phy_type132 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %phy_type132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %196)
  %cmp133 = icmp eq i32 %196, 1
  br i1 %cmp133, label %if.then134, label %if.end129.if.end192_crit_edge

if.end129.if.end192_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end192

if.then134:                                       ; preds = %if.end129
  %197 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %num_lanes, align 4
  %199 = zext i32 %198 to i64
  call void @__sanitizer_cov_trace_switch(i64 %199, ptr @__sancov_gen_cov_switch_values)
  switch i32 %198, label %do.end142 [
    i32 1, label %if.then134.sw.epilog146_crit_edge
    i32 2, label %if.then134.sw.epilog146_crit_edge842
    i32 4, label %if.then134.sw.epilog146_crit_edge843
  ]

if.then134.sw.epilog146_crit_edge843:             ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog146

if.then134.sw.epilog146_crit_edge842:             ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog146

if.then134.sw.epilog146_crit_edge:                ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog146

do.end142:                                        ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %198) #10
  br label %put_child

sw.epilog146:                                     ; preds = %if.then134.sw.epilog146_crit_edge, %if.then134.sw.epilog146_crit_edge842, %if.then134.sw.epilog146_crit_edge843
  %200 = ptrtoint ptr %max_bit_rate to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 8100, ptr %max_bit_rate, align 4
  %call.i.i479 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0592, ptr noundef nonnull @.str.29, ptr noundef %max_bit_rate, i32 noundef 1, i32 noundef 0) #7
  %201 = ptrtoint ptr %max_bit_rate to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %max_bit_rate, align 4
  %203 = zext i32 %202 to i64
  call void @__sanitizer_cov_trace_switch(i64 %203, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %202, label %do.end154 [
    i32 1620, label %sw.epilog146.sw.epilog156_crit_edge
    i32 2160, label %sw.epilog146.sw.epilog156_crit_edge844
    i32 2430, label %sw.epilog146.sw.epilog156_crit_edge845
    i32 2700, label %sw.epilog146.sw.epilog156_crit_edge846
    i32 3240, label %sw.epilog146.sw.epilog156_crit_edge847
    i32 4320, label %sw.epilog146.sw.epilog156_crit_edge848
    i32 5400, label %sw.epilog146.sw.epilog156_crit_edge849
    i32 8100, label %sw.epilog146.sw.epilog156_crit_edge850
  ]

sw.epilog146.sw.epilog156_crit_edge850:           ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog156

sw.epilog146.sw.epilog156_crit_edge849:           ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog156

sw.epilog146.sw.epilog156_crit_edge848:           ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog156

sw.epilog146.sw.epilog156_crit_edge847:           ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog156

sw.epilog146.sw.epilog156_crit_edge846:           ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog156

sw.epilog146.sw.epilog156_crit_edge845:           ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog156

sw.epilog146.sw.epilog156_crit_edge844:           ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog156

sw.epilog146.sw.epilog156_crit_edge:              ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog156

do.end154:                                        ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %202) #10
  br label %put_child

sw.epilog156:                                     ; preds = %sw.epilog146.sw.epilog156_crit_edge, %sw.epilog146.sw.epilog156_crit_edge844, %sw.epilog146.sw.epilog156_crit_edge845, %sw.epilog146.sw.epilog156_crit_edge846, %sw.epilog146.sw.epilog156_crit_edge847, %sw.epilog146.sw.epilog156_crit_edge848, %sw.epilog146.sw.epilog156_crit_edge849, %sw.epilog146.sw.epilog156_crit_edge850
  %call157 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #7
  %204 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %call157, ptr %call.i, align 4
  %cmp.i480 = icmp ugt ptr %call157, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i480, label %if.then160, label %if.end163

if.then160:                                       ; preds = %sw.epilog156
  call void @__sanitizer_cov_trace_pc() #9
  %205 = ptrtoint ptr %call157 to i32
  br label %put_child

if.end163:                                        ; preds = %sw.epilog156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %init_dp_regmap.0591)
  %tobool164.not = icmp eq i8 %init_dp_regmap.0591, 0
  br i1 %tobool164.not, label %if.then165, label %if.end163.do.body175_crit_edge

if.end163.do.body175_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body175

if.then165:                                       ; preds = %if.end163
  %call166 = call fastcc i32 @cdns_torrent_dp_regmap_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.end169, label %if.then165.put_child_crit_edge

if.then165.put_child_crit_edge:                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_child

if.end169:                                        ; preds = %if.then165
  %call170 = call fastcc i32 @cdns_torrent_dp_regfield_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.end169.do.body175_crit_edge, label %if.end169.put_child_crit_edge

if.end169.put_child_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_child

if.end169.do.body175_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body175

do.body175:                                       ; preds = %if.end169.do.body175_crit_edge, %if.end163.do.body175_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_torrent_phy_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_torrent_phy_probe, %if.then180)) #7
          to label %do.end185 [label %if.then180], !srcloc !553

if.then180:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #9
  %206 = ptrtoint ptr %max_bit_rate to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %max_bit_rate, align 4
  %.frozen = freeze i32 %207
  %div = udiv i32 %.frozen, 1000
  %208 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %.frozen, %208
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_torrent_phy_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %div, i32 noundef %rem.decomposed) #7
  br label %do.end185

do.end185:                                        ; preds = %if.then180, %do.body175
  %209 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %num_lanes, align 4
  %attrs = getelementptr inbounds %struct.phy, ptr %call124, i32 0, i32 6
  %211 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %attrs, align 4
  %212 = ptrtoint ptr %max_bit_rate to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %max_bit_rate, align 4
  %max_link_rate = getelementptr inbounds %struct.phy, ptr %call124, i32 0, i32 6, i32 1
  %214 = ptrtoint ptr %max_link_rate to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %max_link_rate, align 4
  %mode = getelementptr inbounds %struct.phy, ptr %call124, i32 0, i32 6, i32 2
  %215 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 19, ptr %mode, align 4
  br label %if.end192

if.end192:                                        ; preds = %do.end185, %if.end129.if.end192_crit_edge
  %init_dp_regmap.2 = phi i8 [ 1, %do.end185 ], [ %init_dp_regmap.0591, %if.end129.if.end192_crit_edge ]
  %216 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %call124, ptr %arrayidx, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call124, i32 0, i32 8
  %217 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  %inc197 = add i32 %node.0587, 1
  br label %for.inc

cleanup:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %full_name = getelementptr inbounds %struct.device_node, ptr %child.0592, i32 0, i32 2
  %218 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %full_name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef %219) #10
  %220 = ptrtoint ptr %lnk_rst to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %lnk_rst, align 4
  %222 = ptrtoint ptr %221 to i32
  br label %put_lnk_rst

for.inc:                                          ; preds = %if.end192, %for.body.for.inc_crit_edge
  %node.1.ph = phi i32 [ %node.0587, %for.body.for.inc_crit_edge ], [ %inc197, %if.end192 ]
  %total_num_lanes.1.ph = phi i32 [ %total_num_lanes.0590, %for.body.for.inc_crit_edge ], [ %add, %if.end192 ]
  %init_dp_regmap.3.ph = phi i8 [ %init_dp_regmap.0591, %for.body.for.inc_crit_edge ], [ %init_dp_regmap.2, %if.end192 ]
  %223 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %of_node, align 8
  %call199 = call ptr @of_get_next_available_child(ptr noundef %224, ptr noundef nonnull %child.0592) #7
  %cmp44.not = icmp eq ptr %call199, null
  br i1 %cmp44.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %nsubnodes = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 9
  %225 = ptrtoint ptr %nsubnodes to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %node.1.ph, ptr %nsubnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %total_num_lanes.1.ph)
  %cmp200 = icmp ugt i32 %total_num_lanes.1.ph, 4
  br i1 %cmp200, label %do.end204, label %if.end205

do.end204:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36) #10
  br label %put_lnk_rst

if.end205:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %node.1.ph)
  %cmp207 = icmp sgt i32 %node.1.ph, 1
  br i1 %cmp207, label %land.lhs.true, label %if.end205.if.end214_crit_edge

if.end205.if.end214_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

land.lhs.true:                                    ; preds = %if.end205
  %226 = ptrtoint ptr %already_configured to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %already_configured, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool208.not = icmp eq i32 %227, 0
  br i1 %tobool208.not, label %if.then209, label %land.lhs.true.if.end214_crit_edge

land.lhs.true.if.end214_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

if.then209:                                       ; preds = %land.lhs.true
  %call210 = call fastcc i32 @cdns_torrent_phy_configure_multilink(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %if.then209.if.end214_crit_edge, label %if.then209.for.body281.preheader_crit_edge

if.then209.for.body281.preheader_crit_edge:       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body281.preheader

if.then209.if.end214_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

if.end214:                                        ; preds = %if.then209.if.end214_crit_edge, %land.lhs.true.if.end214_crit_edge, %if.end205.if.end214_crit_edge, %if.end205.thread
  %nsubnodes648652 = phi ptr [ %nsubnodes, %if.then209.if.end214_crit_edge ], [ %nsubnodes, %land.lhs.true.if.end214_crit_edge ], [ %nsubnodes, %if.end205.if.end214_crit_edge ], [ %nsubnodes644, %if.end205.thread ]
  %node.0.lcssa647 = phi i32 [ %node.1.ph, %if.then209.if.end214_crit_edge ], [ %node.1.ph, %land.lhs.true.if.end214_crit_edge ], [ %node.1.ph, %if.end205.if.end214_crit_edge ], [ 0, %if.end205.thread ]
  %call215 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #7
  %cmp.i481 = icmp ugt ptr %call215, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i481, label %if.then217, label %if.end219

if.then217:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #9
  %228 = ptrtoint ptr %call215 to i32
  br label %put_lnk_rst

if.end219:                                        ; preds = %if.end214
  %229 = ptrtoint ptr %nsubnodes648652 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %nsubnodes648652, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %230)
  %cmp221 = icmp sgt i32 %230, 1
  br i1 %cmp221, label %do.body223, label %do.body254

do.body223:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_torrent_phy_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_torrent_phy_probe, %if.then235)) #7
          to label %cleanup290 [label %if.then235], !srcloc !553

if.then235:                                       ; preds = %do.body223
  %phy_type238 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 8, i32 0, i32 2
  %231 = ptrtoint ptr %phy_type238 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %phy_type238, align 4
  %switch.tableidx747 = add i32 %232, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx747)
  %233 = icmp ult i32 %switch.tableidx747, 5
  br i1 %233, label %switch.lookup746, label %if.then235.cdns_torrent_get_phy_type.exit_crit_edge

if.then235.cdns_torrent_get_phy_type.exit_crit_edge: ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_get_phy_type.exit

switch.lookup746:                                 ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep748 = getelementptr inbounds [5 x ptr], ptr @switch.table.cdns_torrent_phy_probe.165, i32 0, i32 %switch.tableidx747
  %234 = ptrtoint ptr %switch.gep748 to i32
  call void @__asan_load4_noabort(i32 %234)
  %switch.load749 = load ptr, ptr %switch.gep748, align 4
  br label %cdns_torrent_get_phy_type.exit

cdns_torrent_get_phy_type.exit:                   ; preds = %switch.lookup746, %if.then235.cdns_torrent_get_phy_type.exit_crit_edge
  %retval.0.i482 = phi ptr [ %switch.load749, %switch.lookup746 ], [ @.str.164, %if.then235.cdns_torrent_get_phy_type.exit_crit_edge ]
  %num_lanes242 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 8, i32 0, i32 3
  %235 = ptrtoint ptr %num_lanes242 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %num_lanes242, align 4
  %phy_type245 = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 8, i32 1, i32 2
  %237 = ptrtoint ptr %phy_type245 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %phy_type245, align 4
  %switch.tableidx751 = add i32 %238, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx751)
  %239 = icmp ult i32 %switch.tableidx751, 5
  br i1 %239, label %switch.lookup750, label %cdns_torrent_get_phy_type.exit.cdns_torrent_get_phy_type.exit489_crit_edge

cdns_torrent_get_phy_type.exit.cdns_torrent_get_phy_type.exit489_crit_edge: ; preds = %cdns_torrent_get_phy_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_get_phy_type.exit489

switch.lookup750:                                 ; preds = %cdns_torrent_get_phy_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep752 = getelementptr inbounds [5 x ptr], ptr @switch.table.cdns_torrent_phy_probe.166, i32 0, i32 %switch.tableidx751
  %240 = ptrtoint ptr %switch.gep752 to i32
  call void @__asan_load4_noabort(i32 %240)
  %switch.load753 = load ptr, ptr %switch.gep752, align 4
  br label %cdns_torrent_get_phy_type.exit489

cdns_torrent_get_phy_type.exit489:                ; preds = %switch.lookup750, %cdns_torrent_get_phy_type.exit.cdns_torrent_get_phy_type.exit489_crit_edge
  %retval.0.i488 = phi ptr [ %switch.load753, %switch.lookup750 ], [ @.str.164, %cdns_torrent_get_phy_type.exit.cdns_torrent_get_phy_type.exit489_crit_edge ]
  %num_lanes249 = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 8, i32 1, i32 3
  %241 = ptrtoint ptr %num_lanes249 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %num_lanes249, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_torrent_phy_probe.__UNIQUE_ID_ddebug290, ptr noundef %dev1, ptr noundef nonnull @.str.38, ptr noundef nonnull %retval.0.i482, i32 noundef %236, ptr noundef nonnull %retval.0.i488, i32 noundef %242) #7
  br label %cleanup290

do.body254:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_torrent_phy_probe.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_torrent_phy_probe, %if.then266)) #7
          to label %cleanup290 [label %if.then266], !srcloc !553

if.then266:                                       ; preds = %do.body254
  %phy_type269 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 8, i32 0, i32 2
  %243 = ptrtoint ptr %phy_type269 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %phy_type269, align 4
  %switch.tableidx755 = add i32 %244, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx755)
  %245 = icmp ult i32 %switch.tableidx755, 5
  br i1 %245, label %switch.lookup754, label %if.then266.cdns_torrent_get_phy_type.exit496_crit_edge

if.then266.cdns_torrent_get_phy_type.exit496_crit_edge: ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_get_phy_type.exit496

switch.lookup754:                                 ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep756 = getelementptr inbounds [5 x ptr], ptr @switch.table.cdns_torrent_phy_probe.167, i32 0, i32 %switch.tableidx755
  %246 = ptrtoint ptr %switch.gep756 to i32
  call void @__asan_load4_noabort(i32 %246)
  %switch.load757 = load ptr, ptr %switch.gep756, align 4
  br label %cdns_torrent_get_phy_type.exit496

cdns_torrent_get_phy_type.exit496:                ; preds = %switch.lookup754, %if.then266.cdns_torrent_get_phy_type.exit496_crit_edge
  %retval.0.i495 = phi ptr [ %switch.load757, %switch.lookup754 ], [ @.str.164, %if.then266.cdns_torrent_get_phy_type.exit496_crit_edge ]
  %num_lanes273 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 8, i32 0, i32 3
  %247 = ptrtoint ptr %num_lanes273 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %num_lanes273, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_torrent_phy_probe.__UNIQUE_ID_ddebug291, ptr noundef %dev1, ptr noundef nonnull @.str.39, ptr noundef nonnull %retval.0.i495, i32 noundef %248) #7
  br label %cleanup290

put_child:                                        ; preds = %if.end169.put_child_crit_edge, %if.then165.put_child_crit_edge, %if.then160, %do.end154, %do.end142, %if.then127, %do.end109, %do.end101, %do.end77, %do.end69
  %ret.4.ph = phi i32 [ %205, %if.then160 ], [ -22, %do.end154 ], [ -22, %do.end142 ], [ %194, %if.then127 ], [ -22, %do.end109 ], [ -22, %do.end101 ], [ -22, %do.end77 ], [ -22, %do.end69 ], [ %call170, %if.end169.put_child_crit_edge ], [ %call166, %if.then165.put_child_crit_edge ]
  %inc278 = add i32 %node.0587, 1
  br label %put_lnk_rst

put_lnk_rst:                                      ; preds = %put_child, %if.then217, %do.end204, %cleanup
  %child.0542 = phi ptr [ %child.0592, %cleanup ], [ %child.0592, %put_child ], [ null, %do.end204 ], [ null, %if.then217 ]
  %ret.5 = phi i32 [ %222, %cleanup ], [ %ret.4.ph, %put_child ], [ -22, %do.end204 ], [ %228, %if.then217 ]
  %node.2 = phi i32 [ %node.0587, %cleanup ], [ %inc278, %put_child ], [ %node.1.ph, %do.end204 ], [ %node.0.lcssa647, %if.then217 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %node.2)
  %cmp280598 = icmp sgt i32 %node.2, 0
  br i1 %cmp280598, label %put_lnk_rst.for.body281.preheader_crit_edge, label %put_lnk_rst.for.end287_crit_edge

put_lnk_rst.for.end287_crit_edge:                 ; preds = %put_lnk_rst
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end287

put_lnk_rst.for.body281.preheader_crit_edge:      ; preds = %put_lnk_rst
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body281.preheader

for.body281.preheader:                            ; preds = %put_lnk_rst.for.body281.preheader_crit_edge, %if.then209.for.body281.preheader_crit_edge
  %node.2661 = phi i32 [ %node.2, %put_lnk_rst.for.body281.preheader_crit_edge ], [ %node.1.ph, %if.then209.for.body281.preheader_crit_edge ]
  %ret.5660 = phi i32 [ %ret.5, %put_lnk_rst.for.body281.preheader_crit_edge ], [ %call210, %if.then209.for.body281.preheader_crit_edge ]
  %child.0542658 = phi ptr [ %child.0542, %put_lnk_rst.for.body281.preheader_crit_edge ], [ null, %if.then209.for.body281.preheader_crit_edge ]
  br label %for.body281

for.body281:                                      ; preds = %for.body281.for.body281_crit_edge, %for.body281.preheader
  %i.0599 = phi i32 [ %inc286, %for.body281.for.body281_crit_edge ], [ 0, %for.body281.preheader ]
  %lnk_rst284 = getelementptr %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 8, i32 %i.0599, i32 4
  %249 = ptrtoint ptr %lnk_rst284 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %lnk_rst284, align 4
  call void @reset_control_put(ptr noundef %250) #7
  %inc286 = add nuw nsw i32 %i.0599, 1
  %exitcond.not = icmp eq i32 %inc286, %node.2661
  br i1 %exitcond.not, label %for.body281.for.end287_crit_edge, label %for.body281.for.body281_crit_edge

for.body281.for.body281_crit_edge:                ; preds = %for.body281
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body281

for.body281.for.end287_crit_edge:                 ; preds = %for.body281
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end287

for.end287:                                       ; preds = %for.body281.for.end287_crit_edge, %put_lnk_rst.for.end287_crit_edge
  %ret.5659 = phi i32 [ %ret.5, %put_lnk_rst.for.end287_crit_edge ], [ %ret.5660, %for.body281.for.end287_crit_edge ]
  %child.0542657 = phi ptr [ %child.0542, %put_lnk_rst.for.end287_crit_edge ], [ %child.0542658, %for.body281.for.end287_crit_edge ]
  call void @of_node_put(ptr noundef %child.0542657) #7
  %apb_rst288 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 4
  %251 = ptrtoint ptr %apb_rst288 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %apb_rst288, align 4
  %call289 = call i32 @reset_control_assert(ptr noundef %252) #7
  %clk = getelementptr inbounds %struct.cdns_torrent_phy, ptr %call.i, i32 0, i32 6
  %253 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %254) #7
  call void @clk_unprepare(ptr noundef %254) #7
  br label %clk_cleanup

clk_cleanup:                                      ; preds = %for.end287, %if.end35.clk_cleanup_crit_edge, %if.then31.clk_cleanup_crit_edge
  %ret.6 = phi i32 [ %ret.5659, %for.end287 ], [ %call32, %if.then31.clk_cleanup_crit_edge ], [ %call36, %if.end35.clk_cleanup_crit_edge ]
  %255 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dev6, align 4
  %of_node.i498 = getelementptr inbounds %struct.device, ptr %256, i32 0, i32 27
  %257 = ptrtoint ptr %of_node.i498 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %of_node.i498, align 8
  call void @of_clk_del_provider(ptr noundef %258) #7
  br label %cleanup290

cleanup290:                                       ; preds = %clk_cleanup, %cdns_torrent_get_phy_type.exit496, %do.body254, %cdns_torrent_get_phy_type.exit489, %do.body223, %cdns_torrent_clk_register.exit.cleanup290_crit_edge, %do.end26.i470, %if.end24.cleanup290_crit_edge, %cdns_torrent_regfield_init.exit.cleanup290_crit_edge, %cdns_torrent_regmap_init.exit.cleanup290_crit_edge, %do.end, %if.then10, %if.end.cleanup290_crit_edge, %entry.cleanup290_crit_edge
  %retval.0 = phi i32 [ %6, %if.then10 ], [ -22, %do.end ], [ %ret.6, %clk_cleanup ], [ -22, %entry.cleanup290_crit_edge ], [ -12, %if.end.cleanup290_crit_edge ], [ %retval.0.i453, %cdns_torrent_regmap_init.exit.cleanup290_crit_edge ], [ %retval.0.i462, %cdns_torrent_regfield_init.exit.cleanup290_crit_edge ], [ %retval.0.i471, %cdns_torrent_clk_register.exit.cleanup290_crit_edge ], [ 0, %cdns_torrent_get_phy_type.exit496 ], [ 0, %cdns_torrent_get_phy_type.exit489 ], [ 0, %do.body223 ], [ 0, %do.body254 ], [ -12, %if.end24.cleanup290_crit_edge ], [ %call21.i468, %do.end26.i470 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_type) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %already_configured) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_torrent_phy_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phy_rst = getelementptr inbounds %struct.cdns_torrent_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #7
  %apb_rst = getelementptr inbounds %struct.cdns_torrent_phy, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %apb_rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_rst, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %5) #7
  %nsubnodes = getelementptr inbounds %struct.cdns_torrent_phy, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %nsubnodes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nsubnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16 = icmp sgt i32 %7, 0
  br i1 %cmp16, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %lnk_rst = getelementptr %struct.cdns_torrent_phy, ptr %1, i32 0, i32 8, i32 %i.017, i32 4
  %8 = ptrtoint ptr %lnk_rst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lnk_rst, align 4
  %call3 = tail call i32 @reset_control_assert(ptr noundef %9) #7
  %10 = ptrtoint ptr %lnk_rst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lnk_rst, align 4
  tail call void @reset_control_put(ptr noundef %11) #7
  %inc = add nuw nsw i32 %i.017, 1
  %12 = ptrtoint ptr %nsubnodes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nsubnodes, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %clk = getelementptr inbounds %struct.cdns_torrent_phy, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  %dev1.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node.i, align 8
  tail call void @of_clk_del_provider(ptr noundef %19) #7
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_torrent_reset(ptr nocapture noundef %cdns_phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %phy_rst = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 3
  %2 = ptrtoint ptr %phy_rst to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %phy_rst, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call.i29 = tail call ptr @__devm_reset_control_get(ptr noundef %1, ptr noundef nonnull @.str.119, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %apb_rst = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 4
  %3 = ptrtoint ptr %apb_rst to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i29, ptr %apb_rst, align 4
  %cmp.i30 = icmp ugt ptr %call.i29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.121.sink = phi ptr [ @.str.8, %entry.cleanup.sink.split_crit_edge ], [ @.str.121, %if.end.cleanup.sink.split_crit_edge ]
  %apb_rst.sink = phi ptr [ %phy_rst, %entry.cleanup.sink.split_crit_edge ], [ %apb_rst, %if.end.cleanup.sink.split_crit_edge ]
  %of_node13 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %of_node13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node13, align 8
  %full_name14 = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %full_name14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %full_name14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull %.str.121.sink, ptr noundef %7) #10
  %8 = ptrtoint ptr %apb_rst.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %apb_rst.sink, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %10, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_torrent_clk(ptr nocapture noundef %cdns_phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.123) #7
  %clk = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 6
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.124) #10
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end11_crit_edge

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end13, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call) #7
  br label %do.end11

do.end11:                                         ; preds = %if.then3.i, %if.end.do.end11_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end11_crit_edge ]
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.127) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end.i
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call15 = tail call i32 @clk_get_rate(ptr noundef %9) #7
  %10 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %call15, label %do.end31 [
    i32 0, label %do.end20
    i32 19200000, label %sw.bb
    i32 25000000, label %sw.bb25
    i32 100000000, label %sw.bb27
  ]

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.130) #10
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %14) #7
  tail call void @clk_unprepare(ptr noundef %14) #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %ref_clk_rate24 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 7
  %15 = ptrtoint ptr %ref_clk_rate24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ref_clk_rate24, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %ref_clk_rate26 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 7
  %16 = ptrtoint ptr %ref_clk_rate26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %ref_clk_rate26, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %ref_clk_rate28 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 7
  %17 = ptrtoint ptr %ref_clk_rate28 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %ref_clk_rate28, align 4
  br label %cleanup

do.end31:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.133) #10
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %21) #7
  tail call void @clk_unprepare(ptr noundef %21) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %sw.bb27, %sw.bb25, %sw.bb, %do.end20, %do.end11, %do.end
  %retval.0 = phi i32 [ %5, %do.end ], [ %retval.0.i.ph, %do.end11 ], [ -22, %do.end31 ], [ -22, %do.end20 ], [ 0, %sw.bb27 ], [ 0, %sw.bb25 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_torrent_dp_regmap_init(ptr nocapture noundef %cdns_phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdns_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns_phy, align 4
  %dev2 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 5
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %init_data = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 10
  %4 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_data, align 4
  %reg_offset_shift3 = getelementptr inbounds %struct.cdns_torrent_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %reg_offset_shift3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_offset_shift3, align 1
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %cdns_regmap_init.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

cdns_regmap_init.exit:                            ; preds = %entry
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %call.i.i, align 4
  %base3.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %base3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %base3.i, align 4
  %reg_offset_shift4.i = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %call.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %reg_offset_shift4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %7, ptr %reg_offset_shift4.i, align 4
  %call5.i = tail call ptr @__devm_regmap_init(ptr noundef %3, ptr noundef null, ptr noundef nonnull %call.i.i, ptr noundef nonnull @cdns_torrent_dptx_phy_config, ptr noundef nonnull @cdns_regmap_init._key, ptr noundef nonnull @.str.57) #7
  %cmp.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cdns_regmap_init.exit.do.end_crit_edge, label %if.end

cdns_regmap_init.exit.do.end_crit_edge:           ; preds = %cdns_regmap_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %cdns_regmap_init.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i18 = phi ptr [ %call5.i, %cdns_regmap_init.exit.do.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.154) #10
  %11 = ptrtoint ptr %retval.0.i18 to i32
  br label %cleanup

if.end:                                           ; preds = %cdns_regmap_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %regmap_dptx_phy_reg = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 18
  %12 = ptrtoint ptr %regmap_dptx_phy_reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i, ptr %regmap_dptx_phy_reg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %11, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_torrent_dp_regfield_init(ptr nocapture noundef %cdns_phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %regmap_dptx_phy_reg = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 18
  %2 = ptrtoint ptr %regmap_dptx_phy_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap_dptx_phy_reg, align 4
  %call = tail call ptr @devm_regmap_field_alloc(ptr noundef %1, ptr noundef %3, [5 x i32] [i32 32, i32 8, i32 8, i32 0, i32 0]) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.157) #10
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %phy_reset_ctrl = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 25
  %5 = ptrtoint ptr %phy_reset_ctrl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %phy_reset_ctrl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %4, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_torrent_phy_configure_multilink(ptr nocapture noundef readonly %cdns_phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %init_data1 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 10
  %0 = ptrtoint ptr %init_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_data1, align 4
  %ref_clk_rate = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 7
  %2 = ptrtoint ptr %ref_clk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_clk_rate, align 4
  %nsubnodes = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 9
  %4 = ptrtoint ptr %nsubnodes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nsubnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %nsubnodes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nsubnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6332 = icmp sgt i32 %7, 0
  br i1 %cmp6332, label %for.body.lr.ph, label %if.end.for.end167_crit_edge

if.end.for.end167_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end167

for.body.lr.ph:                                   ; preds = %if.end
  %phy_type4 = getelementptr %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 8, i32 1, i32 2
  %8 = ptrtoint ptr %phy_type4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_type4, align 4
  %phy_type = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 8, i32 0, i32 2
  %10 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy_type, align 4
  %regmap_common_cdb = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 12
  %phy_pll_cfg = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 19
  %regmap_phy_pcs_common_cdb = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end161.for.body_crit_edge, %for.body.lr.ph
  %node.0335 = phi i32 [ 0, %for.body.lr.ph ], [ %inc166, %if.end161.for.body_crit_edge ]
  %phy_t2.0334 = phi i32 [ %9, %for.body.lr.ph ], [ %spec.select313, %if.end161.for.body_crit_edge ]
  %phy_t1.0333 = phi i32 [ %11, %for.body.lr.ph ], [ %spec.select, %if.end161.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %node.0335)
  %cmp7 = icmp eq i32 %node.0335, 1
  %spec.select = select i1 %cmp7, i32 %phy_t2.0334, i32 %phy_t1.0333
  %spec.select313 = select i1 %cmp7, i32 %phy_t1.0333, i32 %phy_t2.0334
  %mlane12 = getelementptr %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 8, i32 %node.0335, i32 1
  %12 = ptrtoint ptr %mlane12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mlane12, align 4
  %ssc_mode = getelementptr %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 8, i32 %node.0335, i32 5
  %14 = ptrtoint ptr %ssc_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ssc_mode, align 4
  %num_lanes17 = getelementptr %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 8, i32 %node.0335, i32 3
  %16 = ptrtoint ptr %num_lanes17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_lanes17, align 4
  %arrayidx21 = getelementptr %struct.cdns_torrent_data, ptr %1, i32 0, i32 2, i32 %spec.select, i32 %spec.select313, i32 %15
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx21, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %for.body.if.end33_crit_edge, label %if.then22

for.body.if.end33_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then22:                                        ; preds = %for.body
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %num_regs24 = getelementptr inbounds %struct.cdns_torrent_vals, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %num_regs24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_regs24, align 4
  %24 = ptrtoint ptr %regmap_common_cdb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap_common_cdb, align 4
  %26 = ptrtoint ptr %phy_pll_cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy_pll_cfg, align 4
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %21, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %27, i32 noundef -1, i32 noundef %29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp27314 = icmp ugt i32 %23, 1
  br i1 %cmp27314, label %if.then22.for.body28_crit_edge, label %if.then22.if.end33_crit_edge

if.then22.if.end33_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then22.for.body28_crit_edge:                   ; preds = %if.then22
  br label %for.body28

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %if.then22.for.body28_crit_edge
  %i.0315 = phi i32 [ %inc, %for.body28.for.body28_crit_edge ], [ 1, %if.then22.for.body28_crit_edge ]
  %arrayidx29 = getelementptr %struct.cdns_reg_pairs, ptr %21, i32 %i.0315
  %off = getelementptr %struct.cdns_reg_pairs, ptr %21, i32 %i.0315, i32 1
  %30 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %off, align 4
  %32 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx29, align 4
  %call32 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef %31, i32 noundef %33) #7
  %inc = add nuw i32 %i.0315, 1
  %exitcond.not = icmp eq i32 %inc, %23
  br i1 %exitcond.not, label %for.body28.if.end33_crit_edge, label %for.body28.for.body28_crit_edge

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28

for.body28.if.end33_crit_edge:                    ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end33:                                         ; preds = %for.body28.if.end33_crit_edge, %if.then22.if.end33_crit_edge, %for.body.if.end33_crit_edge
  %arrayidx37 = getelementptr %struct.cdns_torrent_data, ptr %1, i32 0, i32 3, i32 %spec.select, i32 %spec.select313, i32 %15
  %34 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq ptr %35, null
  br i1 %tobool38.not, label %if.end33.if.end60_crit_edge, label %if.then39

if.end33.if.end60_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then39:                                        ; preds = %if.end33
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %num_regs41 = getelementptr inbounds %struct.cdns_torrent_vals, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %num_regs41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_regs41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp43318 = icmp sgt i32 %17, 0
  br i1 %cmp43318, label %for.body44.lr.ph, label %if.then39.if.end60_crit_edge

if.then39.if.end60_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

for.body44.lr.ph:                                 ; preds = %if.then39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp47316.not = icmp eq i32 %39, 0
  br label %for.body44

for.body44:                                       ; preds = %for.inc57.for.body44_crit_edge, %for.body44.lr.ph
  %i.1319 = phi i32 [ 0, %for.body44.lr.ph ], [ %inc58, %for.inc57.for.body44_crit_edge ]
  %add = add i32 %i.1319, %13
  %arrayidx45 = getelementptr %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 15, i32 %add
  %40 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx45, align 4
  br i1 %cmp47316.not, label %for.body44.for.inc57_crit_edge, label %for.body44.for.body48_crit_edge

for.body44.for.body48_crit_edge:                  ; preds = %for.body44
  br label %for.body48

for.body44.for.inc57_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc57

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %for.body44.for.body48_crit_edge
  %j.0317 = phi i32 [ %inc55, %for.body48.for.body48_crit_edge ], [ 0, %for.body44.for.body48_crit_edge ]
  %arrayidx49 = getelementptr %struct.cdns_reg_pairs, ptr %37, i32 %j.0317
  %off50 = getelementptr %struct.cdns_reg_pairs, ptr %37, i32 %j.0317, i32 1
  %42 = ptrtoint ptr %off50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %off50, align 4
  %44 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx49, align 4
  %call53 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef %43, i32 noundef %45) #7
  %inc55 = add nuw i32 %j.0317, 1
  %exitcond336.not = icmp eq i32 %inc55, %39
  br i1 %exitcond336.not, label %for.body48.for.inc57_crit_edge, label %for.body48.for.body48_crit_edge

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body48

for.body48.for.inc57_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc57

for.inc57:                                        ; preds = %for.body48.for.inc57_crit_edge, %for.body44.for.inc57_crit_edge
  %inc58 = add nuw nsw i32 %i.1319, 1
  %exitcond337.not = icmp eq i32 %inc58, %17
  br i1 %exitcond337.not, label %for.inc57.if.end60_crit_edge, label %for.inc57.for.body44_crit_edge

for.inc57.for.body44_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body44

for.inc57.if.end60_crit_edge:                     ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.end60:                                         ; preds = %for.inc57.if.end60_crit_edge, %if.then39.if.end60_crit_edge, %if.end33.if.end60_crit_edge
  %arrayidx64 = getelementptr %struct.cdns_torrent_data, ptr %1, i32 0, i32 4, i32 %spec.select, i32 %spec.select313, i32 %15
  %46 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx64, align 4
  %tobool65.not = icmp eq ptr %47, null
  br i1 %tobool65.not, label %if.end60.if.end80_crit_edge, label %if.then66

if.end60.if.end80_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then66:                                        ; preds = %if.end60
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %num_regs68 = getelementptr inbounds %struct.cdns_torrent_vals, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %num_regs68 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_regs68, align 4
  %52 = ptrtoint ptr %regmap_phy_pcs_common_cdb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap_phy_pcs_common_cdb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp70320.not = icmp eq i32 %51, 0
  br i1 %cmp70320.not, label %if.then66.if.end80_crit_edge, label %if.then66.for.body71_crit_edge

if.then66.for.body71_crit_edge:                   ; preds = %if.then66
  br label %for.body71

if.then66.if.end80_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

for.body71:                                       ; preds = %for.body71.for.body71_crit_edge, %if.then66.for.body71_crit_edge
  %i.2321 = phi i32 [ %inc78, %for.body71.for.body71_crit_edge ], [ 0, %if.then66.for.body71_crit_edge ]
  %arrayidx72 = getelementptr %struct.cdns_reg_pairs, ptr %49, i32 %i.2321
  %off73 = getelementptr %struct.cdns_reg_pairs, ptr %49, i32 %i.2321, i32 1
  %54 = ptrtoint ptr %off73 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %off73, align 4
  %56 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx72, align 4
  %call76 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef %55, i32 noundef %57) #7
  %inc78 = add nuw i32 %i.2321, 1
  %exitcond338.not = icmp eq i32 %inc78, %51
  br i1 %exitcond338.not, label %for.body71.if.end80_crit_edge, label %for.body71.for.body71_crit_edge

for.body71.for.body71_crit_edge:                  ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body71

for.body71.if.end80_crit_edge:                    ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.end80:                                         ; preds = %for.body71.if.end80_crit_edge, %if.then66.if.end80_crit_edge, %if.end60.if.end80_crit_edge
  %arrayidx85 = getelementptr %struct.cdns_torrent_data, ptr %1, i32 0, i32 5, i32 %3, i32 %spec.select, i32 %spec.select313, i32 %15
  %58 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx85, align 4
  %tobool86.not = icmp eq ptr %59, null
  br i1 %tobool86.not, label %if.end80.if.end102_crit_edge, label %if.then87

if.end80.if.end102_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then87:                                        ; preds = %if.end80
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %num_regs89 = getelementptr inbounds %struct.cdns_torrent_vals, ptr %59, i32 0, i32 1
  %62 = ptrtoint ptr %num_regs89 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_regs89, align 4
  %64 = ptrtoint ptr %regmap_common_cdb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap_common_cdb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp92322.not = icmp eq i32 %63, 0
  br i1 %cmp92322.not, label %if.then87.if.end102_crit_edge, label %if.then87.for.body93_crit_edge

if.then87.for.body93_crit_edge:                   ; preds = %if.then87
  br label %for.body93

if.then87.if.end102_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

for.body93:                                       ; preds = %for.body93.for.body93_crit_edge, %if.then87.for.body93_crit_edge
  %i.3323 = phi i32 [ %inc100, %for.body93.for.body93_crit_edge ], [ 0, %if.then87.for.body93_crit_edge ]
  %arrayidx94 = getelementptr %struct.cdns_reg_pairs, ptr %61, i32 %i.3323
  %off95 = getelementptr %struct.cdns_reg_pairs, ptr %61, i32 %i.3323, i32 1
  %66 = ptrtoint ptr %off95 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %off95, align 4
  %68 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx94, align 4
  %call98 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef %67, i32 noundef %69) #7
  %inc100 = add nuw i32 %i.3323, 1
  %exitcond339.not = icmp eq i32 %inc100, %63
  br i1 %exitcond339.not, label %for.body93.if.end102_crit_edge, label %for.body93.for.body93_crit_edge

for.body93.for.body93_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body93

for.body93.if.end102_crit_edge:                   ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.end102:                                        ; preds = %for.body93.if.end102_crit_edge, %if.then87.if.end102_crit_edge, %if.end80.if.end102_crit_edge
  %arrayidx107 = getelementptr %struct.cdns_torrent_data, ptr %1, i32 0, i32 6, i32 %3, i32 %spec.select, i32 %spec.select313, i32 %15
  %70 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx107, align 4
  %tobool108.not = icmp eq ptr %71, null
  br i1 %tobool108.not, label %if.end102.if.end132_crit_edge, label %if.then109

if.end102.if.end132_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.then109:                                       ; preds = %if.end102
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %num_regs111 = getelementptr inbounds %struct.cdns_torrent_vals, ptr %71, i32 0, i32 1
  %74 = ptrtoint ptr %num_regs111 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_regs111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp113326 = icmp sgt i32 %17, 0
  br i1 %cmp113326, label %for.body114.lr.ph, label %if.then109.if.end132_crit_edge

if.then109.if.end132_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

for.body114.lr.ph:                                ; preds = %if.then109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp119324.not = icmp eq i32 %75, 0
  br label %for.body114

for.body114:                                      ; preds = %for.inc129.for.body114_crit_edge, %for.body114.lr.ph
  %i.4327 = phi i32 [ 0, %for.body114.lr.ph ], [ %inc130, %for.inc129.for.body114_crit_edge ]
  %add116 = add i32 %i.4327, %13
  %arrayidx117 = getelementptr %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 15, i32 %add116
  %76 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx117, align 4
  br i1 %cmp119324.not, label %for.body114.for.inc129_crit_edge, label %for.body114.for.body120_crit_edge

for.body114.for.body120_crit_edge:                ; preds = %for.body114
  br label %for.body120

for.body114.for.inc129_crit_edge:                 ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc129

for.body120:                                      ; preds = %for.body120.for.body120_crit_edge, %for.body114.for.body120_crit_edge
  %j.1325 = phi i32 [ %inc127, %for.body120.for.body120_crit_edge ], [ 0, %for.body114.for.body120_crit_edge ]
  %arrayidx121 = getelementptr %struct.cdns_reg_pairs, ptr %73, i32 %j.1325
  %off122 = getelementptr %struct.cdns_reg_pairs, ptr %73, i32 %j.1325, i32 1
  %78 = ptrtoint ptr %off122 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %off122, align 4
  %80 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx121, align 4
  %call125 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %79, i32 noundef %81) #7
  %inc127 = add nuw i32 %j.1325, 1
  %exitcond340.not = icmp eq i32 %inc127, %75
  br i1 %exitcond340.not, label %for.body120.for.inc129_crit_edge, label %for.body120.for.body120_crit_edge

for.body120.for.body120_crit_edge:                ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body120

for.body120.for.inc129_crit_edge:                 ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc129

for.inc129:                                       ; preds = %for.body120.for.inc129_crit_edge, %for.body114.for.inc129_crit_edge
  %inc130 = add nuw nsw i32 %i.4327, 1
  %exitcond341.not = icmp eq i32 %inc130, %17
  br i1 %exitcond341.not, label %for.inc129.if.end132_crit_edge, label %for.inc129.for.body114_crit_edge

for.inc129.for.body114_crit_edge:                 ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body114

for.inc129.if.end132_crit_edge:                   ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.end132:                                        ; preds = %for.inc129.if.end132_crit_edge, %if.then109.if.end132_crit_edge, %if.end102.if.end132_crit_edge
  %arrayidx137 = getelementptr %struct.cdns_torrent_data, ptr %1, i32 0, i32 7, i32 %3, i32 %spec.select, i32 %spec.select313, i32 %15
  %82 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx137, align 4
  %tobool138.not = icmp eq ptr %83, null
  br i1 %tobool138.not, label %if.end132.if.end161_crit_edge, label %if.then139

if.end132.if.end161_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end161

if.then139:                                       ; preds = %if.end132
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %num_regs141 = getelementptr inbounds %struct.cdns_torrent_vals, ptr %83, i32 0, i32 1
  %86 = ptrtoint ptr %num_regs141 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_regs141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp143330 = icmp sgt i32 %17, 0
  br i1 %cmp143330, label %for.body144.lr.ph, label %if.then139.if.end161_crit_edge

if.then139.if.end161_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end161

for.body144.lr.ph:                                ; preds = %if.then139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp148328.not = icmp eq i32 %87, 0
  br label %for.body144

for.body144:                                      ; preds = %for.inc158.for.body144_crit_edge, %for.body144.lr.ph
  %i.5331 = phi i32 [ 0, %for.body144.lr.ph ], [ %inc159, %for.inc158.for.body144_crit_edge ]
  %add145 = add i32 %i.5331, %13
  %arrayidx146 = getelementptr %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 16, i32 %add145
  %88 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx146, align 4
  br i1 %cmp148328.not, label %for.body144.for.inc158_crit_edge, label %for.body144.for.body149_crit_edge

for.body144.for.body149_crit_edge:                ; preds = %for.body144
  br label %for.body149

for.body144.for.inc158_crit_edge:                 ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc158

for.body149:                                      ; preds = %for.body149.for.body149_crit_edge, %for.body144.for.body149_crit_edge
  %j.2329 = phi i32 [ %inc156, %for.body149.for.body149_crit_edge ], [ 0, %for.body144.for.body149_crit_edge ]
  %arrayidx150 = getelementptr %struct.cdns_reg_pairs, ptr %85, i32 %j.2329
  %off151 = getelementptr %struct.cdns_reg_pairs, ptr %85, i32 %j.2329, i32 1
  %90 = ptrtoint ptr %off151 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %off151, align 4
  %92 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx150, align 4
  %call154 = tail call i32 @regmap_write(ptr noundef %89, i32 noundef %91, i32 noundef %93) #7
  %inc156 = add nuw i32 %j.2329, 1
  %exitcond342.not = icmp eq i32 %inc156, %87
  br i1 %exitcond342.not, label %for.body149.for.inc158_crit_edge, label %for.body149.for.body149_crit_edge

for.body149.for.body149_crit_edge:                ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body149

for.body149.for.inc158_crit_edge:                 ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc158

for.inc158:                                       ; preds = %for.body149.for.inc158_crit_edge, %for.body144.for.inc158_crit_edge
  %inc159 = add nuw nsw i32 %i.5331, 1
  %exitcond343.not = icmp eq i32 %inc159, %17
  br i1 %exitcond343.not, label %for.inc158.if.end161_crit_edge, label %for.inc158.for.body144_crit_edge

for.inc158.for.body144_crit_edge:                 ; preds = %for.inc158
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body144

for.inc158.if.end161_crit_edge:                   ; preds = %for.inc158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end161

if.end161:                                        ; preds = %for.inc158.if.end161_crit_edge, %if.then139.if.end161_crit_edge, %if.end132.if.end161_crit_edge
  %lnk_rst = getelementptr %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 8, i32 %node.0335, i32 4
  %94 = ptrtoint ptr %lnk_rst to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %lnk_rst, align 4
  %call164 = tail call i32 @reset_control_deassert(ptr noundef %95) #7
  %inc166 = add nuw nsw i32 %node.0335, 1
  %96 = ptrtoint ptr %nsubnodes to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nsubnodes, align 4
  %cmp6 = icmp slt i32 %inc166, %97
  br i1 %cmp6, label %if.end161.for.body_crit_edge, label %if.end161.for.end167_crit_edge

if.end161.for.end167_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end167

if.end161.for.body_crit_edge:                     ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end167:                                       ; preds = %if.end161.for.end167_crit_edge, %if.end.for.end167_crit_edge
  %phy_rst = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 3
  %98 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %phy_rst, align 4
  %call168 = tail call i32 @reset_control_deassert(ptr noundef %99) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end167, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call168, %for.end167 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_regmap_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !554
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !555
  %conv2 = zext i16 %5 to i32
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv2, ptr %val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_regmap_write(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_offset_shift = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %reg_offset_shift to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg_offset_shift, align 4
  %conv = zext i8 %1 to i32
  %shl = shl i32 %reg, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !556
  tail call void @arm_heavy_mb() #7
  %conv1 = trunc i32 %val to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv1)
  %base = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %context, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %shl
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #7, !srcloc !557
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_torrent_derived_refclk_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmn_cdiag_refclk_ovrd_4 = getelementptr inbounds %struct.cdns_torrent_derived_refclk, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %cmn_cdiag_refclk_ovrd_4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmn_cdiag_refclk_ovrd_4, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %phy_pipe_cmn_ctrl1_0 = getelementptr inbounds %struct.cdns_torrent_derived_refclk, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %phy_pipe_cmn_ctrl1_0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_pipe_cmn_ctrl1_0, align 4
  %call.i3 = tail call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_torrent_derived_refclk_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_pipe_cmn_ctrl1_0 = getelementptr inbounds %struct.cdns_torrent_derived_refclk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy_pipe_cmn_ctrl1_0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_pipe_cmn_ctrl1_0, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %cmn_cdiag_refclk_ovrd_4 = getelementptr inbounds %struct.cdns_torrent_derived_refclk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %cmn_cdiag_refclk_ovrd_4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmn_cdiag_refclk_ovrd_4, align 4
  %call.i3 = tail call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_torrent_derived_refclk_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !552
  %cmn_cdiag_refclk_ovrd_4 = getelementptr inbounds %struct.cdns_torrent_derived_refclk, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %cmn_cdiag_refclk_ovrd_4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmn_cdiag_refclk_ovrd_4, align 4
  %call = call i32 @regmap_field_read(ptr noundef %2, ptr noundef nonnull %val) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %lnot.ext = zext i1 %tobool to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_torrent_received_refclk_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_pipe_cmn_ctrl1_0 = getelementptr inbounds %struct.cdns_torrent_received_refclk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy_pipe_cmn_ctrl1_0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_pipe_cmn_ctrl1_0, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_torrent_received_refclk_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_pipe_cmn_ctrl1_0 = getelementptr inbounds %struct.cdns_torrent_received_refclk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy_pipe_cmn_ctrl1_0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_pipe_cmn_ctrl1_0, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_torrent_received_refclk_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  %cmn_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !552
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmn_val) #7
  %1 = ptrtoint ptr %cmn_val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cmn_val, align 4, !annotation !552
  %phy_pipe_cmn_ctrl1_0 = getelementptr inbounds %struct.cdns_torrent_received_refclk, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %phy_pipe_cmn_ctrl1_0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_pipe_cmn_ctrl1_0, align 4
  %call = call i32 @regmap_field_read(ptr noundef %3, ptr noundef nonnull %val) #7
  %cmn_cdiag_refclk_ovrd_4 = getelementptr inbounds %struct.cdns_torrent_received_refclk, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %cmn_cdiag_refclk_ovrd_4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmn_cdiag_refclk_ovrd_4, align 4
  %call1 = call i32 @regmap_field_read(ptr noundef %5, ptr noundef nonnull %cmn_val) #7
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %cmn_val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmn_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  %phi.cast = zext i1 %tobool2.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %10 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmn_val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_torrent_refclk_driver_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmn_fields = getelementptr inbounds %struct.cdns_torrent_refclk_driver, ptr %hw, i32 0, i32 1
  %arrayidx = getelementptr %struct.cdns_torrent_refclk_driver, ptr %hw, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %arrayidx2 = getelementptr %struct.cdns_torrent_refclk_driver, ptr %hw, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %call.i9 = tail call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %4 = ptrtoint ptr %cmn_fields to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmn_fields, align 4
  %call.i10 = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_torrent_refclk_driver_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmn_fields = getelementptr inbounds %struct.cdns_torrent_refclk_driver, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cmn_fields to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmn_fields, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_torrent_refclk_driver_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !552
  %cmn_fields = getelementptr inbounds %struct.cdns_torrent_refclk_driver, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %cmn_fields to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmn_fields, align 4
  %call = call i32 @regmap_field_read(ptr noundef %2, ptr noundef nonnull %val) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_torrent_refclk_driver_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %index to i32
  %arrayidx = getelementptr [2 x i32], ptr @cdns_torrent_refclk_driver_mux_table, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.cdns_torrent_refclk_driver, ptr %hw, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef %1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @cdns_torrent_refclk_driver_get_parent(ptr noundef %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !552
  %arrayidx = getelementptr %struct.cdns_torrent_refclk_driver, ptr %hw, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @regmap_field_read(ptr noundef %2, ptr noundef nonnull %val) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %call1 = call i32 @clk_mux_val_to_index(ptr noundef %hw, ptr noundef nonnull @cdns_torrent_refclk_driver_mux_table, i32 noundef 0, i32 noundef %4) #7
  %conv = trunc i32 %call1 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i8 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_val_to_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_torrent_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %val.i24.i.i.i = alloca i32, align 4
  %val.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %init_data1 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %init_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_data1, align 4
  %ref_clk_rate = getelementptr inbounds %struct.cdns_torrent_phy, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %ref_clk_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref_clk_rate, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %phy_type3 = getelementptr inbounds %struct.cdns_torrent_inst, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %phy_type3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy_type3, align 4
  %nsubnodes = getelementptr inbounds %struct.cdns_torrent_phy, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %nsubnodes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nsubnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp sgt i32 %13, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ssc_mode = getelementptr inbounds %struct.cdns_torrent_inst, ptr %9, i32 0, i32 5
  %14 = ptrtoint ptr %ssc_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ssc_mode, align 4
  %.off = add i32 %11, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %spec.select = select i1 %switch, i32 0, i32 %15
  %arrayidx = getelementptr %struct.cdns_torrent_data, ptr %5, i32 0, i32 2, i32 %11
  %arrayidx10 = getelementptr [3 x ptr], ptr %arrayidx, i32 0, i32 %spec.select
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx10, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.end.if.end21_crit_edge, label %if.then11

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then11:                                        ; preds = %if.end
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %num_regs13 = getelementptr inbounds %struct.cdns_torrent_vals, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %num_regs13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_regs13, align 4
  %regmap_common_cdb = getelementptr inbounds %struct.cdns_torrent_phy, ptr %3, i32 0, i32 12
  %22 = ptrtoint ptr %regmap_common_cdb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap_common_cdb, align 4
  %phy_pll_cfg = getelementptr inbounds %struct.cdns_torrent_phy, ptr %3, i32 0, i32 19
  %24 = ptrtoint ptr %phy_pll_cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy_pll_cfg, align 4
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %19, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %25, i32 noundef -1, i32 noundef %27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp16284 = icmp ugt i32 %21, 1
  br i1 %cmp16284, label %if.then11.for.body_crit_edge, label %if.then11.if.end21_crit_edge

if.then11.if.end21_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then11.for.body_crit_edge:                     ; preds = %if.then11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then11.for.body_crit_edge
  %i.0285 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.then11.for.body_crit_edge ]
  %arrayidx17 = getelementptr %struct.cdns_reg_pairs, ptr %19, i32 %i.0285
  %off = getelementptr %struct.cdns_reg_pairs, ptr %19, i32 %i.0285, i32 1
  %28 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %off, align 4
  %30 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx17, align 4
  %call20 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef %29, i32 noundef %31) #7
  %inc = add nuw i32 %i.0285, 1
  %exitcond.not = icmp eq i32 %inc, %21
  br i1 %exitcond.not, label %for.body.if.end21_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end21:                                         ; preds = %for.body.if.end21_crit_edge, %if.then11.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %arrayidx23 = getelementptr %struct.cdns_torrent_data, ptr %5, i32 0, i32 3, i32 %11
  %arrayidx25 = getelementptr [3 x ptr], ptr %arrayidx23, i32 0, i32 %spec.select
  %32 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %33, null
  br i1 %tobool26.not, label %if.end21.if.end48_crit_edge, label %if.then27

if.end21.if.end48_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then27:                                        ; preds = %if.end21
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %num_regs29 = getelementptr inbounds %struct.cdns_torrent_vals, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %num_regs29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_regs29, align 4
  %num_lanes = getelementptr inbounds %struct.cdns_torrent_inst, ptr %9, i32 0, i32 3
  %38 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp31288.not = icmp eq i32 %39, 0
  br i1 %cmp31288.not, label %if.then27.if.end48_crit_edge, label %for.body32.lr.ph

if.then27.if.end48_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

for.body32.lr.ph:                                 ; preds = %if.then27
  %mlane = getelementptr inbounds %struct.cdns_torrent_inst, ptr %9, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp35286.not = icmp eq i32 %37, 0
  br label %for.body32

for.body32:                                       ; preds = %for.inc45.for.body32_crit_edge, %for.body32.lr.ph
  %i.1289 = phi i32 [ 0, %for.body32.lr.ph ], [ %inc46, %for.inc45.for.body32_crit_edge ]
  %40 = ptrtoint ptr %mlane to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mlane, align 4
  %add = add i32 %41, %i.1289
  %arrayidx33 = getelementptr %struct.cdns_torrent_phy, ptr %3, i32 0, i32 15, i32 %add
  %42 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx33, align 4
  br i1 %cmp35286.not, label %for.body32.for.inc45_crit_edge, label %for.body32.for.body36_crit_edge

for.body32.for.body36_crit_edge:                  ; preds = %for.body32
  br label %for.body36

for.body32.for.inc45_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc45

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %for.body32.for.body36_crit_edge
  %j.0287 = phi i32 [ %inc43, %for.body36.for.body36_crit_edge ], [ 0, %for.body32.for.body36_crit_edge ]
  %arrayidx37 = getelementptr %struct.cdns_reg_pairs, ptr %35, i32 %j.0287
  %off38 = getelementptr %struct.cdns_reg_pairs, ptr %35, i32 %j.0287, i32 1
  %44 = ptrtoint ptr %off38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %off38, align 4
  %46 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx37, align 4
  %call41 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef %45, i32 noundef %47) #7
  %inc43 = add nuw i32 %j.0287, 1
  %exitcond302.not = icmp eq i32 %inc43, %37
  br i1 %exitcond302.not, label %for.body36.for.inc45_crit_edge, label %for.body36.for.body36_crit_edge

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body36

for.body36.for.inc45_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc45

for.inc45:                                        ; preds = %for.body36.for.inc45_crit_edge, %for.body32.for.inc45_crit_edge
  %inc46 = add nuw i32 %i.1289, 1
  %48 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_lanes, align 4
  %cmp31 = icmp ult i32 %inc46, %49
  br i1 %cmp31, label %for.inc45.for.body32_crit_edge, label %for.inc45.if.end48_crit_edge

for.inc45.if.end48_crit_edge:                     ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

for.inc45.for.body32_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body32

if.end48:                                         ; preds = %for.inc45.if.end48_crit_edge, %if.then27.if.end48_crit_edge, %if.end21.if.end48_crit_edge
  %arrayidx50 = getelementptr %struct.cdns_torrent_data, ptr %5, i32 0, i32 4, i32 %11
  %arrayidx52 = getelementptr [3 x ptr], ptr %arrayidx50, i32 0, i32 %spec.select
  %50 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx52, align 4
  %tobool53.not = icmp eq ptr %51, null
  br i1 %tobool53.not, label %if.end48.if.end68_crit_edge, label %if.then54

if.end48.if.end68_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then54:                                        ; preds = %if.end48
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %num_regs56 = getelementptr inbounds %struct.cdns_torrent_vals, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %num_regs56 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_regs56, align 4
  %regmap_phy_pcs_common_cdb = getelementptr inbounds %struct.cdns_torrent_phy, ptr %3, i32 0, i32 13
  %56 = ptrtoint ptr %regmap_phy_pcs_common_cdb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap_phy_pcs_common_cdb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp58290.not = icmp eq i32 %55, 0
  br i1 %cmp58290.not, label %if.then54.if.end68_crit_edge, label %if.then54.for.body59_crit_edge

if.then54.for.body59_crit_edge:                   ; preds = %if.then54
  br label %for.body59

if.then54.if.end68_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

for.body59:                                       ; preds = %for.body59.for.body59_crit_edge, %if.then54.for.body59_crit_edge
  %i.2291 = phi i32 [ %inc66, %for.body59.for.body59_crit_edge ], [ 0, %if.then54.for.body59_crit_edge ]
  %arrayidx60 = getelementptr %struct.cdns_reg_pairs, ptr %53, i32 %i.2291
  %off61 = getelementptr %struct.cdns_reg_pairs, ptr %53, i32 %i.2291, i32 1
  %58 = ptrtoint ptr %off61 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %off61, align 4
  %60 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx60, align 4
  %call64 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef %59, i32 noundef %61) #7
  %inc66 = add nuw i32 %i.2291, 1
  %exitcond303.not = icmp eq i32 %inc66, %55
  br i1 %exitcond303.not, label %for.body59.if.end68_crit_edge, label %for.body59.for.body59_crit_edge

for.body59.for.body59_crit_edge:                  ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body59

for.body59.if.end68_crit_edge:                    ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.end68:                                         ; preds = %for.body59.if.end68_crit_edge, %if.then54.if.end68_crit_edge, %if.end48.if.end68_crit_edge
  %arrayidx71 = getelementptr %struct.cdns_torrent_data, ptr %5, i32 0, i32 5, i32 %7, i32 %11
  %arrayidx73 = getelementptr [3 x ptr], ptr %arrayidx71, i32 0, i32 %spec.select
  %62 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx73, align 4
  %tobool74.not = icmp eq ptr %63, null
  br i1 %tobool74.not, label %if.end68.if.end90_crit_edge, label %if.then75

if.end68.if.end90_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then75:                                        ; preds = %if.end68
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %num_regs77 = getelementptr inbounds %struct.cdns_torrent_vals, ptr %63, i32 0, i32 1
  %66 = ptrtoint ptr %num_regs77 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_regs77, align 4
  %regmap_common_cdb78 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %3, i32 0, i32 12
  %68 = ptrtoint ptr %regmap_common_cdb78 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap_common_cdb78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp80292.not = icmp eq i32 %67, 0
  br i1 %cmp80292.not, label %if.then75.if.end90_crit_edge, label %if.then75.for.body81_crit_edge

if.then75.for.body81_crit_edge:                   ; preds = %if.then75
  br label %for.body81

if.then75.if.end90_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

for.body81:                                       ; preds = %for.body81.for.body81_crit_edge, %if.then75.for.body81_crit_edge
  %i.3293 = phi i32 [ %inc88, %for.body81.for.body81_crit_edge ], [ 0, %if.then75.for.body81_crit_edge ]
  %arrayidx82 = getelementptr %struct.cdns_reg_pairs, ptr %65, i32 %i.3293
  %off83 = getelementptr %struct.cdns_reg_pairs, ptr %65, i32 %i.3293, i32 1
  %70 = ptrtoint ptr %off83 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %off83, align 4
  %72 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx82, align 4
  %call86 = tail call i32 @regmap_write(ptr noundef %69, i32 noundef %71, i32 noundef %73) #7
  %inc88 = add nuw i32 %i.3293, 1
  %exitcond304.not = icmp eq i32 %inc88, %67
  br i1 %exitcond304.not, label %for.body81.if.end90_crit_edge, label %for.body81.for.body81_crit_edge

for.body81.for.body81_crit_edge:                  ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body81

for.body81.if.end90_crit_edge:                    ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.end90:                                         ; preds = %for.body81.if.end90_crit_edge, %if.then75.if.end90_crit_edge, %if.end68.if.end90_crit_edge
  %arrayidx93 = getelementptr %struct.cdns_torrent_data, ptr %5, i32 0, i32 6, i32 %7, i32 %11
  %arrayidx95 = getelementptr [3 x ptr], ptr %arrayidx93, i32 0, i32 %spec.select
  %74 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx95, align 4
  %tobool96.not = icmp eq ptr %75, null
  br i1 %tobool96.not, label %if.end90.if.end122_crit_edge, label %if.then97

if.end90.if.end122_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then97:                                        ; preds = %if.end90
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %num_regs99 = getelementptr inbounds %struct.cdns_torrent_vals, ptr %75, i32 0, i32 1
  %78 = ptrtoint ptr %num_regs99 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_regs99, align 4
  %num_lanes101 = getelementptr inbounds %struct.cdns_torrent_inst, ptr %9, i32 0, i32 3
  %80 = ptrtoint ptr %num_lanes101 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_lanes101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp102296.not = icmp eq i32 %81, 0
  br i1 %cmp102296.not, label %if.then97.if.end122_crit_edge, label %for.body103.lr.ph

if.then97.if.end122_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

for.body103.lr.ph:                                ; preds = %if.then97
  %mlane105 = getelementptr inbounds %struct.cdns_torrent_inst, ptr %9, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp109294.not = icmp eq i32 %79, 0
  br label %for.body103

for.body103:                                      ; preds = %for.inc119.for.body103_crit_edge, %for.body103.lr.ph
  %i.4297 = phi i32 [ 0, %for.body103.lr.ph ], [ %inc120, %for.inc119.for.body103_crit_edge ]
  %82 = ptrtoint ptr %mlane105 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mlane105, align 4
  %add106 = add i32 %83, %i.4297
  %arrayidx107 = getelementptr %struct.cdns_torrent_phy, ptr %3, i32 0, i32 15, i32 %add106
  %84 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx107, align 4
  br i1 %cmp109294.not, label %for.body103.for.inc119_crit_edge, label %for.body103.for.body110_crit_edge

for.body103.for.body110_crit_edge:                ; preds = %for.body103
  br label %for.body110

for.body103.for.inc119_crit_edge:                 ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc119

for.body110:                                      ; preds = %for.body110.for.body110_crit_edge, %for.body103.for.body110_crit_edge
  %j.1295 = phi i32 [ %inc117, %for.body110.for.body110_crit_edge ], [ 0, %for.body103.for.body110_crit_edge ]
  %arrayidx111 = getelementptr %struct.cdns_reg_pairs, ptr %77, i32 %j.1295
  %off112 = getelementptr %struct.cdns_reg_pairs, ptr %77, i32 %j.1295, i32 1
  %86 = ptrtoint ptr %off112 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %off112, align 4
  %88 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx111, align 4
  %call115 = tail call i32 @regmap_write(ptr noundef %85, i32 noundef %87, i32 noundef %89) #7
  %inc117 = add nuw i32 %j.1295, 1
  %exitcond305.not = icmp eq i32 %inc117, %79
  br i1 %exitcond305.not, label %for.body110.for.inc119_crit_edge, label %for.body110.for.body110_crit_edge

for.body110.for.body110_crit_edge:                ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body110

for.body110.for.inc119_crit_edge:                 ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc119

for.inc119:                                       ; preds = %for.body110.for.inc119_crit_edge, %for.body103.for.inc119_crit_edge
  %inc120 = add nuw i32 %i.4297, 1
  %90 = ptrtoint ptr %num_lanes101 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_lanes101, align 4
  %cmp102 = icmp ult i32 %inc120, %91
  br i1 %cmp102, label %for.inc119.for.body103_crit_edge, label %for.inc119.if.end122_crit_edge

for.inc119.if.end122_crit_edge:                   ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

for.inc119.for.body103_crit_edge:                 ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body103

if.end122:                                        ; preds = %for.inc119.if.end122_crit_edge, %if.then97.if.end122_crit_edge, %if.end90.if.end122_crit_edge
  %arrayidx125 = getelementptr %struct.cdns_torrent_data, ptr %5, i32 0, i32 7, i32 %7, i32 %11
  %arrayidx127 = getelementptr [3 x ptr], ptr %arrayidx125, i32 0, i32 %spec.select
  %92 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx127, align 4
  %tobool128.not = icmp eq ptr %93, null
  br i1 %tobool128.not, label %if.end122.if.end153_crit_edge, label %if.then129

if.end122.if.end153_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

if.then129:                                       ; preds = %if.end122
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %num_regs131 = getelementptr inbounds %struct.cdns_torrent_vals, ptr %93, i32 0, i32 1
  %96 = ptrtoint ptr %num_regs131 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_regs131, align 4
  %num_lanes133 = getelementptr inbounds %struct.cdns_torrent_inst, ptr %9, i32 0, i32 3
  %98 = ptrtoint ptr %num_lanes133 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_lanes133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp134300.not = icmp eq i32 %99, 0
  br i1 %cmp134300.not, label %if.then129.if.end153_crit_edge, label %for.body135.lr.ph

if.then129.if.end153_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

for.body135.lr.ph:                                ; preds = %if.then129
  %mlane136 = getelementptr inbounds %struct.cdns_torrent_inst, ptr %9, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp140298.not = icmp eq i32 %97, 0
  br label %for.body135

for.body135:                                      ; preds = %for.inc150.for.body135_crit_edge, %for.body135.lr.ph
  %i.5301 = phi i32 [ 0, %for.body135.lr.ph ], [ %inc151, %for.inc150.for.body135_crit_edge ]
  %100 = ptrtoint ptr %mlane136 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mlane136, align 4
  %add137 = add i32 %101, %i.5301
  %arrayidx138 = getelementptr %struct.cdns_torrent_phy, ptr %3, i32 0, i32 16, i32 %add137
  %102 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx138, align 4
  br i1 %cmp140298.not, label %for.body135.for.inc150_crit_edge, label %for.body135.for.body141_crit_edge

for.body135.for.body141_crit_edge:                ; preds = %for.body135
  br label %for.body141

for.body135.for.inc150_crit_edge:                 ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc150

for.body141:                                      ; preds = %for.body141.for.body141_crit_edge, %for.body135.for.body141_crit_edge
  %j.2299 = phi i32 [ %inc148, %for.body141.for.body141_crit_edge ], [ 0, %for.body135.for.body141_crit_edge ]
  %arrayidx142 = getelementptr %struct.cdns_reg_pairs, ptr %95, i32 %j.2299
  %off143 = getelementptr %struct.cdns_reg_pairs, ptr %95, i32 %j.2299, i32 1
  %104 = ptrtoint ptr %off143 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %off143, align 4
  %106 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx142, align 4
  %call146 = tail call i32 @regmap_write(ptr noundef %103, i32 noundef %105, i32 noundef %107) #7
  %inc148 = add nuw i32 %j.2299, 1
  %exitcond306.not = icmp eq i32 %inc148, %97
  br i1 %exitcond306.not, label %for.body141.for.inc150_crit_edge, label %for.body141.for.body141_crit_edge

for.body141.for.body141_crit_edge:                ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body141

for.body141.for.inc150_crit_edge:                 ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc150

for.inc150:                                       ; preds = %for.body141.for.inc150_crit_edge, %for.body135.for.inc150_crit_edge
  %inc151 = add nuw i32 %i.5301, 1
  %108 = ptrtoint ptr %num_lanes133 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_lanes133, align 4
  %cmp134 = icmp ult i32 %inc151, %109
  br i1 %cmp134, label %for.inc150.for.body135_crit_edge, label %for.inc150.if.end153_crit_edge

for.inc150.if.end153_crit_edge:                   ; preds = %for.inc150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

for.inc150.for.body135_crit_edge:                 ; preds = %for.inc150
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body135

if.end153:                                        ; preds = %for.inc150.if.end153_crit_edge, %if.then129.if.end153_crit_edge, %if.end122.if.end153_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp154 = icmp eq i32 %11, 1
  br i1 %cmp154, label %if.then155, label %if.end153.cleanup_crit_edge

if.end153.cleanup_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then155:                                       ; preds = %if.end153
  %110 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %parent, align 8
  %driver_data.i.i283 = getelementptr inbounds %struct.device, ptr %111, i32 0, i32 8
  %112 = ptrtoint ptr %driver_data.i.i283 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %driver_data.i.i283, align 4
  %ref_clk_rate.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %113, i32 0, i32 7
  %114 = ptrtoint ptr %ref_clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ref_clk_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %115)
  %switch.i = icmp ult i32 %115, 3
  br i1 %switch.i, label %sw.epilog.i, label %do.end.i

do.end.i:                                         ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #9
  %dev2.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %113, i32 0, i32 5
  %116 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev2.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.135) #10
  br label %cleanup

sw.epilog.i:                                      ; preds = %if.then155
  %118 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %driver_data.i.i, align 4
  %regmap_dptx_phy_reg.i.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %113, i32 0, i32 18
  %120 = ptrtoint ptr %regmap_dptx_phy_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regmap_dptx_phy_reg.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_write(ptr noundef %121, i32 noundef 4, i32 noundef 3) #7
  %num_lanes.i.i = getelementptr inbounds %struct.cdns_torrent_inst, ptr %119, i32 0, i32 3
  %122 = ptrtoint ptr %num_lanes.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_lanes.i.i, align 4
  %124 = ptrtoint ptr %regmap_dptx_phy_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regmap_dptx_phy_reg.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i.i) #7
  %126 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %val.i.i.i.i, align 4, !annotation !552
  %call.i.i.i.i = call i32 @regmap_read(ptr noundef %125, i32 noundef 44, ptr noundef nonnull %val.i.i.i.i) #7
  %127 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %val.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i24.i.i.i) #7
  %129 = ptrtoint ptr %val.i24.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 -1, ptr %val.i24.i.i.i, align 4, !annotation !552
  %call.i25.i.i.i = call i32 @regmap_read(ptr noundef %125, i32 noundef 36, ptr noundef nonnull %val.i24.i.i.i) #7
  %130 = ptrtoint ptr %val.i24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %val.i24.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i24.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %123)
  %cmp.i.i.i = icmp ugt i32 %123, 1
  %pwr_state.0.v.i.i.i = select i1 %cmp.i.i.i, i32 -16192, i32 -64
  %pwr_state.0.i.i.i = and i32 %128, %pwr_state.0.v.i.i.i
  %pll_clk_en.0.v.i.i.i = select i1 %cmp.i.i.i, i32 -4, i32 -2
  %pll_clk_en.0.i.i.i = and i32 %131, %pll_clk_en.0.v.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %123)
  %cmp5.i.i.i = icmp ugt i32 %123, 2
  %and8.i.i.i = and i32 %pwr_state.0.i.i.i, -1061093440
  %and10.i.i.i = and i32 %pll_clk_en.0.i.i.i, -14
  %pwr_state.1.i.i.i = select i1 %cmp5.i.i.i, i32 %and8.i.i.i, i32 %pwr_state.0.i.i.i
  %pll_clk_en.1.i.i.i = select i1 %cmp5.i.i.i, i32 %and10.i.i.i, i32 %pll_clk_en.0.i.i.i
  %call.i26.i.i.i = call i32 @regmap_write(ptr noundef %125, i32 noundef 44, i32 noundef %pwr_state.1.i.i.i) #7
  %call.i27.i.i.i = call i32 @regmap_write(ptr noundef %125, i32 noundef 36, i32 noundef %pll_clk_en.1.i.i.i) #7
  %132 = ptrtoint ptr %num_lanes.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %num_lanes.i.i, align 4
  %notmask.i.i = shl nsw i32 -1, %133
  %and.i.i = shl i32 %notmask.i.i, 4
  %shl3.i.i = and i32 %and.i.i, 240
  %conv2.i.i = and i32 %notmask.i.i, 15
  %134 = or i32 %shl3.i.i, %conv2.i.i
  %or.i.i = xor i32 %134, 15
  %call.i41.i.i = call i32 @regmap_write(ptr noundef %121, i32 noundef 32, i32 noundef %or.i.i) #7
  %call.i42.i.i = call i32 @regmap_write(ptr noundef %121, i32 noundef 36, i32 noundef 1) #7
  %135 = ptrtoint ptr %ref_clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %ref_clk_rate.i, align 4
  %137 = zext i32 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %136, label %sw.epilog.i.cdns_torrent_dp_common_init.exit.i_crit_edge [
    i32 0, label %if.then.i.i
    i32 1, label %if.then10.i.i
    i32 2, label %if.then16.i.i
  ]

sw.epilog.i.cdns_torrent_dp_common_init.exit.i_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_dp_common_init.exit.i

if.then.i.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_bit_rate.i.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %113, i32 0, i32 2
  %138 = ptrtoint ptr %max_bit_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %max_bit_rate.i.i, align 4
  call fastcc void @cdns_torrent_dp_pma_cmn_vco_cfg_19_2mhz(ptr noundef %113, i32 noundef %139, i1 noundef zeroext false) #7
  br label %cdns_torrent_dp_common_init.exit.i

if.then10.i.i:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_bit_rate11.i.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %113, i32 0, i32 2
  %140 = ptrtoint ptr %max_bit_rate11.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %max_bit_rate11.i.i, align 4
  call fastcc void @cdns_torrent_dp_pma_cmn_vco_cfg_25mhz(ptr noundef %113, i32 noundef %141, i1 noundef zeroext false) #7
  br label %cdns_torrent_dp_common_init.exit.i

if.then16.i.i:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_bit_rate17.i.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %113, i32 0, i32 2
  %142 = ptrtoint ptr %max_bit_rate17.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %max_bit_rate17.i.i, align 4
  call fastcc void @cdns_torrent_dp_pma_cmn_vco_cfg_100mhz(ptr noundef %113, i32 noundef %143) #7
  br label %cdns_torrent_dp_common_init.exit.i

cdns_torrent_dp_common_init.exit.i:               ; preds = %if.then16.i.i, %if.then10.i.i, %if.then.i.i, %sw.epilog.i.cdns_torrent_dp_common_init.exit.i_crit_edge
  %max_bit_rate20.i.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %113, i32 0, i32 2
  %144 = ptrtoint ptr %max_bit_rate20.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %max_bit_rate20.i.i, align 4
  %146 = ptrtoint ptr %num_lanes.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %num_lanes.i.i, align 4
  call fastcc void @cdns_torrent_dp_pma_cmn_rate(ptr noundef %113, i32 noundef %145, i32 noundef %147) #7
  %phy_reset_ctrl.i.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %113, i32 0, i32 25
  %148 = ptrtoint ptr %phy_reset_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %phy_reset_ctrl.i.i, align 4
  %call.i43.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %149, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i.i = call i32 @cdns_torrent_phy_on(ptr noundef %phy) #7
  %call1.i.i = call fastcc i32 @cdns_torrent_dp_wait_pma_cmn_ready(ptr noundef %113) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %cdns_torrent_dp_common_init.exit.i.cleanup_crit_edge

cdns_torrent_dp_common_init.exit.i.cleanup_crit_edge: ; preds = %cdns_torrent_dp_common_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %cdns_torrent_dp_common_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %150 = ptrtoint ptr %num_lanes.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %num_lanes.i.i, align 4
  %call2.i.i = call fastcc i32 @cdns_torrent_dp_run(ptr noundef %113, i32 noundef %151) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %cdns_torrent_dp_common_init.exit.i.cleanup_crit_edge, %do.end.i, %if.end153.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end153.cleanup_crit_edge ], [ -22, %do.end.i ], [ %call2.i.i, %if.end.i.i ], [ %call1.i.i, %cdns_torrent_dp_common_init.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_torrent_phy_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %read_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_val) #7
  %6 = ptrtoint ptr %read_val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %read_val, align 4, !annotation !552
  %nsubnodes = getelementptr inbounds %struct.cdns_torrent_phy, ptr %5, i32 0, i32 9
  %7 = ptrtoint ptr %nsubnodes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nsubnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %lnk_rst = getelementptr inbounds %struct.cdns_torrent_inst, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %lnk_rst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lnk_rst, align 4
  %call2 = tail call i32 @reset_control_deassert(ptr noundef %10) #7
  %phy_rst = getelementptr inbounds %struct.cdns_torrent_phy, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy_rst, align 4
  %call3 = tail call i32 @reset_control_deassert(ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call6, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1526) #7
  %phy_pma_cmn_ctrl_1 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %5, i32 0, i32 22
  %13 = ptrtoint ptr %phy_pma_cmn_ctrl_1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy_pma_cmn_ctrl_1, align 4
  %call17178 = call i32 @regmap_field_read(ptr noundef %14, ptr noundef nonnull %read_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17178)
  %tobool18.not179 = icmp eq i32 %call17178, 0
  br i1 %tobool18.not179, label %if.end5.lor.lhs.false_crit_edge, label %if.end5.cleanup.sink.split_crit_edge

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end5.lor.lhs.false_crit_edge:                  ; preds = %if.end5
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then31.lor.lhs.false_crit_edge, %if.end5.lor.lhs.false_crit_edge
  %15 = ptrtoint ptr %read_val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %read_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool19.not = icmp eq i32 %16, 0
  br i1 %tobool19.not, label %land.lhs.true, label %lor.lhs.false.if.end44_crit_edge

lor.lhs.false.if.end44_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call23 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call23, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call23, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then31

if.then31:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %17 = ptrtoint ptr %phy_pma_cmn_ctrl_1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_pma_cmn_ctrl_1, align 4
  %call17 = call i32 @regmap_field_read(ptr noundef %18, ptr noundef nonnull %read_val) #7
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then31.lor.lhs.false_crit_edge, label %if.then31.cleanup.sink.split_crit_edge

if.then31.cleanup.sink.split_crit_edge:           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then31.lor.lhs.false_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %19 = ptrtoint ptr %phy_pma_cmn_ctrl_1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy_pma_cmn_ctrl_1, align 4
  %call28 = call i32 @regmap_field_read(ptr noundef %20, ptr noundef nonnull %read_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool33.not = icmp eq i32 %call28, 0
  br i1 %tobool33.not, label %lor.rhs, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.rhs:                                          ; preds = %for.end
  %21 = ptrtoint ptr %read_val to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %read_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool34.not = icmp eq i32 %.pr, 0
  br i1 %tobool34.not, label %lor.rhs.cleanup.sink.split_crit_edge, label %lor.rhs.if.end44_crit_edge

lor.rhs.if.end44_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

lor.rhs.cleanup.sink.split_crit_edge:             ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end44:                                         ; preds = %lor.rhs.if.end44_crit_edge, %lor.lhs.false.if.end44_crit_edge
  %phy_type = getelementptr inbounds %struct.cdns_torrent_inst, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %phy_type, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %23, label %if.end44.cleanup_crit_edge [
    i32 2, label %if.end44.if.then49_crit_edge
    i32 5, label %if.end44.if.then49_crit_edge196
  ]

if.end44.if.then49_crit_edge196:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then49

if.end44.if.then49_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then49

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then49:                                        ; preds = %if.end44.if.then49_crit_edge, %if.end44.if.then49_crit_edge196
  %call55 = call i64 @ktime_get() #7
  %add.i147 = add i64 %call55, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1535) #7
  %mlane = getelementptr inbounds %struct.cdns_torrent_inst, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %mlane to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mlane, align 4
  %arrayidx180 = getelementptr %struct.cdns_torrent_phy, ptr %5, i32 0, i32 26, i32 %26
  %27 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx180, align 4
  %call70181 = call i32 @regmap_field_read(ptr noundef %28, ptr noundef nonnull %read_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70181)
  %tobool71.not182 = icmp eq i32 %call70181, 0
  br i1 %tobool71.not182, label %if.then49.lor.lhs.false72_crit_edge, label %if.then49.lor.end97_crit_edge

if.then49.lor.end97_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end97

if.then49.lor.lhs.false72_crit_edge:              ; preds = %if.then49
  br label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.then88.lor.lhs.false72_crit_edge, %if.then49.lor.lhs.false72_crit_edge
  %29 = ptrtoint ptr %read_val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %read_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool73.not = icmp eq i32 %30, 0
  br i1 %tobool73.not, label %lor.lhs.false72.cleanup_crit_edge, label %land.lhs.true77

lor.lhs.false72.cleanup_crit_edge:                ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true77:                                  ; preds = %lor.lhs.false72
  %call78 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call78, i64 %add.i147)
  %cmp3.i149 = icmp sgt i64 %call78, %add.i147
  br i1 %cmp3.i149, label %for.end92, label %if.then88

if.then88:                                        ; preds = %land.lhs.true77
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %31 = ptrtoint ptr %mlane to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mlane, align 4
  %arrayidx = getelementptr %struct.cdns_torrent_phy, ptr %5, i32 0, i32 26, i32 %32
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %call70 = call i32 @regmap_field_read(ptr noundef %34, ptr noundef nonnull %read_val) #7
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then88.lor.lhs.false72_crit_edge, label %if.then88.lor.end97_crit_edge

if.then88.lor.end97_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end97

if.then88.lor.lhs.false72_crit_edge:              ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false72

for.end92:                                        ; preds = %land.lhs.true77
  %35 = ptrtoint ptr %mlane to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mlane, align 4
  %arrayidx84 = getelementptr %struct.cdns_torrent_phy, ptr %5, i32 0, i32 26, i32 %36
  %37 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx84, align 4
  %call85 = call i32 @regmap_field_read(ptr noundef %38, ptr noundef nonnull %read_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool94.not = icmp eq i32 %call85, 0
  br i1 %tobool94.not, label %lor.rhs95, label %for.end92.lor.end97_crit_edge

for.end92.lor.end97_crit_edge:                    ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end97

lor.rhs95:                                        ; preds = %for.end92
  %39 = ptrtoint ptr %read_val to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr194 = load i32, ptr %read_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr194)
  %tobool96.not = icmp eq i32 %.pr194, 0
  br i1 %tobool96.not, label %lor.rhs95.cleanup_crit_edge, label %lor.rhs95.cleanup.sink.split_crit_edge

lor.rhs95.cleanup.sink.split_crit_edge:           ; preds = %lor.rhs95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.rhs95.cleanup_crit_edge:                      ; preds = %lor.rhs95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.end97:                                        ; preds = %for.end92.lor.end97_crit_edge, %if.then88.lor.end97_crit_edge, %if.then49.lor.end97_crit_edge
  %tobool94.not165 = phi i32 [ %call85, %for.end92.lor.end97_crit_edge ], [ %call70181, %if.then49.lor.end97_crit_edge ], [ %call70, %if.then88.lor.end97_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %tobool94.not165)
  %cmp105 = icmp eq i32 %tobool94.not165, -110
  br i1 %cmp105, label %lor.end97.cleanup.sink.split_crit_edge, label %lor.end97.cleanup_crit_edge

lor.end97.cleanup_crit_edge:                      ; preds = %lor.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.end97.cleanup.sink.split_crit_edge:           ; preds = %lor.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.end97.cleanup.sink.split_crit_edge, %lor.rhs95.cleanup.sink.split_crit_edge, %lor.rhs.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge, %if.then31.cleanup.sink.split_crit_edge, %if.end5.cleanup.sink.split_crit_edge
  %.str.144.sink = phi ptr [ @.str.141, %lor.rhs.cleanup.sink.split_crit_edge ], [ @.str.141, %for.end.cleanup.sink.split_crit_edge ], [ @.str.141, %if.end5.cleanup.sink.split_crit_edge ], [ @.str.144, %lor.rhs95.cleanup.sink.split_crit_edge ], [ @.str.144, %lor.end97.cleanup.sink.split_crit_edge ], [ @.str.141, %if.then31.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -110, %lor.rhs.cleanup.sink.split_crit_edge ], [ %call28, %for.end.cleanup.sink.split_crit_edge ], [ %call17178, %if.end5.cleanup.sink.split_crit_edge ], [ -110, %lor.rhs95.cleanup.sink.split_crit_edge ], [ -110, %lor.end97.cleanup.sink.split_crit_edge ], [ %call17, %if.then31.cleanup.sink.split_crit_edge ]
  %dev110 = getelementptr inbounds %struct.cdns_torrent_phy, ptr %5, i32 0, i32 5
  %40 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev110, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull %.str.144.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.end97.cleanup_crit_edge, %lor.rhs95.cleanup_crit_edge, %lor.lhs.false72.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ], [ 0, %lor.end97.cleanup_crit_edge ], [ 0, %lor.rhs95.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %lor.lhs.false72.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_torrent_phy_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %nsubnodes = getelementptr inbounds %struct.cdns_torrent_phy, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %nsubnodes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nsubnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_rst = getelementptr inbounds %struct.cdns_torrent_phy, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_rst, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %lnk_rst = getelementptr inbounds %struct.cdns_torrent_inst, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %lnk_rst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lnk_rst, align 4
  %call5 = tail call i32 @reset_control_assert(ptr noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_torrent_dp_configure(ptr noundef %phy, ptr nocapture noundef readonly %opts) #2 align 64 {
entry:
  %val.i96.i = alloca i32, align 4
  %val.i.i66 = alloca i32, align 4
  %read_val.i.i = alloca i32, align 4
  %val.i24.i.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %set_rate.i = getelementptr inbounds %struct.phy_configure_opts_dp, ptr %opts, i32 0, i32 4
  %6 = ptrtoint ptr %set_rate.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %set_rate.i, align 4
  %7 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %opts, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %9, label %if.then.i.do.end_crit_edge [
    i32 1620, label %if.then.i.if.end.i_crit_edge
    i32 2160, label %if.then.i.if.end.i_crit_edge112
    i32 2430, label %if.then.i.if.end.i_crit_edge113
    i32 2700, label %if.then.i.if.end.i_crit_edge114
    i32 3240, label %if.then.i.if.end.i_crit_edge115
    i32 4320, label %if.then.i.if.end.i_crit_edge116
    i32 5400, label %if.then.i.if.end.i_crit_edge117
    i32 8100, label %if.then.i.if.end.i_crit_edge118
  ]

if.then.i.if.end.i_crit_edge118:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i.if.end.i_crit_edge117:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i.if.end.i_crit_edge116:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i.if.end.i_crit_edge115:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i.if.end.i_crit_edge114:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i.if.end.i_crit_edge113:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i.if.end.i_crit_edge112:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.then.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge112, %if.then.i.if.end.i_crit_edge113, %if.then.i.if.end.i_crit_edge114, %if.then.i.if.end.i_crit_edge115, %if.then.i.if.end.i_crit_edge116, %if.then.i.if.end.i_crit_edge117, %if.then.i.if.end.i_crit_edge118, %entry.if.end.i_crit_edge
  %lanes.i = getelementptr inbounds %struct.phy_configure_opts_dp, ptr %opts, i32 0, i32 1
  %11 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lanes.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %12, label %if.end.i.do.end_crit_edge [
    i32 1, label %if.end.i.sw.epilog3.i_crit_edge
    i32 2, label %if.end.i.sw.epilog3.i_crit_edge119
    i32 4, label %if.end.i.sw.epilog3.i_crit_edge120
  ]

if.end.i.sw.epilog3.i_crit_edge120:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3.i

if.end.i.sw.epilog3.i_crit_edge119:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3.i

if.end.i.sw.epilog3.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.epilog3.i:                                     ; preds = %if.end.i.sw.epilog3.i_crit_edge, %if.end.i.sw.epilog3.i_crit_edge119, %if.end.i.sw.epilog3.i_crit_edge120
  %num_lanes.i = getelementptr inbounds %struct.cdns_torrent_inst, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_lanes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %15)
  %cmp.i = icmp ugt i32 %12, %15
  br i1 %cmp.i, label %sw.epilog3.i.do.end_crit_edge, label %if.end6.i

sw.epilog3.i.do.end_crit_edge:                    ; preds = %sw.epilog3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end6.i:                                        ; preds = %sw.epilog3.i
  %16 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not.not.i = icmp eq i8 %16, 0
  br i1 %tobool10.not.not.i, label %if.end6.i.if.end_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  br label %for.body.i

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.i:                                       ; preds = %lor.lhs.false.i
  %inc.i = add i8 %i.050.i, 1
  %conv.i = zext i8 %inc.i to i32
  %cmp13.i = icmp ugt i32 %12, %conv.i
  br i1 %cmp13.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end_crit_edge

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end6.i.for.body.i_crit_edge
  %conv51.i = phi i32 [ %conv.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end6.i.for.body.i_crit_edge ]
  %i.050.i = phi i8 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end6.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.phy_configure_opts_dp, ptr %opts, i32 0, i32 2, i32 %conv51.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp15.i = icmp ugt i32 %18, 3
  br i1 %cmp15.i, label %for.body.i.do.end_crit_edge, label %lor.lhs.false.i

for.body.i.do.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false.i:                                  ; preds = %for.body.i
  %arrayidx18.i = getelementptr %struct.phy_configure_opts_dp, ptr %opts, i32 0, i32 3, i32 %conv51.i
  %19 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp19.i = icmp ugt i32 %20, 3
  %add.i = add i32 %20, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add.i)
  %cmp29.i = icmp ugt i32 %add.i, 3
  %or.cond.i = select i1 %cmp19.i, i1 true, i1 %cmp29.i
  br i1 %or.cond.i, label %lor.lhs.false.i.do.end_crit_edge, label %for.cond.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.i.do.end_crit_edge, %for.body.i.do.end_crit_edge, %sw.epilog3.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.then.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.146) #10
  br label %cleanup

if.end:                                           ; preds = %for.cond.i.if.end_crit_edge, %if.end6.i.if.end_crit_edge
  %21 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool4.not = icmp eq i8 %21, 0
  br i1 %tobool4.not, label %if.end.if.end14_crit_edge, label %if.then5

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then5:                                         ; preds = %if.end
  %regmap_dptx_phy_reg.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %5, i32 0, i32 18
  %22 = ptrtoint ptr %regmap_dptx_phy_reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap_dptx_phy_reg.i, align 4
  %24 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lanes.i, align 4
  %notmask.i = shl nsw i32 -1, %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %26 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %val.i.i, align 4, !annotation !552
  %call.i.i = call i32 @regmap_read(ptr noundef %23, i32 noundef 32, ptr noundef nonnull %val.i.i) #7
  %27 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.i = and i32 %28, -241
  %conv.i56 = and i32 %notmask.i, 255
  %conv1.i = xor i32 %conv.i56, 255
  %neg41.i = shl i32 %notmask.i, 4
  %and3.i = and i32 %neg41.i, 240
  %or.i = or i32 %and.i, %and3.i
  %call.i42.i = call i32 @regmap_write(ptr noundef %23, i32 noundef 32, i32 noundef %or.i) #7
  %and4.i = and i32 %or.i, -2
  %call.i43.i = call i32 @regmap_write(ptr noundef %23, i32 noundef 32, i32 noundef %and4.i) #7
  %and5.i = and i32 %or.i, 65520
  %and7.i = and i32 %conv1.i, 14
  %or8.i = or i32 %and5.i, %and7.i
  %call.i44.i = call i32 @regmap_write(ptr noundef %23, i32 noundef 32, i32 noundef %or8.i) #7
  %29 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lanes.i, align 4
  %31 = ptrtoint ptr %regmap_dptx_phy_reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap_dptx_phy_reg.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #7
  %33 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !552
  %call.i.i.i = call i32 @regmap_read(ptr noundef %32, i32 noundef 44, ptr noundef nonnull %val.i.i.i) #7
  %34 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i24.i.i) #7
  %36 = ptrtoint ptr %val.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %val.i24.i.i, align 4, !annotation !552
  %call.i25.i.i = call i32 @regmap_read(ptr noundef %32, i32 noundef 36, ptr noundef nonnull %val.i24.i.i) #7
  %37 = ptrtoint ptr %val.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i24.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i24.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i.i = icmp ugt i32 %30, 1
  %pwr_state.0.v.i.i = select i1 %cmp.i.i, i32 -16192, i32 -64
  %pwr_state.0.i.i = and i32 %35, %pwr_state.0.v.i.i
  %pll_clk_en.0.v.i.i = select i1 %cmp.i.i, i32 -4, i32 -2
  %pll_clk_en.0.i.i = and i32 %38, %pll_clk_en.0.v.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp5.i.i = icmp ugt i32 %30, 2
  %and8.i.i = and i32 %pwr_state.0.i.i, -1061093440
  %and10.i.i = and i32 %pll_clk_en.0.i.i, -14
  %pwr_state.1.i.i = select i1 %cmp5.i.i, i32 %and8.i.i, i32 %pwr_state.0.i.i
  %pll_clk_en.1.i.i = select i1 %cmp5.i.i, i32 %and10.i.i, i32 %pll_clk_en.0.i.i
  %call.i26.i.i = call i32 @regmap_write(ptr noundef %32, i32 noundef 44, i32 noundef %pwr_state.1.i.i) #7
  %call.i27.i.i = call i32 @regmap_write(ptr noundef %32, i32 noundef 36, i32 noundef %pll_clk_en.1.i.i) #7
  %and12.i = and i32 %conv1.i, 15
  %or13.i = or i32 %and5.i, %and12.i
  %call.i45.i = call i32 @regmap_write(ptr noundef %23, i32 noundef 32, i32 noundef %or13.i) #7
  %call14.i = call fastcc i32 @cdns_torrent_dp_wait_pma_cmn_ready(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i57 = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i57, label %cdns_torrent_dp_set_lanes.exit, label %if.then5.do.end11_crit_edge

if.then5.do.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

cdns_torrent_dp_set_lanes.exit:                   ; preds = %if.then5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 214748) #7
  %call.i46.i = call i32 @regmap_write(ptr noundef %23, i32 noundef 36, i32 noundef 1) #7
  %40 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lanes.i, align 4
  %call16.i = call fastcc i32 @cdns_torrent_dp_run(ptr noundef %5, i32 noundef %41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool7.not = icmp eq i32 %call16.i, 0
  br i1 %tobool7.not, label %cdns_torrent_dp_set_lanes.exit.if.end14_crit_edge, label %cdns_torrent_dp_set_lanes.exit.do.end11_crit_edge

cdns_torrent_dp_set_lanes.exit.do.end11_crit_edge: ; preds = %cdns_torrent_dp_set_lanes.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

cdns_torrent_dp_set_lanes.exit.if.end14_crit_edge: ; preds = %cdns_torrent_dp_set_lanes.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end11:                                         ; preds = %cdns_torrent_dp_set_lanes.exit.do.end11_crit_edge, %if.then5.do.end11_crit_edge
  %retval.0.i5979 = phi i32 [ %call16.i, %cdns_torrent_dp_set_lanes.exit.do.end11_crit_edge ], [ %call14.i, %if.then5.do.end11_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.149) #10
  br label %cleanup

if.end14:                                         ; preds = %cdns_torrent_dp_set_lanes.exit.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %42 = ptrtoint ptr %set_rate.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load15 = load i8, ptr %set_rate.i, align 4
  %43 = and i8 %bf.load15, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool18.not = icmp eq i8 %43, 0
  br i1 %tobool18.not, label %if.end14.if.end28_crit_edge, label %if.then19

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then19:                                        ; preds = %if.end14
  %44 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lanes.i, align 4
  %call.i = call fastcc i32 @cdns_torrent_dp_set_power_state(ptr noundef %5, i32 noundef %45, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i61 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i61, label %if.end.i62, label %if.then19.do.end25_crit_edge

if.then19.do.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

if.end.i62:                                       ; preds = %if.then19
  %call1.i = call fastcc i32 @cdns_torrent_dp_set_pll_en(ptr noundef %5, ptr noundef %opts, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i62.do.end25_crit_edge

if.end.i62.do.end25_crit_edge:                    ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

if.end4.i:                                        ; preds = %if.end.i62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 214748) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_val.i.i) #7
  %47 = ptrtoint ptr %read_val.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %read_val.i.i, align 4, !annotation !552
  %phy_pma_pll_raw_ctrl.i.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %5, i32 0, i32 24
  %48 = ptrtoint ptr %phy_pma_pll_raw_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %phy_pma_pll_raw_ctrl.i.i, align 4
  %call.i.i.i63 = call i32 @regmap_field_update_bits_base(ptr noundef %49, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call1.i.i = call i64 @ktime_get() #7
  %add.i.i.i = add i64 %call1.i.i, 5000000
  %phy_pma_cmn_ctrl_2.i.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %5, i32 0, i32 23
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.lhs.true.i.i.for.cond.i.i_crit_edge, %if.end4.i
  %50 = ptrtoint ptr %phy_pma_cmn_ctrl_2.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phy_pma_cmn_ctrl_2.i.i, align 4
  %call9.i.i = call i32 @regmap_field_read(ptr noundef %51, ptr noundef nonnull %read_val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %for.cond.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge

for.cond.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_dp_configure_rate.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %for.cond.i.i
  %52 = ptrtoint ptr %read_val.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %read_val.i.i, align 4
  %54 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp10.not.i.i = icmp eq i32 %54, 0
  br i1 %cmp10.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.lor.rhs.i.i_crit_edge

lor.lhs.false.i.i.lor.rhs.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call14.i.i = call i64 @ktime_get() #7
  %cmp3.i.i.i = icmp sgt i64 %call14.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %land.lhs.true.i.i.for.cond.i.i_crit_edge

land.lhs.true.i.i.for.cond.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %55 = ptrtoint ptr %phy_pma_cmn_ctrl_2.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy_pma_cmn_ctrl_2.i.i, align 4
  %call19.i.i = call i32 @regmap_field_read(ptr noundef %56, ptr noundef nonnull %read_val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool25.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool25.not.i.i, label %for.end.i.i.lor.rhs.i.i_crit_edge, label %for.end.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge

for.end.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_dp_configure_rate.exit.thread.i

for.end.i.i.lor.rhs.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %for.end.i.i.lor.rhs.i.i_crit_edge, %lor.lhs.false.i.i.lor.rhs.i.i_crit_edge
  %57 = ptrtoint ptr %read_val.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %read_val.i.i, align 4
  %59 = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp28.not.i.i = icmp eq i32 %59, 0
  br i1 %cmp28.not.i.i, label %lor.rhs.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge, label %if.end34.i.i

lor.rhs.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_dp_configure_rate.exit.thread.i

if.end34.i.i:                                     ; preds = %lor.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %60(i32 noundef 214748) #7
  %ref_clk_rate.i.i = getelementptr inbounds %struct.cdns_torrent_phy, ptr %5, i32 0, i32 7
  %61 = ptrtoint ptr %ref_clk_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ref_clk_rate.i.i, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %62, label %if.end34.i.i.if.end57.i.i_crit_edge [
    i32 0, label %if.then36.i.i
    i32 1, label %if.then40.i.i
    i32 2, label %if.then49.i.i
  ]

if.end34.i.i.if.end57.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i.i

if.then36.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %opts, align 4
  %66 = ptrtoint ptr %set_rate.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load.i.i = load i8, ptr %set_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i)
  %tobool37.i.i = icmp slt i8 %bf.load.i.i, 0
  call fastcc void @cdns_torrent_dp_pma_cmn_vco_cfg_19_2mhz(ptr noundef %5, i32 noundef %65, i1 noundef zeroext %tobool37.i.i) #7
  br label %if.end57.i.i

if.then40.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %opts, align 4
  %69 = ptrtoint ptr %set_rate.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load43.i.i = load i8, ptr %set_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load43.i.i)
  %tobool45.i.i = icmp slt i8 %bf.load43.i.i, 0
  call fastcc void @cdns_torrent_dp_pma_cmn_vco_cfg_25mhz(ptr noundef %5, i32 noundef %68, i1 noundef zeroext %tobool45.i.i) #7
  br label %if.end57.i.i

if.then49.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %opts, align 4
  call fastcc void @cdns_torrent_dp_pma_cmn_vco_cfg_100mhz(ptr noundef %5, i32 noundef %71) #7
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.then49.i.i, %if.then40.i.i, %if.then36.i.i, %if.end34.i.i.if.end57.i.i_crit_edge
  %72 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %opts, align 4
  %74 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %lanes.i, align 4
  call fastcc void @cdns_torrent_dp_pma_cmn_rate(ptr noundef %5, i32 noundef %73, i32 noundef %75) #7
  %76 = ptrtoint ptr %phy_pma_pll_raw_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %phy_pma_pll_raw_ctrl.i.i, align 4
  %call.i153.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %77, i32 noundef -1, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call66.i.i = call i64 @ktime_get() #7
  %add.i154.i.i = add i64 %call66.i.i, 5000000
  br label %for.cond80.i.i

for.cond80.i.i:                                   ; preds = %land.lhs.true90.i.i.for.cond80.i.i_crit_edge, %if.end57.i.i
  %78 = ptrtoint ptr %phy_pma_cmn_ctrl_2.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %phy_pma_cmn_ctrl_2.i.i, align 4
  %call82.i.i = call i32 @regmap_field_read(ptr noundef %79, ptr noundef nonnull %read_val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i.i)
  %tobool83.not.i.i = icmp eq i32 %call82.i.i, 0
  br i1 %tobool83.not.i.i, label %lor.lhs.false84.i.i, label %for.cond80.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge

for.cond80.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge: ; preds = %for.cond80.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_dp_configure_rate.exit.thread.i

lor.lhs.false84.i.i:                              ; preds = %for.cond80.i.i
  %80 = ptrtoint ptr %read_val.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %read_val.i.i, align 4
  %and85.i.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i.i)
  %cmp86.not.i.i = icmp eq i32 %and85.i.i, 0
  br i1 %cmp86.not.i.i, label %land.lhs.true90.i.i, label %lor.lhs.false84.i.i.lor.rhs106.i.i_crit_edge

lor.lhs.false84.i.i.lor.rhs106.i.i_crit_edge:     ; preds = %lor.lhs.false84.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs106.i.i

land.lhs.true90.i.i:                              ; preds = %lor.lhs.false84.i.i
  %call91.i.i = call i64 @ktime_get() #7
  %cmp3.i156.i.i = icmp sgt i64 %call91.i.i, %add.i154.i.i
  br i1 %cmp3.i156.i.i, label %for.end103.i.i, label %land.lhs.true90.i.i.for.cond80.i.i_crit_edge

land.lhs.true90.i.i.for.cond80.i.i_crit_edge:     ; preds = %land.lhs.true90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond80.i.i

for.end103.i.i:                                   ; preds = %land.lhs.true90.i.i
  %82 = ptrtoint ptr %phy_pma_cmn_ctrl_2.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %phy_pma_cmn_ctrl_2.i.i, align 4
  %call96.i.i = call i32 @regmap_field_read(ptr noundef %83, ptr noundef nonnull %read_val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i.i)
  %tobool105.not.i.i = icmp eq i32 %call96.i.i, 0
  br i1 %tobool105.not.i.i, label %for.end103.i.i.lor.rhs106.i.i_crit_edge, label %for.end103.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge

for.end103.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge: ; preds = %for.end103.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_dp_configure_rate.exit.thread.i

for.end103.i.i.lor.rhs106.i.i_crit_edge:          ; preds = %for.end103.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs106.i.i

lor.rhs106.i.i:                                   ; preds = %for.end103.i.i.lor.rhs106.i.i_crit_edge, %lor.lhs.false84.i.i.lor.rhs106.i.i_crit_edge
  %84 = ptrtoint ptr %read_val.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %read_val.i.i, align 4
  %and107.i.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107.i.i)
  %cmp108.not.i.i = icmp eq i32 %and107.i.i, 0
  br i1 %cmp108.not.i.i, label %lor.rhs106.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge, label %if.end8.i

lor.rhs106.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge: ; preds = %lor.rhs106.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_torrent_dp_configure_rate.exit.thread.i

cdns_torrent_dp_configure_rate.exit.thread.i:     ; preds = %lor.rhs106.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge, %for.end103.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge, %for.cond80.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge, %lor.rhs.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge, %for.end.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge, %for.cond.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -110, %lor.rhs.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge ], [ %call19.i.i, %for.end.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge ], [ %call96.i.i, %for.end103.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge ], [ -110, %lor.rhs106.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge ], [ %call82.i.i, %for.cond80.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge ], [ %call9.i.i, %for.cond.i.i.cdns_torrent_dp_configure_rate.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_val.i.i) #7
  br label %do.end25

if.end8.i:                                        ; preds = %lor.rhs106.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_val.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %86(i32 noundef 214748) #7
  %call9.i = call fastcc i32 @cdns_torrent_dp_set_pll_en(ptr noundef %5, ptr noundef %opts, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.do.end25_crit_edge

if.end8.i.do.end25_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

if.end12.i:                                       ; preds = %if.end8.i
  %87 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %lanes.i, align 4
  %call14.i64 = call fastcc i32 @cdns_torrent_dp_set_power_state(ptr noundef %5, i32 noundef %88, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i64)
  %tobool15.not.i = icmp eq i32 %call14.i64, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end12.i.do.end25_crit_edge

if.end12.i.do.end25_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

if.end17.i:                                       ; preds = %if.end12.i
  %89 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %lanes.i, align 4
  %call19.i = call fastcc i32 @cdns_torrent_dp_set_power_state(ptr noundef %5, i32 noundef %90, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %cdns_torrent_dp_set_rate.exit, label %if.end17.i.do.end25_crit_edge

if.end17.i.do.end25_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

cdns_torrent_dp_set_rate.exit:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %91(i32 noundef 214748) #7
  br label %if.end28

do.end25:                                         ; preds = %if.end17.i.do.end25_crit_edge, %if.end12.i.do.end25_crit_edge, %if.end8.i.do.end25_crit_edge, %cdns_torrent_dp_configure_rate.exit.thread.i, %if.end.i62.do.end25_crit_edge, %if.then19.do.end25_crit_edge
  %retval.0.i65.ph = phi i32 [ %retval.0.i.ph.i, %cdns_torrent_dp_configure_rate.exit.thread.i ], [ %call19.i, %if.end17.i.do.end25_crit_edge ], [ %call14.i64, %if.end12.i.do.end25_crit_edge ], [ %call9.i, %if.end8.i.do.end25_crit_edge ], [ %call1.i, %if.end.i62.do.end25_crit_edge ], [ %call.i, %if.then19.do.end25_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.152) #10
  br label %cleanup

if.end28:                                         ; preds = %cdns_torrent_dp_set_rate.exit, %if.end14.if.end28_crit_edge
  %92 = ptrtoint ptr %set_rate.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load29 = load i8, ptr %set_rate.i, align 4
  %93 = and i8 %bf.load29, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool32.not = icmp eq i8 %93, 0
  br i1 %tobool32.not, label %if.end28.cleanup_crit_edge, label %if.then33

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33:                                        ; preds = %if.end28
  %94 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %lanes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp99.not.i = icmp eq i32 %95, 0
  br i1 %cmp99.not.i, label %if.then33.cleanup_crit_edge, label %if.then33.for.body.i73_crit_edge

if.then33.for.body.i73_crit_edge:                 ; preds = %if.then33
  br label %for.body.i73

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i73:                                     ; preds = %for.body.i73.for.body.i73_crit_edge, %if.then33.for.body.i73_crit_edge
  %conv101.i = phi i32 [ %conv.i71, %for.body.i73.for.body.i73_crit_edge ], [ 0, %if.then33.for.body.i73_crit_edge ]
  %lane.0100.i = phi i8 [ %inc.i70, %for.body.i73.for.body.i73_crit_edge ], [ 0, %if.then33.for.body.i73_crit_edge ]
  %arrayidx.i68 = getelementptr %struct.cdns_torrent_phy, ptr %5, i32 0, i32 15, i32 %conv101.i
  %96 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i68, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i66) #7
  %98 = ptrtoint ptr %val.i.i66 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %val.i.i66, align 4, !annotation !552
  %call.i.i69 = call i32 @regmap_read(ptr noundef %97, i32 noundef 487, ptr noundef nonnull %val.i.i66) #7
  %99 = ptrtoint ptr %val.i.i66 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %val.i.i66, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i66) #7
  %101 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i68, align 4
  %conv4.i = and i32 %100, 65534
  %conv8.i = or i32 %conv4.i, 1
  %call.i91.i = call i32 @regmap_write(ptr noundef %102, i32 noundef 487, i32 noundef %conv8.i) #7
  %103 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i68, align 4
  %call.i92.i = call i32 @regmap_write(ptr noundef %104, i32 noundef 64, i32 noundef 2212) #7
  %arrayidx13.i = getelementptr %struct.phy_configure_opts_dp, ptr %opts, i32 0, i32 2, i32 %conv101.i
  %105 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx13.i, align 4
  %arrayidx16.i = getelementptr %struct.phy_configure_opts_dp, ptr %opts, i32 0, i32 3, i32 %conv101.i
  %107 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx16.i, align 4
  %arrayidx17.i = getelementptr [4 x [4 x %struct.coefficients]], ptr @vltg_coeff, i32 0, i32 %106, i32 %108
  %109 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx17.i, align 2
  %111 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i68, align 4
  %conv21.i = zext i16 %110 to i32
  %call.i93.i = call i32 @regmap_write(ptr noundef %112, i32 noundef 198, i32 noundef %conv21.i) #7
  %113 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx13.i, align 4
  %115 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx16.i, align 4
  %mgnfs_mult.i = getelementptr [4 x [4 x %struct.coefficients]], ptr @vltg_coeff, i32 0, i32 %114, i32 %116, i32 1
  %117 = ptrtoint ptr %mgnfs_mult.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %mgnfs_mult.i, align 2
  %119 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i68, align 4
  %conv33.i = zext i16 %118 to i32
  %call.i94.i = call i32 @regmap_write(ptr noundef %120, i32 noundef 80, i32 noundef %conv33.i) #7
  %121 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx13.i, align 4
  %123 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx16.i, align 4
  %cpost_mult.i = getelementptr [4 x [4 x %struct.coefficients]], ptr @vltg_coeff, i32 0, i32 %122, i32 %124, i32 2
  %125 = ptrtoint ptr %cpost_mult.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %cpost_mult.i, align 2
  %127 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.i68, align 4
  %conv45.i = zext i16 %126 to i32
  %call.i95.i = call i32 @regmap_write(ptr noundef %128, i32 noundef 76, i32 noundef %conv45.i) #7
  %129 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i68, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i96.i) #7
  %131 = ptrtoint ptr %val.i96.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 -1, ptr %val.i96.i, align 4, !annotation !552
  %call.i97.i = call i32 @regmap_read(ptr noundef %130, i32 noundef 487, ptr noundef nonnull %val.i96.i) #7
  %132 = ptrtoint ptr %val.i96.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %val.i96.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i96.i) #7
  %conv52.i = and i32 %133, 65534
  %134 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i68, align 4
  %call.i98.i = call i32 @regmap_write(ptr noundef %135, i32 noundef 487, i32 noundef %conv52.i) #7
  %inc.i70 = add i8 %lane.0100.i, 1
  %conv.i71 = zext i8 %inc.i70 to i32
  %136 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %lanes.i, align 4
  %cmp.i72 = icmp ugt i32 %137, %conv.i71
  br i1 %cmp.i72, label %for.body.i73.for.body.i73_crit_edge, label %for.body.i73.cleanup_crit_edge

for.body.i73.cleanup_crit_edge:                   ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i73.for.body.i73_crit_edge:              ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i73

cleanup:                                          ; preds = %for.body.i73.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %do.end25, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i5979, %do.end11 ], [ %retval.0.i65.ph, %do.end25 ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %if.then33.cleanup_crit_edge ], [ 0, %for.body.i73.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_torrent_dp_pma_cmn_vco_cfg_19_2mhz(ptr nocapture noundef readonly %cdns_phy, i32 noundef %rate, i1 noundef zeroext %ssc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap_common_cdb = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 12
  %0 = ptrtoint ptr %regmap_common_cdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap_common_cdb, align 4
  %2 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %rate, label %sw.epilog [
    i32 2700, label %entry.sw.bb_crit_edge
    i32 5400, label %entry.sw.bb_crit_edge176
    i32 1620, label %entry.sw.bb1_crit_edge
    i32 2430, label %entry.sw.bb1_crit_edge177
    i32 3240, label %entry.sw.bb1_crit_edge178
    i32 2160, label %entry.sw.bb5_crit_edge
    i32 4320, label %entry.sw.bb5_crit_edge179
    i32 8100, label %sw.bb9
  ]

entry.sw.bb5_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb1_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb_crit_edge176:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge176
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 144, i32 noundef 281) #7
  %call.i89 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 145, i32 noundef 16384) #7
  %call.i90 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 146, i32 noundef 2) #7
  %call.i91 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 147, i32 noundef 188) #7
  %call.i92 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 416, i32 noundef 18) #7
  %call.i93 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 208, i32 noundef 281) #7
  %call.i94 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 209, i32 noundef 16384) #7
  %call.i95 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 210, i32 noundef 2) #7
  %call.i96 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 211, i32 noundef 188) #7
  %call.i97 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 448, i32 noundef 18) #7
  br i1 %ssc, label %if.then, label %sw.bb.if.else_crit_edge

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %regmap_common_cdb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap_common_cdb, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 152, i32 noundef 1) #7
  %call.i10.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 152, i32 noundef 826) #7
  %call.i11.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 152, i32 noundef 106) #7
  %call.i12.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 155, i32 noundef 3) #7
  %call.i13.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 216, i32 noundef 1) #7
  %call.i14.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 216, i32 noundef 826) #7
  %call.i15.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 216, i32 noundef 106) #7
  br label %if.then14.sink.split

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge177, %entry.sw.bb1_crit_edge178
  %call.i98 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 144, i32 noundef 506) #7
  %call.i99 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 145, i32 noundef 16384) #7
  %call.i100 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 146, i32 noundef 2) #7
  %call.i101 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 147, i32 noundef 338) #7
  %call.i102 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 416, i32 noundef 2) #7
  %call.i103 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 208, i32 noundef 506) #7
  %call.i104 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 209, i32 noundef 16384) #7
  %call.i105 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 210, i32 noundef 2) #7
  %call.i106 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 211, i32 noundef 338) #7
  %call.i107 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 448, i32 noundef 2) #7
  br i1 %ssc, label %if.then3, label %sw.bb1.if.else_crit_edge

sw.bb1.if.else_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then3:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %regmap_common_cdb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap_common_cdb, align 4
  %call.i.i109 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 152, i32 noundef 1) #7
  %call.i10.i110 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 152, i32 noundef 1501) #7
  %call.i11.i111 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 152, i32 noundef 105) #7
  %call.i12.i112 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 155, i32 noundef 3) #7
  %call.i13.i113 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 216, i32 noundef 1) #7
  %call.i14.i114 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 216, i32 noundef 1501) #7
  %call.i15.i115 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 216, i32 noundef 105) #7
  br label %if.then14.sink.split

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge179
  %call.i117 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 144, i32 noundef 450) #7
  %call.i118 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 145, i32 noundef 0) #7
  %call.i119 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 146, i32 noundef 2) #7
  %call.i120 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 147, i32 noundef 300) #7
  %call.i121 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 416, i32 noundef 2) #7
  %call.i122 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 208, i32 noundef 450) #7
  %call.i123 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 209, i32 noundef 0) #7
  %call.i124 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 210, i32 noundef 2) #7
  %call.i125 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 211, i32 noundef 300) #7
  %call.i126 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 448, i32 noundef 2) #7
  br i1 %ssc, label %if.then7, label %sw.bb5.if.else_crit_edge

sw.bb5.if.else_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then7:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %regmap_common_cdb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap_common_cdb, align 4
  %call.i.i128 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 152, i32 noundef 1) #7
  %call.i10.i129 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 152, i32 noundef 1334) #7
  %call.i11.i130 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 152, i32 noundef 105) #7
  %call.i12.i131 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 155, i32 noundef 3) #7
  %call.i13.i132 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 216, i32 noundef 1) #7
  %call.i14.i133 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 216, i32 noundef 1334) #7
  %call.i15.i134 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 216, i32 noundef 105) #7
  br label %if.then14.sink.split

sw.bb9:                                           ; preds = %entry
  %call.i136 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 144, i32 noundef 421) #7
  %call.i137 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 145, i32 noundef 57344) #7
  %call.i138 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 146, i32 noundef 2) #7
  %call.i139 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 147, i32 noundef 282) #7
  %call.i140 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 416, i32 noundef 2) #7
  %call.i141 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 208, i32 noundef 421) #7
  %call.i142 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 209, i32 noundef 57344) #7
  %call.i143 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 210, i32 noundef 2) #7
  %call.i144 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 211, i32 noundef 282) #7
  %call.i145 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 448, i32 noundef 2) #7
  br i1 %ssc, label %if.then11, label %sw.bb9.if.else_crit_edge

sw.bb9.if.else_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then11:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %regmap_common_cdb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap_common_cdb, align 4
  %call.i.i147 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 152, i32 noundef 1) #7
  %call.i10.i148 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 152, i32 noundef 1239) #7
  %call.i11.i149 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 152, i32 noundef 106) #7
  %call.i12.i150 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 155, i32 noundef 3) #7
  %call.i13.i151 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 216, i32 noundef 1) #7
  %call.i14.i152 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 216, i32 noundef 1239) #7
  %call.i15.i153 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 216, i32 noundef 106) #7
  br label %if.then14.sink.split

sw.epilog:                                        ; preds = %entry
  br i1 %ssc, label %sw.epilog.if.then14_crit_edge, label %sw.epilog.if.else_crit_edge

sw.epilog.if.else_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

sw.epilog.if.then14_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.then14.sink.split:                             ; preds = %if.then11, %if.then7, %if.then3, %if.then
  %.sink = phi ptr [ %4, %if.then ], [ %6, %if.then3 ], [ %8, %if.then7 ], [ %10, %if.then11 ]
  %call.i16.i = tail call i32 @regmap_write(ptr noundef %.sink, i32 noundef 219, i32 noundef 3) #7
  br label %if.then14

if.then14:                                        ; preds = %if.then14.sink.split, %sw.epilog.if.then14_crit_edge
  %call.i155 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 136, i32 noundef 606) #7
  %call.i156 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 159, i32 noundef 5) #7
  %call.i157 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 200, i32 noundef 606) #7
  br label %if.end15

if.else:                                          ; preds = %sw.epilog.if.else_crit_edge, %sw.bb9.if.else_crit_edge, %sw.bb5.if.else_crit_edge, %sw.bb1.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %call.i159 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 136, i32 noundef 608) #7
  %call.i160 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 200, i32 noundef 608) #7
  %call.i161 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 152, i32 noundef 2) #7
  %call.i162 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 153, i32 noundef 0) #7
  %call.i163 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 154, i32 noundef 0) #7
  %call.i164 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 155, i32 noundef 0) #7
  %call.i165 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 159, i32 noundef 3) #7
  %call.i166 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 216, i32 noundef 2) #7
  %call.i167 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 217, i32 noundef 0) #7
  %call.i168 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 218, i32 noundef 0) #7
  %call.i169 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 219, i32 noundef 0) #7
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  %.sink175 = phi i32 [ 3, %if.else ], [ 5, %if.then14 ]
  %call.i170 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 223, i32 noundef %.sink175) #7
  %call.i171 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 156, i32 noundef 153) #7
  %call.i172 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 158, i32 noundef 153) #7
  %call.i173 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 220, i32 noundef 153) #7
  %call.i174 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 222, i32 noundef 153) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_torrent_dp_pma_cmn_vco_cfg_25mhz(ptr nocapture noundef readonly %cdns_phy, i32 noundef %rate, i1 noundef zeroext %ssc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap_common_cdb = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 12
  %0 = ptrtoint ptr %regmap_common_cdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap_common_cdb, align 4
  %2 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %rate, label %sw.epilog [
    i32 2700, label %entry.sw.bb_crit_edge
    i32 5400, label %entry.sw.bb_crit_edge181
    i32 1620, label %entry.sw.bb1_crit_edge
    i32 2430, label %entry.sw.bb1_crit_edge182
    i32 3240, label %entry.sw.bb1_crit_edge183
    i32 2160, label %entry.sw.bb5_crit_edge
    i32 4320, label %entry.sw.bb5_crit_edge184
    i32 8100, label %sw.bb9
  ]

entry.sw.bb5_crit_edge184:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb1_crit_edge183:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge182:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb_crit_edge181:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge181
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 144, i32 noundef 432) #7
  %call.i83 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 145, i32 noundef 0) #7
  %call.i84 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 146, i32 noundef 2) #7
  %call.i85 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 147, i32 noundef 288) #7
  %call.i86 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 208, i32 noundef 432) #7
  %call.i87 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 209, i32 noundef 0) #7
  %call.i88 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 210, i32 noundef 2) #7
  %call.i89 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 211, i32 noundef 288) #7
  br i1 %ssc, label %if.then, label %sw.bb.if.else.sink.split_crit_edge

sw.bb.if.else.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.sink.split

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %regmap_common_cdb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap_common_cdb, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 152, i32 noundef 1) #7
  %call.i9.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 152, i32 noundef 1059) #7
  %call.i10.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 152, i32 noundef 127) #7
  %call.i11.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 155, i32 noundef 3) #7
  %call.i12.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 216, i32 noundef 1) #7
  %call.i13.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 216, i32 noundef 1059) #7
  br label %if.then14.sink.split

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge182, %entry.sw.bb1_crit_edge183
  %call.i92 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 144, i32 noundef 388) #7
  %call.i93 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 145, i32 noundef 52429) #7
  %call.i94 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 146, i32 noundef 2) #7
  %call.i95 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 147, i32 noundef 260) #7
  %call.i96 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 208, i32 noundef 388) #7
  %call.i97 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 209, i32 noundef 52429) #7
  %call.i98 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 210, i32 noundef 2) #7
  %call.i99 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 211, i32 noundef 260) #7
  br i1 %ssc, label %if.then3, label %sw.bb1.if.else.sink.split_crit_edge

sw.bb1.if.else.sink.split_crit_edge:              ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.sink.split

if.then3:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %regmap_common_cdb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap_common_cdb, align 4
  %call.i.i101 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 152, i32 noundef 1) #7
  %call.i9.i102 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 152, i32 noundef 953) #7
  %call.i10.i103 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 152, i32 noundef 127) #7
  %call.i11.i104 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 155, i32 noundef 3) #7
  %call.i12.i105 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 216, i32 noundef 1) #7
  %call.i13.i106 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 216, i32 noundef 953) #7
  br label %if.then14.sink.split

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge184
  %call.i111 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 144, i32 noundef 345) #7
  %call.i112 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 145, i32 noundef 39322) #7
  %call.i113 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 146, i32 noundef 2) #7
  %call.i114 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 147, i32 noundef 231) #7
  %call.i115 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 208, i32 noundef 345) #7
  %call.i116 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 209, i32 noundef 39322) #7
  %call.i117 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 210, i32 noundef 2) #7
  %call.i118 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 211, i32 noundef 231) #7
  br i1 %ssc, label %if.then7, label %sw.bb5.if.else.sink.split_crit_edge

sw.bb5.if.else.sink.split_crit_edge:              ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.sink.split

if.then7:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %regmap_common_cdb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap_common_cdb, align 4
  %call.i.i120 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 152, i32 noundef 1) #7
  %call.i9.i121 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 152, i32 noundef 847) #7
  %call.i10.i122 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 152, i32 noundef 127) #7
  %call.i11.i123 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 155, i32 noundef 3) #7
  %call.i12.i124 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 216, i32 noundef 1) #7
  %call.i13.i125 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 216, i32 noundef 847) #7
  br label %if.then14.sink.split

sw.bb9:                                           ; preds = %entry
  %call.i130 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 144, i32 noundef 324) #7
  %call.i131 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 145, i32 noundef 0) #7
  %call.i132 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 146, i32 noundef 2) #7
  %call.i133 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 147, i32 noundef 216) #7
  %call.i134 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 208, i32 noundef 324) #7
  %call.i135 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 209, i32 noundef 0) #7
  %call.i136 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 210, i32 noundef 2) #7
  %call.i137 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 211, i32 noundef 216) #7
  br i1 %ssc, label %if.then11, label %sw.bb9.if.else.sink.split_crit_edge

sw.bb9.if.else.sink.split_crit_edge:              ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.sink.split

if.then11:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %regmap_common_cdb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap_common_cdb, align 4
  %call.i.i139 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 152, i32 noundef 1) #7
  %call.i9.i140 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 152, i32 noundef 794) #7
  %call.i10.i141 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 152, i32 noundef 127) #7
  %call.i11.i142 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 155, i32 noundef 3) #7
  %call.i12.i143 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 216, i32 noundef 1) #7
  %call.i13.i144 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 216, i32 noundef 794) #7
  br label %if.then14.sink.split

sw.epilog:                                        ; preds = %entry
  %call.i149 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 416, i32 noundef 2) #7
  %call.i150 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 448, i32 noundef 2) #7
  br i1 %ssc, label %sw.epilog.if.then14_crit_edge, label %sw.epilog.if.else_crit_edge

sw.epilog.if.else_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

sw.epilog.if.then14_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.then14.sink.split:                             ; preds = %if.then11, %if.then7, %if.then3, %if.then
  %.sink179 = phi ptr [ %4, %if.then ], [ %6, %if.then3 ], [ %8, %if.then7 ], [ %10, %if.then11 ]
  %call.i14.i = tail call i32 @regmap_write(ptr noundef %.sink179, i32 noundef 216, i32 noundef 127) #7
  %call.i15.i = tail call i32 @regmap_write(ptr noundef %.sink179, i32 noundef 219, i32 noundef 3) #7
  %call.i90 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 416, i32 noundef 2) #7
  %call.i91 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 448, i32 noundef 2) #7
  br label %if.then14

if.then14:                                        ; preds = %if.then14.sink.split, %sw.epilog.if.then14_crit_edge
  %call.i151 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 136, i32 noundef 789) #7
  %call.i152 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 159, i32 noundef 5) #7
  %call.i153 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 200, i32 noundef 789) #7
  br label %if.end15

if.else.sink.split:                               ; preds = %sw.bb9.if.else.sink.split_crit_edge, %sw.bb5.if.else.sink.split_crit_edge, %sw.bb1.if.else.sink.split_crit_edge, %sw.bb.if.else.sink.split_crit_edge
  %call.i161 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 416, i32 noundef 2) #7
  %call.i162 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 448, i32 noundef 2) #7
  br label %if.else

if.else:                                          ; preds = %if.else.sink.split, %sw.epilog.if.else_crit_edge
  %call.i163 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 136, i32 noundef 791) #7
  %call.i164 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 200, i32 noundef 791) #7
  %call.i165 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 152, i32 noundef 2) #7
  %call.i166 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 153, i32 noundef 0) #7
  %call.i167 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 154, i32 noundef 0) #7
  %call.i168 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 155, i32 noundef 0) #7
  %call.i169 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 159, i32 noundef 3) #7
  %call.i170 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 216, i32 noundef 2) #7
  %call.i171 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 217, i32 noundef 0) #7
  %call.i172 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 218, i32 noundef 0) #7
  %call.i173 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 219, i32 noundef 0) #7
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  %.sink180 = phi i32 [ 3, %if.else ], [ 5, %if.then14 ]
  %call.i174 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 223, i32 noundef %.sink180) #7
  %call.i175 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 156, i32 noundef 199) #7
  %call.i176 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 158, i32 noundef 199) #7
  %call.i177 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 220, i32 noundef 199) #7
  %call.i178 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 222, i32 noundef 199) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_torrent_dp_pma_cmn_vco_cfg_100mhz(ptr nocapture noundef readonly %cdns_phy, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap_common_cdb = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 12
  %0 = ptrtoint ptr %regmap_common_cdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap_common_cdb, align 4
  %2 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %rate, label %entry.sw.epilog_crit_edge [
    i32 2700, label %entry.sw.bb_crit_edge
    i32 5400, label %entry.sw.bb_crit_edge56
    i32 1620, label %entry.sw.bb1_crit_edge
    i32 2430, label %entry.sw.bb1_crit_edge57
    i32 3240, label %entry.sw.bb1_crit_edge58
    i32 2160, label %entry.sw.bb2_crit_edge
    i32 4320, label %entry.sw.bb2_crit_edge59
    i32 8100, label %sw.bb3
  ]

entry.sw.bb2_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb1_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb_crit_edge56:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge56
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 452, i32 noundef 40) #7
  %call.i1 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 149, i32 noundef 34) #7
  %call.i2 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 213, i32 noundef 34) #7
  %call.i3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 214, i32 noundef 12) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge57, %entry.sw.bb1_crit_edge58
  %call.i4 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 148, i32 noundef 4) #7
  %call.i5 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 212, i32 noundef 4) #7
  %call.i6 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 420, i32 noundef 1289) #7
  %call.i7 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 452, i32 noundef 1289) #7
  %call.i8 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 421, i32 noundef 3840) #7
  %call.i9 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 453, i32 noundef 3840) #7
  %call.i10 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 422, i32 noundef 3848) #7
  %call.i11 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 454, i32 noundef 3848) #7
  %call.i12 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 144, i32 noundef 97) #7
  %call.i13 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 208, i32 noundef 97) #7
  %call.i14 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 145, i32 noundef 13107) #7
  %call.i15 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 209, i32 noundef 13107) #7
  %call.i16 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 146, i32 noundef 2) #7
  %call.i17 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 210, i32 noundef 2) #7
  %call.i18 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 147, i32 noundef 66) #7
  %call.i19 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 211, i32 noundef 66) #7
  %call.i20 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 416, i32 noundef 2) #7
  %call.i21 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 448, i32 noundef 2) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge59
  %call.i22 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 148, i32 noundef 4) #7
  %call.i23 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 212, i32 noundef 4) #7
  %call.i24 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 420, i32 noundef 1289) #7
  %call.i25 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 452, i32 noundef 1289) #7
  %call.i26 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 421, i32 noundef 3840) #7
  %call.i27 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 453, i32 noundef 3840) #7
  %call.i28 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 422, i32 noundef 3848) #7
  %call.i29 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 454, i32 noundef 3848) #7
  %call.i30 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 144, i32 noundef 86) #7
  %call.i31 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 208, i32 noundef 86) #7
  %call.i32 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 145, i32 noundef 26214) #7
  %call.i33 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 209, i32 noundef 26214) #7
  %call.i34 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 146, i32 noundef 2) #7
  %call.i35 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 210, i32 noundef 2) #7
  %call.i36 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 147, i32 noundef 58) #7
  %call.i37 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 211, i32 noundef 58) #7
  %call.i38 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 416, i32 noundef 2) #7
  %call.i39 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 448, i32 noundef 2) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i40 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 148, i32 noundef 4) #7
  %call.i41 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 212, i32 noundef 4) #7
  %call.i42 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 420, i32 noundef 1289) #7
  %call.i43 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 452, i32 noundef 1289) #7
  %call.i44 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 421, i32 noundef 3840) #7
  %call.i45 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 453, i32 noundef 3840) #7
  %call.i46 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 422, i32 noundef 3848) #7
  %call.i47 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 454, i32 noundef 3848) #7
  %call.i48 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 144, i32 noundef 81) #7
  %call.i49 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 208, i32 noundef 81) #7
  %call.i50 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 146, i32 noundef 2) #7
  %call.i51 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 210, i32 noundef 2) #7
  %call.i52 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 147, i32 noundef 54) #7
  %call.i53 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 211, i32 noundef 54) #7
  %call.i54 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 416, i32 noundef 2) #7
  %call.i55 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 448, i32 noundef 2) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_torrent_dp_pma_cmn_rate(ptr nocapture noundef readonly %cdns_phy, i32 noundef %rate, i32 noundef %num_lanes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %rate, label %entry.sw.epilog_crit_edge [
    i32 1620, label %sw.bb
    i32 2160, label %entry.sw.bb1_crit_edge
    i32 2430, label %entry.sw.bb1_crit_edge15
    i32 2700, label %entry.sw.bb1_crit_edge16
    i32 3240, label %sw.bb2
    i32 4320, label %entry.sw.bb3_crit_edge
    i32 5400, label %entry.sw.bb3_crit_edge17
    i32 8100, label %sw.bb4
  ]

entry.sw.bb3_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb1_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge15, %entry.sw.bb1_crit_edge16
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge17
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %clk_sel_val.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 512, %sw.bb4 ], [ 769, %sw.bb3 ], [ 2816, %sw.bb2 ], [ 1793, %sw.bb1 ], [ 3841, %sw.bb ]
  %hsclk_div_val.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 2, %sw.bb ]
  %regmap_common_cdb = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 12
  %1 = ptrtoint ptr %regmap_common_cdb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap_common_cdb, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 417, i32 noundef %clk_sel_val.0) #7
  %3 = ptrtoint ptr %regmap_common_cdb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap_common_cdb, align 4
  %call.i11 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 449, i32 noundef %clk_sel_val.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_lanes)
  %cmp13.not = icmp eq i32 %num_lanes, 0
  br i1 %cmp13.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sw.epilog.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 15, i32 %i.014
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call.i12 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 231, i32 noundef %hsclk_div_val.0) #7
  %inc = add nuw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %num_lanes
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_torrent_dp_wait_pma_cmn_ready(ptr nocapture noundef readonly %cdns_phy) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !552
  %regmap_dptx_phy_reg = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 18
  %1 = ptrtoint ptr %regmap_dptx_phy_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap_dptx_phy_reg, align 4
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 5000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %call8 = call i32 @regmap_read(ptr noundef %2, i32 noundef 52, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.cond.lor.end_crit_edge

for.cond.lor.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.lhs.false:                                    ; preds = %for.cond
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = call i64 @ktime_get() #7
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %call17 = call i32 @regmap_read(ptr noundef %2, i32 noundef 52, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool22.not = icmp eq i32 %call17, 0
  br i1 %tobool22.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %and23 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %lor.rhs.do.end32_crit_edge, label %lor.rhs.cleanup_crit_edge

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.rhs.do.end32_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %for.cond.lor.end_crit_edge
  %tobool22.not48 = phi i32 [ %call17, %for.end.lor.end_crit_edge ], [ %call8, %for.cond.lor.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %tobool22.not48)
  %cmp28 = icmp eq i32 %tobool22.not48, -110
  br i1 %cmp28, label %lor.end.do.end32_crit_edge, label %lor.end.cleanup_crit_edge

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.end.do.end32_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

do.end32:                                         ; preds = %lor.end.do.end32_crit_edge, %lor.rhs.do.end32_crit_edge
  %dev = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 5
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.137) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %lor.end.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end32 ], [ 0, %lor.end.cleanup_crit_edge ], [ 0, %lor.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_torrent_dp_run(ptr nocapture noundef readonly %cdns_phy, i32 noundef %num_lanes) unnamed_addr #2 align 64 {
entry:
  %read_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_val) #7
  %0 = ptrtoint ptr %read_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %read_val, align 4, !annotation !552
  %regmap_dptx_phy_reg = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 18
  %1 = ptrtoint ptr %regmap_dptx_phy_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap_dptx_phy_reg, align 4
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 5000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %call8 = call i32 @regmap_read(ptr noundef %2, i32 noundef 40, ptr noundef nonnull %read_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.cond.lor.end_crit_edge

for.cond.lor.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.lhs.false:                                    ; preds = %for.cond
  %3 = ptrtoint ptr %read_val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %read_val, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = call i64 @ktime_get() #7
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %call17 = call i32 @regmap_read(ptr noundef %2, i32 noundef 40, ptr noundef nonnull %read_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool22.not = icmp eq i32 %call17, 0
  br i1 %tobool22.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %5 = ptrtoint ptr %read_val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %read_val, align 4
  %and23 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %lor.rhs.do.end32_crit_edge, label %lor.rhs.if.end33_crit_edge

lor.rhs.if.end33_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

lor.rhs.do.end32_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %for.cond.lor.end_crit_edge
  %tobool22.not60 = phi i32 [ %call17, %for.end.lor.end_crit_edge ], [ %call8, %for.cond.lor.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %tobool22.not60)
  %cmp28 = icmp eq i32 %tobool22.not60, -110
  br i1 %cmp28, label %lor.end.do.end32_crit_edge, label %lor.end.if.end33_crit_edge

lor.end.if.end33_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

lor.end.do.end32_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

do.end32:                                         ; preds = %lor.end.do.end32_crit_edge, %lor.rhs.do.end32_crit_edge
  %dev = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 5
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.139) #10
  br label %cleanup

if.end33:                                         ; preds = %lor.end.if.end33_crit_edge, %lor.rhs.if.end33_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748) #7
  %call34 = call fastcc i32 @cdns_torrent_dp_set_power_state(ptr noundef %cdns_phy, i32 noundef %num_lanes, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = call fastcc i32 @cdns_torrent_dp_set_power_state(ptr noundef %cdns_phy, i32 noundef %num_lanes, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end33.cleanup_crit_edge, %do.end32
  %retval.0 = phi i32 [ -110, %do.end32 ], [ %call38, %if.end37 ], [ %call34, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_torrent_dp_set_power_state(ptr nocapture noundef readonly %cdns_phy, i32 noundef %num_lanes, i32 noundef %powerstate) unnamed_addr #2 align 64 {
entry:
  %read_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_val) #7
  %0 = ptrtoint ptr %read_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %read_val, align 4, !annotation !552
  %regmap_dptx_phy_reg = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 18
  %1 = ptrtoint ptr %regmap_dptx_phy_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap_dptx_phy_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %powerstate)
  %switch.selectcmp = icmp eq i32 %powerstate, 2
  %switch.select = select i1 %switch.selectcmp, i32 4, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %powerstate)
  %switch.selectcmp57 = icmp eq i32 %powerstate, 0
  %switch.select58 = select i1 %switch.selectcmp57, i32 1, i32 %switch.select
  %3 = zext i32 %num_lanes to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %num_lanes, label %sw.default4 [
    i32 1, label %entry.sw.epilog11_crit_edge
    i32 2, label %sw.bb3
  ]

entry.sw.epilog11_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog11

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = mul nuw nsw i32 %switch.select58, 257
  br label %sw.epilog11

sw.default4:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or10 = mul nuw nsw i32 %switch.select58, 16843009
  br label %sw.epilog11

sw.epilog11:                                      ; preds = %sw.default4, %sw.bb3, %entry.sw.epilog11_crit_edge
  %mask.0 = phi i32 [ 1061109567, %sw.default4 ], [ 16191, %sw.bb3 ], [ 63, %entry.sw.epilog11_crit_edge ]
  %value.0 = phi i32 [ %or10, %sw.default4 ], [ %or, %sw.bb3 ], [ %switch.select58, %entry.sw.epilog11_crit_edge ]
  %call.i = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 44, i32 noundef %value.0) #7
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 5000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %sw.epilog11
  %call19 = call i32 @regmap_read(ptr noundef %2, i32 noundef 48, ptr noundef nonnull %read_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.cond.lor.end_crit_edge

for.cond.lor.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.lhs.false:                                    ; preds = %for.cond
  %4 = ptrtoint ptr %read_val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %read_val, align 4
  %and = and i32 %5, %mask.0
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %value.0)
  %cmp20 = icmp eq i32 %and, %value.0
  br i1 %cmp20, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call24 = call i64 @ktime_get() #7
  %cmp3.i = icmp sgt i64 %call24, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %call28 = call i32 @regmap_read(ptr noundef %2, i32 noundef 48, ptr noundef nonnull %read_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool33.not = icmp eq i32 %call28, 0
  br i1 %tobool33.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %6 = ptrtoint ptr %read_val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %read_val, align 4
  %and34 = and i32 %7, %mask.0
  call void @__sanitizer_cov_trace_cmp4(i32 %and34, i32 %value.0)
  %cmp35 = icmp eq i32 %and34, %value.0
  %phi.sel = select i1 %cmp35, i32 0, i32 -110
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %for.cond.lor.end_crit_edge
  %tobool33.not64 = phi i32 [ %call28, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call19, %for.cond.lor.end_crit_edge ]
  %call.i59 = call i32 @regmap_write(ptr noundef %2, i32 noundef 44, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_val) #7
  ret i32 %tobool33.not64
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_torrent_dp_set_pll_en(ptr nocapture noundef readonly %cdns_phy, ptr nocapture noundef readonly %dp, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %rd_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rd_val) #7
  %0 = ptrtoint ptr %rd_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rd_val, align 4, !annotation !552
  %regmap_dptx_phy_reg = getelementptr inbounds %struct.cdns_torrent_phy, ptr %cdns_phy, i32 0, i32 18
  %1 = ptrtoint ptr %regmap_dptx_phy_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap_dptx_phy_reg, align 4
  %lanes = getelementptr inbounds %struct.phy_configure_opts_dp, ptr %dp, i32 0, i32 1
  %3 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch.selectcmp = icmp eq i32 %4, 2
  %switch.select = select i1 %switch.selectcmp, i32 3, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %switch.selectcmp44 = icmp eq i32 %4, 1
  %switch.select45 = select i1 %switch.selectcmp44, i32 1, i32 %switch.select
  %pll_val.0 = select i1 %enable, i32 %switch.select45, i32 0
  %call.i = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 36, i32 noundef %pll_val.0) #7
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 5000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %call11 = call i32 @regmap_read(ptr noundef %2, i32 noundef 40, ptr noundef nonnull %rd_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %for.cond.lor.end_crit_edge

for.cond.lor.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.lhs.false:                                    ; preds = %for.cond
  %5 = ptrtoint ptr %rd_val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rd_val, align 4
  %and = and i32 %6, %switch.select45
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %pll_val.0)
  %cmp13 = icmp eq i32 %and, %pll_val.0
  br i1 %cmp13, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call17 = call i64 @ktime_get() #7
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %call21 = call i32 @regmap_read(ptr noundef %2, i32 noundef 40, ptr noundef nonnull %rd_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool26.not = icmp eq i32 %call21, 0
  br i1 %tobool26.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %7 = ptrtoint ptr %rd_val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rd_val, align 4
  %and27 = and i32 %8, %switch.select45
  call void @__sanitizer_cov_trace_cmp4(i32 %and27, i32 %pll_val.0)
  %cmp28 = icmp eq i32 %and27, %pll_val.0
  %phi.sel = select i1 %cmp28, i32 0, i32 -110
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %for.cond.lor.end_crit_edge
  %tobool26.not50 = phi i32 [ %call21, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call11, %for.cond.lor.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rd_val) #7
  ret i32 %tobool26.not50
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_torrent_noop_phy_on(ptr nocapture noundef readnone %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_regmap_dptx_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !558
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !559
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_regmap_dptx_write(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !560
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %base = getelementptr inbounds %struct.cdns_regmap_cdb_context, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !561
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 268)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 268)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !179, !181, !183, !185, !187, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !210, !212, !213, !214, !215, !217, !219, !221, !223, !225, !227, !228, !229, !230, !232, !234, !235, !236, !237, !239, !240, !241, !243, !245, !247, !249, !251, !252, !253, !255, !257, !258, !259, !261, !263, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !282, !283, !284, !285, !287, !288, !289, !290, !292, !293, !294, !295, !297, !298, !299, !300, !302, !303, !304, !306, !307, !308, !309, !311, !312, !313, !315, !316, !317, !319, !321, !323, !324, !325, !326, !328, !330, !332, !333, !334, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541}
!llvm.module.flags = !{!543, !544, !545, !546, !547, !548, !549, !550}
!llvm.ident = !{!551}

!0 = !{ptr @__initcall__kmod_phy_cadence_torrent__292_4718_cdns_torrent_phy_driver_init6, !1, !"__initcall__kmod_phy_cadence_torrent__292_4718_cdns_torrent_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 4718, i32 1}
!2 = !{ptr @__exitcall_cdns_torrent_phy_driver_exit, !1, !"__exitcall_cdns_torrent_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 4720, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 4721, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 4722, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 4714, i32 11}
!12 = !{ptr @cdns_torrent_phy_driver, !13, !"cdns_torrent_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 4710, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2558, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cdns_torrent_phy_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @cdns_torrent_phy_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2593, i32 32}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2599, i32 4}
!26 = !{ptr @cdns_torrent_phy_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cdns_torrent_phy_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2605, i32 35}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2607, i32 4}
!32 = !{ptr @cdns_torrent_phy_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cdns_torrent_phy_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2613, i32 35}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2614, i32 4}
!38 = !{ptr @cdns_torrent_phy_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cdns_torrent_phy_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2637, i32 4}
!42 = !{ptr @cdns_torrent_phy_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cdns_torrent_phy_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2642, i32 35}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2644, i32 4}
!48 = !{ptr @cdns_torrent_phy_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @cdns_torrent_phy_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2654, i32 31}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2674, i32 5}
!54 = !{ptr @cdns_torrent_phy_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cdns_torrent_phy_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2681, i32 32}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2696, i32 5}
!60 = !{ptr @cdns_torrent_phy_probe._entry.30, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @cdns_torrent_phy_probe._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2721, i32 4}
!64 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @cdns_torrent_phy_probe.__UNIQUE_ID_ddebug289, !63, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2738, i32 3}
!68 = !{ptr @cdns_torrent_phy_probe._entry.35, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @cdns_torrent_phy_probe._entry_ptr.37, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2756, i32 3}
!72 = !{ptr @cdns_torrent_phy_probe.__UNIQUE_ID_ddebug290, !71, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2762, i32 3}
!75 = !{ptr @cdns_torrent_phy_probe.__UNIQUE_ID_ddebug291, !74, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2082, i32 4}
!78 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @cdns_torrent_regmap_init._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @cdns_torrent_regmap_init._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2093, i32 4}
!83 = !{ptr @cdns_torrent_regmap_init._entry.42, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @cdns_torrent_regmap_init._entry_ptr.44, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2104, i32 4}
!87 = !{ptr @cdns_torrent_regmap_init._entry.45, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @cdns_torrent_regmap_init._entry_ptr.47, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2115, i32 3}
!91 = !{ptr @cdns_torrent_regmap_init._entry.48, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @cdns_torrent_regmap_init._entry_ptr.50, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2125, i32 3}
!95 = !{ptr @cdns_torrent_regmap_init._entry.51, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @cdns_torrent_regmap_init._entry_ptr.53, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2135, i32 3}
!99 = !{ptr @cdns_torrent_regmap_init._entry.54, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @cdns_torrent_regmap_init._entry_ptr.56, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @cdns_regmap_init._key, !102, !"_key", i1 false, i1 false}
!102 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1952, i32 9}
!103 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 481, i32 2}
!106 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 482, i32 2}
!108 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 483, i32 2}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 484, i32 2}
!112 = !{ptr @cdns_torrent_tx_lane_cdb_config, !113, !"cdns_torrent_tx_lane_cdb_config", i1 false, i1 false}
!113 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 480, i32 35}
!114 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 488, i32 2}
!116 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 489, i32 2}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 490, i32 2}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 491, i32 2}
!122 = !{ptr @cdns_torrent_rx_lane_cdb_config, !123, !"cdns_torrent_rx_lane_cdb_config", i1 false, i1 false}
!123 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 487, i32 35}
!124 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 512, i32 2}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 513, i32 2}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 514, i32 2}
!130 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 515, i32 2}
!132 = !{ptr @cdns_torrent_phy_pcs_lane_cdb_config, !133, !"cdns_torrent_phy_pcs_lane_cdb_config", i1 false, i1 false}
!133 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 511, i32 35}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 495, i32 10}
!136 = !{ptr @cdns_torrent_common_cdb_config, !137, !"cdns_torrent_common_cdb_config", i1 false, i1 false}
!137 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 494, i32 35}
!138 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 519, i32 10}
!140 = !{ptr @cdns_torrent_phy_pcs_cmn_cdb_config, !141, !"cdns_torrent_phy_pcs_cmn_cdb_config", i1 false, i1 false}
!141 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 518, i32 35}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 527, i32 10}
!144 = !{ptr @cdns_torrent_phy_pma_cmn_cdb_config, !145, !"cdns_torrent_phy_pma_cmn_cdb_config", i1 false, i1 false}
!145 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 526, i32 35}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1982, i32 3}
!148 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @cdns_torrent_regfield_init._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @cdns_torrent_regfield_init._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1990, i32 3}
!153 = !{ptr @cdns_torrent_regfield_init._entry.75, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @cdns_torrent_regfield_init._entry_ptr.77, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.79, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1998, i32 3}
!157 = !{ptr @cdns_torrent_regfield_init._entry.78, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @cdns_torrent_regfield_init._entry_ptr.80, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2006, i32 3}
!161 = !{ptr @cdns_torrent_regfield_init._entry.81, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @cdns_torrent_regfield_init._entry_ptr.83, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.85, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2014, i32 3}
!165 = !{ptr @cdns_torrent_regfield_init._entry.84, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @cdns_torrent_regfield_init._entry_ptr.86, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.88, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2022, i32 3}
!169 = !{ptr @cdns_torrent_regfield_init._entry.87, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @cdns_torrent_regfield_init._entry_ptr.89, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.91, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2031, i32 4}
!173 = !{ptr @cdns_torrent_regfield_init._entry.90, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @cdns_torrent_regfield_init._entry_ptr.92, !172, !"_entry_ptr", i1 false, i1 false}
!175 = distinct !{null, !176, !"phy_pll_cfg", i1 false, i1 false}
!176 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 246, i32 31}
!177 = distinct !{null, !178, !"phy_pipe_cmn_ctrl1_0", i1 false, i1 false}
!178 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 264, i32 31}
!179 = distinct !{null, !180, !"cmn_cdiag_refclk_ovrd_4", i1 false, i1 false}
!180 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 266, i32 31}
!181 = distinct !{null, !182, !"phy_pma_cmn_ctrl_1", i1 false, i1 false}
!182 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 249, i32 31}
!183 = distinct !{null, !184, !"phy_pma_cmn_ctrl_2", i1 false, i1 false}
!184 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 252, i32 31}
!185 = distinct !{null, !186, !"phy_pma_pll_raw_ctrl", i1 false, i1 false}
!186 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 255, i32 31}
!187 = distinct !{null, !188, !"phy_pcs_iso_link_ctrl_1", i1 false, i1 false}
!188 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 261, i32 31}
!189 = !{ptr @.str.93, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2436, i32 3}
!191 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @cdns_torrent_clk_register._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @cdns_torrent_clk_register._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2442, i32 3}
!196 = !{ptr @cdns_torrent_clk_register._entry.95, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @cdns_torrent_clk_register._entry_ptr.97, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2448, i32 3}
!200 = !{ptr @cdns_torrent_clk_register._entry.98, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @cdns_torrent_clk_register._entry_ptr.100, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.102, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2454, i32 3}
!204 = !{ptr @cdns_torrent_clk_register._entry.101, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @cdns_torrent_clk_register._entry_ptr.103, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.104, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1697, i32 39}
!208 = !{ptr @.str.105, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1700, i32 35}
!210 = !{ptr @.str.106, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1702, i32 3}
!212 = !{ptr @.str.107, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @cdns_torrent_derived_refclk_register._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @cdns_torrent_derived_refclk_register._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.108, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 241, i32 33}
!217 = !{ptr @.str.109, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 242, i32 34}
!219 = !{ptr @.str.110, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 243, i32 35}
!221 = distinct !{null, !222, !"clk_names", i1 false, i1 false}
!222 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 240, i32 27}
!223 = !{ptr @cdns_torrent_derived_refclk_ops, !224, !"cdns_torrent_derived_refclk_ops", i1 false, i1 false}
!224 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1676, i32 29}
!225 = !{ptr @.str.111, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1785, i32 3}
!227 = !{ptr @.str.112, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @cdns_torrent_received_refclk_register._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @cdns_torrent_received_refclk_register._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @cdns_torrent_received_refclk_ops, !231, !"cdns_torrent_received_refclk_ops", i1 false, i1 false}
!231 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1759, i32 29}
!232 = !{ptr @.str.113, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1894, i32 4}
!234 = !{ptr @.str.114, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @cdns_torrent_refclk_driver_register._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @cdns_torrent_refclk_driver_register._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.116, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1916, i32 4}
!239 = !{ptr @cdns_torrent_refclk_driver_register._entry.115, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @cdns_torrent_refclk_driver_register._entry_ptr.117, !238, !"_entry_ptr", i1 false, i1 false}
!241 = distinct !{null, !242, !"refclk_driver_parent_index", i1 false, i1 false}
!242 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 285, i32 18}
!243 = !{ptr @cdns_torrent_refclk_driver_ops, !244, !"cdns_torrent_refclk_driver_ops", i1 false, i1 false}
!244 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1861, i32 29}
!245 = !{ptr @cdns_torrent_refclk_driver_mux_table, !246, !"cdns_torrent_refclk_driver_mux_table", i1 false, i1 false}
!246 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 290, i32 12}
!247 = distinct !{null, !248, !"refclk_out_cmn_cfg", i1 false, i1 false}
!248 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 278, i32 31}
!249 = !{ptr @.str.118, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2467, i32 3}
!251 = !{ptr @cdns_torrent_reset._entry, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @cdns_torrent_reset._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.119, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2472, i32 69}
!255 = !{ptr @.str.121, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2474, i32 3}
!257 = !{ptr @cdns_torrent_reset._entry.120, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @cdns_torrent_reset._entry_ptr.122, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.123, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2488, i32 36}
!261 = !{ptr @.str.124, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2490, i32 3}
!263 = !{ptr @.str.125, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @cdns_torrent_clk._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @cdns_torrent_clk._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.127, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2496, i32 3}
!268 = !{ptr @cdns_torrent_clk._entry.126, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @cdns_torrent_clk._entry_ptr.128, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.130, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2502, i32 3}
!272 = !{ptr @cdns_torrent_clk._entry.129, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @cdns_torrent_clk._entry_ptr.131, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.133, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2518, i32 3}
!276 = !{ptr @cdns_torrent_clk._entry.132, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @cdns_torrent_clk._entry_ptr.134, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @cdns_torrent_phy_ops, !279, !"cdns_torrent_phy_ops", i1 false, i1 false}
!279 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2253, i32 29}
!280 = !{ptr @.str.135, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1639, i32 3}
!282 = !{ptr @.str.136, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @cdns_torrent_dp_init._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @cdns_torrent_dp_init._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.137, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1138, i32 3}
!287 = !{ptr @.str.138, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @cdns_torrent_dp_wait_pma_cmn_ready._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @cdns_torrent_dp_wait_pma_cmn_ready._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.139, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1111, i32 3}
!292 = !{ptr @.str.140, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @cdns_torrent_dp_run._entry, !291, !"_entry", i1 false, i1 false}
!294 = !{ptr @cdns_torrent_dp_run._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.141, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1528, i32 3}
!297 = !{ptr @.str.142, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @cdns_torrent_phy_on._entry, !296, !"_entry", i1 false, i1 false}
!299 = !{ptr @cdns_torrent_phy_on._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.144, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1537, i32 4}
!302 = !{ptr @cdns_torrent_phy_on._entry.143, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @cdns_torrent_phy_on._entry_ptr.145, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.146, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1477, i32 3}
!306 = !{ptr @.str.147, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @cdns_torrent_dp_configure._entry, !305, !"_entry", i1 false, i1 false}
!308 = !{ptr @cdns_torrent_dp_configure._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.149, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1484, i32 4}
!311 = !{ptr @cdns_torrent_dp_configure._entry.148, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @cdns_torrent_dp_configure._entry_ptr.150, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.152, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1492, i32 4}
!315 = !{ptr @cdns_torrent_dp_configure._entry.151, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @cdns_torrent_dp_configure._entry_ptr.153, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @vltg_coeff, !318, !"vltg_coeff", i1 false, i1 false}
!318 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 590, i32 34}
!319 = !{ptr @noop_ops, !320, !"noop_ops", i1 false, i1 false}
!320 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2269, i32 29}
!321 = !{ptr @.str.154, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2055, i32 3}
!323 = !{ptr @.str.155, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @cdns_torrent_dp_regmap_init._entry, !322, !"_entry", i1 false, i1 false}
!325 = !{ptr @cdns_torrent_dp_regmap_init._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.156, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 535, i32 10}
!328 = !{ptr @cdns_torrent_dptx_phy_config, !329, !"cdns_torrent_dptx_phy_config", i1 false, i1 false}
!329 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 534, i32 35}
!330 = !{ptr @.str.157, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 1964, i32 3}
!332 = !{ptr @.str.158, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @cdns_torrent_dp_regfield_init._entry, !331, !"_entry", i1 false, i1 false}
!334 = !{ptr @cdns_torrent_dp_regfield_init._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!335 = distinct !{null, !336, !"phy_reset_ctrl", i1 false, i1 false}
!336 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 258, i32 31}
!337 = !{ptr @.str.159, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 640, i32 10}
!339 = !{ptr @.str.160, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 642, i32 10}
!341 = !{ptr @.str.161, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 644, i32 10}
!343 = !{ptr @.str.162, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 646, i32 10}
!345 = !{ptr @.str.163, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 648, i32 10}
!347 = !{ptr @.str.164, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 650, i32 10}
!349 = !{ptr @cdns_torrent_phy_of_match, !350, !"cdns_torrent_phy_of_match", i1 false, i1 false}
!350 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 4697, i32 34}
!351 = !{ptr @cdns_map_torrent, !352, !"cdns_map_torrent", i1 false, i1 false}
!352 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3733, i32 39}
!353 = !{ptr @sl_dp_link_cmn_vals, !354, !"sl_dp_link_cmn_vals", i1 false, i1 false}
!354 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2809, i32 33}
!355 = !{ptr @sl_dp_link_cmn_regs, !356, !"sl_dp_link_cmn_regs", i1 false, i1 false}
!356 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2800, i32 30}
!357 = !{ptr @pcie_sgmii_link_cmn_vals, !358, !"pcie_sgmii_link_cmn_vals", i1 false, i1 false}
!358 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3299, i32 33}
!359 = !{ptr @pcie_sgmii_link_cmn_regs, !360, !"pcie_sgmii_link_cmn_regs", i1 false, i1 false}
!360 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3280, i32 30}
!361 = !{ptr @pcie_usb_link_cmn_vals, !362, !"pcie_usb_link_cmn_vals", i1 false, i1 false}
!362 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3053, i32 33}
!363 = !{ptr @pcie_usb_link_cmn_regs, !364, !"pcie_usb_link_cmn_regs", i1 false, i1 false}
!364 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3034, i32 30}
!365 = !{ptr @sl_sgmii_link_cmn_vals, !366, !"sl_sgmii_link_cmn_vals", i1 false, i1 false}
!366 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3590, i32 33}
!367 = !{ptr @sl_sgmii_link_cmn_regs, !368, !"sl_sgmii_link_cmn_regs", i1 false, i1 false}
!368 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3579, i32 30}
!369 = !{ptr @usb_sgmii_link_cmn_vals, !370, !"usb_sgmii_link_cmn_vals", i1 false, i1 false}
!370 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3018, i32 33}
!371 = !{ptr @usb_sgmii_link_cmn_regs, !372, !"usb_sgmii_link_cmn_regs", i1 false, i1 false}
!372 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3000, i32 30}
!373 = !{ptr @sl_usb_link_cmn_vals, !374, !"sl_usb_link_cmn_vals", i1 false, i1 false}
!374 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3139, i32 33}
!375 = !{ptr @sl_usb_link_cmn_regs, !376, !"sl_usb_link_cmn_regs", i1 false, i1 false}
!376 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3128, i32 30}
!377 = !{ptr @sl_dp_xcvr_diag_ln_vals, !378, !"sl_dp_xcvr_diag_ln_vals", i1 false, i1 false}
!378 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2814, i32 33}
!379 = !{ptr @sl_dp_xcvr_diag_ln_regs, !380, !"sl_dp_xcvr_diag_ln_regs", i1 false, i1 false}
!380 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2804, i32 30}
!381 = !{ptr @pcie_sgmii_xcvr_diag_ln_vals, !382, !"pcie_sgmii_xcvr_diag_ln_vals", i1 false, i1 false}
!382 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3304, i32 33}
!383 = !{ptr @pcie_sgmii_xcvr_diag_ln_regs, !384, !"pcie_sgmii_xcvr_diag_ln_regs", i1 false, i1 false}
!384 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3287, i32 30}
!385 = !{ptr @pcie_usb_xcvr_diag_ln_vals, !386, !"pcie_usb_xcvr_diag_ln_vals", i1 false, i1 false}
!386 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3058, i32 33}
!387 = !{ptr @pcie_usb_xcvr_diag_ln_regs, !388, !"pcie_usb_xcvr_diag_ln_regs", i1 false, i1 false}
!388 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3041, i32 30}
!389 = !{ptr @sl_sgmii_xcvr_diag_ln_vals, !390, !"sl_sgmii_xcvr_diag_ln_vals", i1 false, i1 false}
!390 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3595, i32 33}
!391 = !{ptr @sl_sgmii_xcvr_diag_ln_regs, !392, !"sl_sgmii_xcvr_diag_ln_regs", i1 false, i1 false}
!392 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3584, i32 30}
!393 = !{ptr @sgmii_pcie_xcvr_diag_ln_vals, !394, !"sgmii_pcie_xcvr_diag_ln_vals", i1 false, i1 false}
!394 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3309, i32 33}
!395 = !{ptr @sgmii_pcie_xcvr_diag_ln_regs, !396, !"sgmii_pcie_xcvr_diag_ln_regs", i1 false, i1 false}
!396 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3293, i32 30}
!397 = !{ptr @sgmii_usb_xcvr_diag_ln_vals, !398, !"sgmii_usb_xcvr_diag_ln_vals", i1 false, i1 false}
!398 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3028, i32 33}
!399 = !{ptr @sgmii_usb_xcvr_diag_ln_regs, !400, !"sgmii_usb_xcvr_diag_ln_regs", i1 false, i1 false}
!400 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3012, i32 30}
!401 = !{ptr @sl_usb_xcvr_diag_ln_vals, !402, !"sl_usb_xcvr_diag_ln_vals", i1 false, i1 false}
!402 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3144, i32 33}
!403 = !{ptr @sl_usb_xcvr_diag_ln_regs, !404, !"sl_usb_xcvr_diag_ln_regs", i1 false, i1 false}
!404 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3133, i32 30}
!405 = !{ptr @usb_pcie_xcvr_diag_ln_vals, !406, !"usb_pcie_xcvr_diag_ln_vals", i1 false, i1 false}
!406 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3063, i32 33}
!407 = !{ptr @usb_pcie_xcvr_diag_ln_regs, !408, !"usb_pcie_xcvr_diag_ln_regs", i1 false, i1 false}
!408 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3047, i32 30}
!409 = !{ptr @usb_sgmii_xcvr_diag_ln_vals, !410, !"usb_sgmii_xcvr_diag_ln_vals", i1 false, i1 false}
!410 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3023, i32 33}
!411 = !{ptr @usb_sgmii_xcvr_diag_ln_regs, !412, !"usb_sgmii_xcvr_diag_ln_regs", i1 false, i1 false}
!412 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3006, i32 30}
!413 = !{ptr @usb_phy_pcs_cmn_vals, !414, !"usb_phy_pcs_cmn_vals", i1 false, i1 false}
!414 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3156, i32 33}
!415 = !{ptr @usb_phy_pcs_cmn_regs, !416, !"usb_phy_pcs_cmn_regs", i1 false, i1 false}
!416 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3150, i32 30}
!417 = !{ptr @sl_dp_19_2_no_ssc_cmn_vals, !418, !"sl_dp_19_2_no_ssc_cmn_vals", i1 false, i1 false}
!418 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2875, i32 33}
!419 = !{ptr @sl_dp_19_2_no_ssc_cmn_regs, !420, !"sl_dp_19_2_no_ssc_cmn_regs", i1 false, i1 false}
!420 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2820, i32 30}
!421 = !{ptr @sl_dp_25_no_ssc_cmn_vals, !422, !"sl_dp_25_no_ssc_cmn_vals", i1 false, i1 false}
!422 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2946, i32 33}
!423 = !{ptr @sl_dp_25_no_ssc_cmn_regs, !424, !"sl_dp_25_no_ssc_cmn_regs", i1 false, i1 false}
!424 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2891, i32 30}
!425 = !{ptr @sl_dp_100_no_ssc_cmn_vals, !426, !"sl_dp_100_no_ssc_cmn_vals", i1 false, i1 false}
!426 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2984, i32 33}
!427 = !{ptr @sl_dp_100_no_ssc_cmn_regs, !428, !"sl_dp_100_no_ssc_cmn_regs", i1 false, i1 false}
!428 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2962, i32 30}
!429 = !{ptr @sl_pcie_100_int_ssc_cmn_vals, !430, !"sl_pcie_100_int_ssc_cmn_vals", i1 false, i1 false}
!430 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3705, i32 33}
!431 = !{ptr @sl_pcie_100_int_ssc_cmn_regs, !432, !"sl_pcie_100_int_ssc_cmn_regs", i1 false, i1 false}
!432 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3656, i32 30}
!433 = !{ptr @pcie_100_no_ssc_cmn_vals, !434, !"pcie_100_no_ssc_cmn_vals", i1 false, i1 false}
!434 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3723, i32 33}
!435 = !{ptr @pcie_100_ext_no_ssc_cmn_regs, !436, !"pcie_100_ext_no_ssc_cmn_regs", i1 false, i1 false}
!436 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3711, i32 30}
!437 = !{ptr @pcie_100_int_ssc_cmn_vals, !438, !"pcie_100_int_ssc_cmn_vals", i1 false, i1 false}
!438 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3650, i32 33}
!439 = !{ptr @pcie_100_int_ssc_cmn_regs, !440, !"pcie_100_int_ssc_cmn_regs", i1 false, i1 false}
!440 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3601, i32 30}
!441 = !{ptr @sl_sgmii_100_no_ssc_cmn_vals, !442, !"sl_sgmii_100_no_ssc_cmn_vals", i1 false, i1 false}
!442 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3323, i32 33}
!443 = !{ptr @sl_sgmii_100_no_ssc_cmn_regs, !444, !"sl_sgmii_100_no_ssc_cmn_regs", i1 false, i1 false}
!444 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3315, i32 30}
!445 = !{ptr @sgmii_100_no_ssc_cmn_vals, !446, !"sgmii_100_no_ssc_cmn_vals", i1 false, i1 false}
!446 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3368, i32 33}
!447 = !{ptr @sgmii_100_no_ssc_cmn_regs, !448, !"sgmii_100_no_ssc_cmn_regs", i1 false, i1 false}
!448 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3328, i32 30}
!449 = !{ptr @sgmii_100_int_ssc_cmn_vals, !450, !"sgmii_100_int_ssc_cmn_vals", i1 false, i1 false}
!450 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3440, i32 33}
!451 = !{ptr @sgmii_100_int_ssc_cmn_regs, !452, !"sgmii_100_int_ssc_cmn_regs", i1 false, i1 false}
!452 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3389, i32 30}
!453 = !{ptr @sl_qsgmii_100_no_ssc_cmn_vals, !454, !"sl_qsgmii_100_no_ssc_cmn_vals", i1 false, i1 false}
!454 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3454, i32 33}
!455 = !{ptr @sl_qsgmii_100_no_ssc_cmn_regs, !456, !"sl_qsgmii_100_no_ssc_cmn_regs", i1 false, i1 false}
!456 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3446, i32 30}
!457 = !{ptr @qsgmii_100_no_ssc_cmn_vals, !458, !"qsgmii_100_no_ssc_cmn_vals", i1 false, i1 false}
!458 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3501, i32 33}
!459 = !{ptr @qsgmii_100_no_ssc_cmn_regs, !460, !"qsgmii_100_no_ssc_cmn_regs", i1 false, i1 false}
!460 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3459, i32 30}
!461 = !{ptr @qsgmii_100_int_ssc_cmn_vals, !462, !"qsgmii_100_int_ssc_cmn_vals", i1 false, i1 false}
!462 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3573, i32 33}
!463 = !{ptr @qsgmii_100_int_ssc_cmn_regs, !464, !"qsgmii_100_int_ssc_cmn_regs", i1 false, i1 false}
!464 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3522, i32 30}
!465 = !{ptr @sl_usb_100_no_ssc_cmn_vals, !466, !"sl_usb_100_no_ssc_cmn_vals", i1 false, i1 false}
!466 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3172, i32 33}
!467 = !{ptr @sl_usb_100_no_ssc_cmn_regs, !468, !"sl_usb_100_no_ssc_cmn_regs", i1 false, i1 false}
!468 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3162, i32 30}
!469 = !{ptr @sl_usb_100_int_ssc_cmn_vals, !470, !"sl_usb_100_int_ssc_cmn_vals", i1 false, i1 false}
!470 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3274, i32 33}
!471 = !{ptr @sl_usb_100_int_ssc_cmn_regs, !472, !"sl_usb_100_int_ssc_cmn_regs", i1 false, i1 false}
!472 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3233, i32 30}
!473 = !{ptr @usb_100_no_ssc_cmn_vals, !474, !"usb_100_no_ssc_cmn_vals", i1 false, i1 false}
!474 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3217, i32 33}
!475 = !{ptr @usb_100_no_ssc_cmn_regs, !476, !"usb_100_no_ssc_cmn_regs", i1 false, i1 false}
!476 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3177, i32 30}
!477 = !{ptr @usb_100_int_ssc_cmn_vals, !478, !"usb_100_int_ssc_cmn_vals", i1 false, i1 false}
!478 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3122, i32 33}
!479 = !{ptr @usb_100_int_ssc_cmn_regs, !480, !"usb_100_int_ssc_cmn_regs", i1 false, i1 false}
!480 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3069, i32 30}
!481 = !{ptr @sl_dp_19_2_no_ssc_tx_ln_vals, !482, !"sl_dp_19_2_no_ssc_tx_ln_vals", i1 false, i1 false}
!482 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2880, i32 33}
!483 = !{ptr @sl_dp_19_2_no_ssc_tx_ln_regs, !484, !"sl_dp_19_2_no_ssc_tx_ln_regs", i1 false, i1 false}
!484 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2857, i32 30}
!485 = !{ptr @sl_dp_25_no_ssc_tx_ln_vals, !486, !"sl_dp_25_no_ssc_tx_ln_vals", i1 false, i1 false}
!486 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2951, i32 33}
!487 = !{ptr @sl_dp_25_no_ssc_tx_ln_regs, !488, !"sl_dp_25_no_ssc_tx_ln_regs", i1 false, i1 false}
!488 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2928, i32 30}
!489 = !{ptr @sl_dp_100_no_ssc_tx_ln_vals, !490, !"sl_dp_100_no_ssc_tx_ln_vals", i1 false, i1 false}
!490 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2989, i32 33}
!491 = !{ptr @sl_dp_100_no_ssc_tx_ln_regs, !492, !"sl_dp_100_no_ssc_tx_ln_regs", i1 false, i1 false}
!492 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2967, i32 30}
!493 = !{ptr @sgmii_100_no_ssc_tx_ln_vals, !494, !"sgmii_100_no_ssc_tx_ln_vals", i1 false, i1 false}
!494 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3373, i32 33}
!495 = !{ptr @sgmii_100_no_ssc_tx_ln_regs, !496, !"sgmii_100_no_ssc_tx_ln_regs", i1 false, i1 false}
!496 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3333, i32 30}
!497 = !{ptr @qsgmii_100_no_ssc_tx_ln_vals, !498, !"qsgmii_100_no_ssc_tx_ln_vals", i1 false, i1 false}
!498 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3506, i32 33}
!499 = !{ptr @qsgmii_100_no_ssc_tx_ln_regs, !500, !"qsgmii_100_no_ssc_tx_ln_regs", i1 false, i1 false}
!500 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3464, i32 30}
!501 = !{ptr @usb_100_no_ssc_tx_ln_vals, !502, !"usb_100_no_ssc_tx_ln_vals", i1 false, i1 false}
!502 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3222, i32 33}
!503 = !{ptr @usb_100_no_ssc_tx_ln_regs, !504, !"usb_100_no_ssc_tx_ln_regs", i1 false, i1 false}
!504 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3184, i32 30}
!505 = !{ptr @sl_dp_19_2_no_ssc_rx_ln_vals, !506, !"sl_dp_19_2_no_ssc_rx_ln_vals", i1 false, i1 false}
!506 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2885, i32 33}
!507 = !{ptr @sl_dp_19_2_no_ssc_rx_ln_regs, !508, !"sl_dp_19_2_no_ssc_rx_ln_regs", i1 false, i1 false}
!508 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2865, i32 30}
!509 = !{ptr @sl_dp_25_no_ssc_rx_ln_vals, !510, !"sl_dp_25_no_ssc_rx_ln_vals", i1 false, i1 false}
!510 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2956, i32 33}
!511 = !{ptr @sl_dp_25_no_ssc_rx_ln_regs, !512, !"sl_dp_25_no_ssc_rx_ln_regs", i1 false, i1 false}
!512 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2936, i32 30}
!513 = !{ptr @sl_dp_100_no_ssc_rx_ln_vals, !514, !"sl_dp_100_no_ssc_rx_ln_vals", i1 false, i1 false}
!514 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2994, i32 33}
!515 = !{ptr @sl_dp_100_no_ssc_rx_ln_regs, !516, !"sl_dp_100_no_ssc_rx_ln_regs", i1 false, i1 false}
!516 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 2974, i32 30}
!517 = !{ptr @pcie_100_no_ssc_rx_ln_vals, !518, !"pcie_100_no_ssc_rx_ln_vals", i1 false, i1 false}
!518 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3728, i32 33}
!519 = !{ptr @pcie_100_ext_no_ssc_rx_ln_regs, !520, !"pcie_100_ext_no_ssc_rx_ln_regs", i1 false, i1 false}
!520 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3717, i32 30}
!521 = !{ptr @sgmii_100_no_ssc_rx_ln_vals, !522, !"sgmii_100_no_ssc_rx_ln_vals", i1 false, i1 false}
!522 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3383, i32 33}
!523 = !{ptr @sgmii_100_no_ssc_rx_ln_regs, !524, !"sgmii_100_no_ssc_rx_ln_regs", i1 false, i1 false}
!524 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3350, i32 30}
!525 = !{ptr @qsgmii_100_no_ssc_rx_ln_vals, !526, !"qsgmii_100_no_ssc_rx_ln_vals", i1 false, i1 false}
!526 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3516, i32 33}
!527 = !{ptr @qsgmii_100_no_ssc_rx_ln_regs, !528, !"qsgmii_100_no_ssc_rx_ln_regs", i1 false, i1 false}
!528 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3483, i32 30}
!529 = !{ptr @usb_100_no_ssc_rx_ln_vals, !530, !"usb_100_no_ssc_rx_ln_vals", i1 false, i1 false}
!530 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3227, i32 33}
!531 = !{ptr @usb_100_no_ssc_rx_ln_regs, !532, !"usb_100_no_ssc_rx_ln_regs", i1 false, i1 false}
!532 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3194, i32 30}
!533 = !{ptr @ti_j721e_map_torrent, !534, !"ti_j721e_map_torrent", i1 false, i1 false}
!534 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 4215, i32 39}
!535 = !{ptr @ti_sgmii_100_no_ssc_tx_ln_vals, !536, !"ti_sgmii_100_no_ssc_tx_ln_vals", i1 false, i1 false}
!536 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3378, i32 33}
!537 = !{ptr @ti_sgmii_100_no_ssc_tx_ln_regs, !538, !"ti_sgmii_100_no_ssc_tx_ln_regs", i1 false, i1 false}
!538 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3341, i32 30}
!539 = !{ptr @ti_qsgmii_100_no_ssc_tx_ln_vals, !540, !"ti_qsgmii_100_no_ssc_tx_ln_vals", i1 false, i1 false}
!540 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3511, i32 33}
!541 = !{ptr @ti_qsgmii_100_no_ssc_tx_ln_regs, !542, !"ti_qsgmii_100_no_ssc_tx_ln_regs", i1 false, i1 false}
!542 = !{!"../drivers/phy/cadence/phy-cadence-torrent.c", i32 3473, i32 30}
!543 = !{i32 1, !"wchar_size", i32 2}
!544 = !{i32 1, !"min_enum_size", i32 4}
!545 = !{i32 8, !"branch-target-enforcement", i32 0}
!546 = !{i32 8, !"sign-return-address", i32 0}
!547 = !{i32 8, !"sign-return-address-all", i32 0}
!548 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!549 = !{i32 7, !"uwtable", i32 1}
!550 = !{i32 7, !"frame-pointer", i32 2}
!551 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!552 = !{!"auto-init"}
!553 = !{i64 2148860838, i64 2148860843, i64 2148860856, i64 2148860900, i64 2148860934, i64 2148860955}
!554 = !{i64 4719823}
!555 = !{i64 2155408489}
!556 = !{i64 2155407823}
!557 = !{i64 4719623}
!558 = !{i64 4720661}
!559 = !{i64 2155409370}
!560 = !{i64 2155408704}
!561 = !{i64 4720243}
