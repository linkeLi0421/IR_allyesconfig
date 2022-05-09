; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl12xx/cmd.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl12xx/cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wl1271 = type { i8, ptr, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock, i32, i32, i8, i32, i8, i8, %struct.mutex, i32, %struct.wlcore_partition_set, %struct.wl1271_chip, i32, ptr, i32, ptr, i32, i8, i32, i32, [3 x %struct.mac_address], i32, i8, [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [16 x i8], %struct.list_head, i8, i8, ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i64, [4 x i32], [12 x i32], %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, ptr, [1 x i32], [32 x ptr], i32, i32, ptr, i32, ptr, %struct.work_struct, ptr, i32, i32, i32, %struct.work_struct, i8, [2 x i32], [2 x i32], ptr, i32, i32, i32, [2 x i32], ptr, %struct.wl1271_scan, %struct.delayed_work, ptr, %struct.delayed_work, ptr, i32, ptr, i32, %struct.wl1271_stats, ptr, i32, [1 x i32], ptr, ptr, ptr, %struct.wlcore_conf, i8, i8, i32, i8, [2 x %struct.ieee80211_supported_band], i8, i8, [16 x %struct.wl1271_link], i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, i32, i8, i8, ptr, i8, i8, [2 x %struct.ieee80211_sta_ht_cap], i32, i8, i32, i32, [1 x i32], i32, i32, %struct.mutex, i32, i32, [5 x i32], [5 x i32], %struct.completion, ptr, i8, i32, [6 x i8] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wlcore_partition_set = type { %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition }
%struct.wlcore_partition = type { i32, i32 }
%struct.wl1271_chip = type { i32, [32 x i8], [5 x i32], [32 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wl1271_scan = type { ptr, [2 x i32], i8, i8, [33 x i8], i32 }
%struct.wl1271_stats = type { ptr, i32, i32, i32, i32 }
%struct.wlcore_conf = type <{ %struct.conf_sg_settings, %struct.conf_rx_settings, %struct.conf_tx_settings, %struct.conf_conn_settings, %struct.conf_itrim_settings, %struct.conf_pm_config_settings, %struct.conf_roam_trigger_settings, %struct.conf_scan_settings, %struct.conf_sched_scan_settings, %struct.conf_ht_setting, %struct.conf_memory_settings, %struct.conf_fm_coex, %struct.conf_rx_streaming_settings, %struct.conf_fwlog, %struct.conf_rate_policy_settings, %struct.conf_hangover_settings, %struct.conf_recovery_settings }>
%struct.conf_sg_settings = type <{ [67 x i32], i8 }>
%struct.conf_rx_settings = type <{ i32, i32, i16, i16, i16, i16, i16, i16, i16, i8 }>
%struct.conf_tx_settings = type <{ i8, %struct.conf_tx_rate_class, i8, [4 x %struct.conf_tx_ac_category], i8, i16, i8, [8 x %struct.conf_tx_tid], i16, i16, i16, i32, i32, i8, i8, i32, i8, i8 }>
%struct.conf_tx_rate_class = type <{ i32, i8, i8, i8 }>
%struct.conf_tx_ac_category = type <{ i8, i8, i16, i8, i16 }>
%struct.conf_tx_tid = type <{ i8, i8, i8, i8, i8, [2 x i32] }>
%struct.conf_conn_settings = type <{ i8, i8, i8, i8, i8, i8, [32 x %struct.conf_bcn_filt_rule], i32, i32, i32, i32, i8, i8, %struct.conf_sig_weights, i8, i8, i8, i8, i8, i16, i8, i32, i8, i8, i8 }>
%struct.conf_bcn_filt_rule = type { i8, i8, [3 x i8], i8, [2 x i8] }
%struct.conf_sig_weights = type { i8, i8, i8, i8 }
%struct.conf_itrim_settings = type <{ i8, i32 }>
%struct.conf_pm_config_settings = type <{ i32, i8 }>
%struct.conf_roam_trigger_settings = type { i16, i8, i8, i8, i8 }
%struct.conf_scan_settings = type <{ i32, i32, i32, i32, i32, i32, i16, i32 }>
%struct.conf_sched_scan_settings = type <{ i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16 }>
%struct.conf_ht_setting = type <{ i8, i8, i16, i8 }>
%struct.conf_memory_settings = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.conf_fm_coex = type { i8, i8, i8, i8, i16, i16, i32, i16, i8, i8 }
%struct.conf_rx_streaming_settings = type <{ i32, i8, i8, i8 }>
%struct.conf_fwlog = type { i8, i8, i8, i8, i8, i8 }
%struct.conf_rate_policy_settings = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, [13 x i8] }
%struct.conf_hangover_settings = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.conf_recovery_settings = type { i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wl1271_link = type { [4 x %struct.sk_buff_head], i8, i8, [6 x i8], i8, i8, i8, ptr, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wl1271_ext_radio_parms_cmd = type { %struct.wl1271_cmd_header, %struct.wl1271_cmd_test_header, [7 x i8], [18 x i8], [3 x i8] }
%struct.wl1271_cmd_header = type { i16, i16, [0 x i8] }
%struct.wl1271_cmd_test_header = type { i8, [3 x i8] }
%struct.wl12xx_conf_rf = type { [7 x i8], [18 x i8] }
%struct.wl1271_nvs_file = type { [468 x i8], %struct.wl1271_ini_general_params, i8, %struct.wl1271_ini_band_params_2, i8, [2 x %struct.anon.138], %struct.wl1271_ini_band_params_5, i8, [2 x %struct.anon.139] }
%struct.wl1271_ini_general_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], [16 x i8], [16 x i8] }
%struct.wl1271_ini_band_params_2 = type { i8, i8, [15 x i8] }
%struct.anon.138 = type { %struct.wl1271_ini_fem_params_2, i8 }
%struct.wl1271_ini_fem_params_2 = type <{ i16, i8, i8, [6 x i8], [6 x i8], [6 x i8], [14 x i8], [14 x i8], [6 x i8], [6 x i8], i8, i8, i8 }>
%struct.wl1271_ini_band_params_5 = type { [7 x i8], [7 x i8], [15 x i8] }
%struct.anon.139 = type <{ %struct.wl1271_ini_fem_params_5, i8 }>
%struct.wl1271_ini_fem_params_5 = type { [7 x i16], [7 x i8], [7 x i8], [6 x i8], [6 x i8], [6 x i8], [35 x i8], [6 x i8], [6 x i8], [7 x i8], i8, i8 }
%struct.wl1271_general_parms_cmd = type { %struct.wl1271_cmd_header, %struct.wl1271_cmd_test_header, %struct.wl1271_ini_general_params, [16 x i8], i8, i8, i8, i8, [3 x i8] }
%struct.wl12xx_priv = type { %struct.wl12xx_priv_conf, i32, i32, ptr }
%struct.wl12xx_priv_conf = type { %struct.wl12xx_conf_rf, %struct.conf_memory_settings }
%struct.wl128x_nvs_file = type { [468 x i8], %struct.wl128x_ini_general_params, i8, %struct.wl128x_ini_band_params_2, i8, [2 x %struct.anon.140], %struct.wl128x_ini_band_params_5, i8, [2 x %struct.anon.141] }
%struct.wl128x_ini_general_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, [16 x i8], [16 x i8], [16 x i8] }
%struct.wl128x_ini_band_params_2 = type { i8, [14 x i8], [15 x i8] }
%struct.anon.140 = type { %struct.wl128x_ini_fem_params_2, i8 }
%struct.wl128x_ini_fem_params_2 = type <{ i16, i8, i8, [7 x i8], [7 x i8], [7 x i8], [14 x i8], [14 x i8], [7 x i8], [8 x i8], [14 x i8], [2 x i8], i8, i8, i8 }>
%struct.wl128x_ini_band_params_5 = type { [7 x i8], [35 x i8], [15 x i8] }
%struct.anon.141 = type <{ %struct.wl128x_ini_fem_params_5, i8 }>
%struct.wl128x_ini_fem_params_5 = type { [7 x i16], [7 x i8], [7 x i8], [7 x i8], [7 x i8], [7 x i8], [35 x i8], [7 x i8], [7 x i8], [35 x i8], [14 x i8], [7 x i8], i8, i8 }
%struct.wl128x_general_parms_cmd = type { %struct.wl1271_cmd_header, %struct.wl1271_cmd_test_header, %struct.wl128x_ini_general_params, [16 x i8], i8, i8, i8, i8, [3 x i8] }
%struct.wl1271_radio_parms_cmd = type { %struct.wl1271_cmd_header, %struct.wl1271_cmd_test_header, %struct.wl1271_ini_band_params_2, %struct.wl1271_ini_band_params_5, %struct.wl1271_ini_fem_params_2, i8, %struct.wl1271_ini_fem_params_5, [2 x i8] }
%struct.wl128x_radio_parms_cmd = type { %struct.wl1271_cmd_header, %struct.wl1271_cmd_test_header, %struct.wl128x_ini_band_params_2, %struct.wl128x_ini_band_params_5, i8, %struct.wl128x_ini_fem_params_2, i8, %struct.wl128x_ini_fem_params_5 }
%struct.wl12xx_vif = type { ptr, %struct.list_head, i32, i8, i8, i8, i8, i8, %union.anon.129, i32, [4 x i32], [1 x i32], [33 x i8], i8, i32, i32, i32, [2 x i32], i32, i32, i32, ptr, i32, i32, i16, i8, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.delayed_work, %struct.delayed_work, i32, i32, i8, i32, %struct.delayed_work, i32, %struct.ieee80211_sta_ht_cap, %struct.work_struct, i64, %struct.anon.132 }
%union.anon.129 = type { %struct.anon.131 }
%struct.anon.131 = type { i8, i8, [1 x i32], [14 x ptr], i8, i8, [4 x i8] }
%struct.anon.132 = type { [0 x i8] }
%struct.wl12xx_cmd_channel_switch = type { %struct.wl1271_cmd_header, i8, i8, i8, i8, i8, [3 x i8] }
%struct.ieee80211_channel_switch = type { i64, i32, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wl1271_cmd_ext_radio_parms.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl12xx\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wl1271_cmd_ext_radio_parms\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/wireless/ti/wl12xx/cmd.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"wlcore: TEST_CMD_INI_FILE_EXT_RADIO_PARAM: \00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@wl1271_cmd_ext_radio_parms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014wlcore: WARNING TEST_CMD_INI_FILE_RF_EXTENDED_PARAM failed\0A\00", [34 x i8] zeroinitializer }, align 32
@wl1271_cmd_ext_radio_parms._entry_ptr = internal global ptr @wl1271_cmd_ext_radio_parms._entry, section ".printk_index", align 4
@wl1271_cmd_general_parms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014wlcore: WARNING FEM index from INI out of bounds\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl1271_cmd_general_parms\00", [39 x i8] zeroinitializer }, align 32
@wl1271_cmd_general_parms._entry_ptr = internal global ptr @wl1271_cmd_general_parms._entry, section ".printk_index", align 4
@wl1271_cmd_general_parms._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014wlcore: WARNING CMD_INI_FILE_GENERAL_PARAM failed\0A\00", [43 x i8] zeroinitializer }, align 32
@wl1271_cmd_general_parms._entry_ptr.10 = internal global ptr @wl1271_cmd_general_parms._entry.8, section ".printk_index", align 4
@wl1271_cmd_general_parms._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014wlcore: WARNING FEM index from FW out of bounds\0A\00", [45 x i8] zeroinitializer }, align 32
@wl1271_cmd_general_parms._entry_ptr.13 = internal global ptr @wl1271_cmd_general_parms._entry.11, section ".printk_index", align 4
@wl1271_cmd_general_parms.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.14, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"wlcore: FEM autodetect: %s, manufacturer: %d\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"calibrator_fem_detect\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@wl128x_cmd_general_parms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014wlcore: WARNING FEM index from ini out of bounds\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl128x_cmd_general_parms\00", [39 x i8] zeroinitializer }, align 32
@wl128x_cmd_general_parms._entry_ptr = internal global ptr @wl128x_cmd_general_parms._entry, section ".printk_index", align 4
@wl128x_cmd_general_parms._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.19, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wl128x_cmd_general_parms._entry_ptr.21 = internal global ptr @wl128x_cmd_general_parms._entry.20, section ".printk_index", align 4
@wl128x_cmd_general_parms._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.19, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wl128x_cmd_general_parms._entry_ptr.23 = internal global ptr @wl128x_cmd_general_parms._entry.22, section ".printk_index", align 4
@wl128x_cmd_general_parms.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.14, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wl1271_cmd_radio_parms.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl1271_cmd_radio_parms\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"wlcore: TEST_CMD_INI_FILE_RADIO_PARAM: \00", [56 x i8] zeroinitializer }, align 32
@wl1271_cmd_radio_parms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014wlcore: WARNING CMD_INI_FILE_RADIO_PARAM failed\0A\00", [45 x i8] zeroinitializer }, align 32
@wl1271_cmd_radio_parms._entry_ptr = internal global ptr @wl1271_cmd_radio_parms._entry, section ".printk_index", align 4
@wl128x_cmd_radio_parms.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.25, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl128x_cmd_radio_parms\00", [41 x i8] zeroinitializer }, align 32
@wl128x_cmd_radio_parms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wl128x_cmd_radio_parms._entry_ptr = internal global ptr @wl128x_cmd_radio_parms._entry, section ".printk_index", align 4
@wl12xx_cmd_channel_switch.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wl12xx_cmd_channel_switch\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wlcore: cmd channel switch\0A\00", [36 x i8] zeroinitializer }, align 32
@wl12xx_cmd_channel_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013wlcore: ERROR failed to send channel switch command\0A\00", [41 x i8] zeroinitializer }, align 32
@wl12xx_cmd_channel_switch._entry_ptr = internal global ptr @wl12xx_cmd_channel_switch._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 38, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 43, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 62, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 86, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 94, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 103, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 129, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 154, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 162, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 217, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 222, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 263, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 268, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 281, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [40 x i8] c"../drivers/net/wireless/ti/wl12xx/cmd.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 300, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @wl1271_cmd_ext_radio_parms._entry, ptr @wl1271_cmd_ext_radio_parms._entry_ptr, ptr @wl1271_cmd_general_parms._entry, ptr @wl1271_cmd_general_parms._entry.11, ptr @wl1271_cmd_general_parms._entry.8, ptr @wl1271_cmd_general_parms._entry_ptr, ptr @wl1271_cmd_general_parms._entry_ptr.10, ptr @wl1271_cmd_general_parms._entry_ptr.13, ptr @wl1271_cmd_radio_parms._entry, ptr @wl1271_cmd_radio_parms._entry_ptr, ptr @wl128x_cmd_general_parms._entry, ptr @wl128x_cmd_general_parms._entry.20, ptr @wl128x_cmd_general_parms._entry.22, ptr @wl128x_cmd_general_parms._entry_ptr, ptr @wl128x_cmd_general_parms._entry_ptr.21, ptr @wl128x_cmd_general_parms._entry_ptr.23, ptr @wl128x_cmd_radio_parms._entry, ptr @wl128x_cmd_radio_parms._entry_ptr, ptr @wl12xx_cmd_channel_switch._entry, ptr @wl12xx_cmd_channel_switch._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_cmd_ext_radio_parms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_cmd_general_parms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_cmd_general_parms._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_cmd_general_parms._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl128x_cmd_general_parms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl128x_cmd_general_parms._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl128x_cmd_general_parms._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_cmd_radio_parms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl128x_cmd_radio_parms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_cmd_channel_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_cmd_ext_radio_parms(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 125
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %nvs = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 25
  %2 = ptrtoint ptr %nvs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nvs, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 36) #7
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %test = getelementptr inbounds %struct.wl1271_ext_radio_parms_cmd, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %test to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 38, ptr %test, align 4
  %tx_per_channel_power_compensation_2 = getelementptr inbounds %struct.wl1271_ext_radio_parms_cmd, ptr %call7.i.i, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %tx_per_channel_power_compensation_2, ptr %1, i32 7)
  %tx_per_channel_power_compensation_5 = getelementptr inbounds %struct.wl1271_ext_radio_parms_cmd, ptr %call7.i.i, i32 0, i32 3
  %tx_per_channel_power_compensation_59 = getelementptr inbounds %struct.wl12xx_conf_rf, ptr %1, i32 0, i32 1
  %7 = call ptr @memcpy(ptr %tx_per_channel_power_compensation_5, ptr %tx_per_channel_power_compensation_59, i32 18)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %8 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end5.do.end22_crit_edge, label %do.body13

