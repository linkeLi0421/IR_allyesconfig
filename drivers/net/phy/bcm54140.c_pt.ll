; ModuleID = '/llk/IR_all_yes/drivers/net/phy/bcm54140.c_pt.bc'
source_filename = "../drivers/net/phy/bcm54140.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bcm54140_priv = type { i32, i32, %struct.mutex, i16 }
%struct.phy_package_shared = type { i32, %struct.refcount_struct, i32, i32, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }

@__initcall__kmod_bcm54140__325_876_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@bcm54140_drivers = internal global { [1 x %struct.phy_driver], [52 x i8] } { [1 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375580151, ptr @.str, i32 -24, ptr @phy_gbit_features, i32 4, ptr null, ptr @genphy_soft_reset, ptr @bcm54140_config_init, ptr @bcm54140_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @bcm54140_config_intr, ptr @bcm54140_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_cable_test_start_rdb, ptr null, ptr @bcm_phy_cable_test_get_status_rdb, ptr null, ptr null, ptr null, ptr @bcm54140_get_tunable, ptr @bcm54140_set_tunable, ptr null, ptr null, ptr null }], [52 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author326 = internal constant [30 x i8] c"bcm54140.author=Michael Walle\00", section ".modinfo", align 1
@__UNIQUE_ID_description327 = internal constant [50 x i8] c"bcm54140.description=Broadcom BCM54140 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file328 = internal constant [39 x i8] c"bcm54140.file=drivers/net/phy/bcm54140\00", section ".modinfo", align 1
@__UNIQUE_ID_license329 = internal constant [21 x i8] c"bcm54140.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Broadcom BCM54140\00", [46 x i8] zeroinitializer }, align 32
@phy_gbit_features = external dso_local global [3 x i32], section ".data..ro_after_init", align 4
@bcm54140_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->alarm_lock\00", [46 x i8] zeroinitializer }, align 32
@bcm54140_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bcm54140\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcm54140_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/net/phy/bcm54140.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"probed (port %d, base PHY address %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@bcm54140_get_base_addr_and_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.4, i32 561, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Detected Quad PHY IDs %d..%d doesn't make sense.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bcm54140_get_base_addr_and_port\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm54140_get_base_addr_and_port._entry_ptr = internal global ptr @bcm54140_get_base_addr_and_port._entry, section ".printk_index", align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BCM54140\00", [23 x i8] zeroinitializer }, align 32
@bcm54140_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @bcm54140_hwmon_ops, ptr @bcm54140_hwmon_info }, [24 x i8] zeroinitializer }, align 32
@bcm54140_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @bcm54140_hwmon_is_visible, ptr @bcm54140_hwmon_read, ptr @bcm54140_hwmon_read_string, ptr @bcm54140_hwmon_write }, [16 x i8] zeroinitializer }, align 32
@bcm54140_hwmon_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.13, ptr @.compoundliteral.15, ptr null], [20 x i8] zeroinitializer }, align 32
@bcm54140_hwmon_in_labels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.11, ptr @.str.12], [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AVDDL\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AVDDH\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 8354, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 3086, i32 3086, i32 0], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.14 }, [24 x i8] zeroinitializer }, align 32
@bcm54140_config_intr.port_to_imr_bit = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 16, i16 32, i16 64, i16 128], [24 x i8] zeroinitializer }, align 32
@switch.table.bcm54140_hwmon_is_visible = internal constant { [11 x i16], [42 x i8] } { [11 x i16] [i16 292, i16 420, i16 420, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 292, i16 292], [42 x i8] zeroinitializer }, align 32
@switch.table.bcm54140_hwmon_is_visible.16 = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 292, i16 0, i16 420, i16 420, i16 0, i16 0, i16 292], [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 2700, i64 5400, i64 65535]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 11]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"bcm54140_drivers\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 856, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 860, i32 21 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 589, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 598, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 559, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 420, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"bcm54140_chip_info\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 386, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"bcm54140_hwmon_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 379, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant [20 x i8] c"bcm54140_hwmon_info\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 367, i32 41 }
@___asan_gen_.78 = private unnamed_addr constant [25 x i8] c"bcm54140_hwmon_in_labels\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 281, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 282, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 283, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"port_to_imr_bit\00", align 1
@___asan_gen_.92 = private constant [30 x i8] c"../drivers/net/phy/bcm54140.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 680, i32 19 }
@___asan_gen_.94 = private unnamed_addr constant [39 x i8] c"switch.table.bcm54140_hwmon_is_visible\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [42 x i8] c"switch.table.bcm54140_hwmon_is_visible.16\00", align 1
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author326, ptr @__UNIQUE_ID_description327, ptr @__UNIQUE_ID_file328, ptr @__UNIQUE_ID_license329, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_bcm54140__325_876_phy_module_init6, ptr @bcm54140_get_base_addr_and_port._entry, ptr @bcm54140_get_base_addr_and_port._entry_ptr, ptr @phy_module_exit, ptr @bcm54140_drivers, ptr @.str, ptr @bcm54140_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @bcm54140_chip_info, ptr @bcm54140_hwmon_ops, ptr @bcm54140_hwmon_info, ptr @bcm54140_hwmon_in_labels, ptr @.str.11, ptr @.str.12, ptr @.compoundliteral, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15, ptr @bcm54140_config_intr.port_to_imr_bit, ptr @switch.table.bcm54140_hwmon_is_visible, ptr @switch.table.bcm54140_hwmon_is_visible.16], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm54140_drivers to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm54140_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm54140_get_base_addr_and_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm54140_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm54140_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm54140_hwmon_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm54140_hwmon_in_labels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm54140_config_intr.port_to_imr_bit to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bcm54140_hwmon_is_visible to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bcm54140_hwmon_is_visible.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @bcm54140_drivers, i32 noundef 1, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_drivers_unregister(ptr noundef nonnull @bcm54140_drivers, i32 noundef 1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54140_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_id, align 4
  %and = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @bcm_phy_read_rdb(ptr noundef %phydev, i16 noundef zeroext 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %2 = trunc i32 %call.i to i16
  %conv.i = and i16 %2, -2
  %call1.i = tail call i32 @bcm_phy_write_rdb(ptr noundef %phydev, i16 noundef zeroext 21, i16 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext 2048) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %if.end3.i
  %call8.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 2048, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %bcm54140_b0_workaround.exit, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

bcm54140_b0_workaround.exit:                      ; preds = %if.end7.i
  %conv12.i = or i16 %2, 1
  %call13.i = tail call i32 @bcm_phy_write_rdb(ptr noundef %phydev, i16 noundef zeroext 21, i16 noundef zeroext %conv12.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not = icmp eq i32 %call13.i, 0
  br i1 %tobool.not, label %bcm54140_b0_workaround.exit.if.end2_crit_edge, label %bcm54140_b0_workaround.exit.cleanup_crit_edge

bcm54140_b0_workaround.exit.cleanup_crit_edge:    ; preds = %bcm54140_b0_workaround.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

bcm54140_b0_workaround.exit.if.end2_crit_edge:    ; preds = %bcm54140_b0_workaround.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.end2:                                          ; preds = %bcm54140_b0_workaround.exit.if.end2_crit_edge, %entry.if.end2_crit_edge
  %call5 = tail call i32 @bcm_phy_write_rdb(ptr noundef %phydev, i16 noundef zeroext 11, i16 noundef zeroext -15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end2
  %call9 = tail call i32 @bcm_phy_modify_rdb(ptr noundef %phydev, i16 noundef zeroext 18, i16 noundef zeroext 0, i16 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @bcm_phy_modify_rdb(ptr noundef %phydev, i16 noundef zeroext 25, i16 noundef zeroext 0, i16 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 @bcm_phy_modify_rdb(ptr noundef %phydev, i16 noundef zeroext 42, i16 noundef zeroext 32, i16 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %bcm54140_b0_workaround.exit.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ %call13.i, %bcm54140_b0_workaround.exit.cleanup_crit_edge ], [ %call5, %if.end2.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call8.i, %if.end7.i.cleanup_crit_edge ], [ %call4.i, %if.end3.i.cleanup_crit_edge ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54140_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 104, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %priv1, align 8
  %bus2.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus2.i, align 8
  %addr4.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %drv.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %3 = ptrtoint ptr %addr4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr4.i, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end26.i.while.cond.i_crit_edge, %if.end
  %addr.0.i = phi i32 [ %inc.i, %if.end26.i.while.cond.i_crit_edge ], [ %4, %if.end ]
  %min_addr.0.i = phi i32 [ %min_addr.0.i, %if.end26.i.while.cond.i_crit_edge ], [ %4, %if.end ]
  %max_addr.0.i = phi i32 [ %addr.0.i, %if.end26.i.while.cond.i_crit_edge ], [ %4, %if.end ]
  %inc.i = add i32 1, %addr.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %inc.i)
  %5 = icmp ugt i32 %inc.i, 31
  br i1 %5, label %while.cond.i.while.cond.backedge.sink.split.i_crit_edge, label %if.end19.i

while.cond.i.while.cond.backedge.sink.split.i_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge.sink.split.i

while.cond.backedge.sink.split.i:                 ; preds = %if.end26.i.while.cond.backedge.sink.split.i_crit_edge, %while.cond.i.while.cond.backedge.sink.split.i_crit_edge
  %6 = ptrtoint ptr %addr4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr4.i, align 8
  br label %while.cond.i.1

while.cond.i.1:                                   ; preds = %if.end26.i.1.while.cond.i.1_crit_edge, %while.cond.backedge.sink.split.i
  %addr.0.i.1 = phi i32 [ %inc.i.1, %if.end26.i.1.while.cond.i.1_crit_edge ], [ %7, %while.cond.backedge.sink.split.i ]
  %min_addr.0.i.1 = phi i32 [ %addr.0.i.1, %if.end26.i.1.while.cond.i.1_crit_edge ], [ %min_addr.0.i, %while.cond.backedge.sink.split.i ]
  %max_addr.0.i.1 = phi i32 [ %max_addr.0.i.1, %if.end26.i.1.while.cond.i.1_crit_edge ], [ %addr.0.i, %while.cond.backedge.sink.split.i ]
  %inc.i.1 = add i32 -1, %addr.0.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %inc.i.1)
  %8 = icmp ugt i32 %inc.i.1, 31
  br i1 %8, label %while.cond.i.1.while.end.i_crit_edge, label %if.end19.i.1

while.cond.i.1.while.end.i_crit_edge:             ; preds = %while.cond.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.end19.i.1:                                     ; preds = %while.cond.i.1
  %call.i44.1 = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %inc.i.1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.1)
  %cmp20.i.1 = icmp slt i32 %call.i44.1, 0
  br i1 %cmp20.i.1, label %if.end19.i.1.cleanup_crit_edge, label %if.end22.i.1

if.end19.i.1.cleanup_crit_edge:                   ; preds = %if.end19.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22.i.1:                                     ; preds = %if.end19.i.1
  %call23.i.1 = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %inc.i.1, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.1)
  %cmp24.i.1 = icmp slt i32 %call23.i.1, 0
  br i1 %cmp24.i.1, label %if.end22.i.1.cleanup_crit_edge, label %if.end26.i.1

if.end22.i.1.cleanup_crit_edge:                   ; preds = %if.end22.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26.i.1:                                     ; preds = %if.end22.i.1
  %shl.i.1 = shl i32 %call.i44.1, 16
  %or.i.1 = or i32 %call23.i.1, %shl.i.1
  %9 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv.i, align 8
  %phy_id_mask.i.1 = getelementptr inbounds %struct.phy_driver, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %phy_id_mask.i.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phy_id_mask.i.1, align 4
  %phy_id28.i.1 = getelementptr inbounds %struct.phy_driver, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %phy_id28.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phy_id28.i.1, align 4
  %15 = xor i32 %14, %or.i.1
  %16 = and i32 %15, %12
  %cmp32.not.i.1 = icmp eq i32 %16, 0
  br i1 %cmp32.not.i.1, label %if.end26.i.1.while.cond.i.1_crit_edge, label %if.end26.i.1.while.end.i_crit_edge

if.end26.i.1.while.end.i_crit_edge:               ; preds = %if.end26.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.end26.i.1.while.cond.i.1_crit_edge:            ; preds = %if.end26.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.1

if.end19.i:                                       ; preds = %while.cond.i
  %call.i44 = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %inc.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp20.i = icmp slt i32 %call.i44, 0
  br i1 %cmp20.i, label %if.end19.i.cleanup_crit_edge, label %if.end22.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22.i:                                       ; preds = %if.end19.i
  %call23.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %inc.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %if.end22.i.cleanup_crit_edge, label %if.end26.i

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26.i:                                       ; preds = %if.end22.i
  %shl.i = shl i32 %call.i44, 16
  %or.i = or i32 %call23.i, %shl.i
  %17 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drv.i, align 8
  %phy_id_mask.i = getelementptr inbounds %struct.phy_driver, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %phy_id_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phy_id_mask.i, align 4
  %phy_id28.i = getelementptr inbounds %struct.phy_driver, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %phy_id28.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phy_id28.i, align 4
  %23 = xor i32 %22, %or.i
  %24 = and i32 %23, %20
  %cmp32.not.i = icmp eq i32 %24, 0
  br i1 %cmp32.not.i, label %if.end26.i.while.cond.i_crit_edge, label %if.end26.i.while.cond.backedge.sink.split.i_crit_edge

if.end26.i.while.cond.backedge.sink.split.i_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge.sink.split.i

if.end26.i.while.cond.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.end.i:                                      ; preds = %if.end26.i.1.while.end.i_crit_edge, %while.cond.i.1.while.end.i_crit_edge
  %sub.i = sub i32 1, %addr.0.i.1
  %add.i = add i32 %sub.i, %max_addr.0.i.1
  %25 = and i32 %add.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end5, label %do.end.i

do.end.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.6, i32 noundef %addr.0.i.1, i32 noundef %max_addr.0.i.1) #10
  br label %cleanup

if.end5:                                          ; preds = %while.end.i
  %26 = ptrtoint ptr %addr4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr4.i, align 8
  %sub43.i = sub i32 %27, %addr.0.i.1
  %rem44.i = srem i32 %sub43.i, 4
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %rem44.i, ptr %call.i, align 4
  %sub48.i = sub i32 %27, %rem44.i
  %base_addr.i = getelementptr inbounds %struct.bcm54140_priv, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub48.i, ptr %base_addr.i, align 4
  %call8 = tail call i32 @devm_phy_package_join(ptr noundef %phydev, ptr noundef %phydev, i32 noundef %sub48.i, i32 noundef 0) #7
  %alarm_lock = getelementptr inbounds %struct.bcm54140_priv, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %alarm_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @bcm54140_probe.__key) #7
  %shared1.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 27
  %30 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.end5.do.body16_crit_edge, label %phy_package_init_once.exit

if.end5.do.body16_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

phy_package_init_once.exit:                       ; preds = %if.end5
  %flags.i.i = getelementptr inbounds %struct.phy_package_shared, ptr %31, i32 0, i32 2
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then10, label %phy_package_init_once.exit.do.body16_crit_edge

phy_package_init_once.exit.do.body16_crit_edge:   ; preds = %phy_package_init_once.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

if.then10:                                        ; preds = %phy_package_init_once.exit
  %call.i.i46 = tail call i32 @bcm_phy_modify_rdb(ptr noundef %phydev, i16 noundef zeroext 2097, i16 noundef zeroext 7, i16 noundef zeroext 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46)
  %tobool.not.i47 = icmp eq i32 %call.i.i46, 0
  br i1 %tobool.not.i47, label %if.end.i, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then10
  %call1.i = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %phydev, ptr noundef nonnull @.str.10, ptr noundef %phydev, ptr noundef nonnull @bcm54140_chip_info, ptr noundef null) #7
  %cmp.i.i.i.not = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  %32 = ptrtoint ptr %call1.i to i32
  br i1 %cmp.i.i.i.not, label %if.end.i.cleanup_crit_edge, label %if.end.i.do.body16_crit_edge

