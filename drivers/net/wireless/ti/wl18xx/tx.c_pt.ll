; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl18xx/tx.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl18xx/tx.c"
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
%struct.wl_fw_status = type { i32, i8, i8, i8, ptr, i32, i32, i32, i32, i32, %struct.anon.136, i32, ptr }
%struct.anon.136 = type { ptr, ptr, i8, i8, i8, i8 }
%struct.wl18xx_priv = type { [740 x i8], %struct.wl18xx_priv_conf, i8, i32 }
%struct.wl18xx_priv_conf = type { %struct.wl18xx_ht_settings, %struct.wl18xx_mac_and_phy_params, %struct.conf_ap_sleep_settings }
%struct.wl18xx_ht_settings = type { i8 }
%struct.wl18xx_mac_and_phy_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, [150 x i8], i8, [7 x i8], i8, i8, [13 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], [18 x i8], i8, i8, i8, i8, [1 x i8] }
%struct.conf_ap_sleep_settings = type { i8, i8, i8, i8 }
%struct.wl18xx_fw_status_priv = type { i8, [33 x i8], i32, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wl1271_tx_hw_descr = type { i16, %union.anon.137, i32, i16, i16, i8, i8, i8, %union.anon.138 }
%union.anon.137 = type { %struct.wl127x_tx_mem }
%struct.wl127x_tx_mem = type { i8, i8 }
%union.anon.138 = type { i8 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.133, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.133 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.134] }
%struct.anon.134 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }

@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wl18xx_tx_immediate_complete.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl18xx\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl18xx_tx_immediate_complete\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireless/ti/wl18xx/tx.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"wlcore: last released desc = %d, current idx = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@wl18xx_tx_immediate_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013wlcore: ERROR invalid desc release index %d\0A\00", [49 x i8] zeroinitializer }, align 32
@wl18xx_tx_immediate_complete._entry_ptr = internal global ptr @wl18xx_tx_immediate_complete._entry, section ".printk_index", align 4
@wl18xx_tx_complete_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014wlcore: WARNING illegal id in tx completion: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wl18xx_tx_complete_packet\00", [38 x i8] zeroinitializer }, align 32
@wl18xx_tx_complete_packet._entry_ptr = internal global ptr @wl18xx_tx_complete_packet._entry, section ".printk_index", align 4
@wl18xx_tx_complete_packet.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"wlcore: tx status id %u skb 0x%p success %d\0A\00", [51 x i8] zeroinitializer }, align 32
@wl18xx_get_last_tx_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 24, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013wlcore: ERROR last Tx rate invalid: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wl18xx_get_last_tx_rate\00", [40 x i8] zeroinitializer }, align 32
@wl18xx_get_last_tx_rate._entry_ptr = internal global ptr @wl18xx_get_last_tx_rate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 20, i64 29]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 154, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 158, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 72, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 123, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [39 x i8] c"../drivers/net/wireless/ti/wl18xx/tx.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 24, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @wl18xx_get_last_tx_rate._entry, ptr @wl18xx_get_last_tx_rate._entry_ptr, ptr @wl18xx_tx_complete_packet._entry, ptr @wl18xx_tx_complete_packet._entry_ptr, ptr @wl18xx_tx_immediate_complete._entry, ptr @wl18xx_tx_immediate_complete._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_tx_immediate_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_tx_complete_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_get_last_tx_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl18xx_tx_immediate_complete(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_status = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 92
  %0 = ptrtoint ptr %fw_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_status, align 4
  %priv = getelementptr inbounds %struct.wl_fw_status, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %priv2 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 125
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv2, align 4
  %last_fw_rls_idx = getelementptr inbounds %struct.wl18xx_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %last_fw_rls_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %last_fw_rls_idx, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp = icmp eq i8 %7, %9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %hlid6 = getelementptr inbounds %struct.wl_fw_status, ptr %1, i32 0, i32 10, i32 5
  %10 = ptrtoint ptr %hlid6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hlid6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %11)
  %cmp8 = icmp ult i8 %11, 16
  br i1 %cmp8, label %if.then10, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %conv7 = zext i8 %11 to i32
  %tx_last_rate = getelementptr inbounds %struct.wl_fw_status, ptr %1, i32 0, i32 10, i32 3
  %12 = ptrtoint ptr %tx_last_rate to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_last_rate, align 1
  %fw_rate_idx = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %conv7, i32 5
  %14 = ptrtoint ptr %fw_rate_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %fw_rate_idx, align 1
  %tx_last_rate_mbps = getelementptr inbounds %struct.wl_fw_status, ptr %1, i32 0, i32 10, i32 4
  %15 = ptrtoint ptr %tx_last_rate_mbps to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tx_last_rate_mbps, align 2
  %fw_rate_mbps = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %conv7, i32 6
  %17 = ptrtoint ptr %fw_rate_mbps to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %fw_rate_mbps, align 2
  br label %do.body

