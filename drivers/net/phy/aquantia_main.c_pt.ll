; ModuleID = '/llk/IR_all_yes/drivers/net/phy/aquantia_main.c_pt.bc'
source_filename = "../drivers/net/phy/aquantia_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.aqr107_hw_stat = type { ptr, i32, i32 }
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

@__initcall__kmod_aquantia__350_691_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@aqr_driver = internal global { [7 x %struct.phy_driver], [396 x i8] } { [7 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 60929093, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aqr_config_aneg, ptr null, ptr @aqr_read_status, ptr @aqr_config_intr, ptr @aqr_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 60929120, ptr @.str.1, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aqr_config_aneg, ptr null, ptr @aqr_read_status, ptr @aqr_config_intr, ptr @aqr_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 60929186, ptr @.str.2, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aqr107_suspend, ptr @aqr107_resume, ptr @aqr_config_aneg, ptr null, ptr @aqr_read_status, ptr @aqr_config_intr, ptr @aqr_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 60929232, ptr @.str.3, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aqr_config_aneg, ptr null, ptr @aqr_read_status, ptr @aqr_config_intr, ptr @aqr_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 60929248, ptr @.str.4, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @aqr107_config_init, ptr @aqr107_probe, ptr null, ptr @aqr107_suspend, ptr @aqr107_resume, ptr @aqr_config_aneg, ptr null, ptr @aqr107_read_status, ptr @aqr_config_intr, ptr @aqr_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @aqr107_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aqr107_get_sset_count, ptr @aqr107_get_strings, ptr @aqr107_get_stats, ptr @aqr107_get_tunable, ptr @aqr107_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 60929474, ptr @.str.5, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @aqcs109_config_init, ptr @aqr107_probe, ptr null, ptr @aqr107_suspend, ptr @aqr107_resume, ptr @aqr_config_aneg, ptr null, ptr @aqr107_read_status, ptr @aqr_config_intr, ptr @aqr_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @aqr107_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aqr107_get_sset_count, ptr @aqr107_get_strings, ptr @aqr107_get_stats, ptr @aqr107_get_tunable, ptr @aqr107_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 60929200, ptr @.str.6, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aqr_config_aneg, ptr null, ptr @aqr_read_status, ptr @aqr_config_intr, ptr @aqr_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [396 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description351 = internal constant [41 x i8] c"aquantia.description=Aquantia PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author352 = internal constant [56 x i8] c"aquantia.author=Shaohui Xie <Shaohui.Xie@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file353 = internal constant [39 x i8] c"aquantia.file=drivers/net/phy/aquantia\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [24 x i8] c"aquantia.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Aquantia AQ1202\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Aquantia AQ2104\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Aquantia AQR105\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Aquantia AQR106\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Aquantia AQR107\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Aquantia AQCS109\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Aquantia AQR405\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/phy/aquantia_main.c\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"Your devicetree is out of date, please update it. The AQR107 family doesn't support XGMII, maybe you mean USXGMII.\0A\00", [44 x i8] zeroinitializer }, align 32
@aqr107_wait_reset_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.7, i32 470, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s failed: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"aqr107_wait_reset_complete\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aqr107_wait_reset_complete._entry_ptr = internal global ptr @aqr107_wait_reset_complete._entry, section ".printk_index", align 4
@aqr107_chip_info.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.7, ptr @.str.15, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aquantia\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aqr107_chip_info\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"FW %u.%u, Build %u, Provisioning %u\0A\00", [59 x i8] zeroinitializer }, align 32
@aqr107_link_change_notify.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.16, ptr @.str.7, ptr @.str.17, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aqr107_link_change_notify\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Link partner is Aquantia PHY, FW %u.%u%s%s%s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c", short reach mode\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c", fast-retrain downshift advertised\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c", fast reframe advertised\00", [38 x i8] zeroinitializer }, align 32
@aqr107_link_change_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.7, i32 585, ptr @.str.23, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Aquantia 1000Base-T2 mode active\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@aqr107_link_change_notify._entry_ptr = internal global ptr @aqr107_link_change_notify._entry, section ".printk_index", align 4
@aqr107_hw_stats = internal constant { [10 x %struct.aqr107_hw_stat], [40 x i8] } { [10 x %struct.aqr107_hw_stat] [%struct.aqr107_hw_stat { ptr @.str.24, i32 53906, i32 26 }, %struct.aqr107_hw_stat { ptr @.str.25, i32 53908, i32 26 }, %struct.aqr107_hw_stat { ptr @.str.26, i32 53911, i32 8 }, %struct.aqr107_hw_stat { ptr @.str.27, i32 54035, i32 26 }, %struct.aqr107_hw_stat { ptr @.str.28, i32 54037, i32 26 }, %struct.aqr107_hw_stat { ptr @.str.29, i32 54039, i32 8 }, %struct.aqr107_hw_stat { ptr @.str.30, i32 54040, i32 8 }, %struct.aqr107_hw_stat { ptr @.str.31, i32 54041, i32 8 }, %struct.aqr107_hw_stat { ptr @.str.32, i32 54042, i32 16 }, %struct.aqr107_hw_stat { ptr @.str.33, i32 54043, i32 22 }], [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sgmii_rx_good_frames\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sgmii_rx_bad_frames\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sgmii_rx_false_carrier_events\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sgmii_tx_good_frames\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sgmii_tx_bad_frames\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sgmii_tx_false_carrier_events\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sgmii_tx_collisions\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sgmii_tx_line_collisions\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sgmii_tx_frame_alignment_err\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sgmii_tx_runt_frames\00", [43 x i8] zeroinitializer }, align 32
@aqr107_get_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.7, i32 199, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Reading HW Statistics failed for %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aqr107_get_stats\00", [47 x i8] zeroinitializer }, align 32
@aqr107_get_stats._entry_ptr = internal global ptr @aqr107_get_stats._entry, section ".printk_index", align 4
@switch.table.aqr107_read_status = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 29, i32 0, i32 26, i32 28, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 22], [52 x i8] zeroinitializer }, align 32
@switch.table.aqr107_read_status.36 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 10, i32 100, i32 1000, i32 10000, i32 2500, i32 5000], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 15, i64 22, i64 26, i64 28, i64 29]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 22]
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"aqr_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 610, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 613, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 621, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 629, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 639, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 647, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 665, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 683, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 509, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 468, i32 9 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 492, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 573, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 585, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"aqr107_hw_stats\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 132, i32 36 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 133, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 134, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 135, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 136, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 137, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 138, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 139, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 140, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 141, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 142, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private constant [35 x i8] c"../drivers/net/phy/aquantia_main.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 198, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [32 x i8] c"switch.table.aqr107_read_status\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [35 x i8] c"switch.table.aqr107_read_status.36\00", align 1
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author352, ptr @__UNIQUE_ID_description351, ptr @__UNIQUE_ID_file353, ptr @__UNIQUE_ID_license354, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_aquantia__350_691_phy_module_init6, ptr @aqr107_get_stats._entry, ptr @aqr107_get_stats._entry_ptr, ptr @aqr107_link_change_notify._entry, ptr @aqr107_link_change_notify._entry_ptr, ptr @aqr107_wait_reset_complete._entry, ptr @aqr107_wait_reset_complete._entry_ptr, ptr @phy_module_exit, ptr @aqr_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @aqr107_hw_stats, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @switch.table.aqr107_read_status, ptr @switch.table.aqr107_read_status.36], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aqr_driver to i32), i32 1652, i32 2048, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aqr107_wait_reset_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aqr107_link_change_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aqr107_hw_stats to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aqr107_get_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aqr107_read_status to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aqr107_read_status.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @aqr_driver, i32 noundef 7, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @phy_drivers_unregister(ptr noundef nonnull @aqr_driver, i32 noundef 7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqr_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %autoneg, align 8
  %1 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @genphy_c45_pma_setup_forced(ptr noundef %phydev) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @genphy_c45_an_config_aneg(ptr noundef %phydev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %advertising = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 17
  %2 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %advertising, align 4
  %4 = trunc i32 %3 to i16
  %5 = shl i16 %4, 10
  %6 = and i16 %5, -32768
  %7 = load volatile i32, ptr %advertising, align 4
  %8 = trunc i32 %7 to i16
  %9 = shl i16 %8, 10
  %10 = and i16 %9, 16384
  %11 = or i16 %10, %6
  %call21 = tail call i32 @phy_modify_mmd_changed(ptr noundef %phydev, i32 noundef 7, i32 noundef 50176, i16 noundef zeroext -16384, i16 noundef zeroext %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end4.cleanup_crit_edge, label %if.end25

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp5.not = icmp ne i32 %call1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp26.not = icmp ne i32 %call21, 0
  %spec.select = select i1 %cmp26.not, i1 true, i1 %cmp5.not
  %call31 = tail call i32 @genphy_c45_check_and_restart_aneg(ptr noundef %phydev, i1 noundef zeroext %spec.select) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call31, %if.end25 ], [ %call1, %if.end.cleanup_crit_edge ], [ %call21, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqr_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %autoneg, align 8
  %1 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 59424) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %lp_advertising = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 18
  %2 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lp_advertising, align 4
  %and.i.i.i = and i32 %3, -49
  %and = lshr i32 %call, 10
  %4 = and i32 %and, 32
  %storemerge.i = or i32 %and.i.i.i, %4
  %and5 = lshr i32 %call, 10
  %5 = and i32 %and5, 16
  %storemerge.i20 = or i32 %storemerge.i, %5
  store i32 %storemerge.i20, ptr %lp_advertising, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %call7 = tail call i32 @genphy_c45_read_status(ptr noundef %phydev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqr_config_intr(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  br i1 %cmp.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 52225) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %not.cmp.not = xor i1 %cmp.not, true
  %conv = zext i1 %not.cmp.not to i16
  %call5 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 54273, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %call14 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 65280, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end9.cleanup_crit_edge, label %if.end18

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %conv22 = select i1 %cmp.not, i16 0, i16 4097
  %call23 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 65281, i16 noundef zeroext %conv22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end18.cleanup_crit_edge, label %if.end27

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  br i1 %cmp.not, label %if.then29, label %if.end27.if.end35_crit_edge

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then29:                                        ; preds = %if.end27
  %call30 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 52225) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then29.cleanup_crit_edge, label %if.then29.if.end35_crit_edge

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.then29.if.end35_crit_edge, %if.end27.if.end35_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then29.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ %call, %if.then.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ %call14, %if.end9.cleanup_crit_edge ], [ %call23, %if.end18.cleanup_crit_edge ], [ %call30, %if.then29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqr_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 52225) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @phy_error(ptr noundef %phydev) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @phy_trigger_machine(ptr noundef %phydev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqr107_suspend(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext 2048) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqr107_resume(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 0, i16 noundef zeroext 2048, i16 noundef zeroext 0) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqr107_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 15, label %do.end
    i32 4, label %entry.if.end30_crit_edge
    i32 22, label %entry.if.end30_crit_edge52
    i32 26, label %entry.if.end30_crit_edge53
    i32 28, label %entry.if.end30_crit_edge54
    i32 29, label %entry.if.end30_crit_edge55
  ], !prof !90

entry.if.end30_crit_edge55:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

entry.if.end30_crit_edge54:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

entry.if.end30_crit_edge53:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

entry.if.end30_crit_edge52:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 510, i32 noundef 9, ptr noundef nonnull @.str.8) #6
  br label %if.end30

