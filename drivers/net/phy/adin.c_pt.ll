; ModuleID = '/llk/IR_all_yes/drivers/net/phy/adin.c_pt.bc'
source_filename = "../drivers/net/phy/adin.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.adin_cfg_reg_map = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.adin_clause45_mmd_map = type { i32, i16, i16 }
%struct.adin_hw_stat = type { ptr, i16, i16 }
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
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }

@__initcall__kmod_adin__378_948_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@adin_driver = internal global { [2 x %struct.phy_driver], [104 x i8] } { [2 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 42187808, ptr @.str, i32 -16, ptr null, i32 4, ptr null, ptr @adin_soft_reset, ptr @adin_config_init, ptr @adin_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @adin_config_aneg, ptr null, ptr @adin_read_status, ptr @adin_phy_config_intr, ptr @adin_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adin_read_mmd, ptr @adin_write_mmd, ptr null, ptr null, ptr null, ptr null, ptr @adin_cable_test_start, ptr null, ptr @adin_cable_test_get_status, ptr @adin_get_sset_count, ptr @adin_get_strings, ptr @adin_get_stats, ptr @adin_get_tunable, ptr @adin_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 42187824, ptr @.str.1, i32 -16, ptr null, i32 4, ptr null, ptr @adin_soft_reset, ptr @adin_config_init, ptr @adin_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @adin_config_aneg, ptr null, ptr @adin_read_status, ptr @adin_phy_config_intr, ptr @adin_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adin_read_mmd, ptr @adin_write_mmd, ptr null, ptr null, ptr null, ptr null, ptr @adin_cable_test_start, ptr null, ptr @adin_cable_test_get_status, ptr @adin_get_sset_count, ptr @adin_get_strings, ptr @adin_get_stats, ptr @adin_get_tunable, ptr @adin_set_tunable, ptr null, ptr null, ptr null }], [104 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description379 = internal constant [63 x i8] c"adin.description=Analog Devices Industrial Ethernet PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file380 = internal constant [31 x i8] c"adin.file=drivers/net/phy/adin\00", section ".modinfo", align 1
@__UNIQUE_ID_license381 = internal constant [17 x i8] c"adin.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADIN1200\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADIN1300\00", [23 x i8] zeroinitializer }, align 32
@adin_config_init.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adin\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adin_config_init\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/net/phy/adin.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PHY is using mode '%s'\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adi,rx-internal-delay-ps\00", [39 x i8] zeroinitializer }, align 32
@adin_rgmii_delays = internal constant { [6 x %struct.adin_cfg_reg_map], [48 x i8] } { [6 x %struct.adin_cfg_reg_map] [%struct.adin_cfg_reg_map { i32 1600, i32 1 }, %struct.adin_cfg_reg_map { i32 1800, i32 2 }, %struct.adin_cfg_reg_map { i32 2000, i32 0 }, %struct.adin_cfg_reg_map { i32 2200, i32 6 }, %struct.adin_cfg_reg_map { i32 2400, i32 7 }, %struct.adin_cfg_reg_map zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adi,tx-internal-delay-ps\00", [39 x i8] zeroinitializer }, align 32
@adin_get_reg_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 238, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unsupported value %u for %s using default (%u)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adin_get_reg_value\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adin_get_reg_value._entry_ptr = internal global ptr @adin_get_reg_value._entry, section ".printk_index", align 4
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adi,fifo-depth-bits\00", [44 x i8] zeroinitializer }, align 32
@adin_rmii_fifo_depths = internal constant { [7 x %struct.adin_cfg_reg_map], [40 x i8] } { [7 x %struct.adin_cfg_reg_map] [%struct.adin_cfg_reg_map { i32 4, i32 0 }, %struct.adin_cfg_reg_map { i32 8, i32 1 }, %struct.adin_cfg_reg_map { i32 12, i32 2 }, %struct.adin_cfg_reg_map { i32 16, i32 3 }, %struct.adin_cfg_reg_map { i32 20, i32 4 }, %struct.adin_cfg_reg_map { i32 24, i32 5 }, %struct.adin_cfg_reg_map zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@adin_clause45_mmd_map = internal constant { [5 x %struct.adin_clause45_mmd_map], [56 x i8] } { [5 x %struct.adin_clause45_mmd_map] [%struct.adin_clause45_mmd_map { i32 3, i16 20, i16 -32768 }, %struct.adin_clause45_mmd_map { i32 7, i16 61, i16 -32766 }, %struct.adin_clause45_mmd_map { i32 7, i16 60, i16 -32767 }, %struct.adin_clause45_mmd_map { i32 3, i16 0, i16 -27648 }, %struct.adin_clause45_mmd_map { i32 3, i16 22, i16 -24576 }], [56 x i8] zeroinitializer }, align 32
@adin_cl45_to_adin_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 530, ptr @.str.46, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"No translation available for devad: %d reg: %04x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adin_cl45_to_adin_reg\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@adin_cl45_to_adin_reg._entry_ptr = internal global ptr @adin_cl45_to_adin_reg._entry, section ".printk_index", align 4
@adin_hw_stats = internal constant { [10 x %struct.adin_hw_stat], [48 x i8] } { [10 x %struct.adin_hw_stat] [%struct.adin_hw_stat { ptr @.str.47, i16 -27638, i16 -27637 }, %struct.adin_hw_stat { ptr @.str.48, i16 -27636, i16 0 }, %struct.adin_hw_stat { ptr @.str.49, i16 -27635, i16 0 }, %struct.adin_hw_stat { ptr @.str.50, i16 -27634, i16 0 }, %struct.adin_hw_stat { ptr @.str.51, i16 -27633, i16 0 }, %struct.adin_hw_stat { ptr @.str.52, i16 -27632, i16 0 }, %struct.adin_hw_stat { ptr @.str.53, i16 -27631, i16 0 }, %struct.adin_hw_stat { ptr @.str.54, i16 -27630, i16 0 }, %struct.adin_hw_stat { ptr @.str.55, i16 -27629, i16 0 }, %struct.adin_hw_stat { ptr @.str.56, i16 -27628, i16 0 }], [48 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"total_frames_checked_count\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"length_error_frames_count\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"alignment_error_frames_count\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"symbol_error_count\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"oversized_frames_count\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"undersized_frames_count\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"odd_nibble_frames_count\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"odd_preamble_packet_count\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dribble_bits_frames_count\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"false_carrier_events_count\00", [37 x i8] zeroinitializer }, align 32
@switch.table.adin_config_init = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.42, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], [40 x i8] zeroinitializer }, align 32
@switch.table.adin_config_aneg = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 0, i32 1024], [20 x i8] zeroinitializer }, align 32
@switch.table.adin_config_aneg.57 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 512, i32 0], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1600, i64 1800, i64 2000, i64 2200, i64 2400]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@__sancov_gen_cov_switch_values.59 = internal global [7 x i64] [i64 5, i64 32, i64 1600, i64 1800, i64 2000, i64 2200, i64 2400]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 7, i64 30]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 20, i64 22]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 16, i64 60, i64 61]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 7, i64 30]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 20, i64 22]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 16, i64 60, i64 61]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1000, i64 65534, i64 65535]
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"adin_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 899, i32 26 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 902, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 925, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 458, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 265, i32 36 }
@___asan_gen_.93 = private unnamed_addr constant [18 x i8] c"adin_rgmii_delays\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 144, i32 38 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 278, i32 36 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 236, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 307, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant [22 x i8] c"adin_rmii_fifo_depths\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 153, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 211, i32 10 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 213, i32 10 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 215, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 217, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 219, i32 10 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 221, i32 10 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 223, i32 10 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 225, i32 10 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 227, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 229, i32 10 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 231, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 233, i32 10 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 235, i32 10 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 237, i32 10 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 239, i32 10 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 241, i32 10 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 243, i32 10 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 245, i32 10 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 247, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 249, i32 10 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 251, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 253, i32 10 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 255, i32 10 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 257, i32 10 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 259, i32 10 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 261, i32 10 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 263, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 265, i32 10 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 267, i32 10 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 269, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 271, i32 10 }
@___asan_gen_.213 = private unnamed_addr constant [22 x i8] c"adin_clause45_mmd_map\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 175, i32 43 }
@___asan_gen_.216 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 528, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [14 x i8] c"adin_hw_stats\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 189, i32 34 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 190, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 191, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 192, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 193, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 194, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 195, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 196, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 197, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 198, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.259 = private constant [26 x i8] c"../drivers/net/phy/adin.c\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 199, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant [30 x i8] c"switch.table.adin_config_init\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [30 x i8] c"switch.table.adin_config_aneg\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [33 x i8] c"switch.table.adin_config_aneg.57\00", align 1
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_description379, ptr @__UNIQUE_ID_file380, ptr @__UNIQUE_ID_license381, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_adin__378_948_phy_module_init6, ptr @adin_cl45_to_adin_reg._entry, ptr @adin_cl45_to_adin_reg._entry_ptr, ptr @adin_get_reg_value._entry, ptr @adin_get_reg_value._entry_ptr, ptr @phy_module_exit, ptr @adin_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @adin_rgmii_delays, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @adin_rmii_fifo_depths, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @adin_clause45_mmd_map, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @adin_hw_stats, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @switch.table.adin_config_init, ptr @switch.table.adin_config_aneg, ptr @switch.table.adin_config_aneg.57], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adin_driver to i32), i32 472, i32 576, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adin_rgmii_delays to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adin_get_reg_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adin_rmii_fifo_depths to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adin_clause45_mmd_map to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adin_cl45_to_adin_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adin_hw_stats to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adin_config_init to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adin_config_aneg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adin_config_aneg.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @adin_driver, i32 noundef 2, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phy_drivers_unregister(ptr noundef nonnull @adin_driver, i32 noundef 2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adin_soft_reset(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 65292, i16 noundef zeroext 0, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 20) #9
  %call1 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 65292) #9
  %0 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adin_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  %val.i.i33 = alloca i32, align 4
  %val.i97.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mdix_ctrl = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %0 = ptrtoint ptr %mdix_ctrl to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 3, ptr %mdix_ctrl, align 1
  %interface.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %1 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %interface.i.i, align 4
  %3 = add i32 %2, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 65315, i16 noundef zeroext 1, i16 noundef zeroext 0) #9
  br label %adin_config_rgmii_mode.exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 65315) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %interface.i.i, align 4
  %7 = and i32 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %switch.i = icmp eq i32 %7, 10
  br i1 %switch.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %8 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i.i, align 4, !annotation !138
  %call.i.i.i = call i32 @device_property_read_u32_array(ptr noundef %phydev, ptr noundef nonnull @.str.6, ptr noundef nonnull %val.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then8.i.adin_get_reg_value.exit.i_crit_edge

if.then8.i.adin_get_reg_value.exit.i_crit_edge:   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_get_reg_value.exit.i

if.end.i.i:                                       ; preds = %if.then8.i
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end.i.i.do.end.i.i_crit_edge [
    i32 1600, label %if.end.i.i.adin_lookup_reg_value.exit.i.i_crit_edge
    i32 1800, label %adin_lookup_reg_value.exit.i.fold.split.i
    i32 2000, label %adin_lookup_reg_value.exit.i.fold.split118.i
    i32 2200, label %adin_lookup_reg_value.exit.i.fold.split119.i
    i32 2400, label %adin_lookup_reg_value.exit.i.fold.split120.i
  ]

if.end.i.i.adin_lookup_reg_value.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_lookup_reg_value.exit.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

adin_lookup_reg_value.exit.i.fold.split.i:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_lookup_reg_value.exit.i.i

adin_lookup_reg_value.exit.i.fold.split118.i:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_lookup_reg_value.exit.i.i

adin_lookup_reg_value.exit.i.fold.split119.i:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_lookup_reg_value.exit.i.i

adin_lookup_reg_value.exit.i.fold.split120.i:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_lookup_reg_value.exit.i.i

adin_lookup_reg_value.exit.i.i:                   ; preds = %adin_lookup_reg_value.exit.i.fold.split120.i, %adin_lookup_reg_value.exit.i.fold.split119.i, %adin_lookup_reg_value.exit.i.fold.split118.i, %adin_lookup_reg_value.exit.i.fold.split.i, %if.end.i.i.adin_lookup_reg_value.exit.i.i_crit_edge
  %i.012.i.i.lcssa.i = phi i32 [ 0, %if.end.i.i.adin_lookup_reg_value.exit.i.i_crit_edge ], [ 1, %adin_lookup_reg_value.exit.i.fold.split.i ], [ 2, %adin_lookup_reg_value.exit.i.fold.split118.i ], [ 3, %adin_lookup_reg_value.exit.i.fold.split119.i ], [ 4, %adin_lookup_reg_value.exit.i.fold.split120.i ]
  %reg.i.i.i = getelementptr %struct.adin_cfg_reg_map, ptr @adin_rgmii_delays, i32 %i.012.i.i.lcssa.i, i32 1
  %12 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i = icmp slt i32 %13, 0
  br i1 %cmp.i.i, label %adin_lookup_reg_value.exit.i.i.do.end.i.i_crit_edge, label %adin_lookup_reg_value.exit.i.i.adin_get_reg_value.exit.i_crit_edge

adin_lookup_reg_value.exit.i.i.adin_get_reg_value.exit.i_crit_edge: ; preds = %adin_lookup_reg_value.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_get_reg_value.exit.i

adin_lookup_reg_value.exit.i.i.do.end.i.i_crit_edge: ; preds = %adin_lookup_reg_value.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %adin_lookup_reg_value.exit.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.8, i32 noundef %10, ptr noundef nonnull @.str.6, i32 noundef 0) #12
  br label %adin_get_reg_value.exit.i