do.body:                                          ; preds = %if.then10, %if.end.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %18 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end38_crit_edge, label %do.body22, !prof !34

do.body.do.end38_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end38

do.body22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_tx_immediate_complete.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_tx_immediate_complete, %if.then30)) #3
          to label %do.end38 [label %if.then30], !srcloc !35

if.then30:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %last_fw_rls_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %last_fw_rls_idx, align 1
  %conv32 = zext i8 %20 to i32
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %3, align 4
  %conv34 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_tx_immediate_complete.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.3, i32 noundef %conv32, i32 noundef %conv34) #3
  br label %do.end38

do.end38:                                         ; preds = %if.then30, %do.body22, %do.body.do.end38_crit_edge
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %24)
  %cmp41 = icmp ugt i8 %24, 32
  br i1 %cmp41, label %do.end46, label %if.end76

do.end46:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #5
  %conv40 = zext i8 %24 to i32
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv40) #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 160, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end76:                                         ; preds = %do.end38
  %25 = ptrtoint ptr %last_fw_rls_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %last_fw_rls_idx, align 1
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp81.not116 = icmp eq i8 %26, %28
  br i1 %cmp81.not116, label %if.end76.for.end_crit_edge, label %for.body.lr.ph

if.end76.for.end_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end76
  %tx_results_count = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 46
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0117 = phi i8 [ %26, %for.body.lr.ph ], [ %conv86, %for.body.for.body_crit_edge ]
  %conv78 = zext i8 %i.0117 to i32
  %arrayidx84 = getelementptr %struct.wl18xx_fw_status_priv, ptr %3, i32 0, i32 1, i32 %conv78
  %29 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx84, align 1
  tail call fastcc void @wl18xx_tx_complete_packet(ptr noundef %wl, i8 noundef zeroext %30)
  %31 = ptrtoint ptr %tx_results_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_results_count, align 8
  %inc = add i32 %32, 1
  store i32 %inc, ptr %tx_results_count, align 8
  %33 = zext i8 %i.0117 to i16
  %rem.lhs.trunc = add nuw nsw i16 %33, 1
  %rem115 = urem i16 %rem.lhs.trunc, 33
  %conv86 = trunc i16 %rem115 to i8
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %3, align 4
  %cmp81.not = icmp eq i8 %35, %conv86
  br i1 %cmp81.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %conv86.le = trunc i16 %rem115 to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end76.for.end_crit_edge
  %.lcssa = phi i8 [ %26, %if.end76.for.end_crit_edge ], [ %conv86.le, %for.end.loopexit ]
  %36 = ptrtoint ptr %last_fw_rls_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.lcssa, ptr %last_fw_rls_idx, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end46, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl18xx_tx_complete_packet(ptr noundef %wl, i8 noundef zeroext %tx_stat_byte) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %tx_stat_byte to i32
  %and = and i32 %conv, 127
  %num_tx_desc = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 126
  %0 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_desc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %1)
  %cmp.not = icmp ult i32 %and, %1
  br i1 %cmp.not, label %lor.rhs, label %entry.do.end_crit_edge, !prof !34

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 58, i32 %and
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %lor.rhs.do.end_crit_edge, label %if.end, !prof !36

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %and) #6
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %and6 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call13 = tail call zeroext i1 @wl12xx_is_dummy_packet(ptr noundef %wl, ptr noundef nonnull %3) #3
  br i1 %call13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @wl1271_free_tx_id(ptr noundef %wl, i32 noundef %and) #3
  br label %cleanup

if.end15:                                         ; preds = %if.end
  br i1 %tobool7.not, label %land.lhs.true, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end15
  %6 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cb.i, align 8
  %and18 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then20, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %or = or i32 %7, 512
  %8 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %cb.i, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %land.lhs.true.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %9 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 8
  %vif = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 24
  %10 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vif, align 8
  %band = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load = load i32, ptr %band, align 4
  %hlid = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %5, i32 0, i32 7
  %13 = ptrtoint ptr %hlid to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hlid, align 1
  %idxprom.i = zext i8 %14 to i32
  %fw_rate_idx.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %idxprom.i, i32 5
  %15 = ptrtoint ptr %fw_rate_idx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fw_rate_idx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %16)
  %cmp.i = icmp ugt i8 %16, 29
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i = zext i8 %16 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv.i) #6
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %9, align 1
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 9
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %bf.load.i = load i16, ptr %flags.i, align 1
  %bf.clear.i = and i16 %bf.load.i, -2048
  store i16 %bf.clear.i, ptr %flags.i, align 1
  br label %wl18xx_get_last_tx_rate.exit

