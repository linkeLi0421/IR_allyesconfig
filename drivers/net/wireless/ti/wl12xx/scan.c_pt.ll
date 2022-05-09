; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl12xx/scan.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl12xx/scan.c"
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
%struct.wl12xx_vif = type { ptr, %struct.list_head, i32, i8, i8, i8, i8, i8, %union.anon.129, i32, [4 x i32], [1 x i32], [33 x i8], i8, i32, i32, i32, [2 x i32], i32, i32, i32, ptr, i32, i32, i16, i8, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.delayed_work, %struct.delayed_work, i32, i32, i8, i32, %struct.delayed_work, i32, %struct.ieee80211_sta_ht_cap, %struct.work_struct, i64, %struct.anon.132 }
%union.anon.129 = type { %struct.anon.131 }
%struct.anon.131 = type { i8, i8, [1 x i32], [14 x ptr], i8, i8, [4 x i8] }
%struct.anon.132 = type { [0 x i8] }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.wl1271_cmd_scan = type { %struct.wl1271_cmd_header, %struct.basic_scan_params, [24 x %struct.basic_scan_channel_params], [6 x i8], [2 x i8] }
%struct.wl1271_cmd_header = type { i16, i16, [0 x i8] }
%struct.basic_scan_params = type { i16, i8, i8, i8, i8, i8, i8, i32, [32 x i8], i8, i8, [2 x i8] }
%struct.basic_scan_channel_params = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8 }
%struct.wl1271_cmd_trigger_scan_to = type { %struct.wl1271_cmd_header, i32 }
%struct.cfg80211_sched_scan_request = type { i64, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, %struct.cfg80211_bss_select_adjust, ptr, ptr, i32, i8, %struct.callback_head, i32, i8, %struct.list_head, [0 x ptr] }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.wl1271_cmd_sched_scan_config = type { %struct.wl1271_cmd_header, [16 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, [32 x i8], i8, [3 x i8], [3 x i8], i8, i8, i8, [1 x i8], [14 x %struct.conn_scan_ch_params], [23 x %struct.conn_scan_ch_params], [4 x %struct.conn_scan_ch_params] }
%struct.conn_scan_ch_params = type { i16, i16, i16, i8, i8, i8, [3 x i8] }
%struct.wlcore_scan_channels = type { [3 x i8], [3 x i8], i8, i8, [14 x %struct.conn_scan_ch_params], [42 x %struct.conn_scan_ch_params], [4 x %struct.conn_scan_ch_params] }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.wl1271_cmd_sched_scan_start = type { %struct.wl1271_cmd_header, i8, i8, [2 x i8] }
%struct.wl1271_cmd_sched_scan_stop = type { %struct.wl1271_cmd_header, i8, i8, [2 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ti/wl12xx/scan.c\00", [58 x i8] zeroinitializer }, align 32
@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wl12xx_scan_stop.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl12xx\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wl12xx_scan_stop\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wlcore: cmd scan stop\0A\00", [41 x i8] zeroinitializer }, align 32
@wl12xx_scan_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013wlcore: ERROR cmd stop_scan failed\0A\00", [58 x i8] zeroinitializer }, align 32
@wl12xx_scan_stop._entry_ptr = internal global ptr @wl12xx_scan_stop._entry, section ".printk_index", align 4
@wl1271_scan_stm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013wlcore: ERROR invalid scan state\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl1271_scan_stm\00", [16 x i8] zeroinitializer }, align 32
@wl1271_scan_stm._entry_ptr = internal global ptr @wl1271_scan_stm._entry, section ".printk_index", align 4
@wl1271_scan_sched_scan_config.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str, ptr @.str.8, i8 0, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wl1271_scan_sched_scan_config\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wlcore: cmd sched_scan scan config\0A\00", [60 x i8] zeroinitializer }, align 32
@wl1271_scan_sched_scan_config.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str, ptr @.str.9, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wlcore: filter_type = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@wl1271_scan_sched_scan_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013wlcore: ERROR scan channel list is empty\0A\00", [52 x i8] zeroinitializer }, align 32
@wl1271_scan_sched_scan_config._entry_ptr = internal global ptr @wl1271_scan_sched_scan_config._entry, section ".printk_index", align 4
@wl1271_scan_sched_scan_config._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013wlcore: ERROR 2.4GHz PROBE request template failed\0A\00", [42 x i8] zeroinitializer }, align 32
@wl1271_scan_sched_scan_config._entry_ptr.13 = internal global ptr @wl1271_scan_sched_scan_config._entry.11, section ".printk_index", align 4
@wl1271_scan_sched_scan_config._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013wlcore: ERROR 5GHz PROBE request template failed\0A\00", [44 x i8] zeroinitializer }, align 32
@wl1271_scan_sched_scan_config._entry_ptr.16 = internal global ptr @wl1271_scan_sched_scan_config._entry.14, section ".printk_index", align 4
@wl1271_scan_sched_scan_config.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str, ptr @.str.17, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wlcore: SCAN_CFG: \00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@wl1271_scan_sched_scan_config._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.7, ptr @.str, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013wlcore: ERROR SCAN configuration failed\0A\00", [53 x i8] zeroinitializer }, align 32
@wl1271_scan_sched_scan_config._entry_ptr.21 = internal global ptr @wl1271_scan_sched_scan_config._entry.19, section ".printk_index", align 4
@wl1271_scan_sched_scan_start.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str, ptr @.str.23, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1271_scan_sched_scan_start\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wlcore: cmd periodic scan start\0A\00", [63 x i8] zeroinitializer }, align 32
@wl1271_scan_sched_scan_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013wlcore: ERROR failed to send scan start command\0A\00", [45 x i8] zeroinitializer }, align 32
@wl1271_scan_sched_scan_start._entry_ptr = internal global ptr @wl1271_scan_sched_scan_start._entry, section ".printk_index", align 4
@wl12xx_scan_sched_scan_stop.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str, ptr @.str.26, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl12xx_scan_sched_scan_stop\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wlcore: cmd periodic scan stop\0A\00", [32 x i8] zeroinitializer }, align 32
@wl12xx_scan_sched_scan_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013wlcore: ERROR failed to alloc memory to send sched scan stop\0A\00", [32 x i8] zeroinitializer }, align 32
@wl12xx_scan_sched_scan_stop._entry_ptr = internal global ptr @wl12xx_scan_sched_scan_stop._entry, section ".printk_index", align 4
@wl12xx_scan_sched_scan_stop._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wlcore: ERROR failed to send sched scan stop command\0A\00", [40 x i8] zeroinitializer }, align 32
@wl12xx_scan_sched_scan_stop._entry_ptr.30 = internal global ptr @wl12xx_scan_sched_scan_stop._entry.28, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wl1271_scan_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013wlcore: ERROR PROBE request template failed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wl1271_scan_send\00", [47 x i8] zeroinitializer }, align 32
@wl1271_scan_send._entry_ptr = internal global ptr @wl1271_scan_send._entry, section ".printk_index", align 4
@wl1271_scan_send._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013wlcore: ERROR trigger scan to failed for hw scan\0A\00", [44 x i8] zeroinitializer }, align 32
@wl1271_scan_send._entry_ptr.35 = internal global ptr @wl1271_scan_send._entry.33, section ".printk_index", align 4
@wl1271_scan_send.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str, ptr @.str.36, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wlcore: SCAN: \00", [17 x i8] zeroinitializer }, align 32
@wl1271_scan_send._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013wlcore: ERROR SCAN failed\0A\00", [35 x i8] zeroinitializer }, align 32
@wl1271_scan_send._entry_ptr.39 = internal global ptr @wl1271_scan_send._entry.37, section ".printk_index", align 4
@wl1271_get_scan_channels.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str, ptr @.str.41, i8 0, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl1271_get_scan_channels\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wlcore: band %d, center_freq %d \0A\00", [62 x i8] zeroinitializer }, align 32
@wl1271_get_scan_channels.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str, ptr @.str.42, i8 0, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wlcore: hw_value %d, flags %X\0A\00", [33 x i8] zeroinitializer }, align 32
@wl1271_get_scan_channels.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str, ptr @.str.43, i8 0, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"wlcore: max_antenna_gain %d, max_power %d\0A\00", [53 x i8] zeroinitializer }, align 32
@wl1271_get_scan_channels.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str, ptr @.str.44, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wlcore: beacon_found %d\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 182, i32 6 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 185, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 196, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 281, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 318, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 349, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 360, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 378, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 395, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 400, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 405, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 419, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 438, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 465, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 470, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 480, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 151, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 159, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 163, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 167, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 37, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 40, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 43, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [41 x i8] c"../drivers/net/wireless/ti/wl12xx/scan.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 47, i32 4 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @wl1271_scan_sched_scan_config._entry, ptr @wl1271_scan_sched_scan_config._entry.11, ptr @wl1271_scan_sched_scan_config._entry.14, ptr @wl1271_scan_sched_scan_config._entry.19, ptr @wl1271_scan_sched_scan_config._entry_ptr, ptr @wl1271_scan_sched_scan_config._entry_ptr.13, ptr @wl1271_scan_sched_scan_config._entry_ptr.16, ptr @wl1271_scan_sched_scan_config._entry_ptr.21, ptr @wl1271_scan_sched_scan_start._entry, ptr @wl1271_scan_sched_scan_start._entry_ptr, ptr @wl1271_scan_send._entry, ptr @wl1271_scan_send._entry.33, ptr @wl1271_scan_send._entry.37, ptr @wl1271_scan_send._entry_ptr, ptr @wl1271_scan_send._entry_ptr.35, ptr @wl1271_scan_send._entry_ptr.39, ptr @wl1271_scan_stm._entry, ptr @wl1271_scan_stm._entry_ptr, ptr @wl12xx_scan_sched_scan_stop._entry, ptr @wl12xx_scan_sched_scan_stop._entry.28, ptr @wl12xx_scan_sched_scan_stop._entry_ptr, ptr @wl12xx_scan_sched_scan_stop._entry_ptr.30, ptr @wl12xx_scan_stop._entry, ptr @wl12xx_scan_stop._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_scan_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_scan_stm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_scan_sched_scan_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_scan_sched_scan_config._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_scan_sched_scan_config._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_scan_sched_scan_config._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_scan_sched_scan_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_scan_sched_scan_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_scan_sched_scan_stop._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_scan_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_scan_send._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_scan_send._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl12xx_scan_stop(ptr noundef %wl, ptr nocapture noundef readnone %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 79, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %do.end, label %do.body23, !prof !101

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 182, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

do.body23:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %2 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %do.body23.do.end47_crit_edge, label %do.body32, !prof !102

do.body23.do.end47_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end47

do.body32:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_scan_stop.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_scan_stop, %if.then41)) #5
          to label %do.end47 [label %if.then41], !srcloc !103

