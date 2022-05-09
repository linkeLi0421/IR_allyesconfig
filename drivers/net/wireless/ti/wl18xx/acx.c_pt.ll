; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl18xx/acx.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl18xx/acx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wl18xx_acx_host_config_bitmap = type { %struct.acx_header, i32, i32, i32, i32 }
%struct.acx_header = type { %struct.wl1271_cmd_header, i16, i16 }
%struct.wl1271_cmd_header = type { i16, i16, [0 x i8] }
%struct.wl18xx_acx_checksum_state = type { %struct.acx_header, i8, [3 x i8] }
%struct.wlcore_peer_ht_operation_mode = type { %struct.acx_header, i8, i8, [2 x i8] }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.wlcore_acx_peer_cap = type { %struct.acx_header, i32, i32, i8, i8, i8, i8 }
%struct.wl18xx_acx_interrupt_notify = type { %struct.acx_header, i32 }
%struct.wl18xx_acx_rx_ba_filter = type { %struct.acx_header, i32 }
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
%struct.wl18xx_priv = type { [740 x i8], %struct.wl18xx_priv_conf, i8, i32 }
%struct.wl18xx_priv_conf = type { %struct.wl18xx_ht_settings, %struct.wl18xx_mac_and_phy_params, %struct.conf_ap_sleep_settings }
%struct.wl18xx_ht_settings = type { i8 }
%struct.wl18xx_mac_and_phy_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, [150 x i8], i8, [7 x i8], i8, i8, [13 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], [18 x i8], i8, i8, i8, i8, [1 x i8] }
%struct.conf_ap_sleep_settings = type { i8, i8, i8, i8 }
%struct.acx_ap_sleep_cfg = type { %struct.acx_header, i8, i8, i8, i8 }
%struct.acx_dynamic_fw_traces_cfg = type { %struct.acx_header, i32 }
%struct.acx_time_sync_cfg = type { %struct.acx_header, i8, [6 x i8], [1 x i8] }