if.end30:                                         ; preds = %do.end, %entry.if.end30_crit_edge, %entry.if.end30_crit_edge52, %entry.if.end30_crit_edge53, %entry.if.end30_crit_edge54, %entry.if.end30_crit_edge55
  %call = tail call fastcc i32 @aqr107_wait_reset_complete(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool37.not = icmp eq i32 %call, 0
  br i1 %tobool37.not, label %if.then38, label %if.end30.if.end39_crit_edge

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then38:                                        ; preds = %if.end30
  %call.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then38.if.end39_crit_edge, label %do.end12.i

if.then38.if.end39_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

do.end12.i:                                       ; preds = %if.then38
  %and.i = lshr i32 %call.i, 8
  %call32.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 51333) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %do.end12.i.if.end39_crit_edge, label %do.end51.i

do.end12.i.if.end39_crit_edge:                    ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

do.end51.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aqr107_chip_info.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aqr107_config_init, %if.then80.i)) #6
          to label %if.end39 [label %if.then80.i], !srcloc !91

if.then80.i:                                      ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv74.i = and i32 %call32.i, 15
  %3 = lshr i32 %call32.i, 4
  %conv81.i = and i32 %and.i, 255
  %conv82.i = and i32 %call.i, 255
  %conv83.i = and i32 %3, 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aqr107_chip_info.__UNIQUE_ID_ddebug333, ptr noundef %phydev, ptr noundef nonnull @.str.15, i32 noundef %conv81.i, i32 noundef %conv82.i, i32 noundef %conv83.i, i32 noundef %conv74.i) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then80.i, %do.end51.i, %do.end12.i.if.end39_crit_edge, %if.then38.if.end39_crit_edge, %if.end30.if.end39_crit_edge
  %call.i51 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 50176, i16 noundef zeroext 31, i16 noundef zeroext 20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i51, %if.end39 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqr107_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 80, i32 noundef 3520) #6
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %priv, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @aqr_hwmon_probe(ptr noundef %phydev) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqr107_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %autoneg.i, align 8
  %1 = and i16 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i = icmp eq i16 %1, 0
  br i1 %cmp.not.i, label %entry.aqr_read_status.exit_crit_edge, label %if.then.i