if.then41:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_scan_stop.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.3) #5
  br label %do.end47

do.end47:                                         ; preds = %if.then41, %do.body32, %do.body23.do.end47_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4) #8
  %tobool49.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool49.not, label %do.end47.out_crit_edge, label %if.end51

do.end47.out_crit_edge:                           ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end51:                                         ; preds = %do.end47
  %call52 = tail call i32 @wl1271_cmd_send(ptr noundef %wl, i16 noundef zeroext 8, ptr noundef nonnull %call7.i.i, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %do.end58, label %if.end51.out_crit_edge

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %out

out:                                              ; preds = %do.end58, %if.end51.out_crit_edge, %do.end47.out_crit_edge
  %ret.0 = phi i32 [ %call52, %do.end58 ], [ %call52, %if.end51.out_crit_edge ], [ -12, %do.end47.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_send(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1271_scan_stm(ptr noundef %wl, ptr noundef %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %scan = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 79
  %state = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 79, i32 3
  %arrayidx50 = getelementptr %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 17, i32 1
  %bitrate_masks12 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 17
  %enable_11a = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 96
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %entry
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.end [
    i8 0, label %tailrecurse.if.end73_crit_edge
    i8 1, label %sw.bb
    i8 2, label %sw.bb11
    i8 3, label %sw.bb37
    i8 4, label %sw.bb48
    i8 5, label %sw.bb59
  ]

tailrecurse.if.end73_crit_edge:                   ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

sw.bb:                                            ; preds = %tailrecurse
  %3 = ptrtoint ptr %bitrate_masks12 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bitrate_masks12, align 4
  %5 = ptrtoint ptr %scan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scan, align 8
  %no_cck = getelementptr inbounds %struct.cfg80211_scan_request, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %no_cck to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %no_cck, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %and = and i32 %4, -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool2.not, i32 8, i32 %and
  %mask.0 = select i1 %tobool.not, i32 %4, i32 %spec.store.select
  %call = tail call i32 @wl1271_tx_min_rate_get(ptr noundef %wl, i32 noundef %mask.0) #5
  %call5 = tail call fastcc i32 @wl1271_scan_send(ptr noundef %wl, ptr noundef %wlvif, i32 noundef 0, i1 noundef zeroext false, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp = icmp eq i32 %call5, 1
  br i1 %cmp, label %sw.bb.tailrecurse.backedge_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb.tailrecurse.backedge_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %sw.bb48.tailrecurse.backedge_crit_edge, %sw.bb37.tailrecurse.backedge_crit_edge, %if.then28, %sw.bb.tailrecurse.backedge_crit_edge
  %.sink = phi i8 [ %., %if.then28 ], [ 4, %sw.bb37.tailrecurse.backedge_crit_edge ], [ 5, %sw.bb48.tailrecurse.backedge_crit_edge ], [ 2, %sw.bb.tailrecurse.backedge_crit_edge ]
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %state, align 1
  br label %tailrecurse

sw.bb11:                                          ; preds = %tailrecurse
  %10 = ptrtoint ptr %bitrate_masks12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bitrate_masks12, align 4
  %12 = ptrtoint ptr %scan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scan, align 8
  %no_cck16 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %no_cck16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %no_cck16, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool17.not = icmp eq i8 %15, 0
  %and19 = and i32 %11, -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %spec.store.select74 = select i1 %tobool20.not, i32 8, i32 %and19
  %mask.1 = select i1 %tobool17.not, i32 %11, i32 %spec.store.select74
  %call24 = tail call i32 @wl1271_tx_min_rate_get(ptr noundef %wl, i32 noundef %mask.1) #5
  %call25 = tail call fastcc i32 @wl1271_scan_send(ptr noundef %wl, ptr noundef %wlvif, i32 noundef 0, i1 noundef zeroext true, i32 noundef %call24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp26 = icmp eq i32 %call25, 1
  br i1 %cmp26, label %if.then28, label %sw.bb11.sw.epilog_crit_edge

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then28:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %enable_11a to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enable_11a, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool29.not = icmp eq i8 %17, 0
  %. = select i1 %tobool29.not, i8 5, i8 3
  br label %tailrecurse.backedge

sw.bb37:                                          ; preds = %tailrecurse
  %18 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx50, align 4
  %call40 = tail call i32 @wl1271_tx_min_rate_get(ptr noundef %wl, i32 noundef %19) #5
  %call41 = tail call fastcc i32 @wl1271_scan_send(ptr noundef %wl, ptr noundef %wlvif, i32 noundef 1, i1 noundef zeroext false, i32 noundef %call40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call41)
  %cmp42 = icmp eq i32 %call41, 1
  br i1 %cmp42, label %sw.bb37.tailrecurse.backedge_crit_edge, label %sw.bb37.sw.epilog_crit_edge

sw.bb37.sw.epilog_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb37.tailrecurse.backedge_crit_edge:           ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #7
  br label %tailrecurse.backedge

sw.bb48:                                          ; preds = %tailrecurse
  %20 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx50, align 4
  %call51 = tail call i32 @wl1271_tx_min_rate_get(ptr noundef %wl, i32 noundef %21) #5
  %call52 = tail call fastcc i32 @wl1271_scan_send(ptr noundef %wl, ptr noundef %wlvif, i32 noundef 1, i1 noundef zeroext true, i32 noundef %call51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call52)
  %cmp53 = icmp eq i32 %call52, 1
  br i1 %cmp53, label %sw.bb48.tailrecurse.backedge_crit_edge, label %sw.bb48.sw.epilog_crit_edge

sw.bb48.sw.epilog_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb48.tailrecurse.backedge_crit_edge:           ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #7
  br label %tailrecurse.backedge

sw.bb59:                                          ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #7
  %failed = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 79, i32 2
  %22 = ptrtoint ptr %failed to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %failed, align 4
  %scan_complete_work = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 80
  %call61 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %scan_complete_work) #5
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %24, ptr noundef %scan_complete_work, i32 noundef 0) #5
  br label %if.end73

do.end:                                           ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #7
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %if.end73

sw.epilog:                                        ; preds = %sw.bb48.sw.epilog_crit_edge, %sw.bb37.sw.epilog_crit_edge, %sw.bb11.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call52, %sw.bb48.sw.epilog_crit_edge ], [ %call41, %sw.bb37.sw.epilog_crit_edge ], [ %call25, %sw.bb11.sw.epilog_crit_edge ], [ %call5, %sw.bb.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp65 = icmp slt i32 %ret.0, 0
  br i1 %cmp65, label %if.then67, label %sw.epilog.if.end73_crit_edge

sw.epilog.if.end73_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

if.then67:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %scan_complete_work68 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 80
  %call69 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %scan_complete_work68) #5
  %hw70 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %25 = ptrtoint ptr %hw70 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw70, align 4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %26, ptr noundef %scan_complete_work68, i32 noundef 0) #5
  br label %if.end73

if.end73:                                         ; preds = %if.then67, %sw.epilog.if.end73_crit_edge, %do.end, %sw.bb59, %tailrecurse.if.end73_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_tx_min_rate_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1271_scan_send(ptr noundef %wl, ptr noundef %wlvif, i32 noundef %band, i1 noundef zeroext %passive, i32 noundef %basic_rate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %wlvif, i32 -848
  br i1 %passive, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %scan = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 79
  %0 = ptrtoint ptr %scan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scan, align 8
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 540) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i226 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 8) #8
  %tobool3.not = icmp eq ptr %call7.i.i, null
  %tobool4.not = icmp eq ptr %call7.i.i226, null
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end6:                                          ; preds = %if.end
  %split_scan_timeout = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 7, i32 7
  %6 = ptrtoint ptr %split_scan_timeout to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %split_scan_timeout, align 2
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %cmp.i = icmp eq i32 %9, 10
  %dev_role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 6
  %role_id20 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %.sink.in = select i1 %cmp.i, ptr %dev_role_id, ptr %role_id20
  %10 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %10)
  %.sink = load i8, ptr %.sink.in, align 1
  %11 = getelementptr inbounds %struct.wl1271_cmd_scan, ptr %call7.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink, ptr %11, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %.sink)
  %cmp27 = icmp eq i8 %.sink, -1
  br i1 %cmp27, label %do.end, label %if.end52, !prof !101

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef null) #5
  br label %out