adin_get_reg_value.exit.i:                        ; preds = %do.end.i.i, %adin_lookup_reg_value.exit.i.i.adin_get_reg_value.exit.i_crit_edge, %if.then8.i.adin_get_reg_value.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %do.end.i.i ], [ 0, %if.then8.i.adin_get_reg_value.exit.i_crit_edge ], [ %13, %adin_lookup_reg_value.exit.i.i.adin_get_reg_value.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  %or9.i = and i32 %call2.i, -454
  %shl.i = shl i32 %retval.0.i.i, 6
  %and26.i = and i32 %shl.i, 448
  %and.i = or i32 %or9.i, %and26.i
  %or27.i = or i32 %and.i, 5
  br label %if.end29.i

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = and i32 %call2.i, -6
  %and28.i = or i32 %or.i, 1
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i, %adin_get_reg_value.exit.i
  %reg.0.i = phi i32 [ %or27.i, %adin_get_reg_value.exit.i ], [ %and28.i, %if.else.i ]
  %14 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %interface.i.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %15, label %if.else64.i [
    i32 10, label %if.end29.i.if.then35.i_crit_edge
    i32 12, label %if.end29.i.if.then35.i_crit_edge68
  ]

if.end29.i.if.then35.i_crit_edge68:               ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35.i

if.end29.i.if.then35.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35.i

if.then35.i:                                      ; preds = %if.end29.i.if.then35.i_crit_edge, %if.end29.i.if.then35.i_crit_edge68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i97.i) #9
  %17 = ptrtoint ptr %val.i97.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i97.i, align 4, !annotation !138
  %call.i.i98.i = call i32 @device_property_read_u32_array(ptr noundef %phydev, ptr noundef nonnull @.str.7, ptr noundef nonnull %val.i97.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98.i)
  %tobool.not.i99.i = icmp eq i32 %call.i.i98.i, 0
  br i1 %tobool.not.i99.i, label %if.end.i100.i, label %if.then35.i.adin_get_reg_value.exit113.i_crit_edge