@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wl18xx_acx_host_if_cfg_bitmap.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl18xx\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wl18xx_acx_host_if_cfg_bitmap\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/wireless/ti/wl18xx/acx.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"wlcore: acx cfg bitmap %d blk %d spare %d field %d\0A\00", [44 x i8] zeroinitializer }, align 32
@wl18xx_acx_host_if_cfg_bitmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wlcore: WARNING wl1271 bitmap config opt failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wl18xx_acx_host_if_cfg_bitmap._entry_ptr = internal global ptr @wl18xx_acx_host_if_cfg_bitmap._entry, section ".printk_index", align 4
@wl18xx_acx_set_checksum_state.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wl18xx_acx_set_checksum_state\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wlcore: acx checksum state\0A\00", [36 x i8] zeroinitializer }, align 32
@wl18xx_acx_set_checksum_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wlcore: WARNING failed to set Tx checksum state: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wl18xx_acx_set_checksum_state._entry_ptr = internal global ptr @wl18xx_acx_set_checksum_state._entry, section ".printk_index", align 4
@wl18xx_acx_clear_statistics.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl18xx_acx_clear_statistics\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wlcore: acx clear statistics\0A\00", [34 x i8] zeroinitializer }, align 32
@wl18xx_acx_clear_statistics._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014wlcore: WARNING failed to clear firmware statistics: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wl18xx_acx_clear_statistics._entry_ptr = internal global ptr @wl18xx_acx_clear_statistics._entry, section ".printk_index", align 4
@wl18xx_acx_peer_ht_operation_mode.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wl18xx_acx_peer_ht_operation_mode\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"wlcore: acx peer ht operation mode hlid %d bw %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wl18xx_acx_peer_ht_operation_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014wlcore: WARNING acx peer ht operation mode failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wl18xx_acx_peer_ht_operation_mode._entry_ptr = internal global ptr @wl18xx_acx_peer_ht_operation_mode._entry, section ".printk_index", align 4
@wl18xx_acx_set_peer_cap.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wl18xx_acx_set_peer_cap\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"wlcore: acx set cap ht_supp: %d ht_cap: %d rates: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@wl18xx_acx_set_peer_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014wlcore: WARNING acx ht capabilities setting failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@wl18xx_acx_set_peer_cap._entry_ptr = internal global ptr @wl18xx_acx_set_peer_cap._entry, section ".printk_index", align 4
@wl18xx_acx_interrupt_notify_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014wlcore: WARNING acx interrupt notify setting failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wl18xx_acx_interrupt_notify_config\00", [61 x i8] zeroinitializer }, align 32
@wl18xx_acx_interrupt_notify_config._entry_ptr = internal global ptr @wl18xx_acx_interrupt_notify_config._entry, section ".printk_index", align 4
@wl18xx_acx_rx_ba_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014wlcore: WARNING acx rx ba activity filter setting failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wl18xx_acx_rx_ba_filter\00", [40 x i8] zeroinitializer }, align 32
@wl18xx_acx_rx_ba_filter._entry_ptr = internal global ptr @wl18xx_acx_rx_ba_filter._entry, section ".printk_index", align 4
@wl18xx_acx_ap_sleep.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wl18xx_acx_ap_sleep\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wlcore: acx config ap sleep\0A\00", [35 x i8] zeroinitializer }, align 32
@wl18xx_acx_ap_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014wlcore: WARNING acx config ap-sleep failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wl18xx_acx_ap_sleep._entry_ptr = internal global ptr @wl18xx_acx_ap_sleep._entry, section ".printk_index", align 4
@wl18xx_acx_dynamic_fw_traces.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl18xx_acx_dynamic_fw_traces\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"wlcore: acx dynamic fw traces config %d\0A\00", [55 x i8] zeroinitializer }, align 32
@wl18xx_acx_dynamic_fw_traces._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014wlcore: WARNING acx config dynamic fw traces failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wl18xx_acx_dynamic_fw_traces._entry_ptr = internal global ptr @wl18xx_acx_dynamic_fw_traces._entry, section ".printk_index", align 4
@wl18xx_acx_time_sync_cfg.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl18xx_acx_time_sync_cfg\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"wlcore: acx time sync cfg: mode %d, addr: %pM\0A\00", [49 x i8] zeroinitializer }, align 32
@wl18xx_acx_time_sync_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014wlcore: WARNING acx time sync cfg failed: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@wl18xx_acx_time_sync_cfg._entry_ptr = internal global ptr @wl18xx_acx_time_sync_cfg._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 22, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 40, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 55, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 67, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 81, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 91, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 105, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 121, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 145, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 176, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 204, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 231, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 248, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 263, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 277, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 291, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 304, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [40 x i8] c"../drivers/net/wireless/ti/wl18xx/acx.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 320, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @wl18xx_acx_ap_sleep._entry, ptr @wl18xx_acx_ap_sleep._entry_ptr, ptr @wl18xx_acx_clear_statistics._entry, ptr @wl18xx_acx_clear_statistics._entry_ptr, ptr @wl18xx_acx_dynamic_fw_traces._entry, ptr @wl18xx_acx_dynamic_fw_traces._entry_ptr, ptr @wl18xx_acx_host_if_cfg_bitmap._entry, ptr @wl18xx_acx_host_if_cfg_bitmap._entry_ptr, ptr @wl18xx_acx_interrupt_notify_config._entry, ptr @wl18xx_acx_interrupt_notify_config._entry_ptr, ptr @wl18xx_acx_peer_ht_operation_mode._entry, ptr @wl18xx_acx_peer_ht_operation_mode._entry_ptr, ptr @wl18xx_acx_rx_ba_filter._entry, ptr @wl18xx_acx_rx_ba_filter._entry_ptr, ptr @wl18xx_acx_set_checksum_state._entry, ptr @wl18xx_acx_set_checksum_state._entry_ptr, ptr @wl18xx_acx_set_peer_cap._entry, ptr @wl18xx_acx_set_peer_cap._entry_ptr, ptr @wl18xx_acx_time_sync_cfg._entry, ptr @wl18xx_acx_time_sync_cfg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_acx_host_if_cfg_bitmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_acx_set_checksum_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_acx_clear_statistics._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_acx_peer_ht_operation_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_acx_set_peer_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_acx_interrupt_notify_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_acx_rx_ba_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_acx_ap_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_acx_dynamic_fw_traces._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_acx_time_sync_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_acx_host_if_cfg_bitmap(ptr noundef %wl, i32 noundef %host_cfg_bitmap, i32 noundef %sdio_blk_size, i32 noundef %extra_mem_blks, i32 noundef %len_field_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !85

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_acx_host_if_cfg_bitmap.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_acx_host_if_cfg_bitmap, %if.then11)) #5
          to label %do.end14 [label %if.then11], !srcloc !86

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_acx_host_if_cfg_bitmap.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.3, i32 noundef %host_cfg_bitmap, i32 noundef %sdio_blk_size, i32 noundef %extra_mem_blks, i32 noundef %len_field_size) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #8
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18:                                         ; preds = %do.end14
  %2 = tail call i32 @llvm.bswap.i32(i32 %host_cfg_bitmap)
  %host_cfg_bitmap19 = getelementptr inbounds %struct.wl18xx_acx_host_config_bitmap, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %host_cfg_bitmap19 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %host_cfg_bitmap19, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %sdio_blk_size)
  %host_sdio_block_size = getelementptr inbounds %struct.wl18xx_acx_host_config_bitmap, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %host_sdio_block_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %host_sdio_block_size, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %extra_mem_blks)
  %extra_mem_blocks = getelementptr inbounds %struct.wl18xx_acx_host_config_bitmap, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %extra_mem_blocks to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %extra_mem_blocks, align 8
  %8 = tail call i32 @llvm.bswap.i32(i32 %len_field_size)
  %length_field_size = getelementptr inbounds %struct.wl18xx_acx_host_config_bitmap, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %length_field_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %length_field_size, align 4
  %call20 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 57, ptr noundef nonnull %call7.i.i, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.end24, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call20) #9
  br label %out