if.end52:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool8.not, i16 0, i16 2
  %13 = zext i1 %passive to i16
  %scan_options.1 = or i16 %spec.select, %13
  %params24 = getelementptr inbounds %struct.wl1271_cmd_scan, ptr %call7.i.i, i32 0, i32 1
  %14 = shl nuw nsw i16 %scan_options.1, 8
  %15 = ptrtoint ptr %params24 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %params24, align 4
  %scan55 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 79
  %16 = ptrtoint ptr %scan55 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %scan55, align 8
  %channels = getelementptr inbounds %struct.wl1271_cmd_scan, ptr %call7.i.i, i32 0, i32 2
  %call58 = tail call fastcc i32 @wl1271_get_scan_channels(ptr noundef %wl, ptr noundef %17, ptr noundef %channels, i32 noundef %band, i1 noundef zeroext %passive)
  %conv59 = trunc i32 %call58 to i8
  %n_ch = getelementptr inbounds %struct.wl1271_cmd_scan, ptr %call7.i.i, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %n_ch to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv59, ptr %n_ch, align 1
  %conv63 = and i32 %call58, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv63)
  %cmp64 = icmp eq i32 %conv63, 0
  br i1 %cmp64, label %if.end52.out_crit_edge, label %if.end67

if.end52.out_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end67:                                         ; preds = %if.end52
  %19 = tail call i32 @llvm.bswap.i32(i32 %basic_rate)
  %tx_rate = getelementptr inbounds %struct.wl1271_cmd_scan, ptr %call7.i.i, i32 0, i32 1, i32 7
  %20 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tx_rate, align 4
  %num_probe_reqs = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 7, i32 6
  %21 = ptrtoint ptr %num_probe_reqs to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_probe_reqs, align 2
  %conv71 = trunc i16 %22 to i8
  %n_probe_reqs = getelementptr inbounds %struct.wl1271_cmd_scan, ptr %call7.i.i, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %n_probe_reqs to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv71, ptr %n_probe_reqs, align 8
  %tid_trigger = getelementptr inbounds %struct.wl1271_cmd_scan, ptr %call7.i.i, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %tid_trigger to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %tid_trigger, align 1
  %scan_tag = getelementptr inbounds %struct.wl1271_cmd_scan, ptr %call7.i.i, i32 0, i32 1, i32 10
  %25 = ptrtoint ptr %scan_tag to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %scan_tag, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %band)
  %cmp75 = icmp ne i32 %band, 0
  %spec.select229 = zext i1 %cmp75 to i8
  %26 = getelementptr inbounds %struct.wl1271_cmd_scan, ptr %call7.i.i, i32 0, i32 1, i32 9
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.select229, ptr %26, align 8
  %ssid_len = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 79, i32 5
  %28 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ssid_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool85.not = icmp eq i32 %29, 0
  br i1 %tobool85.not, label %if.end67.if.end99_crit_edge, label %if.then86