if.then35.i.adin_get_reg_value.exit113.i_crit_edge: ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_get_reg_value.exit113.i

if.end.i100.i:                                    ; preds = %if.then35.i
  %18 = ptrtoint ptr %val.i97.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i97.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %19, label %if.end.i100.i.do.end.i111.i_crit_edge [
    i32 1600, label %if.end.i100.i.adin_lookup_reg_value.exit.i110.i_crit_edge
    i32 1800, label %adin_lookup_reg_value.exit.i110.fold.split.i
    i32 2000, label %adin_lookup_reg_value.exit.i110.fold.split121.i
    i32 2200, label %adin_lookup_reg_value.exit.i110.fold.split122.i
    i32 2400, label %adin_lookup_reg_value.exit.i110.fold.split123.i
  ]

if.end.i100.i.adin_lookup_reg_value.exit.i110.i_crit_edge: ; preds = %if.end.i100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_lookup_reg_value.exit.i110.i

if.end.i100.i.do.end.i111.i_crit_edge:            ; preds = %if.end.i100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i111.i

adin_lookup_reg_value.exit.i110.fold.split.i:     ; preds = %if.end.i100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_lookup_reg_value.exit.i110.i

adin_lookup_reg_value.exit.i110.fold.split121.i:  ; preds = %if.end.i100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_lookup_reg_value.exit.i110.i

adin_lookup_reg_value.exit.i110.fold.split122.i:  ; preds = %if.end.i100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_lookup_reg_value.exit.i110.i

adin_lookup_reg_value.exit.i110.fold.split123.i:  ; preds = %if.end.i100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_lookup_reg_value.exit.i110.i

adin_lookup_reg_value.exit.i110.i:                ; preds = %adin_lookup_reg_value.exit.i110.fold.split123.i, %adin_lookup_reg_value.exit.i110.fold.split122.i, %adin_lookup_reg_value.exit.i110.fold.split121.i, %adin_lookup_reg_value.exit.i110.fold.split.i, %if.end.i100.i.adin_lookup_reg_value.exit.i110.i_crit_edge
  %i.012.i.i101.lcssa.i = phi i32 [ 0, %if.end.i100.i.adin_lookup_reg_value.exit.i110.i_crit_edge ], [ 1, %adin_lookup_reg_value.exit.i110.fold.split.i ], [ 2, %adin_lookup_reg_value.exit.i110.fold.split121.i ], [ 3, %adin_lookup_reg_value.exit.i110.fold.split122.i ], [ 4, %adin_lookup_reg_value.exit.i110.fold.split123.i ]
  %reg.i.i108.i = getelementptr %struct.adin_cfg_reg_map, ptr @adin_rgmii_delays, i32 %i.012.i.i101.lcssa.i, i32 1
  %21 = ptrtoint ptr %reg.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg.i.i108.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i109.i = icmp slt i32 %22, 0
  br i1 %cmp.i109.i, label %adin_lookup_reg_value.exit.i110.i.do.end.i111.i_crit_edge, label %adin_lookup_reg_value.exit.i110.i.adin_get_reg_value.exit113.i_crit_edge

adin_lookup_reg_value.exit.i110.i.adin_get_reg_value.exit113.i_crit_edge: ; preds = %adin_lookup_reg_value.exit.i110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_get_reg_value.exit113.i

adin_lookup_reg_value.exit.i110.i.do.end.i111.i_crit_edge: ; preds = %adin_lookup_reg_value.exit.i110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i111.i

do.end.i111.i:                                    ; preds = %adin_lookup_reg_value.exit.i110.i.do.end.i111.i_crit_edge, %if.end.i100.i.do.end.i111.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.8, i32 noundef %19, ptr noundef nonnull @.str.7, i32 noundef 0) #12
  br label %adin_get_reg_value.exit113.i

adin_get_reg_value.exit113.i:                     ; preds = %do.end.i111.i, %adin_lookup_reg_value.exit.i110.i.adin_get_reg_value.exit113.i_crit_edge, %if.then35.i.adin_get_reg_value.exit113.i_crit_edge
  %retval.0.i112.i = phi i32 [ 0, %do.end.i111.i ], [ 0, %if.then35.i.adin_get_reg_value.exit113.i_crit_edge ], [ %22, %adin_lookup_reg_value.exit.i110.i.adin_get_reg_value.exit113.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i97.i) #9
  %or36.i = and i32 %reg.0.i, -59
  %shl61.i = shl i32 %retval.0.i112.i, 3
  %and62.i = and i32 %shl61.i, 56
  %and38.i = or i32 %or36.i, %and62.i
  %or63.i = or i32 %and38.i, 2
  br label %if.end66.i

if.else64.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  %and65.i = and i32 %reg.0.i, -3
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.else64.i, %adin_get_reg_value.exit113.i
  %reg.1.i = phi i32 [ %or63.i, %adin_get_reg_value.exit113.i ], [ %and65.i, %if.else64.i ]
  %conv.i = trunc i32 %reg.1.i to i16
  %call67.i = call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 65315, i16 noundef zeroext %conv.i) #9
  br label %adin_config_rgmii_mode.exit

adin_config_rgmii_mode.exit:                      ; preds = %if.end66.i, %if.then.i
  %retval.0.i32 = phi i32 [ %call67.i, %if.end66.i ], [ %call.i.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i32)
  %cmp = icmp slt i32 %retval.0.i32, 0
  br i1 %cmp, label %adin_config_rgmii_mode.exit.cleanup_crit_edge, label %if.end

adin_config_rgmii_mode.exit.cleanup_crit_edge:    ; preds = %adin_config_rgmii_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %adin_config_rgmii_mode.exit
  %23 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %interface.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %24)
  %cmp.not.i = icmp eq i32 %24, 7
  br i1 %cmp.not.i, label %if.end.i36, label %if.then.i35

if.then.i35:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i34 = call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 65316, i16 noundef zeroext 1, i16 noundef zeroext 0) #9
  br label %adin_config_rmii_mode.exit

if.end.i36:                                       ; preds = %if.end
  %call1.i = call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 65316) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i36.cleanup_crit_edge, label %if.end4.i39

if.end.i36.cleanup_crit_edge:                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i39:                                      ; preds = %if.end.i36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i33) #9
  %25 = ptrtoint ptr %val.i.i33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %val.i.i33, align 4, !annotation !138
  %call.i.i.i37 = call i32 @device_property_read_u32_array(ptr noundef %phydev, ptr noundef nonnull @.str.12, ptr noundef nonnull %val.i.i33, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i37)
  %tobool.not.i.i38 = icmp eq i32 %call.i.i.i37, 0
  br i1 %tobool.not.i.i38, label %if.end.i.i40, label %if.end4.i39.adin_get_reg_value.exit.i50_crit_edge