if.end5.do.end22_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end22

do.body13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_cmd_ext_radio_parms.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_cmd_ext_radio_parms, %if.then18)) #4
          to label %do.end22 [label %if.then18], !srcloc !74

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @print_hex_dump(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call7.i.i, i32 noundef 36, i1 noundef zeroext false) #4
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.body13, %if.end5.do.end22_crit_edge
  %call23 = tail call i32 @wl1271_cmd_test(ptr noundef %wl, ptr noundef nonnull %call7.i.i, i32 noundef 36, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %do.end27, label %do.end22.if.end30_crit_edge

do.end22.if.end30_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

do.end27:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #6
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %do.end22.if.end30_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end30 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_test(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_cmd_general_parms(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nvs = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 25
  %0 = ptrtoint ptr %nvs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvs, align 8
  %general_params = getelementptr inbounds %struct.wl1271_nvs_file, ptr %1, i32 0, i32 1
  %priv1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 125
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_bip_fem_manufacturer = getelementptr inbounds %struct.wl1271_nvs_file, ptr %1, i32 0, i32 1, i32 6
  %4 = ptrtoint ptr %tx_bip_fem_manufacturer to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_bip_fem_manufacturer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ugt i8 %5, 3
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 88) #7
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %test = getelementptr inbounds %struct.wl1271_general_parms_cmd, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %test to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 30, ptr %test, align 4
  %general_params10 = getelementptr inbounds %struct.wl1271_general_parms_cmd, ptr %call7.i.i, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %general_params10, ptr %general_params, i32 57)
  %plt_mode = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 15
  %9 = ptrtoint ptr %plt_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %plt_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp11 = icmp eq i32 %10, 2
  br i1 %cmp11, label %if.then13, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %tx_bip_fem_auto_detect = getelementptr inbounds %struct.wl1271_general_parms_cmd, ptr %call7.i.i, i32 0, i32 2, i32 5
  %11 = ptrtoint ptr %tx_bip_fem_auto_detect to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %tx_bip_fem_auto_detect, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end9.if.end15_crit_edge
  %tx_bip_fem_auto_detect17 = getelementptr inbounds %struct.wl1271_general_parms_cmd, ptr %call7.i.i, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %tx_bip_fem_auto_detect17 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_bip_fem_auto_detect17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool18.not = icmp eq i8 %13, 0
  %14 = xor i1 %tobool18.not, true
  %ref_clock = getelementptr inbounds %struct.wl12xx_priv, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %ref_clock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ref_clock, align 4
  %conv21 = trunc i32 %16 to i8
  %17 = ptrtoint ptr %general_params10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv21, ptr %general_params10, align 8
  %conv25 = zext i1 %14 to i8
  %call26 = tail call i32 @wl1271_cmd_test(ptr noundef %wl, ptr noundef nonnull %call7.i.i, i32 noundef 88, i8 noundef zeroext %conv25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end32, label %if.end35

do.end32:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %out

if.end35:                                         ; preds = %if.end15
  %tx_bip_fem_manufacturer37 = getelementptr inbounds %struct.wl1271_general_parms_cmd, ptr %call7.i.i, i32 0, i32 2, i32 6
  %18 = ptrtoint ptr %tx_bip_fem_manufacturer37 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tx_bip_fem_manufacturer37, align 2
  %20 = ptrtoint ptr %tx_bip_fem_manufacturer to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %tx_bip_fem_manufacturer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp41 = icmp ugt i8 %19, 3
  br i1 %cmp41, label %do.end46, label %if.end49

do.end46:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %out

if.end49:                                         ; preds = %if.end35
  %21 = ptrtoint ptr %plt_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %plt_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp51 = icmp eq i32 %22, 2
  br i1 %cmp51, label %if.then53, label %if.end49.do.body56_crit_edge

if.end49.do.body56_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body56

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  %fem_manuf = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 16
  %23 = ptrtoint ptr %fem_manuf to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %19, ptr %fem_manuf, align 8
  br label %do.body56

do.body56:                                        ; preds = %if.then53, %if.end49.do.body56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %24 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %24, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  br i1 %tobool57.not, label %do.body56.out_crit_edge, label %do.body61, !prof !75

do.body56.out_crit_edge:                          ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body61:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_cmd_general_parms.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_cmd_general_parms, %if.then71)) #4
          to label %out [label %if.then71], !srcloc !74