if.end67.if.end99_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

if.then86:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %conv89 = trunc i32 %29 to i8
  %ssid_len91 = getelementptr inbounds %struct.wl1271_cmd_scan, ptr %call7.i.i, i32 0, i32 1, i32 5
  %30 = ptrtoint ptr %ssid_len91 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv89, ptr %ssid_len91, align 2
  %ssid = getelementptr inbounds %struct.wl1271_cmd_scan, ptr %call7.i.i, i32 0, i32 1, i32 8
  %ssid95 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 79, i32 4
  %31 = call ptr @memcpy(ptr %ssid, ptr %ssid95, i32 %29)
  br label %if.end99

if.end99:                                         ; preds = %if.then86, %if.end67.if.end99_crit_edge
  %addr = getelementptr inbounds %struct.wl1271_cmd_scan, ptr %call7.i.i, i32 0, i32 3
  %addr101 = getelementptr i8, ptr %wlvif, i32 -48
  %32 = call ptr @memcpy(ptr %addr, ptr %addr101, i32 6)
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %11, align 2
  %conv105 = trunc i32 %band to i8
  %ssid107 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 79, i32 4
  %35 = ptrtoint ptr %scan55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %scan55, align 8
  %ie = getelementptr inbounds %struct.cfg80211_scan_request, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ie, align 8
  %ie_len = getelementptr inbounds %struct.cfg80211_scan_request, ptr %36, i32 0, i32 5
  %39 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ie_len, align 4
  %call115 = tail call i32 @wl12xx_cmd_build_probe_req(ptr noundef %wl, ptr noundef %wlvif, i8 noundef zeroext %34, i8 noundef zeroext %conv105, ptr noundef %ssid107, i32 noundef %29, ptr noundef %38, i32 noundef %40, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %do.end121, label %if.end124

do.end121:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #9
  br label %out

if.end124:                                        ; preds = %if.end99
  %41 = ptrtoint ptr %split_scan_timeout to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %split_scan_timeout, align 2
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %timeout = getelementptr inbounds %struct.wl1271_cmd_trigger_scan_to, ptr %call7.i.i226, i32 0, i32 1
  %44 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %timeout, align 4
  %call128 = tail call i32 @wl1271_cmd_send(ptr noundef %wl, i16 noundef zeroext 26, ptr noundef nonnull %call7.i.i226, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %do.end134, label %do.body138

do.end134:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #9
  br label %out

do.body138:                                       ; preds = %if.end124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %45 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %45, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool139.not = icmp eq i32 %and, 0
  br i1 %tobool139.not, label %do.body138.do.end158_crit_edge, label %do.body141

do.body138.do.end158_crit_edge:                   ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end158

do.body141:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_scan_send.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_scan_send, %if.then152)) #5
          to label %do.end158 [label %if.then152], !srcloc !103

if.then152:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @print_hex_dump(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.36, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call7.i.i, i32 noundef 540, i1 noundef zeroext false) #5
  br label %do.end158

do.end158:                                        ; preds = %if.then152, %do.body141, %do.body138.do.end158_crit_edge
  %call159 = tail call i32 @wl1271_cmd_send(ptr noundef %wl, i16 noundef zeroext 7, ptr noundef nonnull %call7.i.i, i32 noundef 540, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %cmp160 = icmp slt i32 %call159, 0
  br i1 %cmp160, label %do.end165, label %do.end158.out_crit_edge

do.end158.out_crit_edge:                          ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end165:                                        ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #7
  %call167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #9
  br label %out

out:                                              ; preds = %do.end165, %do.end158.out_crit_edge, %do.end134, %do.end121, %if.end52.out_crit_edge, %do.end, %if.end.out_crit_edge
  %ret.0 = phi i32 [ -22, %do.end ], [ %call115, %do.end121 ], [ %call128, %do.end134 ], [ %call159, %do.end165 ], [ %call159, %do.end158.out_crit_edge ], [ -12, %if.end.out_crit_edge ], [ 1, %if.end52.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #5
  tail call void @kfree(ptr noundef %call7.i.i226) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_scan_sched_scan_config(ptr noundef %wl, ptr noundef %wlvif, ptr noundef %req, ptr nocapture noundef readonly %ies) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %n_ssids = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %2 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %entry.do.end17_crit_edge, label %do.body5, !prof !102

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_scan_sched_scan_config.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_scan_sched_scan_config, %if.then14)) #5
          to label %do.end17 [label %if.then14], !srcloc !103

if.then14:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_scan_sched_scan_config.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.8) #5
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %do.body5, %entry.do.end17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 612) #8
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %do.end17.cleanup173_crit_edge, label %if.end21

do.end17.cleanup173_crit_edge:                    ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup173