if.end4.i39.adin_get_reg_value.exit.i50_crit_edge: ; preds = %if.end4.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_get_reg_value.exit.i50

if.end.i.i40:                                     ; preds = %if.end4.i39
  %26 = ptrtoint ptr %val.i.i33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i.i33, align 4
  %28 = add i32 %27, -4
  %29 = call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %29)
  %switch = icmp ult i32 %29, 6
  br i1 %switch, label %adin_lookup_reg_value.exit.i.i44, label %if.end.i.i40.do.end.i.i45_crit_edge

if.end.i.i40.do.end.i.i45_crit_edge:              ; preds = %if.end.i.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i45

adin_lookup_reg_value.exit.i.i44:                 ; preds = %if.end.i.i40
  %reg.i.i.i42 = getelementptr %struct.adin_cfg_reg_map, ptr @adin_rmii_fifo_depths, i32 %29, i32 1
  %30 = ptrtoint ptr %reg.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg.i.i.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i43 = icmp slt i32 %31, 0
  br i1 %cmp.i.i43, label %adin_lookup_reg_value.exit.i.i44.do.end.i.i45_crit_edge, label %adin_lookup_reg_value.exit.i.i44.adin_get_reg_value.exit.i50_crit_edge

adin_lookup_reg_value.exit.i.i44.adin_get_reg_value.exit.i50_crit_edge: ; preds = %adin_lookup_reg_value.exit.i.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_get_reg_value.exit.i50

adin_lookup_reg_value.exit.i.i44.do.end.i.i45_crit_edge: ; preds = %adin_lookup_reg_value.exit.i.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i45

do.end.i.i45:                                     ; preds = %adin_lookup_reg_value.exit.i.i44.do.end.i.i45_crit_edge, %if.end.i.i40.do.end.i.i45_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.8, i32 noundef %27, ptr noundef nonnull @.str.12, i32 noundef 1) #12
  br label %adin_get_reg_value.exit.i50

adin_get_reg_value.exit.i50:                      ; preds = %do.end.i.i45, %adin_lookup_reg_value.exit.i.i44.adin_get_reg_value.exit.i50_crit_edge, %if.end4.i39.adin_get_reg_value.exit.i50_crit_edge
  %retval.0.i.i46 = phi i32 [ 1, %do.end.i.i45 ], [ 1, %if.end4.i39.adin_get_reg_value.exit.i50_crit_edge ], [ %31, %adin_lookup_reg_value.exit.i.i44.adin_get_reg_value.exit.i50_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i33) #9
  %or.i51 = and i32 %call1.i, 65422
  %shl.i52 = shl i32 %retval.0.i.i46, 4
  %and21.i = and i32 %shl.i52, 112
  %and.i53 = or i32 %and21.i, %or.i51
  %32 = trunc i32 %and.i53 to i16
  %conv.i54 = or i16 %32, 1
  %call23.i = call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 65316, i16 noundef zeroext %conv.i54) #9
  br label %adin_config_rmii_mode.exit

adin_config_rmii_mode.exit:                       ; preds = %adin_get_reg_value.exit.i50, %if.then.i35
  %retval.0.i55 = phi i32 [ %call.i.i34, %if.then.i35 ], [ %call23.i, %adin_get_reg_value.exit.i50 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i55)
  %cmp2 = icmp slt i32 %retval.0.i55, 0
  br i1 %cmp2, label %adin_config_rmii_mode.exit.cleanup_crit_edge, label %if.end4

adin_config_rmii_mode.exit.cleanup_crit_edge:     ; preds = %adin_config_rmii_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %adin_config_rmii_mode.exit
  %call25.i = call i32 @phy_modify(ptr noundef %phydev, i32 noundef 23, i16 noundef zeroext 7168, i16 noundef zeroext 4096) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.end4.cleanup_crit_edge, label %adin_set_downshift.exit

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

adin_set_downshift.exit:                          ; preds = %if.end4
  %call.i39.i = call i32 @phy_modify(ptr noundef %phydev, i32 noundef 22, i16 noundef zeroext 0, i16 noundef zeroext 3072) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %cmp6 = icmp slt i32 %call.i39.i, 0
  br i1 %cmp6, label %adin_set_downshift.exit.cleanup_crit_edge, label %if.end8

adin_set_downshift.exit.cleanup_crit_edge:        ; preds = %adin_set_downshift.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %adin_set_downshift.exit
  %call6.i = call i32 @phy_modify(ptr noundef %phydev, i32 noundef 21, i16 noundef zeroext 12, i16 noundef zeroext 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp10 = icmp slt i32 %call6.i, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %do.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adin_config_init.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adin_config_init, %if.then16)) #9
          to label %cleanup [label %if.then16], !srcloc !139

if.then16:                                        ; preds = %do.body
  %33 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %interface.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %34)
  %35 = icmp ult i32 %34, 30
  br i1 %35, label %switch.lookup, label %if.then16.phy_modes.exit_crit_edge

if.then16.phy_modes.exit_crit_edge:               ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %phy_modes.exit

switch.lookup:                                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.adin_config_init, i32 0, i32 %34
  %36 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %phy_modes.exit

phy_modes.exit:                                   ; preds = %switch.lookup, %if.then16.phy_modes.exit_crit_edge
  %retval.0.i60 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.43, %if.then16.phy_modes.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adin_config_init.__UNIQUE_ID_ddebug377, ptr noundef %phydev, ptr noundef nonnull @.str.5, ptr noundef nonnull %retval.0.i60) #9
  br label %cleanup

cleanup:                                          ; preds = %phy_modes.exit, %do.body, %if.end8.cleanup_crit_edge, %adin_set_downshift.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %adin_config_rmii_mode.exit.cleanup_crit_edge, %if.end.i36.cleanup_crit_edge, %adin_config_rgmii_mode.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i32, %adin_config_rgmii_mode.exit.cleanup_crit_edge ], [ %retval.0.i55, %adin_config_rmii_mode.exit.cleanup_crit_edge ], [ %call.i39.i, %adin_set_downshift.exit.cleanup_crit_edge ], [ %call6.i, %if.end8.cleanup_crit_edge ], [ 0, %phy_modes.exit ], [ 0, %do.body ], [ %call2.i, %if.end.i.cleanup_crit_edge ], [ %call1.i, %if.end.i36.cleanup_crit_edge ], [ %call25.i, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adin_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 80, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv2 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %priv2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adin_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 18, i16 noundef zeroext 4, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i17 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 23, i16 noundef zeroext 0, i16 noundef zeroext 8192) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp2 = icmp slt i32 %call.i17, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %mdix_ctrl.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %0 = ptrtoint ptr %mdix_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mdix_ctrl.i, align 1
  %switch.tableidx = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %2 = icmp ult i8 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %if.end4
  %3 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.adin_config_aneg, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %5 = sext i8 %switch.tableidx to i32
  %switch.gep21 = getelementptr inbounds [3 x i32], ptr @switch.table.adin_config_aneg.57, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load22 = load i32, ptr %switch.gep21, align 4
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef 18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %switch.lookup.cleanup_crit_edge, label %adin_config_mdix.exit

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

