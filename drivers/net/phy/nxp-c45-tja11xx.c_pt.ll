; ModuleID = '/llk/IR_all_yes/drivers/net/phy/nxp-c45-tja11xx.c_pt.bc'
source_filename = "../drivers/net/phy/nxp-c45-tja11xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.nxp_c45_phy_stats = type { ptr, i8, i16, i8, i16 }
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
%struct.nxp_c45_phy = type { ptr, %struct.mii_timestamper, ptr, %struct.ptp_clock_info, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, i32, i32, i32, i32, %struct.timespec64, i32, i8 }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.nxp_c45_hwts = type { i32, i32, i8, i16, i8 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ifreq = type { %union.anon.100, %union.anon.101 }
%union.anon.100 = type { [16 x i8] }
%union.anon.101 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ptp_clock_request = type { i32, %union.anon.122 }
%union.anon.122 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.123, %struct.ptp_clock_time, i32, i32, %union.anon.124 }
%union.anon.123 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.124 = type { %struct.ptp_clock_time }
%struct.ptp_extts_request = type { i32, i32, [2 x i32] }
%struct.ptp_clock_event = type { i32, i32, %union.anon.125 }
%union.anon.125 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.ptp_header = type <{ i8, i8, i16, i8, i8, [2 x i8], i64, i32, %struct.port_identity, i16, i8, i8 }>
%struct.port_identity = type { %struct.clock_identity, i16 }
%struct.clock_identity = type { [8 x i8] }

@__initcall__kmod_nxp_c45_tja11xx__350_1365_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@nxp_c45_driver = internal global { [1 x %struct.phy_driver], [52 x i8] } { [1 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1814544, ptr @.str, i32 -16, ptr @phy_basic_t1_features, i32 0, ptr null, ptr @nxp_c45_soft_reset, ptr @nxp_c45_config_init, ptr @nxp_c45_probe, ptr null, ptr @genphy_c45_pma_suspend, ptr @genphy_c45_pma_resume, ptr @nxp_c45_config_aneg, ptr null, ptr @nxp_c45_read_status, ptr @nxp_c45_config_intr, ptr @nxp_c45_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nxp_c45_cable_test_start, ptr null, ptr @nxp_c45_cable_test_get_status, ptr @nxp_c45_get_sset_count, ptr @nxp_c45_get_strings, ptr @nxp_c45_get_stats, ptr null, ptr null, ptr @genphy_c45_loopback, ptr @nxp_c45_get_sqi, ptr @nxp_c45_get_sqi_max }], [52 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author351 = internal constant [67 x i8] c"nxp_c45_tja11xx.author=Radu Pirea <radu-nicolae.pirea@oss.nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description352 = internal constant [47 x i8] c"nxp_c45_tja11xx.description=NXP C45 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file353 = internal constant [53 x i8] c"nxp_c45_tja11xx.file=drivers/net/phy/nxp-c45-tja11xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [31 x i8] c"nxp_c45_tja11xx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NXP C45 TJA1103\00", [16 x i8] zeroinitializer }, align 32
@phy_basic_t1_features = external dso_local global [3 x i32], section ".data..ro_after_init", align 4
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/phy/nxp-c45-tja11xx.c\00", [62 x i8] zeroinitializer }, align 32
@nxp_c45_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 943, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s failed: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nxp_c45_soft_reset\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nxp_c45_soft_reset._entry_ptr = internal global ptr @nxp_c45_soft_reset._entry, section ".printk_index", align 4
@nxp_c45_config_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.1, i32 1254, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to enable config\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nxp_c45_config_init\00", [44 x i8] zeroinitializer }, align 32
@nxp_c45_config_init._entry_ptr = internal global ptr @nxp_c45_config_init._entry, section ".printk_index", align 4
@nxp_c45_set_phy_mode.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.1, ptr @.str.10, i8 1, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nxp_c45_tja11xx\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nxp_c45_set_phy_mode\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Clause 45 managed PHY abilities 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@nxp_c45_set_phy_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.1, i32 1185, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rgmii mode not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@nxp_c45_set_phy_mode._entry_ptr = internal global ptr @nxp_c45_set_phy_mode._entry, section ".printk_index", align 4
@nxp_c45_set_phy_mode._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.1, i32 1196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"rgmii-id, rgmii-txid, rgmii-rxid modes are not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@nxp_c45_set_phy_mode._entry_ptr.14 = internal global ptr @nxp_c45_set_phy_mode._entry.12, section ".printk_index", align 4
@nxp_c45_set_phy_mode._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.1, i32 1209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mii mode not supported\0A\00", [40 x i8] zeroinitializer }, align 32
@nxp_c45_set_phy_mode._entry_ptr.17 = internal global ptr @nxp_c45_set_phy_mode._entry.15, section ".printk_index", align 4
@nxp_c45_set_phy_mode._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str.1, i32 1217, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rev-mii mode not supported\0A\00", [36 x i8] zeroinitializer }, align 32
@nxp_c45_set_phy_mode._entry_ptr.20 = internal global ptr @nxp_c45_set_phy_mode._entry.18, section ".printk_index", align 4
@nxp_c45_set_phy_mode._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.9, ptr @.str.1, i32 1225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rmii mode not supported\0A\00", [39 x i8] zeroinitializer }, align 32
@nxp_c45_set_phy_mode._entry_ptr.23 = internal global ptr @nxp_c45_set_phy_mode._entry.21, section ".printk_index", align 4
@nxp_c45_set_phy_mode._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.9, ptr @.str.1, i32 1233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sgmii mode not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@nxp_c45_set_phy_mode._entry_ptr.26 = internal global ptr @nxp_c45_set_phy_mode._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx-internal-delay-ps\00", [43 x i8] zeroinitializer }, align 32
@nxp_c45_get_delays._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.1, i32 1151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tx-internal-delay-ps invalid value\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nxp_c45_get_delays\00", [45 x i8] zeroinitializer }, align 32
@nxp_c45_get_delays._entry_ptr = internal global ptr @nxp_c45_get_delays._entry, section ".printk_index", align 4
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx-internal-delay-ps\00", [43 x i8] zeroinitializer }, align 32
@nxp_c45_get_delays._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.1, i32 1167, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rx-internal-delay-ps invalid value\0A\00", [60 x i8] zeroinitializer }, align 32
@nxp_c45_get_delays._entry_ptr.33 = internal global ptr @nxp_c45_get_delays._entry.31, section ".printk_index", align 4
@nxp_c45_check_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.1, i32 1078, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"delay value smaller than %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nxp_c45_check_delay\00", [44 x i8] zeroinitializer }, align 32
@nxp_c45_check_delay._entry_ptr = internal global ptr @nxp_c45_check_delay._entry, section ".printk_index", align 4
@nxp_c45_check_delay._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.1, i32 1083, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"delay value higher than %u\0A\00", [36 x i8] zeroinitializer }, align 32
@nxp_c45_check_delay._entry_ptr.38 = internal global ptr @nxp_c45_check_delay._entry.36, section ".printk_index", align 4
@nxp_c45_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->ptp_lock\00", [16 x i8] zeroinitializer }, align 32
@nxp_c45_probe.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.40, ptr @.str.1, ptr @.str.41, i8 1, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nxp_c45_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"the phy does not support PTP\00", [35 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NXP C45 PHC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer }, align 32
@nxp_c45_ptp_pins = internal global { [12 x %struct.ptp_pin_desc], [288 x i8] } { [12 x %struct.ptp_pin_desc] [%struct.ptp_pin_desc { [64 x i8] c"nxp_c45_gpio0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.ptp_pin_desc { [64 x i8] c"nxp_c45_gpio1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.ptp_pin_desc { [64 x i8] c"nxp_c45_gpio2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.ptp_pin_desc { [64 x i8] c"nxp_c45_gpio3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.ptp_pin_desc { [64 x i8] c"nxp_c45_gpio4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.ptp_pin_desc { [64 x i8] c"nxp_c45_gpio5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.ptp_pin_desc { [64 x i8] c"nxp_c45_gpio6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.ptp_pin_desc { [64 x i8] c"nxp_c45_gpio7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.ptp_pin_desc { [64 x i8] c"nxp_c45_gpio8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.ptp_pin_desc { [64 x i8] c"nxp_c45_gpio9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.ptp_pin_desc { [64 x i8] c"nxp_c45_gpio10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.ptp_pin_desc { [64 x i8] c"nxp_c45_gpio11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11, i32 0, i32 0, [5 x i32] zeroinitializer }], [288 x i8] zeroinitializer }, align 32
@nxp_c45_perout_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.1, i32 537, ptr @.str.49, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"The period can be set only to 1 second.\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nxp_c45_perout_enable\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nxp_c45_perout_enable._entry_ptr = internal global ptr @nxp_c45_perout_enable._entry, section ".printk_index", align 4
@nxp_c45_perout_enable._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.48, ptr @.str.1, i32 543, ptr @.str.49, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"The start time is not configurable. Should be set to 0 seconds and 0 nanoseconds.\00", [46 x i8] zeroinitializer }, align 32
@nxp_c45_perout_enable._entry_ptr.52 = internal global ptr @nxp_c45_perout_enable._entry.50, section ".printk_index", align 4
@nxp_c45_perout_enable._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.48, ptr @.str.1, i32 549, ptr @.str.49, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"The phase can be set only to 0 or 500000000 nanoseconds.\00", [39 x i8] zeroinitializer }, align 32
@nxp_c45_perout_enable._entry_ptr.55 = internal global ptr @nxp_c45_perout_enable._entry.53, section ".printk_index", align 4
@nxp_c45_process_txts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.1, i32 444, ptr @.str.49, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"the tx timestamp doesn't match with any skb\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nxp_c45_process_txts\00", [43 x i8] zeroinitializer }, align 32
@nxp_c45_process_txts._entry_ptr = internal global ptr @nxp_c45_process_txts._entry, section ".printk_index", align 4
@nxp_c45_setup_master_slave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.1, i32 1008, ptr @.str.49, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported Master/Slave mode\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nxp_c45_setup_master_slave\00", [37 x i8] zeroinitializer }, align 32
@nxp_c45_setup_master_slave._entry_ptr = internal global ptr @nxp_c45_setup_master_slave._entry, section ".printk_index", align 4
@nxp_c45_hw_stats = internal constant { [12 x %struct.nxp_c45_phy_stats], [48 x i8] } { [12 x %struct.nxp_c45_phy_stats] [%struct.nxp_c45_phy_stats { ptr @.str.60, i8 30, i16 -31920, i8 0, i16 -1 }, %struct.nxp_c45_phy_stats { ptr @.str.61, i8 30, i16 -31918, i8 8, i16 16128 }, %struct.nxp_c45_phy_stats { ptr @.str.62, i8 30, i16 -31918, i8 0, i16 63 }, %struct.nxp_c45_phy_stats { ptr @.str.63, i8 30, i16 -31917, i8 10, i16 -1024 }, %struct.nxp_c45_phy_stats { ptr @.str.64, i8 30, i16 -31917, i8 0, i16 1023 }, %struct.nxp_c45_phy_stats { ptr @.str.65, i8 30, i16 -22192, i8 0, i16 -1 }, %struct.nxp_c45_phy_stats { ptr @.str.66, i8 30, i16 -22190, i8 0, i16 -1 }, %struct.nxp_c45_phy_stats { ptr @.str.67, i8 30, i16 -22188, i8 0, i16 -1 }, %struct.nxp_c45_phy_stats { ptr @.str.68, i8 30, i16 -20530, i8 0, i16 63 }, %struct.nxp_c45_phy_stats { ptr @.str.69, i8 30, i16 -20529, i8 0, i16 63 }, %struct.nxp_c45_phy_stats { ptr @.str.70, i8 30, i16 -20528, i8 0, i16 511 }, %struct.nxp_c45_phy_stats { ptr @.str.71, i8 30, i16 -20527, i8 0, i16 511 }], [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"phy_symbol_error_cnt\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"phy_link_status_drop_cnt\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"phy_link_availability_drop_cnt\00", [33 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phy_link_loss_cnt\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"phy_link_failure_cnt\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"r_good_frame_cnt\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"r_bad_frame_cnt\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"r_rxer_frame_cnt\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_preamble_count\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_preamble_count\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_ipg_length\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_ipg_length\00", [18 x i8] zeroinitializer }, align 32
@str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"phy_symbol_error_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"phy_link_status_drop_cnt\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"phy_link_availability_drop_cnt\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"phy_link_loss_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"phy_link_failure_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"r_good_frame_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"r_bad_frame_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.78 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"r_rxer_frame_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rx_preamble_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tx_preamble_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.81 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rx_ipg_length\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tx_ipg_length\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.83 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 4, i64 6, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@__sancov_gen_cov_switch_values.86 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 500000000]
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"nxp_c45_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1340, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1343, i32 13 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 940, i32 9 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1254, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1180, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1185, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1196, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1209, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1217, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1225, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1233, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1143, i32 13 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1150, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1159, i32 13 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1166, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1078, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1083, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1313, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1319, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1984, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 156, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 663, i32 12 }
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"nxp_c45_ptp_pins\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 626, i32 28 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 537, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 543, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 549, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 443, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1008, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"nxp_c45_hw_stats\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 808, i32 39 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 809, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 811, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 813, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 815, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 817, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 819, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 821, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 823, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 825, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 827, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 829, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.309 = private constant [37 x i8] c"../drivers/net/phy/nxp-c45-tja11xx.c\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 831, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [7 x i8] c"str.72\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [7 x i8] c"str.73\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [7 x i8] c"str.74\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [7 x i8] c"str.75\00", align 1
@___asan_gen_.316 = private unnamed_addr constant [7 x i8] c"str.76\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [7 x i8] c"str.77\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [7 x i8] c"str.78\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [7 x i8] c"str.79\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [7 x i8] c"str.80\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [7 x i8] c"str.81\00", align 1
@___asan_gen_.322 = private unnamed_addr constant [7 x i8] c"str.82\00", align 1
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_description352, ptr @__UNIQUE_ID_file353, ptr @__UNIQUE_ID_license354, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_nxp_c45_tja11xx__350_1365_phy_module_init6, ptr @nxp_c45_check_delay._entry, ptr @nxp_c45_check_delay._entry.36, ptr @nxp_c45_check_delay._entry_ptr, ptr @nxp_c45_check_delay._entry_ptr.38, ptr @nxp_c45_config_init._entry, ptr @nxp_c45_config_init._entry_ptr, ptr @nxp_c45_get_delays._entry, ptr @nxp_c45_get_delays._entry.31, ptr @nxp_c45_get_delays._entry_ptr, ptr @nxp_c45_get_delays._entry_ptr.33, ptr @nxp_c45_perout_enable._entry, ptr @nxp_c45_perout_enable._entry.50, ptr @nxp_c45_perout_enable._entry.53, ptr @nxp_c45_perout_enable._entry_ptr, ptr @nxp_c45_perout_enable._entry_ptr.52, ptr @nxp_c45_perout_enable._entry_ptr.55, ptr @nxp_c45_process_txts._entry, ptr @nxp_c45_process_txts._entry_ptr, ptr @nxp_c45_set_phy_mode._entry, ptr @nxp_c45_set_phy_mode._entry.12, ptr @nxp_c45_set_phy_mode._entry.15, ptr @nxp_c45_set_phy_mode._entry.18, ptr @nxp_c45_set_phy_mode._entry.21, ptr @nxp_c45_set_phy_mode._entry.24, ptr @nxp_c45_set_phy_mode._entry_ptr, ptr @nxp_c45_set_phy_mode._entry_ptr.14, ptr @nxp_c45_set_phy_mode._entry_ptr.17, ptr @nxp_c45_set_phy_mode._entry_ptr.20, ptr @nxp_c45_set_phy_mode._entry_ptr.23, ptr @nxp_c45_set_phy_mode._entry_ptr.26, ptr @nxp_c45_setup_master_slave._entry, ptr @nxp_c45_setup_master_slave._entry_ptr, ptr @nxp_c45_soft_reset._entry, ptr @nxp_c45_soft_reset._entry_ptr, ptr @phy_module_exit, ptr @nxp_c45_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @nxp_c45_probe.__key, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @skb_queue_head_init.__key, ptr @.str.42, ptr @.str.45, ptr @.str.46, ptr @nxp_c45_ptp_pins, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @nxp_c45_hw_stats, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @str, ptr @str.72, ptr @str.73, ptr @str.74, ptr @str.75, ptr @str.76, ptr @str.77, ptr @str.78, ptr @str.79, ptr @str.80, ptr @str.81, ptr @str.82], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_driver to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_config_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_set_phy_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_set_phy_mode._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_set_phy_mode._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_set_phy_mode._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_set_phy_mode._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_set_phy_mode._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_get_delays._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_get_delays._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_check_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_check_delay._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_ptp_pins to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_perout_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_perout_enable._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_perout_enable._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_process_txts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_setup_master_slave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_c45_hw_stats to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.78 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.81 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @nxp_c45_driver, i32 noundef 1, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phy_drivers_unregister(ptr noundef nonnull @nxp_c45_driver, i32 noundef 1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_c45_soft_reset(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 64, i16 noundef zeroext -32768) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call1, 240000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 943) #9
  %call1157 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 64) #9
  %0 = and i32 %call1157, -2147450880
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %0)
  %.not58 = icmp eq i32 %0, 32768
  br i1 %.not58, label %if.end.land.lhs.true_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then24.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call17 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %if.then20, label %if.then24

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 64) #9
  %.pre = and i32 %call21, -2147450880
  br label %for.end