out:                                              ; preds = %do.end24, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call20, %do.end24 ], [ %call20, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_configure(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_acx_set_checksum_state(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !85

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_acx_set_checksum_state.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_acx_set_checksum_state, %if.then11)) #5
          to label %do.end14 [label %if.then11], !srcloc !86

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_acx_set_checksum_state.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.6) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #8
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18:                                         ; preds = %do.end14
  %checksum_state = getelementptr inbounds %struct.wl18xx_acx_checksum_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %checksum_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %checksum_state, align 8
  %call19 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 82, ptr noundef nonnull %call7.i.i, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %do.end23, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call19) #9
  br label %out

out:                                              ; preds = %do.end23, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call19, %do.end23 ], [ %call19, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_acx_clear_statistics(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !85

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_acx_clear_statistics.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_acx_clear_statistics, %if.then11)) #5
          to label %do.end14 [label %if.then11], !srcloc !86

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_acx_clear_statistics.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.9) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 8) #8
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18:                                         ; preds = %do.end14
  %call19 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 84, ptr noundef nonnull %call7.i.i, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %do.end23, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call19) #9
  br label %out

out:                                              ; preds = %do.end23, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call19, %do.end23 ], [ %call19, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_acx_peer_ht_operation_mode(ptr noundef %wl, i8 noundef zeroext %hlid, i1 noundef zeroext %wide) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end17_crit_edge, label %do.body3, !prof !85

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_acx_peer_ht_operation_mode.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_acx_peer_ht_operation_mode, %if.then12)) #5
          to label %do.end17 [label %if.then12], !srcloc !86

if.then12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %hlid to i32
  %conv14 = zext i1 %wide to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_acx_peer_ht_operation_mode.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %conv14) #5
  br label %do.end17

do.end17:                                         ; preds = %if.then12, %do.body3, %entry.do.end17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #8
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %do.end17.out_crit_edge, label %if.end21

do.end17.out_crit_edge:                           ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end21:                                         ; preds = %do.end17
  %hlid22 = getelementptr inbounds %struct.wlcore_peer_ht_operation_mode, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %hlid22 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %hlid, ptr %hlid22, align 8
  %conv25 = zext i1 %wide to i8
  %bandwidth = getelementptr inbounds %struct.wlcore_peer_ht_operation_mode, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv25, ptr %bandwidth, align 1
  %call26 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 81, ptr noundef nonnull %call7.i.i, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %do.end31, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end31:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call26) #9
  br label %out