if.then71:                                        ; preds = %do.body61
  br i1 %tobool18.not, label %if.then71.cond.end_crit_edge, label %cond.false

if.then71.cond.end_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %plt_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %plt_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp77 = icmp eq i32 %26, 2
  %cond = select i1 %cmp77, ptr @.str.16, ptr @.str.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then71.cond.end_crit_edge
  %cond79 = phi ptr [ %cond, %cond.false ], [ @.str.15, %if.then71.cond.end_crit_edge ]
  %27 = ptrtoint ptr %tx_bip_fem_manufacturer to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tx_bip_fem_manufacturer, align 1
  %conv81 = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_cmd_general_parms.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond79, i32 noundef %conv81) #4
  br label %out

out:                                              ; preds = %cond.end, %do.body61, %do.body56.out_crit_edge, %do.end46, %do.end32
  %ret.0 = phi i32 [ %call26, %do.end32 ], [ -22, %do.end46 ], [ %call26, %cond.end ], [ %call26, %do.body56.out_crit_edge ], [ %call26, %do.body61 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %out ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl128x_cmd_general_parms(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nvs = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 25
  %0 = ptrtoint ptr %nvs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvs, align 8
  %general_params = getelementptr inbounds %struct.wl128x_nvs_file, ptr %1, i32 0, i32 1
  %priv1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 125
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_bip_fem_manufacturer = getelementptr inbounds %struct.wl128x_nvs_file, ptr %1, i32 0, i32 1, i32 11
  %4 = ptrtoint ptr %tx_bip_fem_manufacturer to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_bip_fem_manufacturer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ugt i8 %5, 3
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 96) #7
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %test = getelementptr inbounds %struct.wl128x_general_parms_cmd, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %test to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 30, ptr %test, align 4
  %general_params10 = getelementptr inbounds %struct.wl128x_general_parms_cmd, ptr %call7.i.i, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %general_params10, ptr %general_params, i32 65)
  %plt_mode = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 15
  %9 = ptrtoint ptr %plt_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %plt_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp11 = icmp eq i32 %10, 2
  br i1 %cmp11, label %if.then13, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %tx_bip_fem_auto_detect = getelementptr inbounds %struct.wl128x_general_parms_cmd, ptr %call7.i.i, i32 0, i32 2, i32 10
  %11 = ptrtoint ptr %tx_bip_fem_auto_detect to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %tx_bip_fem_auto_detect, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end9.if.end15_crit_edge
  %tx_bip_fem_auto_detect17 = getelementptr inbounds %struct.wl128x_general_parms_cmd, ptr %call7.i.i, i32 0, i32 2, i32 10
  %12 = ptrtoint ptr %tx_bip_fem_auto_detect17 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_bip_fem_auto_detect17, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool18.not = icmp eq i8 %13, 0
  %14 = xor i1 %tobool18.not, true
  %ref_clock = getelementptr inbounds %struct.wl12xx_priv, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %ref_clock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ref_clock, align 4
  %conv21 = trunc i32 %16 to i8
  %17 = ptrtoint ptr %general_params10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv21, ptr %general_params10, align 8
  %tcxo_clock = getelementptr inbounds %struct.wl12xx_priv, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %tcxo_clock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tcxo_clock, align 4
  %conv24 = trunc i32 %19 to i8
  %tcxo_ref_clock = getelementptr inbounds %struct.wl128x_general_parms_cmd, ptr %call7.i.i, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %tcxo_ref_clock to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv24, ptr %tcxo_ref_clock, align 1
  %conv27 = zext i1 %14 to i8
  %call28 = tail call i32 @wl1271_cmd_test(ptr noundef %wl, ptr noundef nonnull %call7.i.i, i32 noundef 96, i8 noundef zeroext %conv27) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %out