adin_config_mdix.exit:                            ; preds = %switch.lookup
  %and.i = and i32 %call.i.i, 63999
  %reg.0.i = or i32 %switch.load22, %switch.load
  %reg.1.i = or i32 %reg.0.i, %and.i
  %conv11.i = trunc i32 %reg.1.i to i16
  %11 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i.i, align 8
  %13 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i.i, align 8
  %call.i25.i = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 18, i16 noundef zeroext %conv11.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool.not = icmp eq i32 %call.i25.i, 0
  br i1 %tobool.not, label %if.end7, label %adin_config_mdix.exit.cleanup_crit_edge

adin_config_mdix.exit.cleanup_crit_edge:          ; preds = %adin_config_mdix.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %adin_config_mdix.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i18 = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %adin_config_mdix.exit.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i18, %if.end7 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i17, %if.end.cleanup_crit_edge ], [ %call.i25.i, %adin_config_mdix.exit.cleanup_crit_edge ], [ %call.i.i, %switch.lookup.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adin_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %and.i = and i32 %call.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %call.i.i, 512
  br i1 %tobool.not.i, label %if.then8.i, label %if.end13.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %mdix11.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 38
  br i1 %tobool3.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %mdix11.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %mdix11.i, align 8
  br label %if.end

if.else.i:                                        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %mdix11.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %mdix11.i, align 8
  br label %if.end

if.end13.i:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i50.i = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %cmp15.i = icmp slt i32 %call.i50.i, 0
  br i1 %cmp15.i, label %if.end13.i.cleanup_crit_edge, label %if.end17.i

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.i:                                       ; preds = %if.end13.i
  %and2.lobit.i = lshr exact i32 %and2.i, 9
  %and18.i = lshr i32 %call.i50.i, 11
  %and18.lobit.i = and i32 %and18.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.lobit.i, i32 %and18.lobit.i)
  %cmp26.not.i = icmp eq i32 %and2.lobit.i, %and18.lobit.i
  %mdix31.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 38
  br i1 %cmp26.not.i, label %if.else30.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %mdix31.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %mdix31.i, align 8
  br label %if.end

if.else30.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %mdix31.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %mdix31.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.else30.i, %if.then28.i, %if.else.i, %if.then10.i
  %call1 = tail call i32 @genphy_read_status(ptr noundef %phydev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end13.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i.i, %entry.cleanup_crit_edge ], [ %call.i50.i, %if.end13.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adin_phy_config_intr(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 25) #9
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 24, i16 noundef zeroext 0, i16 noundef zeroext 5) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i17 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 24, i16 noundef zeroext 5, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool4.not = icmp eq i32 %call.i17, 0
  br i1 %tobool4.not, label %if.end6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %bus.i.i18 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %6 = ptrtoint ptr %bus.i.i18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i18, align 8
  %addr.i.i19 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %8 = ptrtoint ptr %addr.i.i19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i19, align 8
  %call.i.i20 = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 25) #9
  %10 = tail call i32 @llvm.smin.i32(i32 %call.i.i20, i32 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then.cleanup_crit_edge ], [ %call.i17, %if.else.cleanup_crit_edge ], [ %call.i, %if.end ], [ %10, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adin_phy_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phy_error(ptr noundef %phydev) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phy_trigger_machine(ptr noundef %phydev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adin_read_mmd(ptr noundef %phydev, i32 noundef %devad, i16 noundef zeroext %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 8
  %addr = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 8
  %4 = zext i32 %devad to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %devad, label %entry.adin_cl45_to_adin_reg.exit_crit_edge [
    i32 30, label %entry.if.end_crit_edge
    i32 3, label %land.lhs.true.i
    i32 7, label %land.lhs.true.1.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.adin_cl45_to_adin_reg.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_cl45_to_adin_reg.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = zext i16 %regnum to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.61)
  switch i16 %regnum, label %land.lhs.true.i.adin_cl45_to_adin_reg.exit_crit_edge [
    i16 20, label %land.lhs.true.i.if.then11.i_crit_edge
    i16 0, label %if.then11.fold.split33.i
    i16 22, label %if.then11.fold.split34.i
  ]

land.lhs.true.i.if.then11.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

land.lhs.true.i.adin_cl45_to_adin_reg.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_cl45_to_adin_reg.exit

if.then11.fold.split.i:                           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.then11.fold.split33.i:                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.then11.fold.split34.i:                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.then11.i:                                      ; preds = %land.lhs.true.1.i.if.then11.i_crit_edge, %if.then11.fold.split34.i, %if.then11.fold.split33.i, %if.then11.fold.split.i, %land.lhs.true.i.if.then11.i_crit_edge
  %i.025.lcssa.i = phi i32 [ 0, %land.lhs.true.i.if.then11.i_crit_edge ], [ 1, %land.lhs.true.1.i.if.then11.i_crit_edge ], [ 2, %if.then11.fold.split.i ], [ 3, %if.then11.fold.split33.i ], [ 4, %if.then11.fold.split34.i ]
  %adin_regnum.i = getelementptr [5 x %struct.adin_clause45_mmd_map], ptr @adin_clause45_mmd_map, i32 0, i32 %i.025.lcssa.i, i32 2
  %6 = ptrtoint ptr %adin_regnum.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %adin_regnum.i, align 2
  br label %if.end

land.lhs.true.1.i:                                ; preds = %entry
  %8 = zext i16 %regnum to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %regnum, label %land.lhs.true.1.i.adin_cl45_to_adin_reg.exit_crit_edge [
    i16 61, label %land.lhs.true.1.i.if.then11.i_crit_edge
    i16 60, label %if.then11.fold.split.i
  ]

land.lhs.true.1.i.if.then11.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

land.lhs.true.1.i.adin_cl45_to_adin_reg.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_cl45_to_adin_reg.exit

adin_cl45_to_adin_reg.exit:                       ; preds = %land.lhs.true.1.i.adin_cl45_to_adin_reg.exit_crit_edge, %land.lhs.true.i.adin_cl45_to_adin_reg.exit_crit_edge, %entry.adin_cl45_to_adin_reg.exit_crit_edge
  %conv14.i = zext i16 %regnum to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.44, i32 noundef %devad, i32 noundef %conv14.i) #12
  br label %cleanup

if.end:                                           ; preds = %if.then11.i, %entry.if.end_crit_edge
  %retval.0.i.ph.in = phi i16 [ %7, %if.then11.i ], [ %regnum, %entry.if.end_crit_edge ]
  %call3 = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 16, i16 noundef zeroext %retval.0.i.ph.in) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @__mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 17) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %adin_cl45_to_adin_reg.exit
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -22, %adin_cl45_to_adin_reg.exit ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adin_write_mmd(ptr noundef %phydev, i32 noundef %devad, i16 noundef zeroext %regnum, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 8
  %addr = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 8
  %4 = zext i32 %devad to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %devad, label %entry.adin_cl45_to_adin_reg.exit_crit_edge [
    i32 30, label %entry.if.end_crit_edge
    i32 3, label %land.lhs.true.i
    i32 7, label %land.lhs.true.1.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.adin_cl45_to_adin_reg.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_cl45_to_adin_reg.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = zext i16 %regnum to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.64)
  switch i16 %regnum, label %land.lhs.true.i.adin_cl45_to_adin_reg.exit_crit_edge [
    i16 20, label %land.lhs.true.i.if.then11.i_crit_edge
    i16 0, label %if.then11.fold.split33.i
    i16 22, label %if.then11.fold.split34.i
  ]

land.lhs.true.i.if.then11.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

land.lhs.true.i.adin_cl45_to_adin_reg.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_cl45_to_adin_reg.exit

if.then11.fold.split.i:                           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.then11.fold.split33.i:                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.then11.fold.split34.i:                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.then11.i:                                      ; preds = %land.lhs.true.1.i.if.then11.i_crit_edge, %if.then11.fold.split34.i, %if.then11.fold.split33.i, %if.then11.fold.split.i, %land.lhs.true.i.if.then11.i_crit_edge
  %i.025.lcssa.i = phi i32 [ 0, %land.lhs.true.i.if.then11.i_crit_edge ], [ 1, %land.lhs.true.1.i.if.then11.i_crit_edge ], [ 2, %if.then11.fold.split.i ], [ 3, %if.then11.fold.split33.i ], [ 4, %if.then11.fold.split34.i ]
  %adin_regnum.i = getelementptr [5 x %struct.adin_clause45_mmd_map], ptr @adin_clause45_mmd_map, i32 0, i32 %i.025.lcssa.i, i32 2
  %6 = ptrtoint ptr %adin_regnum.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %adin_regnum.i, align 2
  br label %if.end

land.lhs.true.1.i:                                ; preds = %entry
  %8 = zext i16 %regnum to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %regnum, label %land.lhs.true.1.i.adin_cl45_to_adin_reg.exit_crit_edge [
    i16 61, label %land.lhs.true.1.i.if.then11.i_crit_edge
    i16 60, label %if.then11.fold.split.i
  ]

land.lhs.true.1.i.if.then11.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

land.lhs.true.1.i.adin_cl45_to_adin_reg.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_cl45_to_adin_reg.exit

adin_cl45_to_adin_reg.exit:                       ; preds = %land.lhs.true.1.i.adin_cl45_to_adin_reg.exit_crit_edge, %land.lhs.true.i.adin_cl45_to_adin_reg.exit_crit_edge, %entry.adin_cl45_to_adin_reg.exit_crit_edge
  %conv14.i = zext i16 %regnum to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.44, i32 noundef %devad, i32 noundef %conv14.i) #12
  br label %cleanup