out:                                              ; preds = %do.end31, %if.end21.out_crit_edge, %do.end17.out_crit_edge
  %ret.0 = phi i32 [ %call26, %do.end31 ], [ %call26, %if.end21.out_crit_edge ], [ -12, %do.end17.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_acx_set_peer_cap(ptr noundef %wl, ptr nocapture noundef readonly %ht_cap, i1 noundef zeroext %allow_ht_operation, i32 noundef %rate_set, i8 noundef zeroext %hlid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end17_crit_edge, label %do.body3, !prof !85

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_acx_set_peer_cap.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_acx_set_peer_cap, %if.then12)) #5
          to label %do.end17 [label %if.then12], !srcloc !86

if.then12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 1
  %1 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ht_supported, align 2, !range !87
  %3 = zext i8 %2 to i32
  %4 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ht_cap, align 2
  %conv14 = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_acx_set_peer_cap.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.15, i32 noundef %3, i32 noundef %conv14, i32 noundef %rate_set) #5
  br label %do.end17

do.end17:                                         ; preds = %if.then12, %do.body3, %entry.do.end17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 20) #8
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %do.end17.out_crit_edge, label %if.end21

do.end17.out_crit_edge:                           ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end21:                                         ; preds = %do.end17
  br i1 %allow_ht_operation, label %land.lhs.true, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end21
  %ht_supported24 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 1
  %7 = ptrtoint ptr %ht_supported24 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ht_supported24, align 2, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool25.not = icmp eq i8 %8, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end30_crit_edge, label %if.then27

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ht_cap, align 2
  %conv29 = zext i16 %10 to i32
  %or = or i32 %conv29, 65536
  %ampdu_factor = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 2
  %11 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ampdu_factor, align 1
  %ampdu_max_length = getelementptr inbounds %struct.wlcore_acx_peer_cap, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %ampdu_max_length to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %ampdu_max_length, align 1
  %ampdu_density = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 3
  %14 = ptrtoint ptr %ampdu_density to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ampdu_density, align 2
  %ampdu_min_spacing = getelementptr inbounds %struct.wlcore_acx_peer_cap, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %ampdu_min_spacing to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %ampdu_min_spacing, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %land.lhs.true.if.end30_crit_edge, %if.end21.if.end30_crit_edge
  %ht_capabilites.0 = phi i32 [ %or, %if.then27 ], [ 0, %land.lhs.true.if.end30_crit_edge ], [ 0, %if.end21.if.end30_crit_edge ]
  %hlid31 = getelementptr inbounds %struct.wlcore_acx_peer_cap, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %hlid31 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %hlid, ptr %hlid31, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %ht_capabilites.0)
  %ht_capabilites32 = getelementptr inbounds %struct.wlcore_acx_peer_cap, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %ht_capabilites32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ht_capabilites32, align 8
  %20 = tail call i32 @llvm.bswap.i32(i32 %rate_set)
  %supported_rates = getelementptr inbounds %struct.wlcore_acx_peer_cap, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %supported_rates to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %supported_rates, align 4
  %call33 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 86, ptr noundef nonnull %call7.i.i, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %do.end38, label %if.end30.out_crit_edge

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call33) #9
  br label %out