if.end.i.do.body16_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body16:                                        ; preds = %if.end.i.do.body16_crit_edge, %phy_package_init_once.exit.do.body16_crit_edge, %if.end5.do.body16_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm54140_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm54140_probe, %if.then21)) #7
          to label %cleanup [label %if.then21], !srcloc !55

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call.i, align 4
  %35 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base_addr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm54140_probe.__UNIQUE_ID_ddebug294, ptr noundef %phydev, ptr noundef nonnull @.str.5, i32 noundef %34, i32 noundef %36) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.body16, %if.end.i.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %do.end.i, %if.end22.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %if.end22.i.1.cleanup_crit_edge, %if.end19.i.1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %do.body16 ], [ -22, %do.end.i ], [ %call.i.i46, %if.then10.cleanup_crit_edge ], [ %32, %if.end.i.cleanup_crit_edge ], [ %call.i44, %if.end19.i.cleanup_crit_edge ], [ %call23.i, %if.end22.i.cleanup_crit_edge ], [ %call23.i.1, %if.end22.i.1.cleanup_crit_edge ], [ %call.i44.1, %if.end19.i.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54140_config_intr(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 0) #7
  %shared1.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 27
  %6 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.bcm54140_base_read_rdb.exit_crit_edge, label %__phy_package_write.exit.i

if.end.bcm54140_base_read_rdb.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm54140_base_read_rdb.exit

__phy_package_write.exit.i:                       ; preds = %if.end
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 30, i16 noundef zeroext 2093) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %__phy_package_write.exit.i.bcm54140_base_read_rdb.exit_crit_edge, label %if.end.i