if.end:                                           ; preds = %if.then11.i, %entry.if.end_crit_edge
  %retval.0.i.ph.in = phi i16 [ %7, %if.then11.i ], [ %regnum, %entry.if.end_crit_edge ]
  %call3 = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 16, i16 noundef zeroext %retval.0.i.ph.in) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 17, i16 noundef zeroext %val) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %adin_cl45_to_adin_reg.exit
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -22, %adin_cl45_to_adin_reg.exit ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adin_cable_test_start(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 23, i16 noundef zeroext 8192, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i11 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 18, i16 noundef zeroext 4, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %cmp2 = icmp slt i32 %call.i11, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 50) #9
  %call.i12 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 47643, i16 noundef zeroext 0, i16 noundef zeroext 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i12, %if.end4 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adin_cable_test_get_status(ptr noundef %phydev, ptr nocapture noundef writeonly %finished) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %finished, align 1
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 47643) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %1 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %finished, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end2
  %pair.011.i = phi i32 [ 0, %if.end2 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %pair.011.i, 47645
  %call.i.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef %add.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %for.body.i.cleanup_crit_edge, label %if.end.i.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %for.body.i
  %and.i.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.i.adin_cable_test_report_trans.exit.i.i_crit_edge

if.end.i.i.adin_cable_test_report_trans.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_cable_test_report_trans.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %and1.i.i.i = and i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end4.i.i.i, label %if.end.i.i.i.adin_cable_test_report_trans.exit.i.i_crit_edge

if.end.i.i.i.adin_cable_test_report_trans.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_cable_test_report_trans.exit.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %and5.i.i.i = and i32 %call.i.i, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end8.i.i.i, label %if.end4.i.i.i.adin_cable_test_report_trans.exit.i.i_crit_edge

if.end4.i.i.i.adin_cable_test_report_trans.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_cable_test_report_trans.exit.i.i

if.end8.i.i.i:                                    ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and9.i.i.i = and i32 %call.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %and9.i.i.i, 0
  %..i.i.i = select i1 %tobool10.not.i.i.i, i32 0, i32 3
  br label %adin_cable_test_report_trans.exit.i.i

adin_cable_test_report_trans.exit.i.i:            ; preds = %if.end8.i.i.i, %if.end4.i.i.i.adin_cable_test_report_trans.exit.i.i_crit_edge, %if.end.i.i.i.adin_cable_test_report_trans.exit.i.i_crit_edge, %if.end.i.i.adin_cable_test_report_trans.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 1, %if.end.i.i.adin_cable_test_report_trans.exit.i.i_crit_edge ], [ 2, %if.end.i.i.i.adin_cable_test_report_trans.exit.i.i_crit_edge ], [ 4, %if.end4.i.i.i.adin_cable_test_report_trans.exit.i.i_crit_edge ], [ %..i.i.i, %if.end8.i.i.i ]
  %conv.i.i = trunc i32 %pair.011.i to i8
  %conv2.i.i = trunc i32 %retval.0.i.i.i to i8
  %call3.i.i = tail call i32 @ethnl_cable_test_result(ptr noundef %phydev, i8 noundef zeroext %conv.i.i, i8 noundef zeroext %conv2.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %adin_cable_test_report_trans.exit.i.i.cleanup_crit_edge, label %if.end7.i.i

adin_cable_test_report_trans.exit.i.i.cleanup_crit_edge: ; preds = %adin_cable_test_report_trans.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i.i:                                      ; preds = %adin_cable_test_report_trans.exit.i.i
  %add8.i.i = add nuw nsw i32 %pair.011.i, 47649
  %call9.i.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef %add8.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp10.i.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp10.i.i, label %if.end7.i.i.cleanup_crit_edge, label %if.end13.i.i

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13.i.i:                                     ; preds = %if.end7.i.i
  %call1.off.i.i = add nsw i32 %retval.0.i.i.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1.off.i.i)
  %switch.i.i = icmp ult i32 %call1.off.i.i, 3
  br i1 %switch.i.i, label %adin_cable_test_report_pair.exit.i, label %if.end13.i.i.for.inc.i_crit_edge

if.end13.i.i.for.inc.i_crit_edge:                 ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