if.then24:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 5001, i32 noundef 20000, i32 noundef 2) #9
  %call11 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 64) #9
  %1 = and i32 %call11, -2147450880
  %.not = icmp eq i32 %1, 32768
  br i1 %.not, label %if.then24.land.lhs.true_crit_edge, label %if.then24.for.end_crit_edge

if.then24.for.end_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then24.land.lhs.true_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %if.then24.for.end_crit_edge, %if.then20, %if.end.for.end_crit_edge
  %.pre-phi = phi i32 [ %0, %if.end.for.end_crit_edge ], [ %.pre, %if.then20 ], [ %1, %if.then24.for.end_crit_edge ]
  %ret.0 = phi i32 [ %call1157, %if.end.for.end_crit_edge ], [ %call21, %if.then20 ], [ %call11, %if.then24.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp28 = icmp slt i32 %ret.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %.pre-phi)
  %.not55 = icmp eq i32 %.pre-phi, 32768
  %2 = select i1 %.not55, i32 -110, i32 0
  %__ret.0 = select i1 %cmp28, i32 %ret.0, i32 %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool32.not = icmp eq i32 %__ret.0, 0
  br i1 %tobool32.not, label %for.end.cleanup_crit_edge, label %do.end36

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end36:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %__ret.0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %__ret.0, %do.end36 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_c45_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 64, i16 noundef zeroext 24576) #9
  tail call void @usleep_range_state(i32 noundef 400, i32 noundef 450, i32 noundef 2) #9
  %call1.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 32832, i16 noundef zeroext 16384) #9
  %call2.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 33024, i16 noundef zeroext 16384) #9
  %call3.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 44032, i16 noundef zeroext 16384) #9
  %call1 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 504, i16 noundef zeroext 1) #9
  %call2 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 505, i16 noundef zeroext 2) #9
  %call.i37 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 33032, i16 noundef zeroext 0, i16 noundef zeroext 1) #9
  %call.i38 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 33618, i16 noundef zeroext 0, i16 noundef zeroext -32768) #9
  %call.i39 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 45006, i16 noundef zeroext 0, i16 noundef zeroext -32768) #9
  %call.i40 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 45007, i16 noundef zeroext 0, i16 noundef zeroext -32768) #9
  %call.i41 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 45008, i16 noundef zeroext 0, i16 noundef zeroext -32768) #9
  %call.i42 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 45009, i16 noundef zeroext 0, i16 noundef zeroext -32768) #9
  %call9 = tail call fastcc i32 @nxp_c45_set_phy_mode(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %autoneg, align 8
  %bf.clear = and i16 %bf.load, -9
  store i16 %bf.clear, ptr %autoneg, align 8
  %call13 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 4356, i16 noundef zeroext 15) #9
  %call.i43 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 4373, i16 noundef zeroext 1, i16 noundef zeroext 0) #9
  %call15 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 4429, i16 noundef zeroext 2) #9
  %call.i44 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 32840, i16 noundef zeroext 0, i16 noundef zeroext 8) #9
  %call.i.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 33024, i16 noundef zeroext 0, i16 noundef zeroext 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end12 ], [ %call9, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_c45_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 384, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_queue = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 4
  %lock.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %tx_queue, ptr %tx_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tx_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %qlen.i.i, align 4
  %rx_queue = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 5
  %lock.i48 = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 5, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i48, ptr noundef nonnull @.str.42, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %3 = ptrtoint ptr %rx_queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rx_queue, ptr %rx_queue, align 4
  %prev.i.i49 = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i49 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rx_queue, ptr %prev.i.i49, align 4
  %qlen.i.i50 = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %qlen.i.i50 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i50, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %phydev, ptr %call.i, align 8
  %priv2 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %7 = ptrtoint ptr %priv2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %priv2, align 8
  %ptp_lock = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %ptp_lock, ptr noundef nonnull @.str.39, ptr noundef nonnull @nxp_c45_probe.__key) #9
  %call3 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 32838) #9
  %and = and i32 %call3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body8, label %if.end22

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxp_c45_probe.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxp_c45_probe, %if.then16)) #9
          to label %cleanup [label %if.then16], !srcloc !159