__phy_package_write.exit.i.bcm54140_base_read_rdb.exit_crit_edge: ; preds = %__phy_package_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm54140_base_read_rdb.exit

if.end.i:                                         ; preds = %__phy_package_write.exit.i
  %12 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i3.i = icmp eq ptr %13, null
  br i1 %tobool.not.i3.i, label %if.end.i.bcm54140_base_read_rdb.exit_crit_edge, label %if.end.i6.i

if.end.i.bcm54140_base_read_rdb.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm54140_base_read_rdb.exit

if.end.i6.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i, align 8
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 4
  %call.i5.i = tail call i32 @__mdiobus_read(ptr noundef %15, i32 noundef %17, i32 noundef 31) #7
  br label %bcm54140_base_read_rdb.exit

bcm54140_base_read_rdb.exit:                      ; preds = %if.end.i6.i, %if.end.i.bcm54140_base_read_rdb.exit_crit_edge, %__phy_package_write.exit.i.bcm54140_base_read_rdb.exit_crit_edge, %if.end.bcm54140_base_read_rdb.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %__phy_package_write.exit.i.bcm54140_base_read_rdb.exit_crit_edge ], [ %call.i5.i, %if.end.i6.i ], [ -5, %if.end.i.bcm54140_base_read_rdb.exit_crit_edge ], [ -5, %if.end.bcm54140_base_read_rdb.exit_crit_edge ]
  %18 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i9.i = getelementptr inbounds %struct.mii_bus, ptr %19, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i9.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp2 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp2, label %bcm54140_base_read_rdb.exit.cleanup_crit_edge, label %if.end4