if.end21:                                         ; preds = %do.end17
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %4 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %role_id, align 2
  %role_id22 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 17
  %6 = ptrtoint ptr %role_id22 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %role_id22, align 2
  %rssi_threshold = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 8, i32 7
  %7 = ptrtoint ptr %rssi_threshold to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rssi_threshold, align 1
  %rssi_threshold23 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %rssi_threshold23 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %rssi_threshold23, align 4
  %snr_threshold = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 8, i32 8
  %10 = ptrtoint ptr %snr_threshold to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %snr_threshold, align 1
  %snr_threshold24 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %snr_threshold24 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %snr_threshold24, align 1
  %num_probe_reqs = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 8, i32 6
  %13 = ptrtoint ptr %num_probe_reqs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_probe_reqs, align 1
  %n_probe_reqs = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 12
  %15 = ptrtoint ptr %n_probe_reqs to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %n_probe_reqs, align 1
  %cycles = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %cycles to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %cycles, align 2
  %report_after = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %report_after to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %report_after, align 1
  %terminate = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %terminate to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %terminate, align 8
  %tag = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %tag to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %tag, align 1
  %bss_type = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %bss_type to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %bss_type, align 2
  %scan_plans = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 12
  %21 = ptrtoint ptr %scan_plans to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %scan_plans, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %mul = mul i32 %24, 1000
  %25 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %arrayidx25 = getelementptr %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 1, i32 0
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx25, align 4
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %22, align 4
  %mul.1 = mul i32 %28, 1000
  %29 = tail call i32 @llvm.bswap.i32(i32 %mul.1)
  %arrayidx25.1 = getelementptr %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx25.1, align 8
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %22, align 4
  %mul.2 = mul i32 %32, 1000
  %33 = tail call i32 @llvm.bswap.i32(i32 %mul.2)
  %arrayidx25.2 = getelementptr %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx25.2, align 4
  %35 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %22, align 4
  %mul.3 = mul i32 %36, 1000
  %37 = tail call i32 @llvm.bswap.i32(i32 %mul.3)
  %arrayidx25.3 = getelementptr %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx25.3, align 8
  %39 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %22, align 4
  %mul.4 = mul i32 %40, 1000
  %41 = tail call i32 @llvm.bswap.i32(i32 %mul.4)
  %arrayidx25.4 = getelementptr %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 1, i32 4
  %42 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx25.4, align 4
  %43 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %22, align 4
  %mul.5 = mul i32 %44, 1000
  %45 = tail call i32 @llvm.bswap.i32(i32 %mul.5)
  %arrayidx25.5 = getelementptr %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 1, i32 5
  %46 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx25.5, align 8
  %47 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %22, align 4
  %mul.6 = mul i32 %48, 1000
  %49 = tail call i32 @llvm.bswap.i32(i32 %mul.6)
  %arrayidx25.6 = getelementptr %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 1, i32 6
  %50 = ptrtoint ptr %arrayidx25.6 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx25.6, align 4
  %51 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %22, align 4
  %mul.7 = mul i32 %52, 1000
  %53 = tail call i32 @llvm.bswap.i32(i32 %mul.7)
  %arrayidx25.7 = getelementptr %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 1, i32 7
  %54 = ptrtoint ptr %arrayidx25.7 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx25.7, align 8
  %55 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %22, align 4
  %mul.8 = mul i32 %56, 1000
  %57 = tail call i32 @llvm.bswap.i32(i32 %mul.8)
  %arrayidx25.8 = getelementptr %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 1, i32 8
  %58 = ptrtoint ptr %arrayidx25.8 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx25.8, align 4
  %59 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %22, align 4
  %mul.9 = mul i32 %60, 1000
  %61 = tail call i32 @llvm.bswap.i32(i32 %mul.9)
  %arrayidx25.9 = getelementptr %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 1, i32 9
  %62 = ptrtoint ptr %arrayidx25.9 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx25.9, align 8
  %63 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %22, align 4
  %mul.10 = mul i32 %64, 1000
  %65 = tail call i32 @llvm.bswap.i32(i32 %mul.10)
  %arrayidx25.10 = getelementptr %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 1, i32 10
  %66 = ptrtoint ptr %arrayidx25.10 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx25.10, align 4
  %67 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %22, align 4
  %mul.11 = mul i32 %68, 1000
  %69 = tail call i32 @llvm.bswap.i32(i32 %mul.11)
  %arrayidx25.11 = getelementptr %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 1, i32 11
  %70 = ptrtoint ptr %arrayidx25.11 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx25.11, align 8
  %71 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %22, align 4
  %mul.12 = mul i32 %72, 1000
  %73 = tail call i32 @llvm.bswap.i32(i32 %mul.12)
  %arrayidx25.12 = getelementptr %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 1, i32 12
  %74 = ptrtoint ptr %arrayidx25.12 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx25.12, align 4
  %75 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %22, align 4
  %mul.13 = mul i32 %76, 1000
  %77 = tail call i32 @llvm.bswap.i32(i32 %mul.13)
  %arrayidx25.13 = getelementptr %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 1, i32 13
  %78 = ptrtoint ptr %arrayidx25.13 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %arrayidx25.13, align 8
  %79 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %22, align 4
  %mul.14 = mul i32 %80, 1000
  %81 = tail call i32 @llvm.bswap.i32(i32 %mul.14)
  %arrayidx25.14 = getelementptr %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 1, i32 14
  %82 = ptrtoint ptr %arrayidx25.14 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx25.14, align 4
  %83 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %22, align 4
  %mul.15 = mul i32 %84, 1000
  %85 = tail call i32 @llvm.bswap.i32(i32 %mul.15)
  %arrayidx25.15 = getelementptr %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 1, i32 15
  %86 = ptrtoint ptr %arrayidx25.15 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %arrayidx25.15, align 8
  %ssid_len = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 10
  %87 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %ssid_len, align 4
  %call26 = tail call i32 @wlcore_scan_sched_scan_ssid_list(ptr noundef %wl, ptr noundef %wlvif, ptr noundef %req) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end21.out_crit_edge, label %if.end29

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end29:                                         ; preds = %if.end21
  %conv = trunc i32 %call26 to i8
  %filter_type = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 9
  %88 = ptrtoint ptr %filter_type to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv, ptr %filter_type, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %89 = load i32, ptr @wl12xx_debug_level, align 4
  %and31 = and i32 %89, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.do.end60_crit_edge, label %do.body40, !prof !102

if.end29.do.end60_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end60

do.body40:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_scan_sched_scan_config.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_scan_sched_scan_config, %if.then52)) #5
          to label %do.end60 [label %if.then52], !srcloc !103

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %filter_type to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %filter_type, align 1
  %conv54 = zext i8 %91 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_scan_sched_scan_config.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.9, i32 noundef %conv54) #5
  br label %do.end60

do.end60:                                         ; preds = %if.then52, %do.body40, %if.end29.do.end60_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %92 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i249 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef 3520, i32 noundef 728) #8
  %tobool62.not = icmp eq ptr %call7.i.i249, null
  br i1 %tobool62.not, label %do.end60.out_crit_edge, label %if.end64

do.end60.out_crit_edge:                           ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end64:                                         ; preds = %do.end60
  %channels = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 27
  %n_channels = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 3
  %93 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %n_channels, align 8
  %95 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %n_ssids, align 4
  %call66 = tail call zeroext i1 @wlcore_set_scan_chan_params(ptr noundef %wl, ptr noundef nonnull %call7.i.i249, ptr noundef %channels, i32 noundef %94, i32 noundef %96, i32 noundef 1) #5
  br i1 %call66, label %if.end73, label %if.end64.out.sink.split_crit_edge