if.then16:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nxp_c45_probe.__UNIQUE_ID_ddebug348, ptr noundef %phydev, ptr noundef nonnull @.str.41) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mii_ts = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %mii_ts to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nxp_c45_rxtstamp, ptr %mii_ts, align 4
  %txtstamp = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %txtstamp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nxp_c45_txtstamp, ptr %txtstamp, align 4
  %hwtstamp = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %hwtstamp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nxp_c45_hwtstamp, ptr %hwtstamp, align 4
  %ts_info = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %ts_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nxp_c45_ts_info, ptr %ts_info, align 4
  %mii_ts27 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 37
  %12 = ptrtoint ptr %mii_ts27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mii_ts, ptr %mii_ts27, align 4
  %caps.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %caps.i, align 8
  %.compoundliteral.sroa.2.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 1
  %14 = call ptr @memcpy(ptr %.compoundliteral.sroa.2.0.caps.sroa_idx.i, ptr @.str.46, i32 32)
  %.compoundliteral.sroa.3.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %.compoundliteral.sroa.3.0.caps.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16666666, ptr %.compoundliteral.sroa.3.0.caps.sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %.compoundliteral.sroa.4.0.caps.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %.compoundliteral.sroa.4.0.caps.sroa_idx.i, align 8
  %.compoundliteral.sroa.5.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 4
  %17 = ptrtoint ptr %.compoundliteral.sroa.5.0.caps.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %.compoundliteral.sroa.5.0.caps.sroa_idx.i, align 4
  %.compoundliteral.sroa.6.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 5
  %18 = ptrtoint ptr %.compoundliteral.sroa.6.0.caps.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %.compoundliteral.sroa.6.0.caps.sroa_idx.i, align 8
  %.compoundliteral.sroa.7.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 6
  %19 = ptrtoint ptr %.compoundliteral.sroa.7.0.caps.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 12, ptr %.compoundliteral.sroa.7.0.caps.sroa_idx.i, align 4
  %.compoundliteral.sroa.8.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 7
  %20 = ptrtoint ptr %.compoundliteral.sroa.8.0.caps.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %.compoundliteral.sroa.8.0.caps.sroa_idx.i, align 8
  %.compoundliteral.sroa.9.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %.compoundliteral.sroa.9.0.caps.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @nxp_c45_ptp_pins, ptr %.compoundliteral.sroa.9.0.caps.sroa_idx.i, align 4
  %.compoundliteral.sroa.10.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 9
  %22 = ptrtoint ptr %.compoundliteral.sroa.10.0.caps.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @nxp_c45_ptp_adjfine, ptr %.compoundliteral.sroa.10.0.caps.sroa_idx.i, align 8
  %.compoundliteral.sroa.11.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 10
  %23 = ptrtoint ptr %.compoundliteral.sroa.11.0.caps.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %.compoundliteral.sroa.11.0.caps.sroa_idx.i, align 4
  %.compoundliteral.sroa.12.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 11
  %24 = ptrtoint ptr %.compoundliteral.sroa.12.0.caps.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %.compoundliteral.sroa.12.0.caps.sroa_idx.i, align 8
  %.compoundliteral.sroa.13.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 12
  %25 = ptrtoint ptr %.compoundliteral.sroa.13.0.caps.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @nxp_c45_ptp_adjtime, ptr %.compoundliteral.sroa.13.0.caps.sroa_idx.i, align 4
  %.compoundliteral.sroa.14.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 13
  %26 = ptrtoint ptr %.compoundliteral.sroa.14.0.caps.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %.compoundliteral.sroa.14.0.caps.sroa_idx.i, align 8
  %.compoundliteral.sroa.15.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 14
  %27 = ptrtoint ptr %.compoundliteral.sroa.15.0.caps.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @nxp_c45_ptp_gettimex64, ptr %.compoundliteral.sroa.15.0.caps.sroa_idx.i, align 4
  %.compoundliteral.sroa.16.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 15
  %28 = ptrtoint ptr %.compoundliteral.sroa.16.0.caps.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %.compoundliteral.sroa.16.0.caps.sroa_idx.i, align 8
  %.compoundliteral.sroa.17.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 16
  %29 = ptrtoint ptr %.compoundliteral.sroa.17.0.caps.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @nxp_c45_ptp_settime64, ptr %.compoundliteral.sroa.17.0.caps.sroa_idx.i, align 4
  %.compoundliteral.sroa.18.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 17
  %30 = ptrtoint ptr %.compoundliteral.sroa.18.0.caps.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @nxp_c45_ptp_enable, ptr %.compoundliteral.sroa.18.0.caps.sroa_idx.i, align 8
  %.compoundliteral.sroa.19.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 18
  %31 = ptrtoint ptr %.compoundliteral.sroa.19.0.caps.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @nxp_c45_ptp_verify_pin, ptr %.compoundliteral.sroa.19.0.caps.sroa_idx.i, align 4
  %.compoundliteral.sroa.20.0.caps.sroa_idx.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 3, i32 19
  %32 = ptrtoint ptr %.compoundliteral.sroa.20.0.caps.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @nxp_c45_do_aux_work, ptr %.compoundliteral.sroa.20.0.caps.sroa_idx.i, align 8
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 8
  %call.i51 = tail call ptr @ptp_clock_register(ptr noundef %caps.i, ptr noundef %34) #9
  %ptp_clock.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %call.i, i32 0, i32 2
  %35 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i51, ptr %ptp_clock.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i51, inttoptr (i32 -4096 to ptr)
  %36 = ptrtoint ptr %call.i51 to i32
  %tobool.not.i = icmp eq ptr %call.i51, null
  %..i = select i1 %tobool.not.i, i32 -12, i32 0
  %retval.0.i52 = select i1 %cmp.i.i, i32 %36, i32 %..i
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then16, %do.body8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i52, %if.end22 ], [ 0, %if.then16 ], [ 0, %do.body8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_pma_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_pma_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_c45_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master_slave_set.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 14
  %0 = ptrtoint ptr %master_slave_set.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %master_slave_set.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.end.i [
    i8 4, label %entry.sw.bb.i_crit_edge
    i8 2, label %entry.sw.bb.i_crit_edge1
    i8 3, label %entry.sw.bb1.i_crit_edge
    i8 5, label %entry.sw.bb1.i_crit_edge2
    i8 1, label %entry.nxp_c45_setup_master_slave.exit_crit_edge
    i8 0, label %entry.nxp_c45_setup_master_slave.exit_crit_edge3
  ]

entry.nxp_c45_setup_master_slave.exit_crit_edge3: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nxp_c45_setup_master_slave.exit

entry.nxp_c45_setup_master_slave.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nxp_c45_setup_master_slave.exit

entry.sw.bb1.i_crit_edge2:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

entry.sw.bb.i_crit_edge1:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge1
  %call.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 2100, i16 noundef zeroext -16384) #9
  br label %nxp_c45_setup_master_slave.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge2
  %call2.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 2100, i16 noundef zeroext -32768) #9
  br label %nxp_c45_setup_master_slave.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.58) #12
  br label %nxp_c45_setup_master_slave.exit

nxp_c45_setup_master_slave.exit:                  ; preds = %do.end.i, %sw.bb1.i, %sw.bb.i, %entry.nxp_c45_setup_master_slave.exit_crit_edge, %entry.nxp_c45_setup_master_slave.exit_crit_edge3
  %retval.0.i = phi i32 [ -95, %do.end.i ], [ 0, %entry.nxp_c45_setup_master_slave.exit_crit_edge ], [ 0, %entry.nxp_c45_setup_master_slave.exit_crit_edge3 ], [ 0, %sw.bb1.i ], [ 0, %sw.bb.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_c45_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_c45_read_status(ptr noundef %phydev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %master_slave_get.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 13
  %0 = ptrtoint ptr %master_slave_get.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %master_slave_get.i, align 4
  %master_slave_state.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 15
  %1 = ptrtoint ptr %master_slave_state.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %master_slave_state.i, align 2
  %call.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 2100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %call.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i8 5, i8 4
  %.16.i = select i1 %tobool.not.i, i8 3, i8 2
  %2 = ptrtoint ptr %master_slave_get.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %..i, ptr %master_slave_get.i, align 4
  %3 = ptrtoint ptr %master_slave_state.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.16.i, ptr %master_slave_state.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.i ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_c45_config_intr(ptr noundef %phydev) #2 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 32929, i16 noundef zeroext 0, i16 noundef zeroext 2) #9
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i4 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 32929, i16 noundef zeroext 2, i16 noundef zeroext 0) #9
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call.i4, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_c45_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  %hwts = alloca %struct.nxp_c45_hwts, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hwts) #9
  %2 = call ptr @memset(ptr %hwts, i32 255, i32 16)
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 32930) #9
  %and = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 32928, i16 noundef zeroext 2) #9
  tail call void @phy_trigger_machine(ptr noundef %phydev) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call3 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 4402) #9
  %and4 = and i32 %call3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %while.cond.preheader

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

while.cond.preheader:                             ; preds = %if.end
  %call715 = call fastcc zeroext i1 @nxp_c45_get_hwtxts(ptr noundef %1, ptr noundef nonnull %hwts)
  br i1 %call715, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.end8_crit_edge

while.cond.preheader.if.end8_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  call fastcc void @nxp_c45_process_txts(ptr noundef %1, ptr noundef nonnull %hwts)
  %call7 = call fastcc zeroext i1 @nxp_c45_get_hwtxts(ptr noundef %1, ptr noundef nonnull %hwts)
  br i1 %call7, label %while.body.while.body_crit_edge, label %while.body.if.end8_crit_edge

while.body.if.end8_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end8:                                          ; preds = %while.body.if.end8_crit_edge, %while.cond.preheader.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end.if.end8_crit_edge ], [ 1, %while.cond.preheader.if.end8_crit_edge ], [ 1, %while.body.if.end8_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hwts) #9
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_c45_cable_test_start(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 33584, i16 noundef zeroext -16384) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_c45_cable_test_get_status(ptr noundef %phydev, ptr nocapture noundef writeonly %finished) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 33584) #9
  %and = and i32 %call, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %finished, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %finished, align 1
  %conv = and i32 %call, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv)
  %2 = icmp ult i32 %conv, 3
  %switch.cast = trunc i32 %conv to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 131841, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %.sink = select i1 %2, i8 %switch.masked, i8 0
  %call8 = tail call i32 @ethnl_cable_test_result(ptr noundef %phydev, i8 noundef zeroext 0, i8 noundef zeroext %.sink) #9
  %call.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 33584, i16 noundef zeroext -32768, i16 noundef zeroext 0) #9
  %call.i.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 33024, i16 noundef zeroext 0, i16 noundef zeroext 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call.i.i, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nxp_c45_get_sset_count(ptr nocapture noundef readnone %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 12
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nxp_c45_get_strings(ptr nocapture noundef readnone %phydev, ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %data, ptr @str, i32 32)
  %add.ptr.1 = getelementptr i8, ptr %data, i32 32
  %1 = call ptr @memcpy(ptr %add.ptr.1, ptr @str.72, i32 32)
  %add.ptr.2 = getelementptr i8, ptr %data, i32 64
  %2 = call ptr @memcpy(ptr %add.ptr.2, ptr @str.73, i32 32)
  %add.ptr.3 = getelementptr i8, ptr %data, i32 96
  %3 = call ptr @memcpy(ptr %add.ptr.3, ptr @str.74, i32 32)
  %add.ptr.4 = getelementptr i8, ptr %data, i32 128
  %4 = call ptr @memcpy(ptr %add.ptr.4, ptr @str.75, i32 32)
  %add.ptr.5 = getelementptr i8, ptr %data, i32 160
  %5 = call ptr @memcpy(ptr %add.ptr.5, ptr @str.76, i32 32)
  %add.ptr.6 = getelementptr i8, ptr %data, i32 192
  %6 = call ptr @memcpy(ptr %add.ptr.6, ptr @str.77, i32 32)
  %add.ptr.7 = getelementptr i8, ptr %data, i32 224
  %7 = call ptr @memcpy(ptr %add.ptr.7, ptr @str.78, i32 32)
  %add.ptr.8 = getelementptr i8, ptr %data, i32 256
  %8 = call ptr @memcpy(ptr %add.ptr.8, ptr @str.79, i32 32)
  %add.ptr.9 = getelementptr i8, ptr %data, i32 288
  %9 = call ptr @memcpy(ptr %add.ptr.9, ptr @str.80, i32 32)
  %add.ptr.10 = getelementptr i8, ptr %data, i32 320
  %10 = call ptr @memcpy(ptr %add.ptr.10, ptr @str.81, i32 32)
  %add.ptr.11 = getelementptr i8, ptr %data, i32 352
  %11 = call ptr @memcpy(ptr %add.ptr.11, ptr @str.82, i32 32)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nxp_c45_get_stats(ptr noundef %phydev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.024 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %mmd = getelementptr [12 x %struct.nxp_c45_phy_stats], ptr @nxp_c45_hw_stats, i32 0, i32 %i.024, i32 1
  %0 = ptrtoint ptr %mmd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mmd, align 4
  %conv = zext i8 %1 to i32
  %reg = getelementptr [12 x %struct.nxp_c45_phy_stats], ptr @nxp_c45_hw_stats, i32 0, i32 %i.024, i32 2
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg, align 2
  %conv2 = zext i16 %3 to i32
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef %conv, i32 noundef %conv2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5 = getelementptr i64, ptr %data, i32 %i.024
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %arrayidx5, align 8
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %mask = getelementptr [12 x %struct.nxp_c45_phy_stats], ptr @nxp_c45_hw_stats, i32 0, i32 %i.024, i32 4
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mask, align 2
  %conv7 = zext i16 %6 to i32
  %and = and i32 %call, %conv7
  %7 = zext i32 %and to i64
  %arrayidx9 = getelementptr i64, ptr %data, i32 %i.024
  %off = getelementptr [12 x %struct.nxp_c45_phy_stats], ptr @nxp_c45_hw_stats, i32 0, i32 %i.024, i32 3
  %8 = ptrtoint ptr %off to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %off, align 4
  %sh_prom = zext i8 %9 to i64
  %shr = lshr i64 %7, %sh_prom
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %shr, ptr %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_loopback(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_c45_get_sqi(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 33568) #9
  %and = and i32 %call, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %call, 7
  %retval.0 = select i1 %tobool.not, i32 -22, i32 %and1
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nxp_c45_get_sqi_max(ptr nocapture noundef readnone %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nxp_c45_set_phy_mode(ptr noundef %phydev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 44996) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxp_c45_set_phy_mode.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxp_c45_set_phy_mode, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !159

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nxp_c45_set_phy_mode.__UNIQUE_ID_ddebug347, ptr noundef %phydev, ptr noundef nonnull @.str.10, i32 noundef %call) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %1, label %do.end.cleanup_crit_edge [
    i32 9, label %sw.bb
    i32 10, label %do.end.sw.bb13_crit_edge
    i32 12, label %do.end.sw.bb13_crit_edge108
    i32 11, label %do.end.sw.bb13_crit_edge109
    i32 2, label %sw.bb28
    i32 6, label %sw.bb39
    i32 7, label %sw.bb50
    i32 4, label %sw.bb61
    i32 1, label %do.end.sw.epilog_crit_edge
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end.sw.bb13_crit_edge109:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

do.end.sw.bb13_crit_edge108:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

do.end.sw.bb13_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %and = and i32 %call, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end11:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 44998, i16 noundef zeroext 7) #9
  %call.i.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 45005, i16 noundef zeroext -32768, i16 noundef zeroext 0) #9
  %call.i3.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 45004, i16 noundef zeroext -32768, i16 noundef zeroext 0) #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end.sw.bb13_crit_edge, %do.end.sw.bb13_crit_edge108, %do.end.sw.bb13_crit_edge109
  %and14 = and i32 %call, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.end19, label %if.end22

do.end19:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end22:                                         ; preds = %sw.bb13
  %call23 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 44998, i16 noundef zeroext 7) #9
  %priv1.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %3 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1.i, align 8
  %5 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %interface, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %6, label %if.end22.if.end13.i_crit_edge [
    i32 10, label %if.end22.if.then.i_crit_edge
    i32 12, label %if.end22.if.then.i_crit_edge110
  ]