bcm54140_base_read_rdb.exit.cleanup_crit_edge:    ; preds = %bcm54140_base_read_rdb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %bcm54140_base_read_rdb.exit
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %20 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp5.not = icmp eq i16 %bf.clear, 0
  br i1 %cmp5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  %call.i = tail call i32 @bcm_phy_read_rdb(ptr noundef %phydev, i16 noundef zeroext 10) #7
  %21 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end9, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %arrayidx = getelementptr [4 x i16], ptr @bcm54140_config_intr.port_to_imr_bit, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %25 to i32
  %neg = xor i32 %conv, -1
  %and = and i32 %ret.0.i, %neg
  %conv11 = trunc i32 %and to i16
  %26 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i.i43 = getelementptr inbounds %struct.mii_bus, ptr %27, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i43, i32 noundef 0) #7
  %28 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i45 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i45, label %if.end9.bcm54140_base_write_rdb.exit_crit_edge, label %__phy_package_write.exit.i48

if.end9.bcm54140_base_write_rdb.exit_crit_edge:   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm54140_base_write_rdb.exit

__phy_package_write.exit.i48:                     ; preds = %if.end9
  %30 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus.i.i, align 8
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %29, align 4
  %call.i.i46 = tail call i32 @__mdiobus_write(ptr noundef %31, i32 noundef %33, i32 noundef 30, i16 noundef zeroext 2093) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46)
  %cmp.i47 = icmp slt i32 %call.i.i46, 0
  br i1 %cmp.i47, label %__phy_package_write.exit.i48.bcm54140_base_write_rdb.exit_crit_edge, label %if.end.i50

__phy_package_write.exit.i48.bcm54140_base_write_rdb.exit_crit_edge: ; preds = %__phy_package_write.exit.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm54140_base_write_rdb.exit

if.end.i50:                                       ; preds = %__phy_package_write.exit.i48
  %34 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i3.i49 = icmp eq ptr %35, null
  br i1 %tobool.not.i3.i49, label %if.end.i50.bcm54140_base_write_rdb.exit_crit_edge, label %if.end.i6.i52

if.end.i50.bcm54140_base_write_rdb.exit_crit_edge: ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm54140_base_write_rdb.exit

if.end.i6.i52:                                    ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i.i, align 8
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %35, align 4
  %call.i5.i51 = tail call i32 @__mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 31, i16 noundef zeroext %conv11) #7
  br label %bcm54140_base_write_rdb.exit

bcm54140_base_write_rdb.exit:                     ; preds = %if.end.i6.i52, %if.end.i50.bcm54140_base_write_rdb.exit_crit_edge, %__phy_package_write.exit.i48.bcm54140_base_write_rdb.exit_crit_edge, %if.end9.bcm54140_base_write_rdb.exit_crit_edge
  %ret.0.i53 = phi i32 [ %call.i.i46, %__phy_package_write.exit.i48.bcm54140_base_write_rdb.exit_crit_edge ], [ %call.i5.i51, %if.end.i6.i52 ], [ -5, %if.end.i50.bcm54140_base_write_rdb.exit_crit_edge ], [ -5, %if.end9.bcm54140_base_write_rdb.exit_crit_edge ]
  %40 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i10.i = getelementptr inbounds %struct.mii_bus, ptr %41, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i10.i) #7
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %1, align 4
  %arrayidx14 = getelementptr [4 x i16], ptr @bcm54140_config_intr.port_to_imr_bit, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx14, align 2
  %46 = trunc i32 %ret.0.i to i16
  %conv16 = or i16 %45, %46
  %47 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i.i55 = getelementptr inbounds %struct.mii_bus, ptr %48, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i55, i32 noundef 0) #7
  %49 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i57 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i57, label %if.else.bcm54140_base_write_rdb.exit67_crit_edge, label %__phy_package_write.exit.i60

if.else.bcm54140_base_write_rdb.exit67_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm54140_base_write_rdb.exit67

__phy_package_write.exit.i60:                     ; preds = %if.else
  %51 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus.i.i, align 8
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %50, align 4
  %call.i.i58 = tail call i32 @__mdiobus_write(ptr noundef %52, i32 noundef %54, i32 noundef 30, i16 noundef zeroext 2093) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %cmp.i59 = icmp slt i32 %call.i.i58, 0
  br i1 %cmp.i59, label %__phy_package_write.exit.i60.bcm54140_base_write_rdb.exit67_crit_edge, label %if.end.i62

__phy_package_write.exit.i60.bcm54140_base_write_rdb.exit67_crit_edge: ; preds = %__phy_package_write.exit.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm54140_base_write_rdb.exit67

if.end.i62:                                       ; preds = %__phy_package_write.exit.i60
  %55 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i3.i61 = icmp eq ptr %56, null
  br i1 %tobool.not.i3.i61, label %if.end.i62.bcm54140_base_write_rdb.exit67_crit_edge, label %if.end.i6.i64

if.end.i62.bcm54140_base_write_rdb.exit67_crit_edge: ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm54140_base_write_rdb.exit67

if.end.i6.i64:                                    ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bus.i.i, align 8
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %56, align 4
  %call.i5.i63 = tail call i32 @__mdiobus_write(ptr noundef %58, i32 noundef %60, i32 noundef 31, i16 noundef zeroext %conv16) #7
  br label %bcm54140_base_write_rdb.exit67

bcm54140_base_write_rdb.exit67:                   ; preds = %if.end.i6.i64, %if.end.i62.bcm54140_base_write_rdb.exit67_crit_edge, %__phy_package_write.exit.i60.bcm54140_base_write_rdb.exit67_crit_edge, %if.else.bcm54140_base_write_rdb.exit67_crit_edge
  %ret.0.i65 = phi i32 [ %call.i.i58, %__phy_package_write.exit.i60.bcm54140_base_write_rdb.exit67_crit_edge ], [ %call.i5.i63, %if.end.i6.i64 ], [ -5, %if.end.i62.bcm54140_base_write_rdb.exit67_crit_edge ], [ -5, %if.else.bcm54140_base_write_rdb.exit67_crit_edge ]
  %61 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i10.i66 = getelementptr inbounds %struct.mii_bus, ptr %62, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i10.i66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i65)
  %tobool18.not = icmp eq i32 %ret.0.i65, 0
  br i1 %tobool18.not, label %if.end20, label %bcm54140_base_write_rdb.exit67.cleanup_crit_edge