if.end64.out.sink.split_crit_edge:                ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end73:                                         ; preds = %if.end64
  %passive.i = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 13
  %97 = call ptr @memcpy(ptr %passive.i, ptr %call7.i.i249, i32 3)
  %active.i = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 14
  %active4.i = getelementptr inbounds %struct.wlcore_scan_channels, ptr %call7.i.i249, i32 0, i32 1
  %98 = call ptr @memcpy(ptr %active.i, ptr %active4.i, i32 3)
  %dfs.i = getelementptr inbounds %struct.wlcore_scan_channels, ptr %call7.i.i249, i32 0, i32 2
  %99 = ptrtoint ptr %dfs.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %dfs.i, align 2
  %dfs6.i = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 15
  %101 = ptrtoint ptr %dfs6.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %dfs6.i, align 4
  %passive_active.i = getelementptr inbounds %struct.wlcore_scan_channels, ptr %call7.i.i249, i32 0, i32 3
  %102 = ptrtoint ptr %passive_active.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %passive_active.i, align 1
  %n_pactive_ch.i = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 16
  %104 = ptrtoint ptr %n_pactive_ch.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %n_pactive_ch.i, align 1
  %channels_2.i = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 19
  %channels_28.i = getelementptr inbounds %struct.wlcore_scan_channels, ptr %call7.i.i249, i32 0, i32 4
  %105 = call ptr @memcpy(ptr %channels_2.i, ptr %channels_28.i, i32 168)
  %channels_5.i = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 20
  %channels_511.i = getelementptr inbounds %struct.wlcore_scan_channels, ptr %call7.i.i249, i32 0, i32 5
  %106 = call ptr @memcpy(ptr %channels_5.i, ptr %channels_511.i, i32 276)
  br i1 %tobool.not, label %if.end73.do.body140_crit_edge, label %land.lhs.true

if.end73.do.body140_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body140

land.lhs.true:                                    ; preds = %if.end73
  %107 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %active.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool77.not = icmp eq i8 %108, 0
  br i1 %tobool77.not, label %land.lhs.true.land.lhs.true102_crit_edge, label %if.then78

land.lhs.true.land.lhs.true102_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true102

if.then78:                                        ; preds = %land.lhs.true
  %109 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %role_id, align 2
  %ssids = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 1
  %111 = ptrtoint ptr %ssids to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ssids, align 8
  %ssid_len84 = getelementptr inbounds %struct.cfg80211_ssid, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %ssid_len84 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %ssid_len84, align 1
  %conv85 = zext i8 %114 to i32
  %115 = ptrtoint ptr %ies to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ies, align 4
  %len = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 1
  %117 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %len, align 4
  %common_ies = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 2
  %119 = ptrtoint ptr %common_ies to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %common_ies, align 4
  %common_ie_len = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 3
  %121 = ptrtoint ptr %common_ie_len to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %common_ie_len, align 4
  %call90 = tail call i32 @wl12xx_cmd_build_probe_req(ptr noundef %wl, ptr noundef %wlvif, i8 noundef zeroext %110, i8 noundef zeroext 0, ptr noundef %112, i32 noundef %conv85, ptr noundef %116, i32 noundef %118, ptr noundef %120, i32 noundef %122, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.then78.out.sink.split_crit_edge, label %if.then78.land.lhs.true102_crit_edge

if.then78.land.lhs.true102_crit_edge:             ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true102

if.then78.out.sink.split_crit_edge:               ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

land.lhs.true102:                                 ; preds = %if.then78.land.lhs.true102_crit_edge, %land.lhs.true.land.lhs.true102_crit_edge
  %arrayidx104 = getelementptr %struct.wl1271_cmd_sched_scan_config, ptr %call7.i.i, i32 0, i32 14, i32 1
  %123 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx104, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool106.not = icmp eq i8 %124, 0
  br i1 %tobool106.not, label %land.lhs.true102.do.body140_crit_edge, label %if.then107

land.lhs.true102.do.body140_crit_edge:            ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body140

if.then107:                                       ; preds = %land.lhs.true102
  %125 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %role_id, align 2
  %ssids110 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 1
  %127 = ptrtoint ptr %ssids110 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ssids110, align 8
  %ssid_len116 = getelementptr inbounds %struct.cfg80211_ssid, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %ssid_len116 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %ssid_len116, align 1
  %conv117 = zext i8 %130 to i32
  %arrayidx120 = getelementptr [6 x ptr], ptr %ies, i32 0, i32 1
  %131 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx120, align 4
  %arrayidx123 = getelementptr %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 1, i32 1
  %133 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx123, align 4
  %common_ies124 = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 2
  %135 = ptrtoint ptr %common_ies124 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %common_ies124, align 4
  %common_ie_len125 = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 3
  %137 = ptrtoint ptr %common_ie_len125 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %common_ie_len125, align 4
  %call126 = tail call i32 @wl12xx_cmd_build_probe_req(ptr noundef %wl, ptr noundef %wlvif, i8 noundef zeroext %126, i8 noundef zeroext 1, ptr noundef %128, i32 noundef %conv117, ptr noundef %132, i32 noundef %134, ptr noundef %136, i32 noundef %138, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %if.then107.out.sink.split_crit_edge, label %if.then107.do.body140_crit_edge

if.then107.do.body140_crit_edge:                  ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body140

if.then107.out.sink.split_crit_edge:              ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

do.body140:                                       ; preds = %if.then107.do.body140_crit_edge, %land.lhs.true102.do.body140_crit_edge, %if.end73.do.body140_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %139 = load i32, ptr @wl12xx_debug_level, align 4
  %and141 = and i32 %139, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %do.body140.do.end162_crit_edge, label %do.body144

do.body140.do.end162_crit_edge:                   ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end162

do.body144:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_scan_sched_scan_config.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_scan_sched_scan_config, %if.then156)) #5
          to label %do.end162 [label %if.then156], !srcloc !103

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @print_hex_dump(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call7.i.i, i32 noundef 612, i1 noundef zeroext false) #5
  br label %do.end162

do.end162:                                        ; preds = %if.then156, %do.body144, %do.body140.do.end162_crit_edge
  %call163 = tail call i32 @wl1271_cmd_send(ptr noundef %wl, i16 noundef zeroext 27, ptr noundef nonnull %call7.i.i, i32 noundef 612, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %do.end162.out.sink.split_crit_edge, label %do.end162.out_crit_edge

do.end162.out_crit_edge:                          ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end162.out.sink.split_crit_edge:               ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

out.sink.split:                                   ; preds = %do.end162.out.sink.split_crit_edge, %if.then107.out.sink.split_crit_edge, %if.then78.out.sink.split_crit_edge, %if.end64.out.sink.split_crit_edge
  %.str.15.sink = phi ptr [ @.str.10, %if.end64.out.sink.split_crit_edge ], [ @.str.12, %if.then78.out.sink.split_crit_edge ], [ @.str.15, %if.then107.out.sink.split_crit_edge ], [ @.str.20, %do.end162.out.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ -22, %if.end64.out.sink.split_crit_edge ], [ %call90, %if.then78.out.sink.split_crit_edge ], [ %call126, %if.then107.out.sink.split_crit_edge ], [ %call163, %do.end162.out.sink.split_crit_edge ]
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink) #9
  br label %out

out:                                              ; preds = %out.sink.split, %do.end162.out_crit_edge, %do.end60.out_crit_edge, %if.end21.out_crit_edge
  %ret.0 = phi i32 [ %call26, %if.end21.out_crit_edge ], [ %call163, %do.end162.out_crit_edge ], [ -12, %do.end60.out_crit_edge ], [ %ret.0.ph, %out.sink.split ]
  %cfg_channels.0 = phi ptr [ null, %if.end21.out_crit_edge ], [ %call7.i.i249, %do.end162.out_crit_edge ], [ null, %do.end60.out_crit_edge ], [ %call7.i.i249, %out.sink.split ]
  tail call void @kfree(ptr noundef %cfg_channels.0) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup173