if.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %16)
  %cmp4.i = icmp ult i8 %16, 12
  br i1 %cmp4.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask)
  %cmp9.i = icmp eq i32 %bf.lshr.mask, 536870912
  %sub.i = add nsw i8 %16, -4
  %spec.select.i = select i1 %cmp9.i, i8 %sub.i, i8 %16
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select.i, ptr %9, align 1
  %flags16.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 9
  %20 = ptrtoint ptr %flags16.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %bf.load17.i = load i16, ptr %flags16.i, align 1
  %bf.clear18.i = and i16 %bf.load17.i, -2048
  store i16 %bf.clear18.i, ptr %flags16.i, align 1
  br label %wl18xx_get_last_tx_rate.exit

if.else.i:                                        ; preds = %if.end.i
  %flags20.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 9
  %21 = ptrtoint ptr %flags20.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %bf.load21.i = load i16, ptr %flags20.i, align 1
  %bf.clear22.i = and i16 %bf.load21.i, -2048
  %bf.set23.i = or i16 %bf.clear22.i, 8
  store i16 %bf.set23.i, ptr %flags20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %16)
  %cmp29.i = icmp ugt i8 %16, 19
  %spec.select109.v.i = select i1 %cmp29.i, i8 -13, i8 -12
  %spec.select109.i = add nsw i8 %spec.select109.v.i, %16
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %spec.select109.i, ptr %9, align 1
  %23 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i8 %16, label %if.else.i.if.end56.i_crit_edge [
    i8 29, label %if.then37.i
    i8 20, label %if.else.i.if.then47.i_crit_edge
  ]

if.else.i.if.then47.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then47.i

if.else.i.if.end56.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end56.i

if.then37.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %dec39.i = add nsw i8 %spec.select109.i, -1
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %dec39.i, ptr %9, align 1
  br label %if.then47.i

if.then47.i:                                      ; preds = %if.then37.i, %if.else.i.if.then47.i_crit_edge
  %bf.set55.i = or i16 %bf.clear22.i, 136
  %25 = ptrtoint ptr %flags20.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %bf.set55.i, ptr %flags20.i, align 1
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then47.i, %if.else.i.if.end56.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %16)
  %cmp58.i = icmp ult i8 %16, 21
  %tobool.not.i = icmp eq ptr %11, null
  %or.cond.i = or i1 %tobool.not.i, %cmp58.i
  br i1 %or.cond.i, label %if.end56.i.wl18xx_get_last_tx_rate.exit_crit_edge, label %wl12xx_vif_to_data.exit.i

if.end56.i.wl18xx_get_last_tx_rate.exit_crit_edge: ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %wl18xx_get_last_tx_rate.exit

wl12xx_vif_to_data.exit.i:                        ; preds = %if.end56.i
  %channel_type.i = getelementptr inbounds %struct.ieee80211_vif, ptr %11, i32 1, i32 1, i32 34, i32 1
  %26 = ptrtoint ptr %channel_type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel_type.i, align 4
  %28 = and i32 %27, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %switch.i = icmp eq i32 %28, 2
  br i1 %switch.i, label %if.then68.i, label %wl12xx_vif_to_data.exit.i.wl18xx_get_last_tx_rate.exit_crit_edge

wl12xx_vif_to_data.exit.i.wl18xx_get_last_tx_rate.exit_crit_edge: ; preds = %wl12xx_vif_to_data.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %wl18xx_get_last_tx_rate.exit

if.then68.i:                                      ; preds = %wl12xx_vif_to_data.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %9, align 1
  %sub71.i = add i8 %30, -8
  store i8 %sub71.i, ptr %9, align 1
  %31 = ptrtoint ptr %flags20.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %bf.load74.i = load i16, ptr %flags20.i, align 1
  %bf.set82.i = or i16 %bf.load74.i, 32
  store i16 %bf.set82.i, ptr %flags20.i, align 1
  br label %wl18xx_get_last_tx_rate.exit

wl18xx_get_last_tx_rate.exit:                     ; preds = %if.then68.i, %wl12xx_vif_to_data.exit.i.wl18xx_get_last_tx_rate.exit_crit_edge, %if.end56.i.wl18xx_get_last_tx_rate.exit_crit_edge, %if.then6.i, %do.end.i
  %count = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 9
  %32 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %bf.load27 = load i16, ptr %count, align 1
  %bf.clear = and i16 %bf.load27, 2047
  %bf.set = or i16 %bf.clear, 2048
  store i16 %bf.set, ptr %count, align 1
  %ack_signal = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 20
  %33 = ptrtoint ptr %ack_signal to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %ack_signal, align 4
  br i1 %tobool7.not, label %wl18xx_get_last_tx_rate.exit.if.end30_crit_edge, label %if.then29