if.end22.if.then.i_crit_edge110:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end22.if.then.i_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end22.if.end13.i_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then.i:                                        ; preds = %if.end22.if.then.i_crit_edge, %if.end22.if.then.i_crit_edge110
  %tx_delay.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %4, i32 0, i32 9
  %call.i.i97 = tail call i32 @device_property_read_u32_array(ptr noundef %phydev, ptr noundef nonnull @.str.27, ptr noundef %tx_delay.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i97)
  %tobool.not.i = icmp eq i32 %call.i.i97, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.i.thread.i

if.end.i.thread.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %tx_delay.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2000, ptr %tx_delay.i, align 8
  br label %if.end13.i

if.end.i:                                         ; preds = %if.then.i
  %9 = ptrtoint ptr %tx_delay.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr.i = load i32, ptr %tx_delay.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1644, i32 %.pr.i)
  %cmp.i.i = icmp ult i32 %.pr.i, 1644
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.34, i32 noundef 1644) #12
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2260, i32 %.pr.i)
  %cmp1.i.i = icmp ugt i32 %.pr.i, 2260
  br i1 %cmp1.i.i, label %do.end4.i.i, label %if.end.i.i.if.end13.i_crit_edge

if.end.i.i.if.end13.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

do.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.37, i32 noundef 2260) #12
  br label %do.end.i

do.end.i:                                         ; preds = %do.end4.i.i, %do.end.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.28) #12
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i.i.if.end13.i_crit_edge, %if.end.i.thread.i, %if.end22.if.end13.i_crit_edge
  %10 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interface, align 4
  %12 = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %12)
  %switch.i = icmp eq i32 %12, 10
  br i1 %switch.i, label %if.then19.i, label %if.end13.i.if.end27_crit_edge

if.end13.i.if.end27_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then19.i:                                      ; preds = %if.end13.i
  %rx_delay.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %4, i32 0, i32 10
  %call.i60.i = tail call i32 @device_property_read_u32_array(ptr noundef %phydev, ptr noundef nonnull @.str.30, ptr noundef %rx_delay.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %tobool23.not.i = icmp eq i32 %call.i60.i, 0
  br i1 %tobool23.not.i, label %if.end26.i, label %if.end.i64.thread.i

if.end.i64.thread.i:                              ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %rx_delay.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2000, ptr %rx_delay.i, align 4
  br label %if.end27

if.end26.i:                                       ; preds = %if.then19.i
  %14 = ptrtoint ptr %rx_delay.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr72.i = load i32, ptr %rx_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1644, i32 %.pr72.i)
  %cmp.i61.i = icmp ult i32 %.pr72.i, 1644
  br i1 %cmp.i61.i, label %do.end.i62.i, label %if.end.i64.i

do.end.i62.i:                                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.34, i32 noundef 1644) #12
  br label %do.end33.i

if.end.i64.i:                                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2260, i32 %.pr72.i)
  %cmp1.i63.i = icmp ugt i32 %.pr72.i, 2260
  br i1 %cmp1.i63.i, label %do.end4.i65.i, label %if.end.i64.i.if.end27_crit_edge

if.end.i64.i.if.end27_crit_edge:                  ; preds = %if.end.i64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

do.end4.i65.i:                                    ; preds = %if.end.i64.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.37, i32 noundef 2260) #12
  br label %do.end33.i

do.end33.i:                                       ; preds = %do.end4.i65.i, %do.end.i62.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end27:                                         ; preds = %if.end.i64.i.if.end27_crit_edge, %if.end.i64.thread.i, %if.end13.i.if.end27_crit_edge
  %15 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv1.i, align 8
  %rx_delay3.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %rx_delay3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_delay3.i, align 4
  %19 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %interface, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %20, label %if.else.i [
    i32 10, label %if.end27.if.then.i101_crit_edge
    i32 12, label %if.end27.if.then.i101_crit_edge111
  ]

if.end27.if.then.i101_crit_edge111:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i101

if.end27.if.then.i101_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i101

if.then.i101:                                     ; preds = %if.end27.if.then.i101_crit_edge, %if.end27.if.then.i101_crit_edge111
  %tx_delay2.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %16, i32 0, i32 9
  %22 = ptrtoint ptr %tx_delay2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_delay2.i, align 8
  %24 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 6558842337318951686, i64 8000) #13, !srcloc !160
  %25 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6558842337318951686, i64 8000, i64 %24) #13, !srcloc !161
  %div158.i.i189.i = lshr i64 %25, 7
  %conv9.i = trunc i64 %div158.i.i189.i to i32
  %div172.i.i.i = udiv i32 %23, %conv9.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  %mul.i.i = mul nuw nsw i64 %conv173.i.i.i, 10
  %sub.i.i = add nsw i64 %mul.i.i, -738
  %26 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2049638230412172401, i64 %sub.i.i) #13, !srcloc !160
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2049638230412172401, i64 %sub.i.i, i64 %26, i32 0) #13, !srcloc !162
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %27, 0
  %div158.i.i3.i.i = lshr i64 %asmresult10.i.i.i.i.i, 3
  %28 = trunc i64 %div158.i.i3.i.i to i16
  %conv12.i = or i16 %28, -32768
  %call13.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 45005, i16 noundef zeroext %conv12.i) #9
  br label %if.end.i104

if.else.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i102 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 45005, i16 noundef zeroext -32768, i16 noundef zeroext 0) #9
  br label %if.end.i104

if.end.i104:                                      ; preds = %if.else.i, %if.then.i101
  %29 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %interface, align 4
  %31 = and i32 %30, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %31)
  %switch.i103 = icmp eq i32 %31, 10
  br i1 %switch.i103, label %if.then22.i, label %if.else30.i

if.then22.i:                                      ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #11
  %32 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 6558842337318951686, i64 8000) #13, !srcloc !160
  %33 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6558842337318951686, i64 8000, i64 %32) #13, !srcloc !161
  %div158.i.i70190.i = lshr i64 %33, 7
  %conv24.i = trunc i64 %div158.i.i70190.i to i32
  %div172.i.i178.i = udiv i32 %18, %conv24.i
  %conv173.i.i179.i = zext i32 %div172.i.i178.i to i64
  %mul.i182.i = mul nuw nsw i64 %conv173.i.i179.i, 10
  %sub.i183.i = add nsw i64 %mul.i182.i, -738
  %34 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2049638230412172401, i64 %sub.i183.i) #13, !srcloc !160
  %35 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2049638230412172401, i64 %sub.i183.i, i64 %34, i32 0) #13, !srcloc !162
  %asmresult10.i.i.i.i184.i = extractvalue { i64, i32 } %35, 0
  %div158.i.i3.i185.i = lshr i64 %asmresult10.i.i.i.i184.i, 3
  %36 = trunc i64 %div158.i.i3.i185.i to i16
  %conv28.i = or i16 %36, -32768
  %call29.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 45004, i16 noundef zeroext %conv28.i) #9
  br label %sw.epilog

if.else30.i:                                      ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #11
  %call.i186.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 45004, i16 noundef zeroext -32768, i16 noundef zeroext 0) #9
  br label %sw.epilog

sw.bb28:                                          ; preds = %do.end
  %and29 = and i32 %call, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.end34, label %if.end37

do.end34:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.16) #12
  br label %cleanup

if.end37:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 44998, i16 noundef zeroext 4) #9
  br label %sw.epilog

sw.bb39:                                          ; preds = %do.end
  %and40 = and i32 %call, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.end45, label %if.end48

do.end45:                                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.19) #12
  br label %cleanup

if.end48:                                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 44998, i16 noundef zeroext 260) #9
  br label %sw.epilog

sw.bb50:                                          ; preds = %do.end
  %and51 = and i32 %call, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.end56, label %if.end59

do.end56:                                         ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.22) #12
  br label %cleanup

if.end59:                                         ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  %call60 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 44998, i16 noundef zeroext 5) #9
  br label %sw.epilog

sw.bb61:                                          ; preds = %do.end
  %and62 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %do.end67, label %if.end70

do.end67:                                         ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.25) #12
  br label %cleanup