if.end37:                                         ; preds = %if.end15
  %tx_bip_fem_manufacturer39 = getelementptr inbounds %struct.wl128x_general_parms_cmd, ptr %call7.i.i, i32 0, i32 2, i32 11
  %21 = ptrtoint ptr %tx_bip_fem_manufacturer39 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tx_bip_fem_manufacturer39, align 1
  %23 = ptrtoint ptr %tx_bip_fem_manufacturer to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %tx_bip_fem_manufacturer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp43 = icmp ugt i8 %22, 3
  br i1 %cmp43, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %out

if.end51:                                         ; preds = %if.end37
  %24 = ptrtoint ptr %plt_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %plt_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp53 = icmp eq i32 %25, 2
  br i1 %cmp53, label %if.then55, label %if.end51.do.body58_crit_edge

if.end51.do.body58_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body58

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  %fem_manuf = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 16
  %26 = ptrtoint ptr %fem_manuf to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %22, ptr %fem_manuf, align 8
  br label %do.body58

do.body58:                                        ; preds = %if.then55, %if.end51.do.body58_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %27 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %27, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %do.body58.out_crit_edge, label %do.body63, !prof !75

do.body58.out_crit_edge:                          ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body63:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl128x_cmd_general_parms.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl128x_cmd_general_parms, %if.then73)) #4
          to label %out [label %if.then73], !srcloc !74