adin_cable_test_report_pair.exit.i:               ; preds = %if.end13.i.i
  %mul.i.i = mul i32 %call9.i.i, 100
  %call15.i.i = tail call i32 @ethnl_cable_test_fault_length(ptr noundef %phydev, i8 noundef zeroext %conv.i.i, i32 noundef %mul.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp1.i = icmp slt i32 %call15.i.i, 0
  br i1 %cmp1.i, label %adin_cable_test_report_pair.exit.i.cleanup_crit_edge, label %adin_cable_test_report_pair.exit.i.for.inc.i_crit_edge

adin_cable_test_report_pair.exit.i.for.inc.i_crit_edge: ; preds = %adin_cable_test_report_pair.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

adin_cable_test_report_pair.exit.i.cleanup_crit_edge: ; preds = %adin_cable_test_report_pair.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.i:                                        ; preds = %adin_cable_test_report_pair.exit.i.for.inc.i_crit_edge, %if.end13.i.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %pair.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %adin_cable_test_report_pair.exit.i.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %adin_cable_test_report_trans.exit.i.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i.i, %for.body.i.cleanup_crit_edge ], [ %call3.i.i, %adin_cable_test_report_trans.exit.i.i.cleanup_crit_edge ], [ %call9.i.i, %if.end7.i.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ], [ %call15.i.i, %adin_cable_test_report_pair.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adin_get_sset_count(ptr nocapture noundef readnone %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adin_get_strings(ptr nocapture noundef readnone %phydev, ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlcpy(ptr noundef %data, ptr noundef nonnull @.str.47, i32 noundef 32) #9
  %arrayidx.1 = getelementptr i8, ptr %data, i32 32
  %call.1 = tail call i32 @strlcpy(ptr noundef %arrayidx.1, ptr noundef nonnull @.str.48, i32 noundef 32) #9
  %arrayidx.2 = getelementptr i8, ptr %data, i32 64
  %call.2 = tail call i32 @strlcpy(ptr noundef %arrayidx.2, ptr noundef nonnull @.str.49, i32 noundef 32) #9
  %arrayidx.3 = getelementptr i8, ptr %data, i32 96
  %call.3 = tail call i32 @strlcpy(ptr noundef %arrayidx.3, ptr noundef nonnull @.str.50, i32 noundef 32) #9
  %arrayidx.4 = getelementptr i8, ptr %data, i32 128
  %call.4 = tail call i32 @strlcpy(ptr noundef %arrayidx.4, ptr noundef nonnull @.str.51, i32 noundef 32) #9
  %arrayidx.5 = getelementptr i8, ptr %data, i32 160
  %call.5 = tail call i32 @strlcpy(ptr noundef %arrayidx.5, ptr noundef nonnull @.str.52, i32 noundef 32) #9
  %arrayidx.6 = getelementptr i8, ptr %data, i32 192
  %call.6 = tail call i32 @strlcpy(ptr noundef %arrayidx.6, ptr noundef nonnull @.str.53, i32 noundef 32) #9
  %arrayidx.7 = getelementptr i8, ptr %data, i32 224
  %call.7 = tail call i32 @strlcpy(ptr noundef %arrayidx.7, ptr noundef nonnull @.str.54, i32 noundef 32) #9
  %arrayidx.8 = getelementptr i8, ptr %data, i32 256
  %call.8 = tail call i32 @strlcpy(ptr noundef %arrayidx.8, ptr noundef nonnull @.str.55, i32 noundef 32) #9
  %arrayidx.9 = getelementptr i8, ptr %data, i32 288
  %call.9 = tail call i32 @strlcpy(ptr noundef %arrayidx.9, ptr noundef nonnull @.str.56, i32 noundef 32) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adin_get_stats(ptr noundef %phydev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %priv1.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %4 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1.i, align 8
  %call.i.i.peel = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 37898) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.peel)
  %cmp.i.i.peel = icmp slt i32 %call.i.i.peel, 0
  br i1 %cmp.i.i.peel, label %for.cond.preheader.for.body.peel.next_crit_edge, label %if.end6.i.i.peel

for.cond.preheader.for.body.peel.next_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.peel.next

if.end6.i.i.peel:                                 ; preds = %for.cond.preheader
  %call9.i.i.peel = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 37899) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.peel)
  %cmp10.i.i.peel = icmp slt i32 %call9.i.i.peel, 0
  br i1 %cmp10.i.i.peel, label %if.end6.i.i.peel.for.body.peel.next_crit_edge, label %if.end13.i.peel

if.end6.i.i.peel.for.body.peel.next_crit_edge:    ; preds = %if.end6.i.i.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.peel.next

if.end13.i.peel:                                  ; preds = %if.end6.i.i.peel
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i.peel = shl i32 %call.i.i.peel, 16
  %and14.i.i.peel = and i32 %call9.i.i.peel, 65535
  %or.i.i.peel = or i32 %and14.i.i.peel, %and.i.i.peel
  %conv14.i.peel = zext i32 %or.i.i.peel to i64
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  %add.i.peel = add i64 %7, %conv14.i.peel
  store i64 %add.i.peel, ptr %5, align 8
  br label %for.body.peel.next

for.body.peel.next:                               ; preds = %if.end13.i.peel, %if.end6.i.i.peel.for.body.peel.next_crit_edge, %for.cond.preheader.for.body.peel.next_crit_edge
  %retval.0.i.peel = phi i64 [ %add.i.peel, %if.end13.i.peel ], [ -1, %for.cond.preheader.for.body.peel.next_crit_edge ], [ -1, %if.end6.i.i.peel.for.body.peel.next_crit_edge ]
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %retval.0.i.peel, ptr %data, align 8
  br label %for.body

for.body:                                         ; preds = %adin_get_stat.exit.for.body_crit_edge, %for.body.peel.next
  %i.08 = phi i32 [ 1, %for.body.peel.next ], [ %inc, %adin_get_stat.exit.for.body_crit_edge ]
  %9 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv1.i, align 8
  %reg1.i.i = getelementptr [10 x %struct.adin_hw_stat], ptr @adin_hw_stats, i32 0, i32 %i.08, i32 1
  %11 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg1.i.i, align 4
  %conv.i.i = zext i16 %12 to i32
  %call.i.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef %conv.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %for.body.adin_get_stat.exit_crit_edge, label %if.end13.i

for.body.adin_get_stat.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %adin_get_stat.exit

if.end13.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = and i32 %call.i.i, 65535
  %conv14.i = zext i32 %and.i.i to i64
  %arrayidx15.i = getelementptr [10 x i64], ptr %10, i32 0, i32 %i.08
  %13 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx15.i, align 8
  %add.i = add i64 %14, %conv14.i
  store i64 %add.i, ptr %arrayidx15.i, align 8
  br label %adin_get_stat.exit

adin_get_stat.exit:                               ; preds = %if.end13.i, %for.body.adin_get_stat.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end13.i ], [ -1, %for.body.adin_get_stat.exit_crit_edge ]
  %arrayidx = getelementptr i64, ptr %data, i32 %i.08
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %retval.0.i, ptr %arrayidx, align 8
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %adin_get_stat.exit.cleanup_crit_edge, label %adin_get_stat.exit.for.body_crit_edge, !llvm.loop !140

adin_get_stat.exit.for.body_crit_edge:            ; preds = %adin_get_stat.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

adin_get_stat.exit.cleanup_crit_edge:             ; preds = %adin_get_stat.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %adin_get_stat.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adin_get_tunable(ptr nocapture noundef readonly %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %1, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %3 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %5 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %4, i32 noundef %6, i32 noundef 22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i.i, align 8
  %call.i47.i = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef 23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %cmp2.i = icmp slt i32 %call.i47.i, 0
  br i1 %cmp2.i, label %if.end.i.return_crit_edge, label %do.end16.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %and33.i = lshr i32 %call.i47.i, 10
  %shr34.i = and i32 %and33.i, 7
  %11 = and i32 %call.i.i, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr34.i)
  %tobool35.not.i = icmp eq i32 %shr34.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool35.not.i
  %phi.cast.i = trunc i32 %shr34.i to i8
  %cond.i = select i1 %or.cond.i, i8 0, i8 %phi.cast.i
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %cond.i, ptr %data, align 1
  br label %return

sw.bb1:                                           ; preds = %entry
  %bus.i.i5 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %13 = ptrtoint ptr %bus.i.i5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i.i5, align 8
  %addr.i.i6 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %15 = ptrtoint ptr %addr.i.i6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i.i6, align 8
  %call.i.i7 = tail call i32 @mdiobus_read(ptr noundef %14, i32 noundef %16, i32 noundef 21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i7)
  %cmp.i8 = icmp slt i32 %call.i.i7, 0
  br i1 %cmp.i8, label %sw.bb1.return_crit_edge, label %if.end.i10

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i10:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %call.i.i7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i9 = icmp eq i32 %and.i, 0
  %and2.i = and i32 %call.i.i7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %..i = select i1 %tobool3.not.i, i16 -2, i16 -1
  %.sink.i = select i1 %tobool.not.i9, i16 0, i16 %..i
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %.sink.i, ptr %data, align 2
  br label %return