if.end70:                                         ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #11
  %call71 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 44998, i16 noundef zeroext 9) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end70, %if.end59, %if.end48, %if.end37, %if.else30.i, %if.then22.i, %if.end11, %do.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end67, %do.end56, %do.end45, %do.end34, %do.end33.i, %do.end.i, %do.end19, %do.end8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %do.end67 ], [ -22, %do.end56 ], [ -22, %do.end45 ], [ -22, %do.end34 ], [ -22, %do.end19 ], [ -22, %do.end8 ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end33.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nxp_c45_rxtstamp(ptr noundef %mii_ts, ptr noundef %skb, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ptp_parse_header(ptr noundef %skb, i32 noundef %type) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwts_rx = getelementptr i8, ptr %mii_ts, i32 344
  %0 = ptrtoint ptr %hwts_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwts_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %cb, align 8
  %rx_queue = getelementptr i8, ptr %mii_ts, i32 192
  tail call void @skb_queue_tail(ptr noundef %rx_queue, ptr noundef %skb) #9
  %ptp_clock = getelementptr i8, ptr %mii_ts, i32 24
  %3 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptp_clock, align 4
  %call5 = tail call i32 @ptp_schedule_worker(ptr noundef %4, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end3 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nxp_c45_txtstamp(ptr noundef %mii_ts, ptr noundef %skb, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hwts_tx = getelementptr i8, ptr %mii_ts, i32 340
  %0 = ptrtoint ptr %hwts_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwts_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %add.ptr = getelementptr i8, ptr %mii_ts, i32 -4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %type1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %type, ptr %type1, align 4
  %call = tail call ptr @ptp_parse_header(ptr noundef %skb, i32 noundef %type) #9
  %3 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %cb, align 8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_flags, align 1
  %8 = or i8 %7, 4
  store i8 %8, ptr %tx_flags, align 1
  %tx_queue = getelementptr i8, ptr %mii_ts, i32 136
  tail call void @skb_queue_tail(ptr noundef %tx_queue, ptr noundef %skb) #9
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %irq.i = getelementptr inbounds %struct.phy_device, ptr %10, i32 0, i32 25
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp slt i32 %12, 1
  br i1 %cmp.i, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %ptp_clock = getelementptr i8, ptr %mii_ts, i32 24
  %13 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ptp_clock, align 4
  %call7 = tail call i32 @ptp_schedule_worker(ptr noundef %14, i32 noundef 0) #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_c45_hwtstamp(ptr nocapture noundef %mii_ts, ptr nocapture noundef readonly %ifreq) #2 align 64 {
entry:
  %cfg = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mii_ts, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg) #9
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cfg, align 4, !annotation !163
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !163
  %5 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !163
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifreq, i32 0, i32 1
  %7 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 12, i32 -1226833920) #13, !srcloc !164
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !165

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cfg, i32 noundef 12) #9
  %10 = call i32 @llvm.read_register.i32(metadata !149) #9
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !166
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cfg, ptr noundef %8, i32 noundef 12) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !165

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %entry.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %cfg, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %16 = icmp ugt i32 %15, 1
  br i1 %16, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %hwts_tx = getelementptr i8, ptr %mii_ts, i32 340
  %17 = ptrtoint ptr %hwts_tx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %hwts_tx, align 8
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %5, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %19, label %if.end5.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 9, label %if.end5.sw.bb7_crit_edge
    i32 10, label %if.end5.sw.bb7_crit_edge67
    i32 11, label %if.end5.sw.bb7_crit_edge68
  ]

if.end5.sw.bb7_crit_edge68:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

if.end5.sw.bb7_crit_edge67:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

if.end5.sw.bb7_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %hwts_rx = getelementptr i8, ptr %mii_ts, i32 344
  %21 = ptrtoint ptr %hwts_rx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %hwts_rx, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end5.sw.bb7_crit_edge, %if.end5.sw.bb7_crit_edge67, %if.end5.sw.bb7_crit_edge68
  %hwts_rx8 = getelementptr i8, ptr %mii_ts, i32 344
  %22 = ptrtoint ptr %hwts_rx8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %hwts_rx8, align 4
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 9, ptr %5, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  %hwts_rx10 = getelementptr i8, ptr %mii_ts, i32 344
  %24 = ptrtoint ptr %hwts_rx10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hwts_rx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool11.not = icmp eq i32 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  %or.cond66 = select i1 %tobool11.not, i1 %tobool14.not, i1 false
  br i1 %or.cond66, label %if.else, label %if.then15

if.then15:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = call i32 @phy_write_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 4424, i16 noundef zeroext 15) #9
  %call.i = call i32 @phy_modify_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 36864, i16 noundef zeroext 2048, i16 noundef zeroext 0) #9
  br label %if.end20

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = call i32 @phy_write_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 4424, i16 noundef zeroext 0) #9
  %call.i59 = call i32 @phy_modify_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 36864, i16 noundef zeroext 0, i16 noundef zeroext 2048) #9
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then15
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 8
  %irq.i = getelementptr inbounds %struct.phy_device, ptr %27, i32 0, i32 25
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.i = icmp slt i32 %29, 1
  br i1 %cmp.i, label %if.end20.if.then.i53_crit_edge, label %if.end24

if.end20.if.then.i53_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i53

if.end24:                                         ; preds = %if.end20
  %30 = ptrtoint ptr %hwts_tx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hwts_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool26.not = icmp eq i32 %31, 0
  br i1 %tobool26.not, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call.i60 = call i32 @phy_modify_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 4401, i16 noundef zeroext 0, i16 noundef zeroext 1) #9
  br label %if.then.i53

if.else29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call.i61 = call i32 @phy_modify_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 4401, i16 noundef zeroext 1, i16 noundef zeroext 0) #9
  br label %if.then.i53

if.then.i53:                                      ; preds = %if.else29, %if.then27, %if.end20.if.then.i53_crit_edge
  %32 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ifr_ifru, align 4
  call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #9
  %call.i.i52 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i52, label %if.then.i53.cleanup_crit_edge, label %if.end.i.i56

if.then.i53.cleanup_crit_edge:                    ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i56:                                     ; preds = %if.then.i53
  %34 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %33, i32 12, i32 -1226833920) #13, !srcloc !169
  %asmresult.i.i54 = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i54)
  %cmp.i.i55 = icmp eq i32 %asmresult.i.i54, 0
  br i1 %cmp.i.i55, label %copy_to_user.exit, label %if.end.i.i56.cleanup_crit_edge