if.then73:                                        ; preds = %do.body63
  br i1 %tobool18.not, label %if.then73.cond.end_crit_edge, label %cond.false

if.then73.cond.end_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %plt_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %plt_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp79 = icmp eq i32 %29, 2
  %cond = select i1 %cmp79, ptr @.str.16, ptr @.str.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then73.cond.end_crit_edge
  %cond81 = phi ptr [ %cond, %cond.false ], [ @.str.15, %if.then73.cond.end_crit_edge ]
  %30 = ptrtoint ptr %tx_bip_fem_manufacturer to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tx_bip_fem_manufacturer, align 1
  %conv83 = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl128x_cmd_general_parms.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond81, i32 noundef %conv83) #4
  br label %out

out:                                              ; preds = %cond.end, %do.body63, %do.body58.out_crit_edge, %do.end48, %do.end34
  %ret.0 = phi i32 [ %call28, %do.end34 ], [ -22, %do.end48 ], [ %call28, %cond.end ], [ %call28, %do.body58.out_crit_edge ], [ %call28, %do.body63 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %out ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_cmd_radio_parms(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nvs1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 25
  %0 = ptrtoint ptr %nvs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvs1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 224) #7
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %test = getelementptr inbounds %struct.wl1271_radio_parms_cmd, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %test to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 25, ptr %test, align 4
  %tx_bip_fem_manufacturer = getelementptr inbounds %struct.wl1271_nvs_file, ptr %1, i32 0, i32 1, i32 6
  %4 = ptrtoint ptr %tx_bip_fem_manufacturer to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_bip_fem_manufacturer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %cond = zext i1 %cmp to i32
  %static_params_2 = getelementptr inbounds %struct.wl1271_radio_parms_cmd, ptr %call7.i.i, i32 0, i32 2
  %stat_radio_params_2 = getelementptr inbounds %struct.wl1271_nvs_file, ptr %1, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %static_params_2, ptr %stat_radio_params_2, i32 17)
  %dyn_params_2 = getelementptr inbounds %struct.wl1271_radio_parms_cmd, ptr %call7.i.i, i32 0, i32 4
  %arrayidx = getelementptr %struct.wl1271_nvs_file, ptr %1, i32 0, i32 5, i32 %cond
  %7 = call ptr @memcpy(ptr %dyn_params_2, ptr %arrayidx, i32 65)
  %static_params_5 = getelementptr inbounds %struct.wl1271_radio_parms_cmd, ptr %call7.i.i, i32 0, i32 3
  %stat_radio_params_5 = getelementptr inbounds %struct.wl1271_nvs_file, ptr %1, i32 0, i32 6
  %8 = call ptr @memcpy(ptr %static_params_5, ptr %stat_radio_params_5, i32 29)
  %dyn_params_5 = getelementptr inbounds %struct.wl1271_radio_parms_cmd, ptr %call7.i.i, i32 0, i32 6
  %arrayidx7 = getelementptr %struct.wl1271_nvs_file, ptr %1, i32 0, i32 8, i32 %cond
  %9 = call ptr @memcpy(ptr %dyn_params_5, ptr %arrayidx7, i32 102)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %10 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %10, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end5.do.end20_crit_edge, label %do.body11