entry.aqr_read_status.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %aqr_read_status.exit

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 59424) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %lp_advertising.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 18
  %2 = ptrtoint ptr %lp_advertising.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lp_advertising.i, align 4
  %and.i.i.i.i = and i32 %3, -49
  %and.i = lshr i32 %call.i, 10
  %storemerge.i.i = and i32 %and.i, 48
  %storemerge.i20.i = or i32 %storemerge.i.i, %and.i.i.i.i
  store i32 %storemerge.i20.i, ptr %lp_advertising.i, align 4
  br label %aqr_read_status.exit

aqr_read_status.exit:                             ; preds = %if.end.i, %entry.aqr_read_status.exit_crit_edge
  %call7.i = tail call i32 @genphy_c45_read_status(ptr noundef %phydev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not = icmp eq i32 %call7.i, 0
  br i1 %tobool.not, label %if.end, label %aqr_read_status.exit.cleanup_crit_edge

aqr_read_status.exit.cleanup_crit_edge:           ; preds = %aqr_read_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %aqr_read_status.exit
  %4 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %autoneg.i, align 8
  %5 = and i16 %bf.load, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %5)
  %.not = icmp eq i16 %5, 12
  br i1 %.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 4, i32 noundef 59410) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %do.end23

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end23:                                         ; preds = %if.end7
  %and = lshr i32 %call8, 3
  %shr = and i32 %and, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %shr)
  %6 = icmp ult i32 %shr, 11
  br i1 %6, label %switch.lookup, label %do.end23.sw.epilog_crit_edge