if.end.i.i56.cleanup_crit_edge:                   ; preds = %if.end.i.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i56
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i57 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cfg, i32 noundef 12) #9
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %33, ptr noundef nonnull %cfg, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool34.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool34.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i56.cleanup_crit_edge, %if.then.i53.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -34, %if.end.cleanup_crit_edge ], [ -34, %if.end5.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i53.cleanup_crit_edge ], [ -14, %if.end.i.i56.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_c45_ts_info(ptr nocapture noundef readonly %mii_ts, ptr nocapture noundef writeonly %ts_info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 1
  %0 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 69, ptr %so_timestamping, align 4
  %ptp_clock = getelementptr i8, ptr %mii_ts, i32 24
  %1 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptp_clock, align 4
  %call = tail call i32 @ptp_clock_index(ptr noundef %2) #9
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 2
  %3 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %phc_index, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 3
  %4 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 5
  %5 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3585, ptr %rx_filters, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_parse_header(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_schedule_worker(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_c45_ptp_adjfine(ptr noundef %ptp, i32 noundef %scaled_ppm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -32
  %add.i = add i32 %scaled_ppm, 1
  %conv.i = sext i32 %add.i to i64
  %mul.i = mul nsw i64 %conv.i, 125
  %shr.i = ashr i64 %mul.i, 13
  %conv1.i = trunc i64 %shr.i to i32
  %ptp_lock = getelementptr i8, ptr %ptp, i32 220
  tail call void @mutex_lock_nested(ptr noundef %ptp_lock, i32 noundef 0) #9
  %0 = tail call i32 @llvm.abs.i32(i32 %conv1.i, i1 true)
  %mul = sub nsw i32 0, %0
  %conv = zext i32 %mul to i64
  %mul3 = mul nuw nsw i64 %conv, 15
  %1 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul3, i32 0) #13, !srcloc !170
  %asmresult.i.i.i = extractvalue { i64, i32 } %1, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %1, 1
  %2 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul3, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #13, !srcloc !162
  %asmresult10.i.i.i = extractvalue { i64, i32 } %2, 0
  %div158.i.i24 = lshr i64 %asmresult10.i.i.i, 29
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %conv5 = trunc i64 %div158.i.i24 to i16
  %call6 = tail call i32 @phy_write_mmd(ptr noundef %4, i32 noundef 30, i32 noundef 4367, i16 noundef zeroext %conv5) #9
  %shr = lshr i64 %asmresult10.i.i.i, 45
  %5 = trunc i64 %shr to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %cmp25 = icmp slt i32 %conv1.i, 0
  %subns_inc_val.0.off0.v = select i1 %cmp25, i16 -32768, i16 -16384
  %subns_inc_val.0.off0 = or i16 %subns_inc_val.0.off0.v, %5
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %call10 = tail call i32 @phy_write_mmd(ptr noundef %7, i32 noundef 30, i32 noundef 4368, i16 noundef zeroext %subns_inc_val.0.off0) #9
  tail call void @mutex_unlock(ptr noundef %ptp_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_c45_ptp_adjtime(ptr noundef %ptp, i64 noundef %delta) #2 align 64 {
entry:
  %tmp1 = alloca %struct.timespec64, align 8
  %tmp2 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_lock = getelementptr i8, ptr %ptp, i32 220
  tail call void @mutex_lock_nested(ptr noundef %ptp_lock, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp1) #9
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp1, i64 noundef %delta) #9
  %0 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %then.sroa.0.0.copyload5 = load i64, ptr %tmp1, align 8
  %then.sroa.5.0.tmp1.sroa_idx = getelementptr inbounds i8, ptr %tmp1, i32 8
  %1 = ptrtoint ptr %then.sroa.5.0.tmp1.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %1)
  %then.sroa.5.0.copyload6 = load i64, ptr %then.sroa.5.0.tmp1.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp1) #9
  %add.ptr.i = getelementptr i8, ptr %ptp, i32 -32
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %call.i = call i32 @phy_write_mmd(ptr noundef %3, i32 noundef 30, i32 noundef 4357, i16 noundef zeroext 4) #9
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %call2.i = call i32 @phy_read_mmd(ptr noundef %5, i32 noundef 30, i32 noundef 4362) #9
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call4.i = call i32 @phy_read_mmd(ptr noundef %7, i32 noundef 30, i32 noundef 4363) #9
  %shl.i = shl i32 %call4.i, 16
  %or.i = or i32 %shl.i, %call2.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %call7.i = call i32 @phy_read_mmd(ptr noundef %9, i32 noundef 30, i32 noundef 4364) #9
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %call9.i = call i32 @phy_read_mmd(ptr noundef %11, i32 noundef 30, i32 noundef 4365) #9
  %shl10.i = shl i32 %call9.i, 16
  %or13.i36 = or i32 %shl10.i, %call7.i
  %or13.i = sext i32 %or13.i36 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp2) #9
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %then.sroa.5.0.copyload6, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %12 = call ptr @memset(ptr %tmp2, i32 255, i32 16)
  %add.i = add i64 %then.sroa.0.0.copyload5, %or13.i
  %add3.i = add i32 %or.i, %rhs.sroa.2.8.extract.trunc.i
  %conv.i12 = sext i32 %add3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp2, i64 noundef %add.i, i64 noundef %conv.i12) #9
  %13 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load8_noabort(i32 %13)
  %now.sroa.0.0.copyload22 = load i64, ptr %tmp2, align 8
  %now.sroa.10.0.tmp2.sroa_idx = getelementptr inbounds i8, ptr %tmp2, i32 8
  %14 = ptrtoint ptr %now.sroa.10.0.tmp2.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %14)
  %now.sroa.10.0.copyload23 = load i64, ptr %now.sroa.10.0.tmp2.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp2) #9
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %now.sroa.10.8.extract.shift31 = lshr i64 %now.sroa.10.0.copyload23, 32
  %conv.i15 = trunc i64 %now.sroa.10.8.extract.shift31 to i16
  %call.i16 = call i32 @phy_write_mmd(ptr noundef %16, i32 noundef 30, i32 noundef 4358, i16 noundef zeroext %conv.i15) #9
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %sum.shift = lshr i64 %now.sroa.10.0.copyload23, 48
  %conv3.i = trunc i64 %sum.shift to i16
  %call4.i17 = call i32 @phy_write_mmd(ptr noundef %18, i32 noundef 30, i32 noundef 4359, i16 noundef zeroext %conv3.i) #9
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %conv6.i = trunc i64 %now.sroa.0.0.copyload22 to i16
  %call7.i18 = call i32 @phy_write_mmd(ptr noundef %20, i32 noundef 30, i32 noundef 4360, i16 noundef zeroext %conv6.i) #9
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  %23 = lshr i64 %now.sroa.0.0.copyload22, 16
  %conv11.i19 = trunc i64 %23 to i16
  %call12.i = call i32 @phy_write_mmd(ptr noundef %22, i32 noundef 30, i32 noundef 4361, i16 noundef zeroext %conv11.i19) #9
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %call14.i = call i32 @phy_write_mmd(ptr noundef %25, i32 noundef 30, i32 noundef 4357, i16 noundef zeroext 1) #9
  call void @mutex_unlock(ptr noundef %ptp_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_c45_ptp_gettimex64(ptr noundef %ptp, ptr nocapture noundef %ts, ptr nocapture noundef readnone %sts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_lock = getelementptr i8, ptr %ptp, i32 220
  tail call void @mutex_lock_nested(ptr noundef %ptp_lock, i32 noundef 0) #9
  %add.ptr.i = getelementptr i8, ptr %ptp, i32 -32
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %call.i = tail call i32 @phy_write_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 4357, i16 noundef zeroext 4) #9
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %call2.i = tail call i32 @phy_read_mmd(ptr noundef %3, i32 noundef 30, i32 noundef 4362) #9
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2.i, ptr %tv_nsec.i, align 8
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %call4.i = tail call i32 @phy_read_mmd(ptr noundef %6, i32 noundef 30, i32 noundef 4363) #9
  %shl.i = shl i32 %call4.i, 16
  %7 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tv_nsec.i, align 8
  %or.i = or i32 %8, %shl.i
  store i32 %or.i, ptr %tv_nsec.i, align 8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %call7.i = tail call i32 @phy_read_mmd(ptr noundef %10, i32 noundef 30, i32 noundef 4364) #9
  %conv.i = sext i32 %call7.i to i64
  %11 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv.i, ptr %ts, align 8
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %call9.i = tail call i32 @phy_read_mmd(ptr noundef %13, i32 noundef 30, i32 noundef 4365) #9
  %shl10.i = shl i32 %call9.i, 16
  %conv11.i = sext i32 %shl10.i to i64
  %14 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ts, align 8
  %or13.i = or i64 %15, %conv11.i
  store i64 %or13.i, ptr %ts, align 8
  tail call void @mutex_unlock(ptr noundef %ptp_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_c45_ptp_settime64(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_lock = getelementptr i8, ptr %ptp, i32 220
  tail call void @mutex_lock_nested(ptr noundef %ptp_lock, i32 noundef 0) #9
  %add.ptr.i = getelementptr i8, ptr %ptp, i32 -32
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = trunc i32 %3 to i16
  %call.i = tail call i32 @phy_write_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 4358, i16 noundef zeroext %conv.i) #9
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %6 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tv_nsec.i, align 8
  %8 = lshr i32 %7, 16
  %conv3.i = trunc i32 %8 to i16
  %call4.i = tail call i32 @phy_write_mmd(ptr noundef %5, i32 noundef 30, i32 noundef 4359, i16 noundef zeroext %conv3.i) #9
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %11 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ts, align 8
  %conv6.i = trunc i64 %12 to i16
  %call7.i = tail call i32 @phy_write_mmd(ptr noundef %10, i32 noundef 30, i32 noundef 4360, i16 noundef zeroext %conv6.i) #9
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %15 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ts, align 8
  %17 = lshr i64 %16, 16
  %conv11.i = trunc i64 %17 to i16
  %call12.i = tail call i32 @phy_write_mmd(ptr noundef %14, i32 noundef 30, i32 noundef 4361, i16 noundef zeroext %conv11.i) #9
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %call14.i = tail call i32 @phy_write_mmd(ptr noundef %19, i32 noundef 30, i32 noundef 4357, i16 noundef zeroext 1) #9
  tail call void @mutex_unlock(ptr noundef %ptp_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_c45_ptp_enable(ptr nocapture noundef %ptp, ptr nocapture noundef readonly %req, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -32
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.ptp_extts_request, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %tobool.not.i = icmp ugt i32 %5, 15
  %6 = and i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %.not.i = icmp eq i32 %6, 6
  %or.cond.i = or i1 %tobool.not.i, %.not.i
  br i1 %or.cond.i, label %sw.bb.cleanup_crit_edge, label %if.end8.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i:                                        ; preds = %sw.bb
  %ptp_clock.i = getelementptr i8, ptr %ptp, i32 -4
  %7 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptp_clock.i, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  %call.i = tail call i32 @ptp_find_pin(ptr noundef %8, i32 noundef 1, i32 noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end8.i.cleanup_crit_edge, label %if.end10.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool11.not.i = icmp eq i32 %on, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %add.i.i = add nuw i32 %call.i, 11328
  %call.i.i = tail call i32 @phy_write_mmd(ptr noundef %12, i32 noundef 30, i32 noundef %add.i.i, i16 noundef zeroext 0) #9
  %extts13.i = getelementptr i8, ptr %ptp, i32 348
  %13 = ptrtoint ptr %extts13.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %extts13.i, align 4
  br label %cleanup

if.end14.i:                                       ; preds = %if.end10.i
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and16.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end20.i_crit_edge, label %if.then18.i

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 8
  %call.i49.i = tail call i32 @phy_modify_mmd(ptr noundef %17, i32 noundef 30, i32 noundef 4354, i16 noundef zeroext 2, i16 noundef zeroext 0) #9
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.end14.i.if.end20.i_crit_edge
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and22.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end20.i.if.end27.i_crit_edge, label %if.then24.i

if.end20.i.if.end27.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  %call.i50.i = tail call i32 @phy_modify_mmd(ptr noundef %21, i32 noundef 30, i32 noundef 4354, i16 noundef zeroext 0, i16 noundef zeroext 2) #9
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end20.i.if.end27.i_crit_edge
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 8
  %add.i51.i = add nuw i32 %call.i, 11328
  %call.i52.i = tail call i32 @phy_write_mmd(ptr noundef %23, i32 noundef 30, i32 noundef %add.i51.i, i16 noundef zeroext -32703) #9
  %extts28.i = getelementptr i8, ptr %ptp, i32 348
  %24 = ptrtoint ptr %extts28.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %extts28.i, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  %extts_index.i = getelementptr i8, ptr %ptp, i32 344
  %27 = ptrtoint ptr %extts_index.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %extts_index.i, align 8
  %28 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ptp_clock.i, align 4
  %call31.i = tail call i32 @ptp_schedule_worker(ptr noundef %29, i32 noundef 0) #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %30 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 8
  %flags.i7 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 3
  %33 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i7, align 4
  %and.i = and i32 %34, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i8 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i8, label %if.end.i, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb1
  %ptp_clock.i9 = getelementptr i8, ptr %ptp, i32 -4
  %35 = ptrtoint ptr %ptp_clock.i9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ptp_clock.i9, align 4
  %index.i = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 2
  %37 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index.i, align 8
  %call.i10 = tail call i32 @ptp_find_pin(ptr noundef %36, i32 noundef 2, i32 noundef %38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %cmp.i11 = icmp slt i32 %call.i10, 0
  br i1 %cmp.i11, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool4.not.i = icmp eq i32 %on, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end8.i14

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i12 = tail call i32 @phy_modify_mmd(ptr noundef %32, i32 noundef 30, i32 noundef 4354, i16 noundef zeroext 8, i16 noundef zeroext 0) #9
  %call.i73.i = tail call i32 @phy_modify_mmd(ptr noundef %32, i32 noundef 30, i32 noundef 4354, i16 noundef zeroext 4, i16 noundef zeroext 0) #9
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 8
  %add.i.i13 = add nuw i32 %call.i10, 11328
  %call.i74.i = tail call i32 @phy_write_mmd(ptr noundef %40, i32 noundef 30, i32 noundef %add.i.i13, i16 noundef zeroext 0) #9
  br label %cleanup

if.end8.i14:                                      ; preds = %if.end3.i
  %period.i = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 1
  %41 = ptrtoint ptr %period.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %period.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %42)
  %cmp9.not.i = icmp eq i64 %42, 1
  br i1 %cmp9.not.i, label %lor.lhs.false.i, label %if.end8.i14.do.end.i_crit_edge

if.end8.i14.do.end.i_crit_edge:                   ; preds = %if.end8.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end8.i14
  %nsec.i = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nsec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp11.not.i = icmp eq i32 %44, 0
  br i1 %cmp11.not.i, label %if.end13.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end8.i14.do.end.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.47) #12
  br label %cleanup

if.end13.i:                                       ; preds = %lor.lhs.false.i
  %45 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i7, align 4
  %and15.i = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.else.i

if.then17.i:                                      ; preds = %if.end13.i
  %47 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %30, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %cmp19.not.i = icmp eq i64 %48, 0
  br i1 %cmp19.not.i, label %lor.lhs.false20.i, label %if.then17.i.do.end26.i_crit_edge

if.then17.i.do.end26.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26.i

lor.lhs.false20.i:                                ; preds = %if.then17.i
  %nsec21.i = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %49 = ptrtoint ptr %nsec21.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nsec21.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp22.not.i = icmp eq i32 %50, 0
  br i1 %cmp22.not.i, label %lor.lhs.false20.i.if.end48.i_crit_edge, label %lor.lhs.false20.i.do.end26.i_crit_edge

lor.lhs.false20.i.do.end26.i_crit_edge:           ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26.i

lor.lhs.false20.i.if.end48.i_crit_edge:           ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

do.end26.i:                                       ; preds = %lor.lhs.false20.i.do.end26.i_crit_edge, %if.then17.i.do.end26.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.51) #12
  br label %cleanup

if.else.i:                                        ; preds = %if.end13.i
  %nsec30.i = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %51 = ptrtoint ptr %nsec30.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nsec30.i, align 8
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %52, label %do.end37.i [
    i32 0, label %if.then43.i
    i32 500000000, label %if.else45.i
  ]

do.end37.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.then43.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i75.i = tail call i32 @phy_modify_mmd(ptr noundef %32, i32 noundef 30, i32 noundef 4354, i16 noundef zeroext 4, i16 noundef zeroext 0) #9
  br label %if.end48.i

if.else45.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i76.i = tail call i32 @phy_modify_mmd(ptr noundef %32, i32 noundef 30, i32 noundef 4354, i16 noundef zeroext 0, i16 noundef zeroext 4) #9
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else45.i, %if.then43.i, %lor.lhs.false20.i.if.end48.i_crit_edge
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 8
  %add.i77.i = add nuw i32 %call.i10, 11328
  %call.i78.i = tail call i32 @phy_write_mmd(ptr noundef %55, i32 noundef 30, i32 noundef %add.i77.i, i16 noundef zeroext -32686) #9
  %call.i79.i = tail call i32 @phy_modify_mmd(ptr noundef %32, i32 noundef 30, i32 noundef 4354, i16 noundef zeroext 0, i16 noundef zeroext 8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end48.i, %do.end37.i, %do.end26.i, %do.end.i, %if.then5.i, %if.end.i.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %if.end27.i, %if.then12.i, %if.end8.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end27.i ], [ 0, %if.then12.i ], [ -95, %sw.bb.cleanup_crit_edge ], [ %call.i, %if.end8.i.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end37.i ], [ 0, %if.end48.i ], [ -22, %do.end26.i ], [ 0, %if.then5.i ], [ -95, %sw.bb1.cleanup_crit_edge ], [ %call.i10, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nxp_c45_ptp_verify_pin(ptr nocapture noundef readnone %ptp, i32 noundef %pin, i32 noundef %func, i32 noundef %chan) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %pin)
  %cmp = icmp ugt i32 %pin, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %func)
  %switch = icmp ult i32 %func, 3
  %. = select i1 %switch, i32 0, i32 -95
  %retval.0 = select i1 %cmp, i32 -22, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_c45_do_aux_work(ptr noundef %ptp) #2 align 64 {
entry:
  %event = alloca %struct.ptp_clock_event, align 8
  %hwts = alloca %struct.nxp_c45_hwts, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %irq.i = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp sgt i32 %3, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %event) #9
  %4 = call ptr @memset(ptr %event, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hwts) #9
  %5 = call ptr @memset(ptr %hwts, i32 255, i32 16)
  %tx_queue = getelementptr i8, ptr %ptp, i32 108
  %6 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %tx_queue, align 4
  %cmp.i4789 = icmp eq ptr %7, %tx_queue
  %brmerge90 = select i1 %cmp.i4789, i1 true, i1 %cmp.i
  br i1 %brmerge90, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %call2 = call fastcc zeroext i1 @nxp_c45_get_hwtxts(ptr noundef %add.ptr, ptr noundef nonnull %hwts)
  br i1 %call2, label %if.end, label %while.body.while.end_crit_edge, !prof !165

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %while.body
  call fastcc void @nxp_c45_process_txts(ptr noundef %add.ptr, ptr noundef nonnull %hwts)
  %8 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %tx_queue, align 4
  %cmp.i47 = icmp eq ptr %9, %tx_queue
  br i1 %cmp.i47, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %brmerge.lcssa = phi i1 [ true, %entry.while.end_crit_edge ], [ %call2, %while.body.while.end_crit_edge ], [ %call2, %if.end.while.end_crit_edge ]
  %rx_queue = getelementptr i8, ptr %ptp, i32 164
  %call993 = tail call ptr @skb_dequeue(ptr noundef %rx_queue) #9
  %cmp.not94 = icmp eq ptr %call993, null
  br i1 %cmp.not94, label %while.end.while.end20_crit_edge, label %while.body10.lr.ph

while.end.while.end20_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end20

while.body10.lr.ph:                               ; preds = %while.end
  %ptp_lock.i = getelementptr i8, ptr %ptp, i32 220
  br label %while.body10

while.body10:                                     ; preds = %while.body10.while.body10_crit_edge, %while.body10.lr.ph
  %call995 = phi ptr [ %call993, %while.body10.lr.ph ], [ %call9, %while.body10.while.body10_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %ptp_lock.i, i32 noundef 0) #9
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %call.i.i = tail call i32 @phy_write_mmd(ptr noundef %11, i32 noundef 30, i32 noundef 4357, i16 noundef zeroext 4) #9
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %call2.i.i = tail call i32 @phy_read_mmd(ptr noundef %13, i32 noundef 30, i32 noundef 4362) #9
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  %call4.i.i = tail call i32 @phy_read_mmd(ptr noundef %15, i32 noundef 30, i32 noundef 4363) #9
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 8
  %call7.i.i = tail call i32 @phy_read_mmd(ptr noundef %17, i32 noundef 30, i32 noundef 4364) #9
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  %call9.i.i = tail call i32 @phy_read_mmd(ptr noundef %19, i32 noundef 30, i32 noundef 4365) #9
  %shl10.i.i = shl i32 %call9.i.i, 16
  %or13.i.i87 = or i32 %shl10.i.i, %call7.i.i
  %or13.i.i96 = zext i32 %or13.i.i87 to i64
  tail call void @mutex_unlock(ptr noundef %ptp_lock.i) #9
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call995, i32 0, i32 3
  %20 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cb, align 8
  %reserved2 = getelementptr inbounds %struct.ptp_header, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %reserved2 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %reserved2, align 1
  %shr = lshr i32 %23, 30
  %and = and i32 %23, 1073741823
  %and.i = and i64 %or13.i.i96, 3
  %conv.i = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv.i)
  %cmp.i48 = icmp ult i64 %and.i, %conv.i
  %sub.i = add nuw nsw i64 %or13.i.i96, 4294967292
  %spec.select = select i1 %cmp.i48, i64 %sub.i, i64 %or13.i.i96
  %and5.i = and i64 %spec.select, 4294967292
  %or.i = or i64 %and5.i, %conv.i
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call995, i32 0, i32 17
  %24 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %25, i32 0, i32 7
  %mul.i = mul nuw nsw i64 %or.i, 1000000000
  %conv.i5186 = zext i32 %and to i64
  %add.i = add nuw nsw i64 %mul.i, %conv.i5186
  %26 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %add.i, ptr %hwtstamps.i, align 8
  %27 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cb, align 8
  %reserved218 = getelementptr inbounds %struct.ptp_header, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %reserved218 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 0, ptr %reserved218, align 1
  %call19 = tail call i32 @netif_rx_ni(ptr noundef nonnull %call995) #9
  %call9 = tail call ptr @skb_dequeue(ptr noundef %rx_queue) #9
  %cmp.not = icmp eq ptr %call9, null
  br i1 %cmp.not, label %while.cond8.while.end20_crit_edge, label %while.body10.while.body10_crit_edge