if.end5.do.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

do.body11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_cmd_radio_parms.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_cmd_radio_parms, %if.then16)) #4
          to label %do.end20 [label %if.then16], !srcloc !74

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @print_hex_dump(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.25, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call7.i.i, i32 noundef 224, i1 noundef zeroext false) #4
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %do.body11, %if.end5.do.end20_crit_edge
  %call21 = tail call i32 @wl1271_cmd_test(ptr noundef %wl, ptr noundef nonnull %call7.i.i, i32 noundef 224, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end27, label %do.end20.if.end30_crit_edge

do.end20.if.end30_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

do.end27:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #6
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %do.end20.if.end30_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end30 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl128x_cmd_radio_parms(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nvs1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 25
  %0 = ptrtoint ptr %nvs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvs1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 340) #7
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %test = getelementptr inbounds %struct.wl128x_radio_parms_cmd, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %test to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 25, ptr %test, align 4
  %tx_bip_fem_manufacturer = getelementptr inbounds %struct.wl128x_nvs_file, ptr %1, i32 0, i32 1, i32 11
  %4 = ptrtoint ptr %tx_bip_fem_manufacturer to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_bip_fem_manufacturer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %cond = zext i1 %cmp to i32
  %static_params_2 = getelementptr inbounds %struct.wl128x_radio_parms_cmd, ptr %call7.i.i, i32 0, i32 2
  %stat_radio_params_2 = getelementptr inbounds %struct.wl128x_nvs_file, ptr %1, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %static_params_2, ptr %stat_radio_params_2, i32 30)
  %dyn_params_2 = getelementptr inbounds %struct.wl128x_radio_parms_cmd, ptr %call7.i.i, i32 0, i32 5
  %arrayidx = getelementptr %struct.wl128x_nvs_file, ptr %1, i32 0, i32 5, i32 %cond
  %7 = call ptr @memcpy(ptr %dyn_params_2, ptr %arrayidx, i32 87)
  %static_params_5 = getelementptr inbounds %struct.wl128x_radio_parms_cmd, ptr %call7.i.i, i32 0, i32 3
  %stat_radio_params_5 = getelementptr inbounds %struct.wl128x_nvs_file, ptr %1, i32 0, i32 6
  %8 = call ptr @memcpy(ptr %static_params_5, ptr %stat_radio_params_5, i32 57)
  %dyn_params_5 = getelementptr inbounds %struct.wl128x_radio_parms_cmd, ptr %call7.i.i, i32 0, i32 7
  %arrayidx7 = getelementptr %struct.wl128x_nvs_file, ptr %1, i32 0, i32 8, i32 %cond
  %9 = call ptr @memcpy(ptr %dyn_params_5, ptr %arrayidx7, i32 156)
  %fem_vendor_and_options = getelementptr inbounds %struct.wl128x_nvs_file, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %fem_vendor_and_options to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fem_vendor_and_options, align 1
  %fem_vendor_and_options9 = getelementptr inbounds %struct.wl128x_radio_parms_cmd, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %fem_vendor_and_options9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %fem_vendor_and_options9, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %13 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end5.do.end21_crit_edge, label %do.body12