do.end23.sw.epilog_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.aqr107_read_status, i32 0, i32 %shr
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end23.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 0, %do.end23.sw.epilog_crit_edge ]
  %interface32 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %8 = ptrtoint ptr %interface32 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %interface32, align 4
  %call.i48 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 51200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp.i = icmp slt i32 %call.i48, 0
  br i1 %cmp.i, label %sw.epilog.cleanup_crit_edge, label %do.end12.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end12.i:                                       ; preds = %sw.epilog
  %and.i49 = lshr i32 %call.i48, 1
  %shr.i = and i32 %and.i49, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %shr.i)
  %9 = icmp ult i32 %shr.i, 6
  br i1 %9, label %switch.lookup53, label %do.end12.i.sw.epilog.i_crit_edge

do.end12.i.sw.epilog.i_crit_edge:                 ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

switch.lookup53:                                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep54 = getelementptr inbounds [6 x i32], ptr @switch.table.aqr107_read_status.36, i32 0, i32 %shr.i
  %10 = ptrtoint ptr %switch.gep54 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load55 = load i32, ptr %switch.gep54, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup53, %do.end12.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ %switch.load55, %switch.lookup53 ], [ -1, %do.end12.i.sw.epilog.i_crit_edge ]
  %speed23.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %11 = ptrtoint ptr %speed23.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink.i, ptr %speed23.i, align 8
  %and24.i = and i32 %call.i48, 1
  %duplex.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %12 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and24.i, ptr %duplex.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %sw.epilog.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %aqr_read_status.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7.i, %aqr_read_status.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call.i48, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.epilog.i ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aqr107_link_change_notify(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %autoneg, align 8
  %3 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp1 = icmp eq i16 %3, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 59424) #6
  %4 = and i32 %call, -2147483644
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %.not = icmp eq i32 %4, 4
  br i1 %.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %and6 = and i32 %call, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %and8 = and i32 %call, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %call11 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 59427) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end5.cleanup_crit_edge, label %do.end26

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end26:                                         ; preds = %if.end5
  %and27 = lshr i32 %call11, 8
  %call47 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 59442) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.end26.cleanup_crit_edge, label %if.end51

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %do.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aqr107_link_change_notify.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aqr107_link_change_notify, %if.then62)) #6
          to label %do.end75 [label %if.then62], !srcloc !91