bcm54140_base_write_rdb.exit67.cleanup_crit_edge: ; preds = %bcm54140_base_write_rdb.exit67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %bcm54140_base_write_rdb.exit67
  call void @__sanitizer_cov_trace_pc() #9
  %call.i68 = tail call i32 @bcm_phy_read_rdb(ptr noundef %phydev, i16 noundef zeroext 10) #7
  %63 = tail call i32 @llvm.smin.i32(i32 %call.i68, i32 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %bcm54140_base_write_rdb.exit67.cleanup_crit_edge, %bcm54140_base_write_rdb.exit, %if.then6.cleanup_crit_edge, %bcm54140_base_read_rdb.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.0.i, %bcm54140_base_read_rdb.exit.cleanup_crit_edge ], [ %21, %if.then6.cleanup_crit_edge ], [ %ret.0.i65, %bcm54140_base_write_rdb.exit67.cleanup_crit_edge ], [ %ret.0.i53, %bcm54140_base_write_rdb.exit ], [ %63, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54140_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bcm_phy_read_rdb(ptr noundef %phydev, i16 noundef zeroext 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_error(ptr noundef %phydev) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @bcm_phy_read_rdb(ptr noundef %phydev, i16 noundef zeroext 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_error(ptr noundef %phydev) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %neg = xor i32 %call1, -1
  %and = and i32 %call, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_trigger_machine(ptr noundef %phydev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end4.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %if.end6 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_cable_test_start_rdb(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_cable_test_get_status_rdb(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54140_get_tunable(ptr noundef %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  %call.i = tail call i32 @bcm_phy_read_rdb(ptr noundef %phydev, i16 noundef zeroext 47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %and.i = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end2.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call i32 @bcm_phy_read_rdb(ptr noundef %phydev, i16 noundef zeroext 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end2.i.return_crit_edge, label %if.end6.i

if.end2.i.return_crit_edge:                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %and7.i = and i32 %call3.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %3 = trunc i32 %call3.i to i8
  %4 = lshr i8 %3, 2
  %5 = and i8 %4, 7
  %conv.i = add nuw nsw i8 %5, 2
  %storemerge.i = select i1 %tobool8.not.i, i8 %conv.i, i8 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end6.i, %if.end.i.cleanup.sink.split.i_crit_edge
  %storemerge.sink.i = phi i8 [ %storemerge.i, %if.end6.i ], [ 0, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %storemerge.sink.i, ptr %data, align 1
  br label %return

sw.bb1:                                           ; preds = %entry
  %call.i5 = tail call i32 @bcm_phy_read_rdb(ptr noundef %phydev, i16 noundef zeroext 26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %cmp.i6 = icmp slt i32 %call.i5, 0
  br i1 %cmp.i6, label %sw.bb1.return_crit_edge, label %do.end12.i

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end12.i:                                       ; preds = %sw.bb1
  %and.i7 = lshr i32 %call.i5, 5
  %shr.i = and i32 %and.i7, 3
  %7 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %shr.i, label %do.end12.unreachabledefault.i [
    i32 0, label %do.end12.i.cleanup.sink.split.i8_crit_edge
    i32 2, label %do.end12.i.cleanup.sink.split.i8_crit_edge10
    i32 1, label %do.end12.i.do.end28.i_crit_edge
    i32 3, label %do.end12.i.do.end28.i_crit_edge11
  ]

do.end12.i.do.end28.i_crit_edge11:                ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28.i

do.end12.i.do.end28.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28.i

do.end12.i.cleanup.sink.split.i8_crit_edge10:     ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i8

do.end12.i.cleanup.sink.split.i8_crit_edge:       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i8

do.end28.i:                                       ; preds = %do.end12.i.do.end28.i_crit_edge, %do.end12.i.do.end28.i_crit_edge11
  %8 = and i32 %call.i5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %trunc.not.i = icmp eq i32 %8, 0
  %..i = select i1 %trunc.not.i, i16 2700, i16 5400
  br label %cleanup.sink.split.i8

do.end12.unreachabledefault.i:                    ; preds = %do.end12.i
  unreachable

cleanup.sink.split.i8:                            ; preds = %do.end28.i, %do.end12.i.cleanup.sink.split.i8_crit_edge, %do.end12.i.cleanup.sink.split.i8_crit_edge10
  %.sink.i = phi i16 [ 0, %do.end12.i.cleanup.sink.split.i8_crit_edge ], [ 0, %do.end12.i.cleanup.sink.split.i8_crit_edge10 ], [ %..i, %do.end28.i ]
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %.sink.i, ptr %data, align 2
  br label %return

return:                                           ; preds = %cleanup.sink.split.i8, %sw.bb1.return_crit_edge, %cleanup.sink.split.i, %if.end2.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %call.i, %sw.bb.return_crit_edge ], [ %call3.i, %if.end2.i.return_crit_edge ], [ 0, %cleanup.sink.split.i ], [ %call.i5, %sw.bb1.return_crit_edge ], [ 0, %cleanup.sink.split.i8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54140_set_tunable(ptr noundef %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %1, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp3.not.i = icmp eq i8 %4, -1
  %5 = add i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %5)
  %6 = icmp ult i8 %5, 11
  br i1 %6, label %if.end.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @bcm_phy_modify_rdb(ptr noundef %phydev, i16 noundef zeroext 47, i16 noundef zeroext 16, i16 noundef zeroext 0) #7
  br label %return

if.end6.i:                                        ; preds = %if.end.i
  %spec.store.select.i = select i1 %cmp3.not.i, i8 5, i8 %4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %spec.store.select.i)
  %cmp13.i = icmp eq i8 %spec.store.select.i, 1
  %conv12.i = zext i8 %spec.store.select.i to i16
  %sub.i = shl nuw nsw i16 %conv12.i, 2
  %7 = add nuw nsw i16 %sub.i, 24
  %conv39.i = and i16 %7, 28
  %mask.0.i = select i1 %cmp13.i, i16 0, i16 284
  %set.0.i = select i1 %cmp13.i, i16 256, i16 %conv39.i
  %call41.i = tail call i32 @bcm_phy_modify_rdb(ptr noundef %phydev, i16 noundef zeroext 20, i16 noundef zeroext %mask.0.i, i16 noundef zeroext %set.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end6.i.return_crit_edge

if.end6.i.return_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end44.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %call45.i = tail call i32 @bcm_phy_modify_rdb(ptr noundef %phydev, i16 noundef zeroext 47, i16 noundef zeroext 0, i16 noundef zeroext 16) #7
  br label %return

sw.bb1:                                           ; preds = %entry
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.i = icmp eq i16 %9, 0
  %..i = select i1 %cmp.i, i16 256, i16 352
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %9, label %sw.bb1.return_crit_edge [
    i16 -1, label %sw.bb1.sw.epilog.i_crit_edge
    i16 0, label %sw.bb1.sw.epilog.i_crit_edge7
    i16 2700, label %sw.bb1.sw.epilog.i_crit_edge8
    i16 5400, label %sw.bb41.i
  ]

sw.bb1.sw.epilog.i_crit_edge8:                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb1.sw.epilog.i_crit_edge7:                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb1.sw.epilog.i_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb41.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %11 = or i16 %..i, 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb41.i, %sw.bb1.sw.epilog.i_crit_edge, %sw.bb1.sw.epilog.i_crit_edge7, %sw.bb1.sw.epilog.i_crit_edge8
  %set.1.i = phi i16 [ %11, %sw.bb41.i ], [ %..i, %sw.bb1.sw.epilog.i_crit_edge ], [ %..i, %sw.bb1.sw.epilog.i_crit_edge7 ], [ %..i, %sw.bb1.sw.epilog.i_crit_edge8 ]
  %call.i5 = tail call i32 @bcm_phy_modify_rdb(ptr noundef %phydev, i16 noundef zeroext 26, i16 noundef zeroext 112, i16 noundef zeroext %set.1.i) #7
  br label %return

return:                                           ; preds = %sw.epilog.i, %sw.bb1.return_crit_edge, %if.end44.i, %if.end6.i.return_crit_edge, %if.then5.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %call45.i, %if.end44.i ], [ %call.i, %if.then5.i ], [ -22, %sw.bb.return_crit_edge ], [ %call41.i, %if.end6.i.return_crit_edge ], [ %call.i5, %sw.epilog.i ], [ -22, %sw.bb1.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_write_rdb(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_modify_rdb(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_read_rdb(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_phy_package_join(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @bcm54140_hwmon_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %type, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  %switch.tableidx = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 11
  br i1 %1, label %switch.lookup, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb3:                                           ; preds = %entry
  %2 = add i32 %attr, -1
  %3 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %4 = icmp ult i32 %3, 7
  br i1 %4, label %switch.lookup9, label %sw.bb3.return_crit_edge

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [11 x i16], ptr @switch.table.bcm54140_hwmon_is_visible, i32 0, i32 %switch.tableidx
  br label %return.sink.split

switch.lookup9:                                   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep10 = getelementptr inbounds [7 x i16], ptr @switch.table.bcm54140_hwmon_is_visible.16, i32 0, i32 %3
  br label %return.sink.split

return.sink.split:                                ; preds = %switch.lookup9, %switch.lookup
  %switch.gep10.sink = phi ptr [ %switch.gep10, %switch.lookup9 ], [ %switch.gep, %switch.lookup ]
  %5 = ptrtoint ptr %switch.gep10.sink to i32
  call void @__asan_load2_noabort(i32 %5)
  %switch.load11 = load i16, ptr %switch.gep10.sink, align 2
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb3.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i16 [ 0, %entry.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %sw.bb3.return_crit_edge ], [ %switch.load11, %return.sink.split ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54140_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %type, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %3 = add i32 %attr, -1
  %4 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 31) #7
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %4, label %sw.bb.return_crit_edge [
    i32 0, label %sw.bb.sw.epilog.i_crit_edge
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
    i32 6, label %sw.bb3.i
  ]

sw.bb.sw.epilog.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %sw.bb
  %priv1.i.i = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 26
  %6 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv1.i.i, align 8
  %alarm_lock.i.i = getelementptr inbounds %struct.bcm54140_priv, ptr %7, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %alarm_lock.i.i, i32 noundef 0) #7
  %call2.i.i = tail call i32 @bcm_phy_read_rdb(ptr noundef %2, i16 noundef zeroext 2107) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %sw.bb3.i.bcm54140_hwmon_read_alarm.exit.i_crit_edge, label %if.end.i.i

sw.bb3.i.bcm54140_hwmon_read_alarm.exit.i_crit_edge: ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm54140_hwmon_read_alarm.exit.i

if.end.i.i:                                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  %alarm.i.i = getelementptr inbounds %struct.bcm54140_priv, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %alarm.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %alarm.i.i, align 4
  %10 = trunc i32 %call2.i.i to i16
  %conv3.i.i = or i16 %9, %10
  store i16 %conv3.i.i, ptr %alarm.i.i, align 4
  %11 = and i16 %conv3.i.i, 1
  %12 = zext i16 %11 to i32
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  %14 = load i16, ptr %alarm.i.i, align 4
  %conv10.i.i = and i16 %14, -2
  store i16 %conv10.i.i, ptr %alarm.i.i, align 4
  br label %bcm54140_hwmon_read_alarm.exit.i

bcm54140_hwmon_read_alarm.exit.i:                 ; preds = %if.end.i.i, %sw.bb3.i.bcm54140_hwmon_read_alarm.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ 0, %if.end.i.i ], [ %call2.i.i, %sw.bb3.i.bcm54140_hwmon_read_alarm.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %alarm_lock.i.i) #7
  br label %return

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.sw.epilog.i_crit_edge
  %reg.0.i = phi i16 [ 2099, %sw.bb2.i ], [ 2100, %sw.bb1.i ], [ 2098, %sw.bb.sw.epilog.i_crit_edge ]
  %call5.i = tail call i32 @bcm_phy_read_rdb(ptr noundef %2, i16 noundef zeroext %reg.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %sw.epilog.i.return_crit_edge, label %if.end.i

sw.epilog.i.return_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %call5.i, 1023
  %mul.neg.i = mul nsw i32 %and.i, -491
  %sub.i = add nsw i32 %mul.neg.i, 413350
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.i, ptr %val, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i6 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i6, align 4
  %18 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %attr, label %sw.bb1.return_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i7
    i32 3, label %sw.bb5.i
    i32 11, label %sw.bb9.i
  ]

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb.i:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool.not.i = icmp eq i32 %channel, 0
  %conv.i = select i1 %tobool.not.i, i16 2101, i16 2104
  br label %sw.epilog.i20

sw.bb1.i7:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool2.not.i = icmp eq i32 %channel, 0
  %conv4.i = select i1 %tobool2.not.i, i16 2103, i16 2106
  br label %sw.epilog.i20

sw.bb5.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool6.not.i = icmp eq i32 %channel, 0
  %conv8.i = select i1 %tobool6.not.i, i16 2102, i16 2105
  br label %sw.epilog.i20

sw.bb9.i:                                         ; preds = %sw.bb1
  %priv1.i.i8 = getelementptr inbounds %struct.phy_device, ptr %17, i32 0, i32 26
  %19 = ptrtoint ptr %priv1.i.i8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv1.i.i8, align 8
  %alarm_lock.i.i9 = getelementptr inbounds %struct.bcm54140_priv, ptr %20, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %alarm_lock.i.i9, i32 noundef 0) #7
  %call2.i.i10 = tail call i32 @bcm_phy_read_rdb(ptr noundef %17, i16 noundef zeroext 2107) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i10)
  %cmp.i.i11 = icmp slt i32 %call2.i.i10, 0
  br i1 %cmp.i.i11, label %sw.bb9.i.bcm54140_hwmon_read_alarm.exit.i17_crit_edge, label %if.end.i.i15

sw.bb9.i.bcm54140_hwmon_read_alarm.exit.i17_crit_edge: ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm54140_hwmon_read_alarm.exit.i17

if.end.i.i15:                                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool10.not.i = icmp eq i32 %channel, 0
  %conv13.i = select i1 %tobool10.not.i, i32 2, i32 4
  %alarm.i.i12 = getelementptr inbounds %struct.bcm54140_priv, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %alarm.i.i12 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %alarm.i.i12, align 4
  %23 = trunc i32 %call2.i.i10 to i16
  %conv3.i.i13 = or i16 %22, %23
  store i16 %conv3.i.i13, ptr %alarm.i.i12, align 4
  %conv5.i.i = zext i16 %conv3.i.i13 to i32
  %and.i.i = and i32 %conv13.i, %conv5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  %lnot.ext.i.i = zext i1 %tobool.i.i to i32
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %lnot.ext.i.i, ptr %val, align 4
  %25 = ptrtoint ptr %alarm.i.i12 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %alarm.i.i12, align 4
  %27 = trunc i32 %conv13.i to i16
  %28 = xor i16 %27, -1
  %conv10.i.i14 = and i16 %26, %28
  store i16 %conv10.i.i14, ptr %alarm.i.i12, align 4
  br label %bcm54140_hwmon_read_alarm.exit.i17

bcm54140_hwmon_read_alarm.exit.i17:               ; preds = %if.end.i.i15, %sw.bb9.i.bcm54140_hwmon_read_alarm.exit.i17_crit_edge
  %ret.0.i.i16 = phi i32 [ 0, %if.end.i.i15 ], [ %call2.i.i10, %sw.bb9.i.bcm54140_hwmon_read_alarm.exit.i17_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %alarm_lock.i.i9) #7
  br label %return

sw.epilog.i20:                                    ; preds = %sw.bb5.i, %sw.bb1.i7, %sw.bb.i
  %reg.0.i18 = phi i16 [ %conv8.i, %sw.bb5.i ], [ %conv4.i, %sw.bb1.i7 ], [ %conv.i, %sw.bb.i ]
  %call15.i = tail call i32 @bcm_phy_read_rdb(ptr noundef %17, i16 noundef zeroext %reg.0.i18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i19 = icmp slt i32 %call15.i, 0
  br i1 %cmp.i19, label %sw.epilog.i20.return_crit_edge, label %if.end.i22

sw.epilog.i20.return_crit_edge:                   ; preds = %sw.epilog.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i22:                                       ; preds = %sw.epilog.i20
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool17.not.i = icmp eq i32 %channel, 0
  %cond18.i = select i1 %tobool17.not.i, i32 2047, i32 4095
  %and.i21 = and i32 %call15.i, %cond18.i
  %mul.i = mul nuw nsw i32 %and.i21, 4400
  %29 = lshr i32 %mul.i, 12
  %mul20.i = mul nuw nsw i32 %and.i21, 2514
  %30 = lshr i32 %mul20.i, 11
  %cond22.i = select i1 %tobool17.not.i, i32 %30, i32 %29
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond22.i, ptr %val, align 4
  br label %return

return:                                           ; preds = %if.end.i22, %sw.epilog.i20.return_crit_edge, %bcm54140_hwmon_read_alarm.exit.i17, %sw.bb1.return_crit_edge, %if.end.i, %sw.epilog.i.return_crit_edge, %bcm54140_hwmon_read_alarm.exit.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %ret.0.i.i, %bcm54140_hwmon_read_alarm.exit.i ], [ 0, %if.end.i ], [ -95, %sw.bb.return_crit_edge ], [ %call5.i, %sw.epilog.i.return_crit_edge ], [ %ret.0.i.i16, %bcm54140_hwmon_read_alarm.exit.i17 ], [ 0, %if.end.i22 ], [ -95, %sw.bb1.return_crit_edge ], [ %call15.i, %sw.epilog.i20.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm54140_hwmon_read_string(ptr nocapture noundef readnone %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %str) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cond = icmp eq i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %attr)
  %cond3 = icmp eq i32 %attr, 10
  %or.cond = and i1 %cond, %cond3
  br i1 %or.cond, label %sw.bb1, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [2 x ptr], ptr @bcm54140_hwmon_in_labels, i32 0, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %str, align 4
  br label %return

return:                                           ; preds = %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb1 ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54140_hwmon_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %type, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %3 = tail call i32 @llvm.smax.i32(i32 %val, i32 -88943) #7
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 413350) #7
  %5 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %attr, label %sw.bb.return_crit_edge [
    i32 5, label %sw.bb.if.end202.i_crit_edge
    i32 7, label %sw.bb9.i
  ]

sw.bb.if.end202.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end202.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb9.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end202.i

if.end202.i:                                      ; preds = %sw.bb9.i, %sw.bb.if.end202.i_crit_edge
  %reg.0.i = phi i16 [ 2099, %sw.bb9.i ], [ 2100, %sw.bb.if.end202.i_crit_edge ]
  %add.i = sub nsw i32 413595, %4
  %6 = zext i32 %add.i to i64
  %7 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8828889729779520631, i64 %6, i32 0) #11, !srcloc !56
  %asmresult.i.i = extractvalue { i64, i32 } %7, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %7, 1
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8828889729779520631, i64 %6, i64 %asmresult.i.i, i32 %asmresult4.i.i) #11, !srcloc !57
  %asmresult10.i.i = extractvalue { i64, i32 } %8, 0
  %extract2.i = lshr i64 %asmresult10.i.i, 8
  %extract.t3.i = trunc i64 %extract2.i to i16
  %call206.i = tail call i32 @bcm_phy_modify_rdb(ptr noundef %2, i16 noundef zeroext %reg.0.i, i16 noundef zeroext 1023, i16 noundef zeroext %extract.t3.i) #7
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i7 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool.not.i = icmp eq i32 %channel, 0
  %conv.i = select i1 %tobool.not.i, i16 2047, i16 4095
  %11 = tail call i32 @llvm.smax.i32(i32 %val, i32 0) #7
  %conv7.i = zext i16 %conv.i to i32
  %..i = select i1 %tobool.not.i, i32 2514, i32 4400
  %.640.i = select i1 %tobool.not.i, i32 11, i32 12
  %mul8.i = mul nuw nsw i32 %..i, %conv7.i
  %12 = lshr i32 %mul8.i, %.640.i
  %13 = tail call i32 @llvm.umin.i32(i32 %11, i32 %12) #7
  %14 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %attr, label %sw.bb1.return_crit_edge [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb22.i
  ]

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb.i:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %conv21.i = select i1 %tobool.not.i, i16 2103, i16 2106
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %conv25.i = select i1 %tobool.not.i, i16 2102, i16 2105
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb22.i, %sw.bb.i
  %reg.0.i8 = phi i16 [ %conv25.i, %sw.bb22.i ], [ %conv21.i, %sw.bb.i ]
  br i1 %tobool.not.i, label %if.end421.i, label %if.end196.i

if.end196.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw nsw i32 %13, 12
  %add.i9 = or i32 %shl.i, 2200
  %15 = zext i32 %add.i9 to i64
  %16 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -1274502317819932657, i64 %15) #11, !srcloc !58
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -1274502317819932657, i64 %15, i64 %16, i32 0) #11, !srcloc !57
  %asmresult10.i.i10 = extractvalue { i64, i32 } %17, 0
  %extract637.i = lshr i64 %asmresult10.i.i10, 12
  %extract.t14 = trunc i64 %extract637.i to i16
  br label %cond.end453.i

if.end421.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl227.i = shl nuw nsw i32 %13, 11
  %add229.i = or i32 %shl227.i, 1257
  %18 = zext i32 %add229.i to i64
  %19 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 7513709598837939879, i64 %18) #11, !srcloc !58
  %20 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 7513709598837939879, i64 %18, i64 %19) #11, !srcloc !59
  %div426631.i = lshr i64 %20, 10
  %extract.t13 = trunc i64 %div426631.i to i16
  br label %cond.end453.i

cond.end453.i:                                    ; preds = %if.end421.i, %if.end196.i
  %div426631.i.sink.off0 = phi i16 [ %extract.t13, %if.end421.i ], [ %extract.t14, %if.end196.i ]
  %call456.i = tail call i32 @bcm_phy_modify_rdb(ptr noundef %10, i16 noundef zeroext %reg.0.i8, i16 noundef zeroext %conv.i, i16 noundef zeroext %div426631.i.sink.off0) #7
  br label %return

return:                                           ; preds = %cond.end453.i, %sw.bb1.return_crit_edge, %if.end202.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %call206.i, %if.end202.i ], [ -95, %sw.bb.return_crit_edge ], [ %call456.i, %cond.end453.i ], [ -95, %sw.bb1.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_bcm54140__325_876_phy_module_init6, !1, !"__initcall__kmod_bcm54140__325_876_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/bcm54140.c", i32 876, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author326, !4, !"__UNIQUE_ID_author326", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/bcm54140.c", i32 883, i32 1}
!5 = !{ptr @__UNIQUE_ID_description327, !6, !"__UNIQUE_ID_description327", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/bcm54140.c", i32 884, i32 1}
!7 = !{ptr @__UNIQUE_ID_file328, !8, !"__UNIQUE_ID_file328", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/bcm54140.c", i32 886, i32 1}
!9 = !{ptr @__UNIQUE_ID_license329, !8, !"__UNIQUE_ID_license329", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/bcm54140.c", i32 860, i32 21}
!12 = !{ptr @bcm54140_drivers, !13, !"bcm54140_drivers", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/bcm54140.c", i32 856, i32 26}
!14 = !{ptr @bcm54140_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/bcm54140.c", i32 589, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/phy/bcm54140.c", i32 598, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bcm54140_probe.__UNIQUE_ID_ddebug294, !18, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/phy/bcm54140.c", i32 559, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @bcm54140_get_base_addr_and_port._entry, !24, !"_entry", i1 false, i1 false}
!29 = !{ptr @bcm54140_get_base_addr_and_port._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/phy/bcm54140.c", i32 420, i32 12}
!32 = !{ptr @bcm54140_chip_info, !33, !"bcm54140_chip_info", i1 false, i1 false}
!33 = !{!"../drivers/net/phy/bcm54140.c", i32 386, i32 37}
!34 = !{ptr @bcm54140_hwmon_ops, !35, !"bcm54140_hwmon_ops", i1 false, i1 false}
!35 = !{!"../drivers/net/phy/bcm54140.c", i32 379, i32 31}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/phy/bcm54140.c", i32 282, i32 2}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/phy/bcm54140.c", i32 283, i32 2}
!40 = !{ptr @bcm54140_hwmon_in_labels, !41, !"bcm54140_hwmon_in_labels", i1 false, i1 false}
!41 = !{!"../drivers/net/phy/bcm54140.c", i32 281, i32 26}
!42 = !{ptr @bcm54140_hwmon_info, !43, !"bcm54140_hwmon_info", i1 false, i1 false}
!43 = !{!"../drivers/net/phy/bcm54140.c", i32 367, i32 41}
!44 = !{ptr @bcm54140_config_intr.port_to_imr_bit, !45, !"port_to_imr_bit", i1 false, i1 false}
!45 = !{!"../drivers/net/phy/bcm54140.c", i32 680, i32 19}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2148442296, i64 2148442301, i64 2148442314, i64 2148442358, i64 2148442392, i64 2148442413}
!56 = !{i64 981939, i64 981966, i64 981988, i64 982016}
!57 = !{i64 982347, i64 982374, i64 982407, i64 982428, i64 982455, i64 982481}
!58 = !{i64 981652, i64 981679}
!59 = !{i64 982162, i64 982189, i64 982223, i64 982244}