wl18xx_get_last_tx_rate.exit.if.end30_crit_edge:  ; preds = %wl18xx_get_last_tx_rate.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.then29:                                        ; preds = %wl18xx_get_last_tx_rate.exit
  call void @__sanitizer_cov_trace_pc() #5
  %retry_count = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 87, i32 3
  %34 = ptrtoint ptr %retry_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %retry_count, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %retry_count, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %wl18xx_get_last_tx_rate.exit.if.end30_crit_edge
  %call31 = tail call ptr @skb_pull(ptr noundef nonnull %3, i32 noundef 16) #3
  %quirks = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %36 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %quirks, align 8
  %and32 = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.do.body46_crit_edge, label %land.lhs.true34

if.end30.do.body46_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body46

land.lhs.true34:                                  ; preds = %if.end30
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 28
  %38 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_key, align 4
  %tobool35.not = icmp eq ptr %39, null
  br i1 %tobool35.not, label %land.lhs.true34.do.body46_crit_edge, label %land.lhs.true36

land.lhs.true34.do.body46_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body46

land.lhs.true36:                                  ; preds = %land.lhs.true34
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %41)
  %cmp38 = icmp eq i32 %41, 1027074
  br i1 %cmp38, label %if.then40, label %land.lhs.true36.do.body46_crit_edge

land.lhs.true36.do.body46_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body46

if.then40:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #5
  %call41 = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef nonnull %3) #3
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %43, i32 4
  %44 = call ptr @memmove(ptr %add.ptr, ptr %43, i32 %call41)
  %call44 = tail call ptr @skb_pull(ptr noundef nonnull %3, i32 noundef 4) #3
  br label %do.body46

do.body46:                                        ; preds = %if.then40, %land.lhs.true36.do.body46_crit_edge, %land.lhs.true34.do.body46_crit_edge, %if.end30.do.body46_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %45 = load i32, ptr @wl12xx_debug_level, align 4
  %and47 = and i32 %45, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body46.do.end75_crit_edge, label %do.body56, !prof !34

do.body46.do.end75_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end75

do.body56:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_tx_complete_packet.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_tx_complete_packet, %if.then67)) #3
          to label %do.end75 [label %if.then67], !srcloc !35

if.then67:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #5
  %and6.lobit = lshr i32 %conv, 7
  %46 = xor i32 %and6.lobit, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_tx_complete_packet.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.7, i32 noundef %and, ptr noundef nonnull %3, i32 noundef %46) #3
  br label %do.end75

do.end75:                                         ; preds = %if.then67, %do.body56, %do.body46.do.end75_crit_edge
  %deferred_tx_queue = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 54
  tail call void @skb_queue_tail(ptr noundef %deferred_tx_queue, ptr noundef nonnull %3) #3
  %freezable_wq = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 56
  %47 = ptrtoint ptr %freezable_wq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %freezable_wq, align 4
  %netstack_work = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 64
  %call.i118 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %netstack_work) #3
  tail call void @wl1271_free_tx_id(ptr noundef %wl, i32 noundef %and) #3
  br label %cleanup

cleanup:                                          ; preds = %do.end75, %if.then14, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wl12xx_is_dummy_packet(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1271_free_tx_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_hdrlen_from_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !20, !21, !22, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl18xx/tx.c", i32 154, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wl18xx_tx_immediate_complete.__UNIQUE_ID_ddebug349, !1, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wl18xx/tx.c", i32 158, i32 3}
!8 = !{ptr @wl18xx_tx_immediate_complete._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @wl18xx_tx_immediate_complete._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ti/wl18xx/tx.c", i32 72, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @wl18xx_tx_complete_packet._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @wl18xx_tx_complete_packet._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ti/wl18xx/tx.c", i32 123, i32 2}
!17 = !{ptr @wl18xx_tx_complete_packet.__UNIQUE_ID_ddebug348, !16, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ti/wl18xx/tx.c", i32 24, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @wl18xx_get_last_tx_rate._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @wl18xx_get_last_tx_rate._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ti/wl18xx/../wlcore/wlcore_i.h", i32 495, i32 2}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2148310502, i64 2148310507, i64 2148310520, i64 2148310564, i64 2148310598, i64 2148310619}
!36 = !{!"branch_weights", i32 1, i32 2000}