if.then62:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %and52 = and i32 %call47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %conv63 = and i32 %and27, 255
  %conv64 = and i32 %call11, 255
  %cond = select i1 %tobool7.not, ptr @.str.19, ptr @.str.18
  %cond69 = select i1 %tobool9.not, ptr @.str.19, ptr @.str.20
  %cond72 = select i1 %tobool53.not, ptr @.str.19, ptr @.str.21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aqr107_link_change_notify.__UNIQUE_ID_ddebug344, ptr noundef %phydev, ptr noundef nonnull @.str.17, i32 noundef %conv63, i32 noundef %conv64, ptr noundef nonnull %cond, ptr noundef nonnull %cond69, ptr noundef nonnull %cond72) #6
  br label %do.end75

do.end75:                                         ; preds = %if.then62, %if.end51
  %call76 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 51341) #6
  %5 = and i32 %call76, -2147483393
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %5)
  %6 = icmp eq i32 %5, 35
  br i1 %6, label %do.end104, label %do.end75.cleanup_crit_edge

do.end75.cleanup_crit_edge:                       ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end104:                                        ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %phydev, ptr noundef nonnull @.str.22) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end104, %do.end75.cleanup_crit_edge, %do.end26.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aqr107_get_sset_count(ptr nocapture noundef readnone %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aqr107_get_strings(ptr nocapture noundef readnone %phydev, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %data, ptr noundef nonnull @.str.24, i32 noundef 32) #6
  %add.ptr.1 = getelementptr i8, ptr %data, i32 32
  %call.1 = tail call i32 @strscpy(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.25, i32 noundef 32) #6
  %add.ptr.2 = getelementptr i8, ptr %data, i32 64
  %call.2 = tail call i32 @strscpy(ptr noundef %add.ptr.2, ptr noundef nonnull @.str.26, i32 noundef 32) #6
  %add.ptr.3 = getelementptr i8, ptr %data, i32 96
  %call.3 = tail call i32 @strscpy(ptr noundef %add.ptr.3, ptr noundef nonnull @.str.27, i32 noundef 32) #6
  %add.ptr.4 = getelementptr i8, ptr %data, i32 128
  %call.4 = tail call i32 @strscpy(ptr noundef %add.ptr.4, ptr noundef nonnull @.str.28, i32 noundef 32) #6
  %add.ptr.5 = getelementptr i8, ptr %data, i32 160
  %call.5 = tail call i32 @strscpy(ptr noundef %add.ptr.5, ptr noundef nonnull @.str.29, i32 noundef 32) #6
  %add.ptr.6 = getelementptr i8, ptr %data, i32 192
  %call.6 = tail call i32 @strscpy(ptr noundef %add.ptr.6, ptr noundef nonnull @.str.30, i32 noundef 32) #6
  %add.ptr.7 = getelementptr i8, ptr %data, i32 224
  %call.7 = tail call i32 @strscpy(ptr noundef %add.ptr.7, ptr noundef nonnull @.str.31, i32 noundef 32) #6
  %add.ptr.8 = getelementptr i8, ptr %data, i32 256
  %call.8 = tail call i32 @strscpy(ptr noundef %add.ptr.8, ptr noundef nonnull @.str.32, i32 noundef 32) #6
  %add.ptr.9 = getelementptr i8, ptr %data, i32 288
  %call.9 = tail call i32 @strscpy(ptr noundef %add.ptr.9, ptr noundef nonnull @.str.33, i32 noundef 32) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aqr107_get_stats(ptr noundef %phydev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %size.i = getelementptr %struct.aqr107_hw_stat, ptr @aqr107_hw_stats, i32 %i.019, i32 2
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 16) #6
  %reg.i = getelementptr %struct.aqr107_hw_stat, ptr @aqr107_hw_stats, i32 %i.019, i32 1
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg.i, align 4
  %call.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 29, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %for.body.do.end_crit_edge, label %if.end.i

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %for.body
  %sub4.i = sub i32 32, %4
  %shr.i = lshr i32 -1, %sub4.i
  %and5.i = and i32 %shr.i, %call.i
  %conv.i = zext i32 %and5.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %3)
  %tobool.not.i = icmp slt i32 %3, 17
  br i1 %tobool.not.i, label %if.end.i.if.else_crit_edge, label %if.then6.i

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then6.i:                                       ; preds = %if.end.i
  %add8.i = add i32 %6, 1
  %call9.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 29, i32 noundef %add8.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.then6.i.do.end_crit_edge, label %if.end13.i

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end13.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = sub nsw i32 32, %3
  %sub15.i = add i32 %7, %4
  %shr16.i = lshr i32 -1, %sub15.i
  %and19.i = and i32 %call9.i, %shr16.i
  %shl.i = shl i32 %and19.i, 16
  %conv20.i = zext i32 %shl.i to i64
  %add21.i = add nuw nsw i64 %conv20.i, %conv.i
  br label %if.else