while.body10.while.body10_crit_edge:              ; preds = %while.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body10

while.cond8.while.end20_crit_edge:                ; preds = %while.body10
  call void @__sanitizer_cov_trace_pc() #11
  %sec = getelementptr inbounds %struct.nxp_c45_hwts, ptr %hwts, i32 0, i32 1
  %30 = ptrtoint ptr %sec to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr, ptr %sec, align 4
  br label %while.end20

while.end20:                                      ; preds = %while.cond8.while.end20_crit_edge, %while.end.while.end20_crit_edge
  %extts = getelementptr i8, ptr %ptp, i32 348
  %31 = ptrtoint ptr %extts to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %extts, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool21.not = icmp eq i8 %32, 0
  br i1 %tobool21.not, label %if.end30, label %if.then22

if.then22:                                        ; preds = %while.end20
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  %call.i = tail call i32 @phy_read_mmd(ptr noundef %34, i32 noundef 30, i32 noundef 4385) #9
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 8
  %call2.i = tail call i32 @phy_read_mmd(ptr noundef %36, i32 noundef 30, i32 noundef 4386) #9
  %shl.i = shl i32 %call2.i, 16
  %or.i53 = or i32 %shl.i, %call.i
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 8
  %call5.i = tail call i32 @phy_read_mmd(ptr noundef %38, i32 noundef 30, i32 noundef 4387) #9
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 8
  %call7.i = tail call i32 @phy_read_mmd(ptr noundef %40, i32 noundef 30, i32 noundef 4388) #9
  %shl8.i = shl i32 %call7.i, 16
  %or11.i88 = or i32 %shl8.i, %call5.i
  %or11.i = sext i32 %or11.i88 to i64
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 8
  %call13.i = tail call i32 @phy_write_mmd(ptr noundef %42, i32 noundef 30, i32 noundef 4390, i16 noundef zeroext 1) #9
  %extts_ts = getelementptr i8, ptr %ptp, i32 328
  %43 = ptrtoint ptr %extts_ts to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %extts_ts, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %or11.i)
  %.not = icmp eq i64 %44, %or11.i
  br i1 %.not, label %timespec64_compare.exit, label %if.then22.if.then25_crit_edge

if.then22.if.then25_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

timespec64_compare.exit:                          ; preds = %if.then22
  %tv_nsec7.i = getelementptr i8, ptr %ptp, i32 336
  %45 = ptrtoint ptr %tv_nsec7.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tv_nsec7.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i53, i32 %46)
  %cmp24.not = icmp eq i32 %or.i53, %46
  br i1 %cmp24.not, label %timespec64_compare.exit.if.end30.thread_crit_edge, label %timespec64_compare.exit.if.then25_crit_edge

timespec64_compare.exit.if.then25_crit_edge:      ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

timespec64_compare.exit.if.end30.thread_crit_edge: ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.thread

if.then25:                                        ; preds = %timespec64_compare.exit.if.then25_crit_edge, %if.then22.if.then25_crit_edge
  %47 = ptrtoint ptr %extts_ts to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %or11.i, ptr %extts_ts, align 8
  %ts.sroa.18.0.extts_ts.sroa_idx = getelementptr i8, ptr %ptp, i32 336
  %48 = ptrtoint ptr %ts.sroa.18.0.extts_ts.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i53, ptr %ts.sroa.18.0.extts_ts.sroa_idx, align 8
  %ts.sroa.28.0.extts_ts.sroa_idx = getelementptr i8, ptr %ptp, i32 340
  %49 = ptrtoint ptr %ts.sroa.28.0.extts_ts.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %ts.sroa.28.0.extts_ts.sroa_idx, align 4
  %extts_index = getelementptr i8, ptr %ptp, i32 344
  %50 = ptrtoint ptr %extts_index to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %extts_index, align 8
  %index = getelementptr inbounds %struct.ptp_clock_event, ptr %event, i32 0, i32 1
  %52 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %index, align 4
  %53 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %event, align 8
  %mul.i63 = mul nsw i64 %or11.i, 1000000000
  %conv.i65 = sext i32 %or.i53 to i64
  %add.i66 = add nsw i64 %mul.i63, %conv.i65
  %54 = getelementptr inbounds %struct.ptp_clock_event, ptr %event, i32 0, i32 2
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %add.i66, ptr %54, align 8
  %ptp_clock = getelementptr i8, ptr %ptp, i32 -4
  %56 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ptp_clock, align 4
  call void @ptp_clock_event(ptr noundef %57, ptr noundef nonnull %event) #9
  br label %if.end30.thread

if.end30:                                         ; preds = %while.end20
  br i1 %brmerge.lcssa, label %if.end30._crit_edge, label %if.end30.if.end30.thread_crit_edge

if.end30.if.end30.thread_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.thread

if.end30._crit_edge:                              ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %58

if.end30.thread:                                  ; preds = %if.end30.if.end30.thread_crit_edge, %if.then25, %timespec64_compare.exit.if.end30.thread_crit_edge
  br label %58

58:                                               ; preds = %if.end30.thread, %if.end30._crit_edge
  %59 = phi i32 [ 1, %if.end30.thread ], [ -1, %if.end30._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hwts) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %event) #9
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_find_pin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nxp_c45_get_hwtxts(ptr noundef %priv, ptr nocapture noundef %hwts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_lock = getelementptr inbounds %struct.nxp_c45_phy, ptr %priv, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %ptp_lock, i32 noundef 0) #9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 @phy_write_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 4436, i16 noundef zeroext 1) #9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %call2 = tail call i32 @phy_read_mmd(ptr noundef %3, i32 noundef 30, i32 noundef 4430) #9
  %and = and i32 %call2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %entry.nxp_c45_get_hwtxts_out_crit_edge

entry.nxp_c45_get_hwtxts_out_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nxp_c45_get_hwtxts_out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv6 = trunc i32 %call2 to i8
  %domain_number = getelementptr inbounds %struct.nxp_c45_hwts, ptr %hwts, i32 0, i32 2
  %4 = ptrtoint ptr %domain_number to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv6, ptr %domain_number, align 4
  %and8 = lshr i32 %call2, 8
  %5 = trunc i32 %and8 to i8
  %conv9 = and i8 %5, 15
  %msg_type = getelementptr inbounds %struct.nxp_c45_hwts, ptr %hwts, i32 0, i32 4
  %6 = ptrtoint ptr %msg_type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv9, ptr %msg_type, align 4
  %and11 = lshr i32 %call2, 10
  %shr12 = and i32 %and11, 31
  %sec = getelementptr inbounds %struct.nxp_c45_hwts, ptr %hwts, i32 0, i32 1
  %7 = ptrtoint ptr %sec to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr12, ptr %sec, align 4
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %call14 = tail call i32 @phy_read_mmd(ptr noundef %9, i32 noundef 30, i32 noundef 4431) #9
  %conv15 = trunc i32 %call14 to i16
  %sequence_id = getelementptr inbounds %struct.nxp_c45_hwts, ptr %hwts, i32 0, i32 3
  %10 = ptrtoint ptr %sequence_id to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv15, ptr %sequence_id, align 2
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  %call17 = tail call i32 @phy_read_mmd(ptr noundef %12, i32 noundef 30, i32 noundef 4432) #9
  %13 = ptrtoint ptr %hwts to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call17, ptr %hwts, align 4
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %call19 = tail call i32 @phy_read_mmd(ptr noundef %15, i32 noundef 30, i32 noundef 4433) #9
  %and22 = shl i32 %call19, 16
  %shl = and i32 %and22, 1073676288
  %16 = ptrtoint ptr %hwts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwts, align 4
  %or = or i32 %shl, %17
  store i32 %or, ptr %hwts, align 4
  %and25 = lshr i32 %call19, 14
  %shr26 = and i32 %and25, 3
  %18 = ptrtoint ptr %sec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sec, align 4
  %or28 = or i32 %19, %shr26
  store i32 %or28, ptr %sec, align 4
  br label %nxp_c45_get_hwtxts_out