cleanup173:                                       ; preds = %out, %do.end17.cleanup173_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %do.end17.cleanup173_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_scan_sched_scan_ssid_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wlcore_set_scan_chan_params(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_cmd_build_probe_req(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_scan_sched_scan_start(ptr noundef %wl, ptr noundef %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !102

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_scan_sched_scan_start.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_scan_sched_scan_start, %if.then11)) #5
          to label %do.end14 [label %if.then11], !srcloc !103

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_scan_sched_scan_start.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.23) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  %bss_type = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 3
  %1 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bss_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp.not = icmp eq i8 %2, 2
  br i1 %cmp.not, label %if.end17, label %do.end14.cleanup_crit_edge

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %do.end14
  %quirks = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %3 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %quirks, align 8
  %and18 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end23_crit_edge, label %land.lhs.true

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end17
  %flags = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool21.not = icmp eq i32 %7, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.end17.if.end23_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 8) #8
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %9 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %role_id, align 2
  %role_id28 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_start, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %role_id28 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %role_id28, align 1
  %tag = getelementptr inbounds %struct.wl1271_cmd_sched_scan_start, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %tag to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %tag, align 4
  %call29 = tail call i32 @wl1271_cmd_send(ptr noundef %wl, i16 noundef zeroext 29, ptr noundef nonnull %call7.i.i, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.end35, label %if.end27.out_free_crit_edge

if.end27.out_free_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %out_free

out_free:                                         ; preds = %do.end35, %if.end27.out_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end23.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %out_free ], [ -95, %do.end14.cleanup_crit_edge ], [ -16, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl12xx_sched_scan_start(ptr noundef %wl, ptr noundef %wlvif, ptr noundef %req, ptr nocapture noundef readonly %ies) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl1271_scan_sched_scan_config(ptr noundef %wl, ptr noundef %wlvif, ptr noundef %req, ptr noundef %ies)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @wl1271_scan_sched_scan_start(ptr noundef %wl, ptr noundef %wlvif)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl12xx_scan_sched_scan_stop(ptr noundef %wl, ptr nocapture noundef readonly %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !102

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_scan_sched_scan_stop.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_scan_sched_scan_stop, %if.then11)) #5
          to label %do.end14 [label %if.then11], !srcloc !103

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_scan_sched_scan_stop.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.26) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 8) #8
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end20, label %if.end23

do.end20:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end23:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id24 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_stop, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %role_id24 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id24, align 1
  %tag = getelementptr inbounds %struct.wl1271_cmd_sched_scan_stop, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %tag to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %tag, align 4
  %call25 = tail call i32 @wl1271_cmd_send(ptr noundef %wl, i16 noundef zeroext 30, ptr noundef nonnull %call7.i.i, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %do.end29, label %if.end23.out_free_crit_edge

if.end23.out_free_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #9
  br label %out_free

out_free:                                         ; preds = %do.end29, %if.end23.out_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.end20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl12xx_scan_start(ptr noundef %wl, ptr noundef %wlvif, ptr nocapture noundef readnone %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @wl1271_scan_stm(ptr noundef %wl, ptr noundef %wlvif)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl12xx_scan_completed(ptr noundef %wl, ptr noundef %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @wl1271_scan_stm(ptr noundef %wl, ptr noundef %wlvif)
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1271_get_scan_channels(ptr noundef %wl, ptr nocapture noundef readonly %req, ptr nocapture noundef writeonly %channels, i32 noundef %band, i1 noundef zeroext %passive) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %scan = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 7
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp233.not = icmp eq i32 %1, 0
  br i1 %cmp233.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %scanned_ch = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 79, i32 1
  %max_dwell_time_active = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 7, i32 1
  %dwell_time_passive = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 7, i32 4
  %dwell_time_passive.scan = select i1 %passive, ptr %dwell_time_passive, ptr %scan
  %dwell_time_passive.max_dwell_time_active = select i1 %passive, ptr %dwell_time_passive, ptr %max_dwell_time_active
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0236 = phi i32 [ 0, %for.body.lr.ph ], [ %inc166, %for.inc.for.body_crit_edge ]
  %j.0234 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 22, i32 %i.0236
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %flags3 = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags3, align 4
  %div3.i = lshr i32 %i.0236, 5
  %arrayidx.i = getelementptr i32, ptr %scanned_ch, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0236, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %or.cond218 = select i1 %tobool.not, i1 %tobool5.not, i1 false
  br i1 %or.cond218, label %land.lhs.true6, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true6:                                   ; preds = %for.body
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %band)
  %cmp10 = icmp eq i32 %11, %band
  br i1 %cmp10, label %land.lhs.true11, label %land.lhs.true6.for.inc_crit_edge

land.lhs.true6.for.inc_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true11:                                  ; preds = %land.lhs.true6
  %and13 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or.cond219 = select i1 %passive, i1 true, i1 %tobool14.not
  br i1 %or.cond219, label %do.body, label %land.lhs.true11.for.inc_crit_edge

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body:                                          ; preds = %land.lhs.true11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %12 = load i32, ptr @wl12xx_debug_level, align 4
  %and15 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body.do.body39_crit_edge, label %do.body20, !prof !102

do.body.do.body39_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

do.body20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_get_scan_channels.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_get_scan_channels, %if.then30)) #5
          to label %do.body39 [label %if.then30], !srcloc !103

if.then30:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %center_freq, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_get_scan_channels.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.41, i32 noundef %16, i32 noundef %18) #5
  br label %do.body39

do.body39:                                        ; preds = %if.then30, %do.body20, %do.body.do.body39_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %19 = load i32, ptr @wl12xx_debug_level, align 4
  %and40 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body39.do.body73_crit_edge, label %do.body49, !prof !102

do.body39.do.body73_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body73

do.body49:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_get_scan_channels.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_get_scan_channels, %if.then61)) #5
          to label %do.body73 [label %if.then61], !srcloc !103

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %23 to i32
  %flags66 = getelementptr inbounds %struct.ieee80211_channel, ptr %21, i32 0, i32 4
  %24 = ptrtoint ptr %flags66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags66, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_get_scan_channels.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.42, i32 noundef %conv, i32 noundef %25) #5
  br label %do.body73

do.body73:                                        ; preds = %if.then61, %do.body49, %do.body39.do.body73_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %26 = load i32, ptr @wl12xx_debug_level, align 4
  %and74 = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body73.do.body106_crit_edge, label %do.body83, !prof !102

do.body73.do.body106_crit_edge:                   ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body106

do.body83:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_get_scan_channels.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_get_scan_channels, %if.then95)) #5
          to label %do.body106 [label %if.then95], !srcloc !103

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %max_antenna_gain = getelementptr inbounds %struct.ieee80211_channel, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %max_antenna_gain to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_antenna_gain, align 4
  %max_power = getelementptr inbounds %struct.ieee80211_channel, ptr %28, i32 0, i32 6
  %31 = ptrtoint ptr %max_power to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_power, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_get_scan_channels.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.43, i32 noundef %30, i32 noundef %32) #5
  br label %do.body106