return:                                           ; preds = %if.end.i10, %sw.bb1.return_crit_edge, %do.end16.i, %if.end.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %do.end16.i ], [ %call.i.i, %sw.bb.return_crit_edge ], [ %call.i47.i, %if.end.i.return_crit_edge ], [ %call.i.i7, %sw.bb1.return_crit_edge ], [ 0, %if.end.i10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adin_set_tunable(ptr noundef %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %1, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.i = icmp eq i8 %4, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 22, i16 noundef zeroext 3072, i16 noundef zeroext 0) #9
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %4)
  %cmp3.i = icmp ugt i8 %4, 7
  br i1 %cmp3.i, label %if.end.i.return_crit_edge, label %do.end21.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end21.i:                                       ; preds = %if.end.i
  %conv.tr.i = zext i8 %4 to i16
  %5 = shl nuw nsw i16 %conv.tr.i, 10
  %conv24.i = and i16 %5, 7168
  %call25.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 23, i16 noundef zeroext 7168, i16 noundef zeroext %conv24.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %do.end21.i.return_crit_edge, label %if.end29.i

do.end21.i.return_crit_edge:                      ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end29.i:                                       ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i39.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 22, i16 noundef zeroext 0, i16 noundef zeroext 3072) #9
  br label %return

sw.bb1:                                           ; preds = %entry
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %7, label %sw.bb1.return_crit_edge [
    i16 0, label %sw.bb1.cleanup.sink.split.i_crit_edge
    i16 1000, label %sw.bb1.sw.bb3.i_crit_edge
    i16 -1, label %sw.bb1.sw.bb3.i_crit_edge6
    i16 -2, label %sw.bb1.sw.epilog.i_crit_edge
  ]

sw.bb1.sw.epilog.i_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb1.sw.bb3.i_crit_edge6:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

sw.bb1.sw.bb3.i_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

sw.bb1.cleanup.sink.split.i_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb3.i:                                         ; preds = %sw.bb1.sw.bb3.i_crit_edge, %sw.bb1.sw.bb3.i_crit_edge6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb1.sw.epilog.i_crit_edge
  %val.0.i = phi i16 [ 12, %sw.bb3.i ], [ 8, %sw.bb1.sw.epilog.i_crit_edge ]
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.epilog.i, %sw.bb1.cleanup.sink.split.i_crit_edge
  %val.0.sink.i = phi i16 [ %val.0.i, %sw.epilog.i ], [ %7, %sw.bb1.cleanup.sink.split.i_crit_edge ]
  %call6.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 21, i16 noundef zeroext 12, i16 noundef zeroext %val.0.sink.i) #9
  br label %return

return:                                           ; preds = %cleanup.sink.split.i, %sw.bb1.return_crit_edge, %if.end29.i, %do.end21.i.return_crit_edge, %if.end.i.return_crit_edge, %if.then.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %call.i.i, %if.then.i ], [ %call.i39.i, %if.end29.i ], [ -7, %if.end.i.return_crit_edge ], [ %call25.i, %do.end21.i.return_crit_edge ], [ -22, %sw.bb1.return_crit_edge ], [ %call6.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_result(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_fault_length(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__initcall__kmod_adin__378_948_phy_module_init6, !1, !"__initcall__kmod_adin__378_948_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/adin.c", i32 948, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description379, !4, !"__UNIQUE_ID_description379", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/adin.c", i32 957, i32 1}
!5 = !{ptr @__UNIQUE_ID_file380, !6, !"__UNIQUE_ID_file380", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/adin.c", i32 958, i32 1}
!7 = !{ptr @__UNIQUE_ID_license381, !6, !"__UNIQUE_ID_license381", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/phy/adin.c", i32 902, i32 12}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/adin.c", i32 925, i32 12}
!12 = !{ptr @adin_driver, !13, !"adin_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/adin.c", i32 899, i32 26}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/adin.c", i32 458, i32 2}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @adin_config_init.__UNIQUE_ID_ddebug377, !15, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/adin.c", i32 265, i32 36}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/adin.c", i32 278, i32 36}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/phy/adin.c", i32 236, i32 3}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @adin_get_reg_value._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @adin_get_reg_value._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @adin_rgmii_delays, !32, !"adin_rgmii_delays", i1 false, i1 false}
!32 = !{!"../drivers/net/phy/adin.c", i32 144, i32 38}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/phy/adin.c", i32 307, i32 35}
!35 = !{ptr @adin_rmii_fifo_depths, !36, !"adin_rmii_fifo_depths", i1 false, i1 false}
!36 = !{!"../drivers/net/phy/adin.c", i32 153, i32 38}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/phy.h", i32 211, i32 10}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/phy.h", i32 213, i32 10}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/phy.h", i32 215, i32 10}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/phy.h", i32 217, i32 10}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/phy.h", i32 219, i32 10}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/phy.h", i32 221, i32 10}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/phy.h", i32 223, i32 10}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/phy.h", i32 225, i32 10}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/phy.h", i32 227, i32 10}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/phy.h", i32 229, i32 10}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/phy.h", i32 231, i32 10}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/phy.h", i32 233, i32 10}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/phy.h", i32 235, i32 10}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/phy.h", i32 237, i32 10}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/phy.h", i32 239, i32 10}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/phy.h", i32 241, i32 10}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/phy.h", i32 243, i32 10}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/phy.h", i32 245, i32 10}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/phy.h", i32 247, i32 10}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/phy.h", i32 249, i32 10}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/phy.h", i32 251, i32 10}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/phy.h", i32 253, i32 10}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/phy.h", i32 255, i32 10}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/phy.h", i32 257, i32 10}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/phy.h", i32 259, i32 10}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/phy.h", i32 261, i32 10}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/phy.h", i32 263, i32 10}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/phy.h", i32 265, i32 10}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/phy.h", i32 267, i32 10}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/phy.h", i32 269, i32 10}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/phy.h", i32 271, i32 10}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/phy/adin.c", i32 528, i32 2}
!101 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @adin_cl45_to_adin_reg._entry, !100, !"_entry", i1 false, i1 false}
!104 = !{ptr @adin_cl45_to_adin_reg._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @adin_clause45_mmd_map, !106, !"adin_clause45_mmd_map", i1 false, i1 false}
!106 = !{!"../drivers/net/phy/adin.c", i32 175, i32 43}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/phy/adin.c", i32 190, i32 4}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/phy/adin.c", i32 191, i32 4}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/phy/adin.c", i32 192, i32 4}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/phy/adin.c", i32 193, i32 4}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/phy/adin.c", i32 194, i32 4}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/phy/adin.c", i32 195, i32 4}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/phy/adin.c", i32 196, i32 4}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/phy/adin.c", i32 197, i32 4}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/phy/adin.c", i32 198, i32 4}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/phy/adin.c", i32 199, i32 4}
!127 = !{ptr @adin_hw_stats, !128, !"adin_hw_stats", i1 false, i1 false}
!128 = !{!"../drivers/net/phy/adin.c", i32 189, i32 34}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{!"auto-init"}
!139 = !{i64 2148712901, i64 2148712906, i64 2148712919, i64 2148712963, i64 2148712997, i64 2148713018}
!140 = distinct !{!140, !141}
!141 = !{!"llvm.loop.peeled.count", i32 1}