do.end:                                           ; preds = %if.then6.i.do.end_crit_edge, %for.body.do.end_crit_edge
  %arrayidx = getelementptr [10 x %struct.aqr107_hw_stat], ptr @aqr107_hw_stats, i32 0, i32 %i.019
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.34, ptr noundef %9) #9
  br label %if.end

if.else:                                          ; preds = %if.end13.i, %if.end.i.if.else_crit_edge
  %retval.0.i = phi i64 [ %add21.i, %if.end13.i ], [ %conv.i, %if.end.i.if.else_crit_edge ]
  %arrayidx3 = getelementptr [10 x i64], ptr %1, i32 0, i32 %i.019
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx3, align 8
  %add = add i64 %11, %retval.0.i
  store i64 %add, ptr %arrayidx3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %arrayidx5 = getelementptr [10 x i64], ptr %1, i32 0, i32 %i.019
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx5, align 8
  %arrayidx6 = getelementptr i64, ptr %data, i32 %i.019
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx6, align 8
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqr107_get_tunable(ptr noundef %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %call.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 50176) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %do.end12.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end12.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %and29.i = and i32 %call.i, 15
  %2 = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool31.not.i = icmp eq i32 %and29.i, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool31.not.i
  %phi.cast.i = trunc i32 %and29.i to i8
  %cond.i = select i1 %or.cond.i, i8 0, i8 %phi.cast.i
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %cond.i, ptr %data, align 1
  br label %return

return:                                           ; preds = %do.end12.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %do.end12.i ], [ %call.i, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqr107_set_tunable(ptr noundef %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %tobool.not.i = icmp ult i8 %3, 16
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not.i = icmp eq i8 %3, 0
  %4 = or i8 %3, 16
  %narrow.i = select i1 %cmp.not.i, i8 0, i8 %4
  %val.0.i = zext i8 %narrow.i to i16
  %call.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 50176, i16 noundef zeroext 31, i16 noundef zeroext %val.0.i) #6
  br label %return

return:                                           ; preds = %if.end.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %call.i, %if.end.i ], [ -7, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqcs109_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 4, label %entry.if.end_crit_edge
    i32 22, label %entry.if.end_crit_edge18
  ]

entry.if.end_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge18
  %call = tail call fastcc i32 @aqr107_wait_reset_complete(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %call.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then3.if.end4_crit_edge, label %do.end12.i

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.end12.i:                                       ; preds = %if.then3
  %and.i = lshr i32 %call.i, 8
  %call32.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 51333) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %do.end12.i.if.end4_crit_edge, label %do.end51.i

do.end12.i.if.end4_crit_edge:                     ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.end51.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aqr107_chip_info.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aqcs109_config_init, %if.then80.i)) #6
          to label %if.end4 [label %if.then80.i], !srcloc !91

if.then80.i:                                      ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv74.i = and i32 %call32.i, 15
  %3 = lshr i32 %call32.i, 4
  %conv81.i = and i32 %and.i, 255
  %conv82.i = and i32 %call.i, 255
  %conv83.i = and i32 %3, 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aqr107_chip_info.__UNIQUE_ID_ddebug333, ptr noundef %phydev, ptr noundef nonnull @.str.15, i32 noundef %conv81.i, i32 noundef %conv82.i, i32 noundef %conv83.i, i32 noundef %conv74.i) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then80.i, %do.end51.i, %do.end12.i.if.end4_crit_edge, %if.then3.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %call5 = tail call i32 @phy_set_max_speed(ptr noundef %phydev, i32 noundef 2500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call.i17 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 50176, i16 noundef zeroext 31, i16 noundef zeroext 20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i17, %if.end8 ], [ -19, %entry.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_pma_setup_forced(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_an_config_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd_changed(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_check_and_restart_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aqr107_wait_reset_complete(ptr noundef %phydev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 2000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 470) #6
  %call848 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call848)
  %cmp9.not49 = icmp eq i32 %call848, 0
  br i1 %cmp9.not49, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then20.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then20

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 32) #6
  br label %for.end

if.then20:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 5001, i32 noundef 20000, i32 noundef 2) #6
  %call8 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 32) #6
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.then20.land.lhs.true_crit_edge, label %if.then20.for.end_crit_edge