out:                                              ; preds = %do.end38, %if.end30.out_crit_edge, %do.end17.out_crit_edge
  %ret.0 = phi i32 [ %call33, %do.end38 ], [ %call33, %if.end30.out_crit_edge ], [ -12, %do.end17.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_acx_interrupt_notify_config(ptr noundef %wl, i1 noundef zeroext %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %conv = zext i1 %action to i32
  %enable = getelementptr inbounds %struct.wl18xx_acx_interrupt_notify, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv, ptr %enable, align 8
  %call2 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 87, ptr noundef nonnull %call7.i.i, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call2) #9
  br label %out

out:                                              ; preds = %do.end, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call2, %do.end ], [ %call2, %if.end.out_crit_edge ], [ -12, %entry.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_acx_rx_ba_filter(ptr noundef %wl, i1 noundef zeroext %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %conv = zext i1 %action to i32
  %enable = getelementptr inbounds %struct.wl18xx_acx_rx_ba_filter, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv, ptr %enable, align 8
  %call2 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 88, ptr noundef nonnull %call7.i.i, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call2) #9
  br label %out

out:                                              ; preds = %do.end, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call2, %do.end ], [ %call2, %if.end.out_crit_edge ], [ -12, %entry.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_acx_ap_sleep(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 125
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %ap_sleep = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 1, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %2 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end16_crit_edge, label %do.body5, !prof !85

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_acx_ap_sleep.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_acx_ap_sleep, %if.then13)) #5
          to label %do.end16 [label %if.then13], !srcloc !86

if.then13:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_acx_ap_sleep.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.22) #5
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body5, %entry.do.end16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #8
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %do.end16.out_crit_edge, label %if.end20

do.end16.out_crit_edge:                           ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end20:                                         ; preds = %do.end16
  %4 = ptrtoint ptr %ap_sleep to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ap_sleep, align 1
  %idle_duty_cycle21 = getelementptr inbounds %struct.acx_ap_sleep_cfg, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %idle_duty_cycle21 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %idle_duty_cycle21, align 8
  %connected_duty_cycle = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 1, i32 2, i32 1
  %7 = ptrtoint ptr %connected_duty_cycle to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %connected_duty_cycle, align 1
  %connected_duty_cycle22 = getelementptr inbounds %struct.acx_ap_sleep_cfg, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %connected_duty_cycle22 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %connected_duty_cycle22, align 1
  %max_stations_thresh = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 1, i32 2, i32 2
  %10 = ptrtoint ptr %max_stations_thresh to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max_stations_thresh, align 1
  %max_stations_thresh23 = getelementptr inbounds %struct.acx_ap_sleep_cfg, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %max_stations_thresh23 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %max_stations_thresh23, align 2
  %idle_conn_thresh = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 1, i32 2, i32 3
  %13 = ptrtoint ptr %idle_conn_thresh to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %idle_conn_thresh, align 1
  %idle_conn_thresh24 = getelementptr inbounds %struct.acx_ap_sleep_cfg, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %idle_conn_thresh24 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %idle_conn_thresh24, align 1
  %call25 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 89, ptr noundef nonnull %call7.i.i, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %do.end29, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call25) #9
  br label %out

out:                                              ; preds = %do.end29, %if.end20.out_crit_edge, %do.end16.out_crit_edge
  %ret.0 = phi i32 [ %call25, %do.end29 ], [ %call25, %if.end20.out_crit_edge ], [ -12, %do.end16.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_acx_dynamic_fw_traces(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !85

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_acx_dynamic_fw_traces.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_acx_dynamic_fw_traces, %if.then11)) #5
          to label %do.end14 [label %if.then11], !srcloc !86

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %dynamic_fw_traces = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 149
  %1 = ptrtoint ptr %dynamic_fw_traces to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dynamic_fw_traces, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_acx_dynamic_fw_traces.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.25, i32 noundef %2) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #8
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18:                                         ; preds = %do.end14
  %dynamic_fw_traces19 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 149
  %4 = ptrtoint ptr %dynamic_fw_traces19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dynamic_fw_traces19, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %dynamic_fw_traces20 = getelementptr inbounds %struct.acx_dynamic_fw_traces_cfg, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %dynamic_fw_traces20 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dynamic_fw_traces20, align 8
  %call21 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 90, ptr noundef nonnull %call7.i.i, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %do.end25, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call21) #9
  br label %out