do.body106:                                       ; preds = %if.then95, %do.body83, %do.body73.do.body106_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %33 = load i32, ptr @wl12xx_debug_level, align 4
  %and107 = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %do.body106.do.end138_crit_edge, label %do.body116, !prof !102

do.body106.do.end138_crit_edge:                   ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end138

do.body116:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_get_scan_channels.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_get_scan_channels, %if.then128)) #5
          to label %do.end138 [label %if.then128], !srcloc !103

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %beacon_found = getelementptr inbounds %struct.ieee80211_channel, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %beacon_found to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %beacon_found, align 4, !range !104
  %38 = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_get_scan_channels.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.44, i32 noundef %38) #5
  br label %do.end138

do.end138:                                        ; preds = %if.then128, %do.body116, %do.body106.do.end138_crit_edge
  %39 = ptrtoint ptr %dwell_time_passive.scan to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %dwell_time_passive.scan, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %arrayidx143 = getelementptr %struct.basic_scan_channel_params, ptr %channels, i32 %j.0234
  %42 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %arrayidx143, align 1
  %43 = ptrtoint ptr %dwell_time_passive.max_dwell_time_active to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %dwell_time_passive.max_dwell_time_active, align 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %46 = getelementptr %struct.basic_scan_channel_params, ptr %channels, i32 %j.0234, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %45, ptr %46, align 1
  %early_termination = getelementptr %struct.basic_scan_channel_params, ptr %channels, i32 %j.0234, i32 4
  %48 = ptrtoint ptr %early_termination to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %early_termination, align 1
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx, align 4
  %max_power152 = getelementptr inbounds %struct.ieee80211_channel, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %max_power152 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_power152, align 4
  %conv153 = trunc i32 %52 to i8
  %tx_power_att = getelementptr %struct.basic_scan_channel_params, ptr %channels, i32 %j.0234, i32 5
  %53 = ptrtoint ptr %tx_power_att to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv153, ptr %tx_power_att, align 1
  %54 = load ptr, ptr %arrayidx, align 4
  %hw_value157 = getelementptr inbounds %struct.ieee80211_channel, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %hw_value157 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %hw_value157, align 2
  %conv158 = trunc i16 %56 to i8
  %channel = getelementptr %struct.basic_scan_channel_params, ptr %channels, i32 %j.0234, i32 6
  %57 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv158, ptr %channel, align 1
  %bssid_lsb = getelementptr %struct.basic_scan_channel_params, ptr %channels, i32 %j.0234, i32 2
  %58 = ptrtoint ptr %bssid_lsb to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 -1, ptr %bssid_lsb, align 1
  %bssid_msb = getelementptr %struct.basic_scan_channel_params, ptr %channels, i32 %j.0234, i32 3
  %59 = ptrtoint ptr %bssid_msb to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 -1, ptr %bssid_msb, align 1
  tail call void @_set_bit(i32 noundef %i.0236, ptr noundef %scanned_ch) #5
  %inc = add nsw i32 %j.0234, 1
  br label %for.inc

for.inc:                                          ; preds = %do.end138, %land.lhs.true11.for.inc_crit_edge, %land.lhs.true6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %j.0234, %for.body.for.inc_crit_edge ], [ %inc, %do.end138 ], [ %j.0234, %land.lhs.true6.for.inc_crit_edge ], [ %j.0234, %land.lhs.true11.for.inc_crit_edge ]
  %inc166 = add nuw i32 %i.0236, 1
  %60 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc166, i32 %61)
  %cmp = icmp ult i32 %inc166, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %j.1)
  %cmp1 = icmp slt i32 %j.1, 24
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %j.1, %for.inc.for.end_crit_edge ]
  ret i32 %j.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !89, !91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 182, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 185, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @wl12xx_scan_stop.__UNIQUE_ID_ddebug355, !3, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 196, i32 3}
!9 = !{ptr @wl12xx_scan_stop._entry, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @wl12xx_scan_stop._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 281, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @wl1271_scan_stm._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @wl1271_scan_stm._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 318, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @wl1271_scan_sched_scan_config.__UNIQUE_ID_ddebug356, !17, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 349, i32 2}
!22 = !{ptr @wl1271_scan_sched_scan_config.__UNIQUE_ID_ddebug357, !21, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 360, i32 3}
!25 = !{ptr @wl1271_scan_sched_scan_config._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @wl1271_scan_sched_scan_config._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 378, i32 4}
!29 = !{ptr @wl1271_scan_sched_scan_config._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @wl1271_scan_sched_scan_config._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 395, i32 4}
!33 = !{ptr @wl1271_scan_sched_scan_config._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @wl1271_scan_sched_scan_config._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 400, i32 2}
!37 = !{ptr @wl1271_scan_sched_scan_config.__UNIQUE_ID_ddebug360, !36, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!38 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 405, i32 3}
!41 = !{ptr @wl1271_scan_sched_scan_config._entry.19, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @wl1271_scan_sched_scan_config._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 419, i32 2}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @wl1271_scan_sched_scan_start.__UNIQUE_ID_ddebug361, !44, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 438, i32 3}
!49 = !{ptr @wl1271_scan_sched_scan_start._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @wl1271_scan_sched_scan_start._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 465, i32 2}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @wl12xx_scan_sched_scan_stop.__UNIQUE_ID_ddebug362, !52, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 470, i32 3}
!57 = !{ptr @wl12xx_scan_sched_scan_stop._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @wl12xx_scan_sched_scan_stop._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 480, i32 3}
!61 = !{ptr @wl12xx_scan_sched_scan_stop._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @wl12xx_scan_sched_scan_stop._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 151, i32 3}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @wl1271_scan_send._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @wl1271_scan_send._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 159, i32 3}
!70 = !{ptr @wl1271_scan_send._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @wl1271_scan_send._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 163, i32 2}
!74 = !{ptr @wl1271_scan_send.__UNIQUE_ID_ddebug354, !73, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 167, i32 3}
!77 = !{ptr @wl1271_scan_send._entry.37, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @wl1271_scan_send._entry_ptr.39, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 37, i32 4}
!81 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @wl1271_get_scan_channels.__UNIQUE_ID_ddebug348, !80, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 40, i32 4}
!85 = !{ptr @wl1271_get_scan_channels.__UNIQUE_ID_ddebug349, !84, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 43, i32 4}
!88 = !{ptr @wl1271_get_scan_channels.__UNIQUE_ID_ddebug350, !87, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ti/wl12xx/scan.c", i32 47, i32 4}
!91 = !{ptr @wl1271_get_scan_channels.__UNIQUE_ID_ddebug351, !90, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{i64 2148971089, i64 2148971094, i64 2148971107, i64 2148971151, i64 2148971185, i64 2148971206}
!104 = !{i8 0, i8 2}