if.then20.for.end_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then20.land.lhs.true_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.end:                                          ; preds = %if.then20.for.end_crit_edge, %if.then16, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %call17, %if.then16 ], [ %call848, %entry.for.end_crit_edge ], [ %call8, %if.then20.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %cmp22.not = icmp eq i32 %val.0, 0
  %spec.select = select i1 %cmp22.not, i32 -110, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %cmp24 = icmp slt i32 %val.0, 0
  %__ret.0 = select i1 %cmp24, i32 %val.0, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool27.not = icmp eq i32 %__ret.0, 0
  br i1 %tobool27.not, label %for.end.if.end32_crit_edge, label %do.end31

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

do.end31:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %__ret.0) #9
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %for.end.if.end32_crit_edge
  ret i32 %__ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aqr_hwmon_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !49, !51, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__initcall__kmod_aquantia__350_691_phy_module_init6, !1, !"__initcall__kmod_aquantia__350_691_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/aquantia_main.c", i32 691, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description351, !4, !"__UNIQUE_ID_description351", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/aquantia_main.c", i32 706, i32 1}
!5 = !{ptr @__UNIQUE_ID_author352, !6, !"__UNIQUE_ID_author352", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/aquantia_main.c", i32 707, i32 1}
!7 = !{ptr @__UNIQUE_ID_file353, !8, !"__UNIQUE_ID_file353", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/aquantia_main.c", i32 708, i32 1}
!9 = !{ptr @__UNIQUE_ID_license354, !8, !"__UNIQUE_ID_license354", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/aquantia_main.c", i32 613, i32 11}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/aquantia_main.c", i32 621, i32 11}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/aquantia_main.c", i32 629, i32 11}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/aquantia_main.c", i32 639, i32 11}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/aquantia_main.c", i32 647, i32 11}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/aquantia_main.c", i32 665, i32 11}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/aquantia_main.c", i32 683, i32 11}
!24 = !{ptr @aqr_driver, !25, !"aqr_driver", i1 false, i1 false}
!25 = !{!"../drivers/net/phy/aquantia_main.c", i32 610, i32 26}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/phy/aquantia_main.c", i32 509, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/phy/aquantia_main.c", i32 468, i32 9}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @aqr107_wait_reset_complete._entry, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @aqr107_wait_reset_complete._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/phy/aquantia_main.c", i32 492, i32 2}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @aqr107_chip_info.__UNIQUE_ID_ddebug333, !37, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/phy/aquantia_main.c", i32 573, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @aqr107_link_change_notify.__UNIQUE_ID_ddebug344, !42, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!45 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/phy/aquantia_main.c", i32 585, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @aqr107_link_change_notify._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @aqr107_link_change_notify._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/phy/aquantia_main.c", i32 133, i32 2}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/phy/aquantia_main.c", i32 134, i32 2}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/phy/aquantia_main.c", i32 135, i32 2}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/phy/aquantia_main.c", i32 136, i32 2}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/phy/aquantia_main.c", i32 137, i32 2}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/phy/aquantia_main.c", i32 138, i32 2}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/phy/aquantia_main.c", i32 139, i32 2}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/phy/aquantia_main.c", i32 140, i32 2}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/phy/aquantia_main.c", i32 141, i32 2}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/phy/aquantia_main.c", i32 142, i32 2}
!74 = !{ptr @aqr107_hw_stats, !75, !"aqr107_hw_stats", i1 false, i1 false}
!75 = !{!"../drivers/net/phy/aquantia_main.c", i32 132, i32 36}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/phy/aquantia_main.c", i32 198, i32 4}
!78 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @aqr107_get_stats._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @aqr107_get_stats._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!91 = !{i64 2148709933, i64 2148709938, i64 2148709951, i64 2148709995, i64 2148710029, i64 2148710050}