if.end5.do.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end21

do.body12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl128x_cmd_radio_parms.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl128x_cmd_radio_parms, %if.then17)) #4
          to label %do.end21 [label %if.then17], !srcloc !74

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @print_hex_dump(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.25, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call7.i.i, i32 noundef 340, i1 noundef zeroext false) #4
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %do.body12, %if.end5.do.end21_crit_edge
  %call22 = tail call i32 @wl1271_cmd_test(ptr noundef %wl, ptr noundef nonnull %call7.i.i, i32 noundef 340, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end28, label %do.end21.if.end31_crit_edge

do.end21.if.end31_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

do.end28:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #6
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #8
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %do.end21.if.end31_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end31 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl12xx_cmd_channel_switch(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, ptr nocapture noundef readonly %ch_switch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !75

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_cmd_channel_switch.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_cmd_channel_switch, %if.then11)) #4
          to label %do.end14 [label %if.then11], !srcloc !74

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_cmd_channel_switch.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.29) #4
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #7
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end18:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id19 = getelementptr inbounds %struct.wl12xx_cmd_channel_switch, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id19, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %ch_switch, i32 0, i32 3
  %5 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chandef, align 8
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hw_value, align 2
  %conv = trunc i16 %8 to i8
  %channel = getelementptr inbounds %struct.wl12xx_cmd_channel_switch, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %channel, align 1
  %count = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %ch_switch, i32 0, i32 4
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %count, align 4
  %switch_time = getelementptr inbounds %struct.wl12xx_cmd_channel_switch, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %switch_time to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %switch_time, align 2
  %block_tx = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %ch_switch, i32 0, i32 2
  %13 = ptrtoint ptr %block_tx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %block_tx, align 4, !range !76
  %stop_tx = getelementptr inbounds %struct.wl12xx_cmd_channel_switch, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %stop_tx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %stop_tx, align 1
  %post_switch_tx_disable = getelementptr inbounds %struct.wl12xx_cmd_channel_switch, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %post_switch_tx_disable to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %post_switch_tx_disable, align 8
  %call22 = tail call i32 @wl1271_cmd_send(ptr noundef %wl, i16 noundef zeroext 20, ptr noundef nonnull %call7.i.i, i32 noundef 12, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %do.end27, label %if.end18.out_free_crit_edge

if.end18.out_free_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #8
  br label %out_free

out_free:                                         ; preds = %do.end27, %if.end18.out_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %out

out:                                              ; preds = %out_free, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call22, %out_free ], [ -12, %do.end14.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_send(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !59, !60, !61, !63, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl12xx/cmd.c", i32 38, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wl1271_cmd_ext_radio_parms.__UNIQUE_ID_ddebug350, !1, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ti/wl12xx/cmd.c", i32 43, i32 3}
!9 = !{ptr @wl1271_cmd_ext_radio_parms._entry, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @wl1271_cmd_ext_radio_parms._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ti/wl12xx/cmd.c", i32 62, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @wl1271_cmd_general_parms._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @wl1271_cmd_general_parms._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ti/wl12xx/cmd.c", i32 86, i32 3}
!18 = !{ptr @wl1271_cmd_general_parms._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @wl1271_cmd_general_parms._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ti/wl12xx/cmd.c", i32 94, i32 3}
!22 = !{ptr @wl1271_cmd_general_parms._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @wl1271_cmd_general_parms._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ti/wl12xx/cmd.c", i32 103, i32 2}
!26 = !{ptr @wl1271_cmd_general_parms.__UNIQUE_ID_ddebug351, !25, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!27 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ti/wl12xx/cmd.c", i32 129, i32 3}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @wl128x_cmd_general_parms._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @wl128x_cmd_general_parms._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @wl128x_cmd_general_parms._entry.20, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ti/wl12xx/cmd.c", i32 154, i32 3}
!37 = !{ptr @wl128x_cmd_general_parms._entry_ptr.21, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @wl128x_cmd_general_parms._entry.22, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ti/wl12xx/cmd.c", i32 162, i32 3}
!40 = !{ptr @wl128x_cmd_general_parms._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @wl128x_cmd_general_parms.__UNIQUE_ID_ddebug352, !42, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ti/wl12xx/cmd.c", i32 171, i32 2}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ti/wl12xx/cmd.c", i32 217, i32 2}
!45 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @wl1271_cmd_radio_parms.__UNIQUE_ID_ddebug355, !44, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ti/wl12xx/cmd.c", i32 222, i32 3}
!49 = !{ptr @wl1271_cmd_radio_parms._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @wl1271_cmd_radio_parms._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ti/wl12xx/cmd.c", i32 263, i32 2}
!53 = !{ptr @wl128x_cmd_radio_parms.__UNIQUE_ID_ddebug358, !52, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!54 = !{ptr @wl128x_cmd_radio_parms._entry, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ti/wl12xx/cmd.c", i32 268, i32 3}
!56 = !{ptr @wl128x_cmd_radio_parms._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ti/wl12xx/cmd.c", i32 281, i32 2}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @wl12xx_cmd_channel_switch.__UNIQUE_ID_ddebug359, !58, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ti/wl12xx/cmd.c", i32 300, i32 3}
!63 = !{ptr @wl12xx_cmd_channel_switch._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @wl12xx_cmd_channel_switch._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148331681, i64 2148331686, i64 2148331699, i64 2148331743, i64 2148331777, i64 2148331798}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i8 0, i8 2}