nxp_c45_get_hwtxts_out:                           ; preds = %if.end, %entry.nxp_c45_get_hwtxts_out_crit_edge
  tail call void @mutex_unlock(ptr noundef %ptp_lock) #9
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nxp_c45_process_txts(ptr noundef %priv, ptr nocapture noundef readonly %txts) unnamed_addr #2 align 64 {
entry:
  %shhwtstamps = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shhwtstamps) #9
  %tx_queue = getelementptr inbounds %struct.nxp_c45_phy, ptr %priv, i32 0, i32 4
  %lock = getelementptr inbounds %struct.nxp_c45_phy, ptr %priv, i32 0, i32 4, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 4
  %cmp9.not55 = icmp eq ptr %1, %tx_queue
  br i1 %cmp9.not55, label %entry.for.end.thread_crit_edge, label %for.body.lr.ph

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %entry
  %sequence_id1.i = getelementptr inbounds %struct.nxp_c45_hwts, ptr %txts, i32 0, i32 3
  %2 = ptrtoint ptr %sequence_id1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sequence_id1.i, align 2
  %msg_type.i = getelementptr inbounds %struct.nxp_c45_hwts, ptr %txts, i32 0, i32 4
  %domain_number9.i = getelementptr inbounds %struct.nxp_c45_hwts, ptr %txts, i32 0, i32 2
  br label %for.body

for.end.thread:                                   ; preds = %for.cond.backedge.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  br label %do.end25

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %skb.056 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.057, %for.cond.backedge.for.body_crit_edge ]
  %4 = ptrtoint ptr %skb.056 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.057 = load ptr, ptr %skb.056, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.056, i32 0, i32 3
  %5 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cb, align 8
  %sequence_id.i = getelementptr inbounds %struct.ptp_header, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %sequence_id.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %sequence_id.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %3)
  %cmp.i = icmp eq i16 %8, %3
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

land.lhs.true.i:                                  ; preds = %for.body
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb.056, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %control.i.i = getelementptr inbounds %struct.ptp_header, ptr %6, i32 0, i32 10
  %11 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %control.i.i, align 1
  br label %ptp_get_msgtype.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %6, align 1
  %15 = and i8 %14, 15
  br label %ptp_get_msgtype.exit.i

ptp_get_msgtype.exit.i:                           ; preds = %if.else.i.i, %if.then.i.i
  %msgtype.0.i.i = phi i8 [ %12, %if.then.i.i ], [ %15, %if.else.i.i ]
  %16 = ptrtoint ptr %msg_type.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %msg_type.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %msgtype.0.i.i, i8 %17)
  %cmp6.i = icmp eq i8 %msgtype.0.i.i, %17
  br i1 %cmp6.i, label %land.rhs.i, label %ptp_get_msgtype.exit.i.for.cond.backedge_crit_edge

ptp_get_msgtype.exit.i.for.cond.backedge_crit_edge: ; preds = %ptp_get_msgtype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

land.rhs.i:                                       ; preds = %ptp_get_msgtype.exit.i
  %domain_number.i = getelementptr inbounds %struct.ptp_header, ptr %6, i32 0, i32 3
  %18 = ptrtoint ptr %domain_number.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %domain_number.i, align 1
  %20 = ptrtoint ptr %domain_number9.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %domain_number9.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp11.i = icmp eq i8 %19, %21
  br i1 %cmp11.i, label %for.end, label %land.rhs.i.for.cond.backedge_crit_edge

land.rhs.i.for.cond.backedge_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %land.rhs.i.for.cond.backedge_crit_edge, %ptp_get_msgtype.exit.i.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %cmp9.not = icmp eq ptr %tmp.057, %tx_queue
  br i1 %cmp9.not, label %for.cond.backedge.for.end.thread_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.backedge.for.end.thread_crit_edge:       ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.end:                                          ; preds = %land.rhs.i
  %qlen.i = getelementptr inbounds %struct.nxp_c45_phy, ptr %priv, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %24 = ptrtoint ptr %skb.056 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb.056, align 8
  %prev9.i = getelementptr inbounds %struct.anon.44, ptr %skb.056, i32 0, i32 1
  %26 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.056, align 8
  %prev17.i = getelementptr inbounds %struct.anon.44, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %27, ptr %prev17.i, align 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %25, ptr %27, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  %tobool18.not = icmp eq ptr %skb.056, null
  br i1 %tobool18.not, label %for.end.do.end25_crit_edge, label %if.then19

for.end.do.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %ptp_lock.i = getelementptr %struct.nxp_c45_phy, ptr %priv, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %ptp_lock.i, i32 noundef 0) #9
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 8
  %call.i.i = tail call i32 @phy_write_mmd(ptr noundef %31, i32 noundef 30, i32 noundef 4357, i16 noundef zeroext 4) #9
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 8
  %call2.i.i = tail call i32 @phy_read_mmd(ptr noundef %33, i32 noundef 30, i32 noundef 4362) #9
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 8
  %call4.i.i = tail call i32 @phy_read_mmd(ptr noundef %35, i32 noundef 30, i32 noundef 4363) #9
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %call7.i.i = tail call i32 @phy_read_mmd(ptr noundef %37, i32 noundef 30, i32 noundef 4364) #9
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  %call9.i.i = tail call i32 @phy_read_mmd(ptr noundef %39, i32 noundef 30, i32 noundef 4365) #9
  %shl10.i.i = shl i32 %call9.i.i, 16
  %or13.i.i52 = or i32 %shl10.i.i, %call7.i.i
  %or13.i.i59 = zext i32 %or13.i.i52 to i64
  tail call void @mutex_unlock(ptr noundef %ptp_lock.i) #9
  %40 = ptrtoint ptr %txts to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %txts, align 4
  %and.i = and i64 %or13.i.i59, 3
  %sec.i = getelementptr inbounds %struct.nxp_c45_hwts, ptr %txts, i32 0, i32 1
  %42 = ptrtoint ptr %sec.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sec.i, align 4
  %and1.i = and i32 %43, 3
  %conv.i = zext i32 %and1.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv.i)
  %cmp.i41 = icmp ult i64 %and.i, %conv.i
  %sub.i42 = add nuw nsw i64 %or13.i.i59, 4294967292
  %spec.select = select i1 %cmp.i41, i64 %sub.i42, i64 %or13.i.i59
  %and5.i = and i64 %spec.select, 4294967292
  %or.i = or i64 %and5.i, %conv.i
  %mul.i = mul nuw nsw i64 %or.i, 1000000000
  %conv.i45 = sext i32 %41 to i64
  %add.i = add i64 %mul.i, %conv.i45
  %44 = ptrtoint ptr %shhwtstamps to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %add.i, ptr %shhwtstamps, align 8
  call void @skb_complete_tx_timestamp(ptr noundef nonnull %skb.056, ptr noundef nonnull %shhwtstamps) #9
  br label %if.end26

do.end25:                                         ; preds = %for.end.do.end25_crit_edge, %for.end.thread
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.56) #12
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shhwtstamps) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_complete_tx_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_result(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !63, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !83, !84, !85, !87, !88, !90, !91, !93, !95, !97, !99, !101, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147}
!llvm.named.register.sp = !{!149}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @__initcall__kmod_nxp_c45_tja11xx__350_1365_phy_module_init6, !1, !"__initcall__kmod_nxp_c45_tja11xx__350_1365_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1365, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author351, !4, !"__UNIQUE_ID_author351", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1374, i32 1}
!5 = !{ptr @__UNIQUE_ID_description352, !6, !"__UNIQUE_ID_description352", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1375, i32 1}
!7 = !{ptr @__UNIQUE_ID_file353, !8, !"__UNIQUE_ID_file353", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1376, i32 1}
!9 = !{ptr @__UNIQUE_ID_license354, !8, !"__UNIQUE_ID_license354", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1343, i32 13}
!12 = !{ptr @nxp_c45_driver, !13, !"nxp_c45_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1340, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 940, i32 9}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nxp_c45_soft_reset._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @nxp_c45_soft_reset._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1254, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nxp_c45_config_init._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @nxp_c45_config_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1180, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @nxp_c45_set_phy_mode.__UNIQUE_ID_ddebug347, !28, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1185, i32 4}
!34 = !{ptr @nxp_c45_set_phy_mode._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @nxp_c45_set_phy_mode._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1196, i32 4}
!38 = !{ptr @nxp_c45_set_phy_mode._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @nxp_c45_set_phy_mode._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1209, i32 4}
!42 = !{ptr @nxp_c45_set_phy_mode._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @nxp_c45_set_phy_mode._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1217, i32 4}
!46 = !{ptr @nxp_c45_set_phy_mode._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @nxp_c45_set_phy_mode._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1225, i32 4}
!50 = !{ptr @nxp_c45_set_phy_mode._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @nxp_c45_set_phy_mode._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1233, i32 4}
!54 = !{ptr @nxp_c45_set_phy_mode._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @nxp_c45_set_phy_mode._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1143, i32 13}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1150, i32 4}
!60 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @nxp_c45_get_delays._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @nxp_c45_get_delays._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1159, i32 13}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1166, i32 4}
!67 = !{ptr @nxp_c45_get_delays._entry.31, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @nxp_c45_get_delays._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1078, i32 3}
!71 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @nxp_c45_check_delay._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @nxp_c45_check_delay._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1083, i32 3}
!76 = !{ptr @nxp_c45_check_delay._entry.36, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @nxp_c45_check_delay._entry_ptr.38, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @nxp_c45_probe.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1313, i32 2}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1319, i32 3}
!83 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @nxp_c45_probe.__UNIQUE_ID_ddebug348, !82, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!85 = !{ptr @skb_queue_head_init.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!87 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!90 = distinct !{null, !89, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 663, i32 12}
!97 = !{ptr @nxp_c45_ptp_pins, !98, !"nxp_c45_ptp_pins", i1 false, i1 false}
!98 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 626, i32 28}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 537, i32 3}
!101 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @nxp_c45_perout_enable._entry, !100, !"_entry", i1 false, i1 false}
!104 = !{ptr @nxp_c45_perout_enable._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 543, i32 4}
!107 = !{ptr @nxp_c45_perout_enable._entry.50, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @nxp_c45_perout_enable._entry_ptr.52, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 549, i32 4}
!111 = !{ptr @nxp_c45_perout_enable._entry.53, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @nxp_c45_perout_enable._entry_ptr.55, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 443, i32 3}
!115 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @nxp_c45_process_txts._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @nxp_c45_process_txts._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 1008, i32 3}
!120 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @nxp_c45_setup_master_slave._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @nxp_c45_setup_master_slave._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 809, i32 4}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 811, i32 4}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 813, i32 4}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 815, i32 4}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 817, i32 4}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 819, i32 4}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 821, i32 4}
!137 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 823, i32 4}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 825, i32 4}
!141 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 827, i32 4}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 829, i32 4}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 831, i32 4}
!147 = !{ptr @nxp_c45_hw_stats, !148, !"nxp_c45_hw_stats", i1 false, i1 false}
!148 = !{!"../drivers/net/phy/nxp-c45-tja11xx.c", i32 808, i32 39}
!149 = !{!"sp"}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{i64 2148792376, i64 2148792381, i64 2148792394, i64 2148792438, i64 2148792472, i64 2148792493}
!160 = !{i64 510034, i64 510061}
!161 = !{i64 510544, i64 510571, i64 510605, i64 510626}
!162 = !{i64 510729, i64 510756, i64 510789, i64 510810, i64 510837, i64 510863}
!163 = !{!"auto-init"}
!164 = !{i64 2152340947, i64 2152340972}
!165 = !{!"branch_weights", i32 2000, i32 1}
!166 = !{i64 4836502}
!167 = !{i64 4836699}
!168 = !{i64 2152321932}
!169 = !{i64 2152341628, i64 2152341653}
!170 = !{i64 510321, i64 510348, i64 510370, i64 510398}
!171 = !{i8 0, i8 2}