out:                                              ; preds = %do.end25, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call21, %do.end25 ], [ %call21, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_acx_time_sync_cfg(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !85

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_acx_time_sync_cfg.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_acx_time_sync_cfg, %if.then11)) #5
          to label %do.end14 [label %if.then11], !srcloc !86

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 0, i32 0, i32 3
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %zone_master_mac_addr = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 150
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_acx_time_sync_cfg.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.28, i32 noundef %2, ptr noundef %zone_master_mac_addr) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #8
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18:                                         ; preds = %do.end14
  %arrayidx22 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx22, align 4
  %conv = trunc i32 %5 to i8
  %sync_mode = getelementptr inbounds %struct.acx_time_sync_cfg, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %sync_mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %sync_mode, align 8
  %zone_mac_addr = getelementptr inbounds %struct.acx_time_sync_cfg, ptr %call7.i.i, i32 0, i32 2
  %zone_master_mac_addr24 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 150
  %7 = call ptr @memcpy(ptr %zone_mac_addr, ptr %zone_master_mac_addr24, i32 6)
  %call26 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 91, ptr noundef nonnull %call7.i.i, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %do.end31, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end31:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call26) #9
  br label %out

out:                                              ; preds = %do.end31, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call26, %do.end31 ], [ %call26, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl18xx/acx.c", i32 22, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wl18xx_acx_host_if_cfg_bitmap.__UNIQUE_ID_ddebug348, !1, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wl18xx/acx.c", i32 40, i32 3}
!8 = !{ptr @wl18xx_acx_host_if_cfg_bitmap._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @wl18xx_acx_host_if_cfg_bitmap._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ti/wl18xx/acx.c", i32 55, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @wl18xx_acx_set_checksum_state.__UNIQUE_ID_ddebug349, !11, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ti/wl18xx/acx.c", i32 67, i32 3}
!16 = !{ptr @wl18xx_acx_set_checksum_state._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @wl18xx_acx_set_checksum_state._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ti/wl18xx/acx.c", i32 81, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @wl18xx_acx_clear_statistics.__UNIQUE_ID_ddebug350, !19, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ti/wl18xx/acx.c", i32 91, i32 3}
!24 = !{ptr @wl18xx_acx_clear_statistics._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @wl18xx_acx_clear_statistics._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ti/wl18xx/acx.c", i32 105, i32 2}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @wl18xx_acx_peer_ht_operation_mode.__UNIQUE_ID_ddebug351, !27, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ti/wl18xx/acx.c", i32 121, i32 3}
!32 = !{ptr @wl18xx_acx_peer_ht_operation_mode._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @wl18xx_acx_peer_ht_operation_mode._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ti/wl18xx/acx.c", i32 145, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @wl18xx_acx_set_peer_cap.__UNIQUE_ID_ddebug352, !35, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ti/wl18xx/acx.c", i32 176, i32 3}
!40 = !{ptr @wl18xx_acx_set_peer_cap._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @wl18xx_acx_set_peer_cap._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ti/wl18xx/acx.c", i32 204, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @wl18xx_acx_interrupt_notify_config._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @wl18xx_acx_interrupt_notify_config._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ti/wl18xx/acx.c", i32 231, i32 3}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @wl18xx_acx_rx_ba_filter._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @wl18xx_acx_rx_ba_filter._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ti/wl18xx/acx.c", i32 248, i32 2}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @wl18xx_acx_ap_sleep.__UNIQUE_ID_ddebug353, !53, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ti/wl18xx/acx.c", i32 263, i32 3}
!58 = !{ptr @wl18xx_acx_ap_sleep._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @wl18xx_acx_ap_sleep._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ti/wl18xx/acx.c", i32 277, i32 2}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @wl18xx_acx_dynamic_fw_traces.__UNIQUE_ID_ddebug354, !61, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ti/wl18xx/acx.c", i32 291, i32 3}
!66 = !{ptr @wl18xx_acx_dynamic_fw_traces._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @wl18xx_acx_dynamic_fw_traces._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ti/wl18xx/acx.c", i32 304, i32 2}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @wl18xx_acx_time_sync_cfg.__UNIQUE_ID_ddebug355, !69, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ti/wl18xx/acx.c", i32 320, i32 3}
!74 = !{ptr @wl18xx_acx_time_sync_cfg._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @wl18xx_acx_time_sync_cfg._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 2148330424, i64 2148330429, i64 2148330442, i64 2148330486, i64 2148330520, i64 2148330541}
!87 = !{i8 0, i8 2}
