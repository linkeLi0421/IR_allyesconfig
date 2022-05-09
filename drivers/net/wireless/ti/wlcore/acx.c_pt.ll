; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wlcore/acx.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wlcore/acx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wl1271_acx_sleep_auth\22, \22a\22\09"
module asm "\09.weak\09__crc_wl1271_acx_sleep_auth\09\09\09\09"
module asm "\09.long\09__crc_wl1271_acx_sleep_auth\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wl1271_acx_sleep_auth:\09\09\09\09\09"
module asm "\09.asciz \09\22wl1271_acx_sleep_auth\22\09\09\09\09\09"
module asm "__kstrtabns_wl1271_acx_sleep_auth:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wl12xx_acx_mem_cfg\22, \22a\22\09"
module asm "\09.weak\09__crc_wl12xx_acx_mem_cfg\09\09\09\09"
module asm "\09.long\09__crc_wl12xx_acx_mem_cfg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wl12xx_acx_mem_cfg:\09\09\09\09\09"
module asm "\09.asciz \09\22wl12xx_acx_mem_cfg\22\09\09\09\09\09"
module asm "__kstrtabns_wl12xx_acx_mem_cfg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wl1271_acx_init_mem_config\22, \22a\22\09"
module asm "\09.weak\09__crc_wl1271_acx_init_mem_config\09\09\09\09"
module asm "\09.long\09__crc_wl1271_acx_init_mem_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wl1271_acx_init_mem_config:\09\09\09\09\09"
module asm "\09.asciz \09\22wl1271_acx_init_mem_config\22\09\09\09\09\09"
module asm "__kstrtabns_wl1271_acx_init_mem_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wl1271_acx_pm_config\22, \22a\22\09"
module asm "\09.weak\09__crc_wl1271_acx_pm_config\09\09\09\09"
module asm "\09.long\09__crc_wl1271_acx_pm_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wl1271_acx_pm_config:\09\09\09\09\09"
module asm "\09.asciz \09\22wl1271_acx_pm_config\22\09\09\09\09\09"
module asm "__kstrtabns_wl1271_acx_pm_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wl1271_acx_set_ht_capabilities\22, \22a\22\09"
module asm "\09.weak\09__crc_wl1271_acx_set_ht_capabilities\09\09\09\09"
module asm "\09.long\09__crc_wl1271_acx_set_ht_capabilities\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wl1271_acx_set_ht_capabilities:\09\09\09\09\09"
module asm "\09.asciz \09\22wl1271_acx_set_ht_capabilities\22\09\09\09\09\09"
module asm "__kstrtabns_wl1271_acx_set_ht_capabilities:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.wl12xx_vif = type { ptr, %struct.list_head, i32, i8, i8, i8, i8, i8, %union.anon.129, i32, [4 x i32], [1 x i32], [33 x i8], i8, i32, i32, i32, [2 x i32], i32, i32, i32, ptr, i32, i32, i16, i8, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.delayed_work, %struct.delayed_work, i32, i32, i8, i32, %struct.delayed_work, i32, %struct.ieee80211_sta_ht_cap, %struct.work_struct, i64, %struct.anon.132 }
%struct.list_head = type { ptr, ptr }
%union.anon.129 = type { %struct.anon.131 }
%struct.anon.131 = type { i8, i8, [1 x i32], [14 x ptr], i8, i8, [4 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.132 = type { [0 x i8] }
%struct.acx_wake_up_condition = type { %struct.acx_header, i8, i8, i8, [1 x i8] }
%struct.acx_header = type { %struct.wl1271_cmd_header, i16, i16 }
%struct.wl1271_cmd_header = type { i16, i16, [0 x i8] }
%struct.acx_sleep_auth = type { %struct.acx_header, i8, [3 x i8] }
%struct.wl1271 = type { i8, ptr, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock, i32, i32, i8, i32, i8, i8, %struct.mutex, i32, %struct.wlcore_partition_set, %struct.wl1271_chip, i32, ptr, i32, ptr, i32, i8, i32, i32, [3 x %struct.mac_address], i32, i8, [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [16 x i8], %struct.list_head, i8, i8, ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i64, [4 x i32], [12 x i32], %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, ptr, [1 x i32], [32 x ptr], i32, i32, ptr, i32, ptr, %struct.work_struct, ptr, i32, i32, i32, %struct.work_struct, i8, [2 x i32], [2 x i32], ptr, i32, i32, i32, [2 x i32], ptr, %struct.wl1271_scan, %struct.delayed_work, ptr, %struct.delayed_work, ptr, i32, ptr, i32, %struct.wl1271_stats, ptr, i32, [1 x i32], ptr, ptr, ptr, %struct.wlcore_conf, i8, i8, i32, i8, [2 x %struct.ieee80211_supported_band], i8, i8, [16 x %struct.wl1271_link], i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, i32, i8, i8, ptr, i8, i8, [2 x %struct.ieee80211_sta_ht_cap], i32, i8, i32, i32, [1 x i32], i32, i32, %struct.mutex, i32, i32, [5 x i32], [5 x i32], %struct.completion, ptr, i8, i32, [6 x i8] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.wlcore_partition_set = type { %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition }
%struct.wlcore_partition = type { i32, i32 }
%struct.wl1271_chip = type { i32, [32 x i8], [5 x i32], [32 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.acx_current_tx_power = type { %struct.acx_header, i8, i8, [2 x i8] }
%struct.acx_feature_config = type { %struct.acx_header, i8, [3 x i8], i32, i32 }
%struct.acx_rx_msdu_lifetime = type { %struct.acx_header, i32 }
%struct.acx_slot = type { %struct.acx_header, i8, i8, i8, [5 x i8] }
%struct.acx_dot11_grp_addr_tbl = type { %struct.acx_header, i8, i8, i8, [1 x i8], [48 x i8] }
%struct.acx_rx_timeout = type { %struct.acx_header, i8, i8, i16, i16, [2 x i8] }
%struct.acx_rts_threshold = type { %struct.acx_header, i8, i8, i16 }
%struct.acx_dco_itrim_params = type { %struct.acx_header, i8, [3 x i8], i32 }
%struct.acx_beacon_filter_option = type { %struct.acx_header, i8, i8, i8, [1 x i8] }
%struct.acx_beacon_filter_ie_table = type { %struct.acx_header, i8, i8, [2 x i8], [100 x i8] }
%struct.acx_conn_monit_params = type { %struct.acx_header, i8, [3 x i8], i32, i32 }
%struct.acx_bt_wlan_coex = type { %struct.acx_header, i8, [3 x i8] }
%struct.acx_bt_wlan_coex_param = type { %struct.acx_header, [67 x i32], i8, [3 x i8] }
%struct.acx_energy_detection = type { %struct.acx_header, i16, i8, i8 }
%struct.acx_beacon_broadcast = type { %struct.acx_header, i8, i8, i16, i16, i8, [1 x i8] }
%struct.acx_aid = type { %struct.acx_header, i8, i8, i16 }
%struct.acx_event_mask = type { %struct.acx_header, i32, i32 }
%struct.acx_preamble = type { %struct.acx_header, i8, i8, [2 x i8] }
%struct.acx_ctsprotect = type { %struct.acx_header, i8, i8, [2 x i8] }
%struct.acx_rate_policy = type { %struct.acx_header, i32, %struct.acx_rate_class }
%struct.acx_rate_class = type { i32, i8, i8, i8, i8 }
%struct.anon.130 = type { i8, i8, i8, i8, i8, i8, i32 }
%struct.wlcore_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acx_ac_cfg = type { %struct.acx_header, i8, i8, i8, i8, i16, i16 }
%struct.acx_tid_config = type { %struct.acx_header, i8, i8, i8, i8, i8, i8, [2 x i8], [2 x i32] }
%struct.acx_frag_threshold = type { %struct.acx_header, i16, [2 x i8] }
%struct.acx_tx_config_options = type { %struct.acx_header, i16, i16 }
%struct.wl12xx_acx_config_memory = type { %struct.acx_header, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8] }
%struct.wl1271_acx_mem_map = type { %struct.acx_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.wl1271_acx_rx_config_opt = type { %struct.acx_header, i16, i16, i16, i8, i8 }
%struct.wl1271_acx_bet_enable = type { %struct.acx_header, i8, i8, i8, [1 x i8] }
%struct.wl1271_acx_arp_filter = type { %struct.acx_header, i8, i8, i8, [1 x i8], [16 x i8] }
%struct.wl1271_acx_pm_config = type { %struct.acx_header, i32, i8, [3 x i8] }
%struct.wl1271_acx_keep_alive_mode = type { %struct.acx_header, i8, i8, [2 x i8] }
%struct.wl1271_acx_keep_alive_config = type { %struct.acx_header, i8, i8, i8, i8, i32 }
%struct.wl1271_acx_rssi_snr_trigger = type { %struct.acx_header, i8, i8, i8, i8, i16, i16, i8, i8, i8, [1 x i8] }
%struct.wl1271_acx_rssi_snr_avg_weights = type { %struct.acx_header, i8, [3 x i8], i8, i8, i8, i8 }
%struct.wl1271_acx_ht_capabilities = type { %struct.acx_header, i32, i8, i8, i8, i8 }
%struct.wl1271_acx_ht_information = type { %struct.acx_header, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.wl1271_acx_ba_initiator_policy = type { %struct.acx_header, i8, i8, i8, [1 x i8], i16, [2 x i8] }
%struct.wl1271_acx_ba_receiver_setup = type { %struct.acx_header, i8, i8, i8, i8, i16, [2 x i8] }
%struct.wl12xx_acx_fw_tsf_information = type { %struct.acx_header, i8, [3 x i8], i32, i32, i32, i32, i8, [3 x i8] }
%struct.wl1271_acx_ps_rx_streaming = type { %struct.acx_header, i8, i8, i8, i8, i8, [3 x i8] }
%struct.wl1271_acx_ap_max_tx_retry = type { %struct.acx_header, i8, i8, i16 }
%struct.wl1271_acx_config_ps = type { %struct.acx_header, i8, i8, [2 x i8], i32 }
%struct.wl1271_acx_inconnection_sta = type { %struct.acx_header, [6 x i8], i8, i8 }
%struct.wl1271_acx_fm_coex = type { %struct.acx_header, i8, i8, i8, i8, i16, i16, i32, i16, i8, i8 }
%struct.wl12xx_acx_set_rate_mgmt_params = type { %struct.acx_header, i8, i8, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, [13 x i8], [2 x i8] }
%struct.wl12xx_acx_config_hangover = type { %struct.acx_header, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.acx_roaming_stats = type { %struct.acx_header, i8, [3 x i8], i32, i8, i8, i8, i8 }
%struct.acx_default_rx_filter = type { %struct.acx_header, i8, i8, [2 x i8] }
%struct.wl12xx_rx_filter = type { i8, i32, [8 x %struct.wl12xx_rx_filter_field] }
%struct.wl12xx_rx_filter_field = type { i16, i8, i8, ptr }
%struct.acx_rx_filter_cfg = type { %struct.acx_header, i8, i8, i8, i8, [0 x i8] }

@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wl1271_acx_wake_up_conditions.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlcore\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wl1271_acx_wake_up_conditions\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/wireless/ti/wlcore/acx.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"wlcore: acx wake up conditions (wake_up_event %d listen_interval %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@wl1271_acx_wake_up_conditions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014wlcore: WARNING could not set wake up conditions: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wl1271_acx_wake_up_conditions._entry_ptr = internal global ptr @wl1271_acx_wake_up_conditions._entry, section ".printk_index", align 4
@wl1271_acx_sleep_auth.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wl1271_acx_sleep_auth\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wlcore: acx sleep auth %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wl1271_acx_sleep_auth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013wlcore: ERROR could not configure sleep_auth to %d: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@wl1271_acx_sleep_auth._entry_ptr = internal global ptr @wl1271_acx_sleep_auth._entry, section ".printk_index", align 4
@__kstrtab_wl1271_acx_sleep_auth = external dso_local constant [0 x i8], align 1
@__kstrtabns_wl1271_acx_sleep_auth = external dso_local constant [0 x i8], align 1
@__ksymtab_wl1271_acx_sleep_auth = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wl1271_acx_sleep_auth to i32), ptr @__kstrtab_wl1271_acx_sleep_auth, ptr @__kstrtabns_wl1271_acx_sleep_auth }, section "___ksymtab_gpl+wl1271_acx_sleep_auth", align 4
@wl1271_acx_tx_power.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wl1271_acx_tx_power\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wlcore: acx dot11_cur_tx_pwr %d\0A\00", [63 x i8] zeroinitializer }, align 32
@wl1271_acx_tx_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014wlcore: WARNING configure of tx power failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@wl1271_acx_tx_power._entry_ptr = internal global ptr @wl1271_acx_tx_power._entry, section ".printk_index", align 4
@wl1271_acx_feature_cfg.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl1271_acx_feature_cfg\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wlcore: acx feature cfg\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1271_acx_feature_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013wlcore: ERROR Couldn't set HW encryption\0A\00", [52 x i8] zeroinitializer }, align 32
@wl1271_acx_feature_cfg._entry_ptr = internal global ptr @wl1271_acx_feature_cfg._entry, section ".printk_index", align 4
@wl1271_acx_mem_map.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl1271_acx_mem_map\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wlcore: acx mem map\0A\00", [43 x i8] zeroinitializer }, align 32
@wl1271_acx_rx_msdu_life_time.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1271_acx_rx_msdu_life_time\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wlcore: acx rx msdu life time\0A\00", [33 x i8] zeroinitializer }, align 32
@wl1271_acx_rx_msdu_life_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wlcore: WARNING failed to set rx msdu life time: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wl1271_acx_rx_msdu_life_time._entry_ptr = internal global ptr @wl1271_acx_rx_msdu_life_time._entry, section ".printk_index", align 4
@wl1271_acx_slot.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl1271_acx_slot\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wlcore: acx slot\0A\00", [46 x i8] zeroinitializer }, align 32
@wl1271_acx_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014wlcore: WARNING failed to set slot time: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@wl1271_acx_slot._entry_ptr = internal global ptr @wl1271_acx_slot._entry, section ".printk_index", align 4
@wl1271_acx_group_address_tbl.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1271_acx_group_address_tbl\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wlcore: acx group address tbl\0A\00", [33 x i8] zeroinitializer }, align 32
@wl1271_acx_group_address_tbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014wlcore: WARNING failed to set group addr table: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@wl1271_acx_group_address_tbl._entry_ptr = internal global ptr @wl1271_acx_group_address_tbl._entry, section ".printk_index", align 4
@wl1271_acx_service_period_timeout.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wl1271_acx_service_period_timeout\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wlcore: acx service period timeout\0A\00", [60 x i8] zeroinitializer }, align 32
@wl1271_acx_service_period_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014wlcore: WARNING failed to set service period timeout: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wl1271_acx_service_period_timeout._entry_ptr = internal global ptr @wl1271_acx_service_period_timeout._entry, section ".printk_index", align 4
@wl1271_acx_rts_threshold.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl1271_acx_rts_threshold\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wlcore: acx rts threshold: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wl1271_acx_rts_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014wlcore: WARNING failed to set rts threshold: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@wl1271_acx_rts_threshold._entry_ptr = internal global ptr @wl1271_acx_rts_threshold._entry, section ".printk_index", align 4
@wl1271_acx_dco_itrim_params.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl1271_acx_dco_itrim_params\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wlcore: acx dco itrim parameters\0A\00", [62 x i8] zeroinitializer }, align 32
@wl1271_acx_dco_itrim_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014wlcore: WARNING failed to set dco itrim parameters: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@wl1271_acx_dco_itrim_params._entry_ptr = internal global ptr @wl1271_acx_dco_itrim_params._entry, section ".printk_index", align 4
@wl1271_acx_beacon_filter_opt.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1271_acx_beacon_filter_opt\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"wlcore: acx beacon filter opt enable=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@wl1271_acx_beacon_filter_opt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wlcore: WARNING failed to set beacon filter opt: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wl1271_acx_beacon_filter_opt._entry_ptr = internal global ptr @wl1271_acx_beacon_filter_opt._entry, section ".printk_index", align 4
@wl1271_acx_beacon_filter_table.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wl1271_acx_beacon_filter_table\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wlcore: acx beacon filter table\0A\00", [63 x i8] zeroinitializer }, align 32
@wl1271_acx_beacon_filter_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014wlcore: WARNING failed to set beacon filter table: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1271_acx_beacon_filter_table._entry_ptr = internal global ptr @wl1271_acx_beacon_filter_table._entry, section ".printk_index", align 4
@wl1271_acx_conn_monit_params.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1271_acx_conn_monit_params\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"wlcore: acx connection monitor parameters: %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@wl1271_acx_conn_monit_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.40, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014wlcore: WARNING failed to set connection monitor parameters: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@wl1271_acx_conn_monit_params._entry_ptr = internal global ptr @wl1271_acx_conn_monit_params._entry, section ".printk_index", align 4
@wl1271_acx_sg_enable.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl1271_acx_sg_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wlcore: acx sg enable\0A\00", [41 x i8] zeroinitializer }, align 32
@wl1271_acx_sg_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wlcore: WARNING failed to set softgemini enable: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wl1271_acx_sg_enable._entry_ptr = internal global ptr @wl1271_acx_sg_enable._entry, section ".printk_index", align 4
@wl12xx_acx_sg_cfg.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wl12xx_acx_sg_cfg\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wlcore: acx sg cfg\0A\00", [44 x i8] zeroinitializer }, align 32
@wl12xx_acx_sg_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014wlcore: WARNING failed to set sg config: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@wl12xx_acx_sg_cfg._entry_ptr = internal global ptr @wl12xx_acx_sg_cfg._entry, section ".printk_index", align 4
@wl1271_acx_cca_threshold.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl1271_acx_cca_threshold\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wlcore: acx cca threshold\0A\00", [37 x i8] zeroinitializer }, align 32
@wl1271_acx_cca_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014wlcore: WARNING failed to set cca threshold: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@wl1271_acx_cca_threshold._entry_ptr = internal global ptr @wl1271_acx_cca_threshold._entry, section ".printk_index", align 4
@wl1271_acx_bcn_dtim_options.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl1271_acx_bcn_dtim_options\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wlcore: acx bcn dtim options\0A\00", [34 x i8] zeroinitializer }, align 32
@wl1271_acx_bcn_dtim_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014wlcore: WARNING failed to set rx config: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@wl1271_acx_bcn_dtim_options._entry_ptr = internal global ptr @wl1271_acx_bcn_dtim_options._entry, section ".printk_index", align 4
@wl1271_acx_aid.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wl1271_acx_aid\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wlcore: acx aid\0A\00", [47 x i8] zeroinitializer }, align 32
@wl1271_acx_aid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014wlcore: WARNING failed to set aid: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@wl1271_acx_aid._entry_ptr = internal global ptr @wl1271_acx_aid._entry, section ".printk_index", align 4
@wl1271_acx_event_mbox_mask.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 0, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wl1271_acx_event_mbox_mask\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wlcore: acx event mbox mask\0A\00", [35 x i8] zeroinitializer }, align 32
@wl1271_acx_event_mbox_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014wlcore: WARNING failed to set acx_event_mbox_mask: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1271_acx_event_mbox_mask._entry_ptr = internal global ptr @wl1271_acx_event_mbox_mask._entry, section ".printk_index", align 4
@wl1271_acx_set_preamble.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wl1271_acx_set_preamble\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wlcore: acx_set_preamble\0A\00", [38 x i8] zeroinitializer }, align 32
@wl1271_acx_set_preamble._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014wlcore: WARNING Setting of preamble failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wl1271_acx_set_preamble._entry_ptr = internal global ptr @wl1271_acx_set_preamble._entry, section ".printk_index", align 4
@wl1271_acx_cts_protect.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl1271_acx_cts_protect\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wlcore: acx_set_ctsprotect\0A\00", [36 x i8] zeroinitializer }, align 32
@wl1271_acx_cts_protect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014wlcore: WARNING Setting of ctsprotect failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@wl1271_acx_cts_protect._entry_ptr = internal global ptr @wl1271_acx_cts_protect._entry, section ".printk_index", align 4
@wl1271_acx_statistics.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.70, i8 0, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wl1271_acx_statistics\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wlcore: acx statistics\0A\00", [40 x i8] zeroinitializer }, align 32
@wl1271_acx_statistics._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014wlcore: WARNING acx statistics failed: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@wl1271_acx_statistics._entry_ptr = internal global ptr @wl1271_acx_statistics._entry, section ".printk_index", align 4
@wl1271_acx_sta_rate_policies.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.73, i8 0, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1271_acx_sta_rate_policies\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wlcore: acx rate policies\0A\00", [37 x i8] zeroinitializer }, align 32
@wl1271_acx_sta_rate_policies.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.74, i8 0, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"wlcore: basic_rate: 0x%x, full_rate: 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@wl1271_acx_sta_rate_policies._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.72, ptr @.str.2, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wlcore: WARNING Setting of rate policies failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wl1271_acx_sta_rate_policies._entry_ptr = internal global ptr @wl1271_acx_sta_rate_policies._entry, section ".printk_index", align 4
@wl1271_acx_sta_rate_policies._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.72, ptr @.str.2, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wl1271_acx_sta_rate_policies._entry_ptr.77 = internal global ptr @wl1271_acx_sta_rate_policies._entry.76, section ".printk_index", align 4
@wl1271_acx_sta_rate_policies._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.72, ptr @.str.2, i32 783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wl1271_acx_sta_rate_policies._entry_ptr.79 = internal global ptr @wl1271_acx_sta_rate_policies._entry.78, section ".printk_index", align 4
@wl1271_acx_ap_rate_policy.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 0, i8 -57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wl1271_acx_ap_rate_policy\00", [38 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"wlcore: acx ap rate policy %d rates 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@wl1271_acx_ap_rate_policy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014wlcore: WARNING Setting of ap rate policy failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wl1271_acx_ap_rate_policy._entry_ptr = internal global ptr @wl1271_acx_ap_rate_policy._entry, section ".printk_index", align 4
@wl1271_acx_ac_cfg.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wl1271_acx_ac_cfg\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"wlcore: acx ac cfg %d cw_ming %d cw_max %d aifs %d txop %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wl1271_acx_ac_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014wlcore: WARNING acx ac cfg failed: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@wl1271_acx_ac_cfg._entry_ptr = internal global ptr @wl1271_acx_ac_cfg._entry, section ".printk_index", align 4
@wl1271_acx_tid_cfg.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.87, i8 0, i8 -40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl1271_acx_tid_cfg\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wlcore: acx tid config\0A\00", [40 x i8] zeroinitializer }, align 32
@wl1271_acx_tid_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014wlcore: WARNING Setting of tid config failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@wl1271_acx_tid_cfg._entry_ptr = internal global ptr @wl1271_acx_tid_cfg._entry, section ".printk_index", align 4
@wl1271_acx_frag_threshold.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 0, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wl1271_acx_frag_threshold\00", [38 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wlcore: acx frag threshold: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wl1271_acx_frag_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014wlcore: WARNING Setting of frag threshold failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wl1271_acx_frag_threshold._entry_ptr = internal global ptr @wl1271_acx_frag_threshold._entry, section ".printk_index", align 4
@wl1271_acx_tx_config_options.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.2, ptr @.str.93, i8 0, i8 -23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1271_acx_tx_config_options\00", [35 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wlcore: acx tx config options\0A\00", [33 x i8] zeroinitializer }, align 32
@wl1271_acx_tx_config_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.2, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014wlcore: WARNING Setting of tx options failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@wl1271_acx_tx_config_options._entry_ptr = internal global ptr @wl1271_acx_tx_config_options._entry, section ".printk_index", align 4
@wl12xx_acx_mem_cfg.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.96, i8 0, i8 -16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl12xx_acx_mem_cfg\00", [45 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wlcore: wl1271 mem cfg\0A\00", [40 x i8] zeroinitializer }, align 32
@wl12xx_acx_mem_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014wlcore: WARNING wl1271 mem config failed: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@wl12xx_acx_mem_cfg._entry_ptr = internal global ptr @wl12xx_acx_mem_cfg._entry, section ".printk_index", align 4
@__kstrtab_wl12xx_acx_mem_cfg = external dso_local constant [0 x i8], align 1
@__kstrtabns_wl12xx_acx_mem_cfg = external dso_local constant [0 x i8], align 1
@__ksymtab_wl12xx_acx_mem_cfg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wl12xx_acx_mem_cfg to i32), ptr @__kstrtab_wl12xx_acx_mem_cfg, ptr @__kstrtabns_wl12xx_acx_mem_cfg }, section "___ksymtab_gpl+wl12xx_acx_mem_cfg", align 4
@wl1271_acx_init_mem_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013wlcore: ERROR couldn't allocate target memory map\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wl1271_acx_init_mem_config\00", [37 x i8] zeroinitializer }, align 32
@wl1271_acx_init_mem_config._entry_ptr = internal global ptr @wl1271_acx_init_mem_config._entry, section ".printk_index", align 4
@wl1271_acx_init_mem_config._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.2, i32 1012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013wlcore: ERROR couldn't retrieve firmware memory map\0A\00", [41 x i8] zeroinitializer }, align 32
@wl1271_acx_init_mem_config._entry_ptr.102 = internal global ptr @wl1271_acx_init_mem_config._entry.100, section ".printk_index", align 4
@wl1271_acx_init_mem_config.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.99, ptr @.str.2, ptr @.str.103, i8 0, i8 -1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wlcore: available tx blocks: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_wl1271_acx_init_mem_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_wl1271_acx_init_mem_config = external dso_local constant [0 x i8], align 1
@__ksymtab_wl1271_acx_init_mem_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wl1271_acx_init_mem_config to i32), ptr @__kstrtab_wl1271_acx_init_mem_config, ptr @__kstrtabns_wl1271_acx_init_mem_config }, section "___ksymtab_gpl+wl1271_acx_init_mem_config", align 4
@wl1271_acx_init_rx_interrupt.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.2, ptr @.str.105, i8 1, i8 2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1271_acx_init_rx_interrupt\00", [35 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wlcore: wl1271 rx interrupt config\0A\00", [60 x i8] zeroinitializer }, align 32
@wl1271_acx_init_rx_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.2, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014wlcore: WARNING wl1271 rx config opt failed: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@wl1271_acx_init_rx_interrupt._entry_ptr = internal global ptr @wl1271_acx_init_rx_interrupt._entry, section ".printk_index", align 4
@wl1271_acx_bet_enable.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.2, ptr @.str.108, i8 1, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wl1271_acx_bet_enable\00", [42 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wlcore: acx bet enable\0A\00", [40 x i8] zeroinitializer }, align 32
@wl1271_acx_bet_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.2, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014wlcore: WARNING acx bet enable failed: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@wl1271_acx_bet_enable._entry_ptr = internal global ptr @wl1271_acx_bet_enable._entry, section ".printk_index", align 4
@wl1271_acx_arp_ip_filter.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.2, ptr @.str.111, i8 1, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl1271_acx_arp_ip_filter\00", [39 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"wlcore: acx arp ip filter, enable: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@wl1271_acx_arp_ip_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.2, i32 1114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014wlcore: WARNING failed to set arp ip filter: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@wl1271_acx_arp_ip_filter._entry_ptr = internal global ptr @wl1271_acx_arp_ip_filter._entry, section ".printk_index", align 4
@wl1271_acx_pm_config.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.2, ptr @.str.114, i8 1, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl1271_acx_pm_config\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wlcore: acx pm config\0A\00", [41 x i8] zeroinitializer }, align 32
@wl1271_acx_pm_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.2, i32 1142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014wlcore: WARNING acx pm config failed: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@wl1271_acx_pm_config._entry_ptr = internal global ptr @wl1271_acx_pm_config._entry, section ".printk_index", align 4
@__kstrtab_wl1271_acx_pm_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_wl1271_acx_pm_config = external dso_local constant [0 x i8], align 1
@__ksymtab_wl1271_acx_pm_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wl1271_acx_pm_config to i32), ptr @__kstrtab_wl1271_acx_pm_config, ptr @__kstrtabns_wl1271_acx_pm_config }, section "___ksymtab_gpl+wl1271_acx_pm_config", align 4
@wl1271_acx_keep_alive_mode.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.117, i8 1, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wl1271_acx_keep_alive_mode\00", [37 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wlcore: acx keep alive mode: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@wl1271_acx_keep_alive_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 1171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014wlcore: WARNING acx keep alive mode failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wl1271_acx_keep_alive_mode._entry_ptr = internal global ptr @wl1271_acx_keep_alive_mode._entry, section ".printk_index", align 4
@wl1271_acx_keep_alive_config.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.2, ptr @.str.120, i8 1, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl1271_acx_keep_alive_config\00", [35 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wlcore: acx keep alive config\0A\00", [33 x i8] zeroinitializer }, align 32
@wl1271_acx_keep_alive_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.2, i32 1203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014wlcore: WARNING acx keep alive config failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@wl1271_acx_keep_alive_config._entry_ptr = internal global ptr @wl1271_acx_keep_alive_config._entry, section ".printk_index", align 4
@wl1271_acx_rssi_snr_trigger.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.2, ptr @.str.123, i8 1, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl1271_acx_rssi_snr_trigger\00", [36 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wlcore: acx rssi snr trigger\0A\00", [34 x i8] zeroinitializer }, align 32
@wl1271_acx_rssi_snr_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.2, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014wlcore: WARNING acx rssi snr trigger setting failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wl1271_acx_rssi_snr_trigger._entry_ptr = internal global ptr @wl1271_acx_rssi_snr_trigger._entry, section ".printk_index", align 4
@wl1271_acx_rssi_snr_avg_weights.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.2, ptr @.str.126, i8 1, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wl1271_acx_rssi_snr_avg_weights\00", [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wlcore: acx rssi snr avg weights\0A\00", [62 x i8] zeroinitializer }, align 32
@wl1271_acx_rssi_snr_avg_weights._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.2, i32 1276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014wlcore: WARNING acx rssi snr trigger weights failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wl1271_acx_rssi_snr_avg_weights._entry_ptr = internal global ptr @wl1271_acx_rssi_snr_avg_weights._entry, section ".printk_index", align 4
@wl1271_acx_set_ht_capabilities.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.128, ptr @.str.2, ptr @.str.129, i8 1, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wl1271_acx_set_ht_capabilities\00", [33 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"wlcore: acx ht capabilities setting sta supp: %d sta cap: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wl1271_acx_set_ht_capabilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.2, i32 1323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014wlcore: WARNING acx ht capabilities setting failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@wl1271_acx_set_ht_capabilities._entry_ptr = internal global ptr @wl1271_acx_set_ht_capabilities._entry, section ".printk_index", align 4
@__kstrtab_wl1271_acx_set_ht_capabilities = external dso_local constant [0 x i8], align 1
@__kstrtabns_wl1271_acx_set_ht_capabilities = external dso_local constant [0 x i8], align 1
@__ksymtab_wl1271_acx_set_ht_capabilities = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wl1271_acx_set_ht_capabilities to i32), ptr @__kstrtab_wl1271_acx_set_ht_capabilities, ptr @__kstrtabns_wl1271_acx_set_ht_capabilities }, section "___ksymtab_gpl+wl1271_acx_set_ht_capabilities", align 4
@wl1271_acx_set_ht_information.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.131, ptr @.str.2, ptr @.str.132, i8 1, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wl1271_acx_set_ht_information\00", [34 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wlcore: acx ht information setting\0A\00", [60 x i8] zeroinitializer }, align 32
@wl1271_acx_set_ht_information._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.2, i32 1361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014wlcore: WARNING acx ht information setting failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1271_acx_set_ht_information._entry_ptr = internal global ptr @wl1271_acx_set_ht_information._entry, section ".printk_index", align 4
@wl12xx_acx_set_ba_initiator_policy.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.2, ptr @.str.135, i8 1, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wl12xx_acx_set_ba_initiator_policy\00", [61 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wlcore: acx ba initiator policy\0A\00", [63 x i8] zeroinitializer }, align 32
@wl12xx_acx_set_ba_initiator_policy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.2, i32 1396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014wlcore: WARNING acx ba initiator policy failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@wl12xx_acx_set_ba_initiator_policy._entry_ptr = internal global ptr @wl12xx_acx_set_ba_initiator_policy._entry, section ".printk_index", align 4
@wl12xx_acx_set_ba_receiver_session.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.2, ptr @.str.138, i8 1, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wl12xx_acx_set_ba_receiver_session\00", [61 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"wlcore: acx ba receiver session setting\0A\00", [55 x i8] zeroinitializer }, align 32
@wl12xx_acx_set_ba_receiver_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.137, ptr @.str.2, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014wlcore: WARNING acx ba receiver session failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@wl12xx_acx_set_ba_receiver_session._entry_ptr = internal global ptr @wl12xx_acx_set_ba_receiver_session._entry, section ".printk_index", align 4
@wl12xx_acx_set_ba_receiver_session._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.137, ptr @.str.2, i32 1437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014wlcore: WARNING no fw rx ba on tid %d\0A\00", [55 x i8] zeroinitializer }, align 32
@wl12xx_acx_set_ba_receiver_session._entry_ptr.142 = internal global ptr @wl12xx_acx_set_ba_receiver_session._entry.140, section ".printk_index", align 4
@wl12xx_acx_tsf_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.2, i32 1465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014wlcore: WARNING acx tsf info interrogate failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wl12xx_acx_tsf_info\00", [44 x i8] zeroinitializer }, align 32
@wl12xx_acx_tsf_info._entry_ptr = internal global ptr @wl12xx_acx_tsf_info._entry, section ".printk_index", align 4
@wl1271_acx_ps_rx_streaming.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.145, ptr @.str.2, ptr @.str.146, i8 1, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wl1271_acx_ps_rx_streaming\00", [37 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wlcore: acx ps rx streaming\0A\00", [35 x i8] zeroinitializer }, align 32
@wl1271_acx_ps_rx_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.2, i32 1517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014wlcore: WARNING acx ps rx streaming failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wl1271_acx_ps_rx_streaming._entry_ptr = internal global ptr @wl1271_acx_ps_rx_streaming._entry, section ".printk_index", align 4
@wl1271_acx_ap_max_tx_retry.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.148, ptr @.str.2, ptr @.str.149, i8 1, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wl1271_acx_ap_max_tx_retry\00", [37 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wlcore: acx ap max tx retry\0A\00", [35 x i8] zeroinitializer }, align 32
@wl1271_acx_ap_max_tx_retry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.2, i32 1542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014wlcore: WARNING acx ap max tx retry failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wl1271_acx_ap_max_tx_retry._entry_ptr = internal global ptr @wl1271_acx_ap_max_tx_retry._entry, section ".printk_index", align 4
@wl12xx_acx_config_ps.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.152, i8 1, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl12xx_acx_config_ps\00", [43 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wlcore: acx config ps\0A\00", [41 x i8] zeroinitializer }, align 32
@wl12xx_acx_config_ps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.2, i32 1572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014wlcore: WARNING acx config ps failed: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@wl12xx_acx_config_ps._entry_ptr = internal global ptr @wl12xx_acx_config_ps._entry, section ".printk_index", align 4
@wl1271_acx_set_inconnection_sta.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.154, ptr @.str.2, ptr @.str.155, i8 1, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wl1271_acx_set_inconnection_sta\00", [32 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"wlcore: acx set inconnaction sta %pM\0A\00", [58 x i8] zeroinitializer }, align 32
@wl1271_acx_set_inconnection_sta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str.2, i32 1599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wlcore: WARNING acx set inconnaction sta failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wl1271_acx_set_inconnection_sta._entry_ptr = internal global ptr @wl1271_acx_set_inconnection_sta._entry, section ".printk_index", align 4
@wl1271_acx_fm_coex.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.157, ptr @.str.2, ptr @.str.158, i8 1, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl1271_acx_fm_coex\00", [45 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wlcore: acx fm coex setting\0A\00", [35 x i8] zeroinitializer }, align 32
@wl1271_acx_fm_coex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.157, ptr @.str.2, i32 1639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014wlcore: WARNING acx fm coex setting failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wl1271_acx_fm_coex._entry_ptr = internal global ptr @wl1271_acx_fm_coex._entry, section ".printk_index", align 4
@wl12xx_acx_set_rate_mgmt_params.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.160, ptr @.str.2, ptr @.str.161, i8 1, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wl12xx_acx_set_rate_mgmt_params\00", [32 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wlcore: acx set rate mgmt params\0A\00", [62 x i8] zeroinitializer }, align 32
@wl12xx_acx_set_rate_mgmt_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.2, i32 1681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wlcore: WARNING acx set rate mgmt params failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wl12xx_acx_set_rate_mgmt_params._entry_ptr = internal global ptr @wl12xx_acx_set_rate_mgmt_params._entry, section ".printk_index", align 4
@wl12xx_acx_config_hangover.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.163, ptr @.str.2, ptr @.str.164, i8 1, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wl12xx_acx_config_hangover\00", [37 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wlcore: acx config hangover\0A\00", [35 x i8] zeroinitializer }, align 32
@wl12xx_acx_config_hangover._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.163, ptr @.str.2, i32 1720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014wlcore: WARNING acx config hangover failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wl12xx_acx_config_hangover._entry_ptr = internal global ptr @wl12xx_acx_config_hangover._entry, section ".printk_index", align 4
@wlcore_acx_average_rssi.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.166, ptr @.str.2, ptr @.str.167, i8 1, i8 -78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wlcore_acx_average_rssi\00", [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wlcore: acx roaming statistics\0A\00", [32 x i8] zeroinitializer }, align 32
@wlcore_acx_average_rssi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.166, ptr @.str.2, i32 1748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014wlcore: WARNING acx roaming statistics failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@wlcore_acx_average_rssi._entry_ptr = internal global ptr @wlcore_acx_average_rssi._entry, section ".printk_index", align 4
@wl1271_acx_default_rx_filter_enable.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.169, ptr @.str.2, ptr @.str.170, i8 1, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.169 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wl1271_acx_default_rx_filter_enable\00", [60 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"wlcore: acx default rx filter en: %d act: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@wl1271_acx_default_rx_filter_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.169, ptr @.str.2, i32 1780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014wlcore: WARNING acx default rx filter enable failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wl1271_acx_default_rx_filter_enable._entry_ptr = internal global ptr @wl1271_acx_default_rx_filter_enable._entry, section ".printk_index", align 4
@wl1271_acx_set_rx_filter.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.172, ptr @.str.2, ptr @.str.173, i8 1, i8 -62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl1271_acx_set_rx_filter\00", [39 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"wlcore: acx set rx filter idx: %d enable: %d filter: %p\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1271_acx_set_rx_filter.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.172, ptr @.str.2, ptr @.str.174, i8 1, i8 -60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.174 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"wlcore: act: %d num_fields: %d field_size: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@wl1271_acx_set_rx_filter.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.172, ptr @.str.2, ptr @.str.175, i8 1, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wlcore: RX_FILTER: \00", [44 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@wl1271_acx_set_rx_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.172, ptr @.str.2, i32 1831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014wlcore: WARNING setting rx filter failed: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@wl1271_acx_set_rx_filter._entry_ptr = internal global ptr @wl1271_acx_set_rx_filter._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 28, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 44, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 58, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 70, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 88, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 104, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 118, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 134, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 148, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 163, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 175, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 190, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 204, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 219, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 236, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 257, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 266, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 289, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 302, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 317, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 331, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 346, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 371, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 388, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 427, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 446, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 467, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 483, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 498, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 513, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 528, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 542, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 556, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 568, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 584, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 598, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 611, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 625, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 640, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 655, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 668, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 683, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 696, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 709, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 715, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 728, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 737, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 749, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 765, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 783, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 798, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 816, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 831, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 850, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 867, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 887, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 908, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 920, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 934, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 947, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 962, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 987, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1004, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1012, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1021, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1033, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1049, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1064, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1081, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1096, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1114, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1129, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1142, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1158, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1171, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1186, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1203, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1218, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1244, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1260, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1276, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1293, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1323, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1341, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1361, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1377, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1396, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1413, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1431, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1437, i32 3 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1465, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1484, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1517, i32 4 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1531, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1542, i32 3 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1556, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1572, i32 3 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1587, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1599, i32 3 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1613, i32 2 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1639, i32 3 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1654, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1681, i32 3 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1696, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1720, i32 3 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1736, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1748, i32 3 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1767, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1780, i32 3 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1801, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1808, i32 3 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1827, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.856 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.857 = private constant [40 x i8] c"../drivers/net/wireless/ti/wlcore/acx.c\00", align 1
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1831, i32 3 }
@llvm.compiler.used = appending global [289 x ptr] [ptr @__ksymtab_wl1271_acx_init_mem_config, ptr @__ksymtab_wl1271_acx_pm_config, ptr @__ksymtab_wl1271_acx_set_ht_capabilities, ptr @__ksymtab_wl1271_acx_sleep_auth, ptr @__ksymtab_wl12xx_acx_mem_cfg, ptr @wl1271_acx_ac_cfg._entry, ptr @wl1271_acx_ac_cfg._entry_ptr, ptr @wl1271_acx_aid._entry, ptr @wl1271_acx_aid._entry_ptr, ptr @wl1271_acx_ap_max_tx_retry._entry, ptr @wl1271_acx_ap_max_tx_retry._entry_ptr, ptr @wl1271_acx_ap_rate_policy._entry, ptr @wl1271_acx_ap_rate_policy._entry_ptr, ptr @wl1271_acx_arp_ip_filter._entry, ptr @wl1271_acx_arp_ip_filter._entry_ptr, ptr @wl1271_acx_bcn_dtim_options._entry, ptr @wl1271_acx_bcn_dtim_options._entry_ptr, ptr @wl1271_acx_beacon_filter_opt._entry, ptr @wl1271_acx_beacon_filter_opt._entry_ptr, ptr @wl1271_acx_beacon_filter_table._entry, ptr @wl1271_acx_beacon_filter_table._entry_ptr, ptr @wl1271_acx_bet_enable._entry, ptr @wl1271_acx_bet_enable._entry_ptr, ptr @wl1271_acx_cca_threshold._entry, ptr @wl1271_acx_cca_threshold._entry_ptr, ptr @wl1271_acx_conn_monit_params._entry, ptr @wl1271_acx_conn_monit_params._entry_ptr, ptr @wl1271_acx_cts_protect._entry, ptr @wl1271_acx_cts_protect._entry_ptr, ptr @wl1271_acx_dco_itrim_params._entry, ptr @wl1271_acx_dco_itrim_params._entry_ptr, ptr @wl1271_acx_default_rx_filter_enable._entry, ptr @wl1271_acx_default_rx_filter_enable._entry_ptr, ptr @wl1271_acx_event_mbox_mask._entry, ptr @wl1271_acx_event_mbox_mask._entry_ptr, ptr @wl1271_acx_feature_cfg._entry, ptr @wl1271_acx_feature_cfg._entry_ptr, ptr @wl1271_acx_fm_coex._entry, ptr @wl1271_acx_fm_coex._entry_ptr, ptr @wl1271_acx_frag_threshold._entry, ptr @wl1271_acx_frag_threshold._entry_ptr, ptr @wl1271_acx_group_address_tbl._entry, ptr @wl1271_acx_group_address_tbl._entry_ptr, ptr @wl1271_acx_init_mem_config._entry, ptr @wl1271_acx_init_mem_config._entry.100, ptr @wl1271_acx_init_mem_config._entry_ptr, ptr @wl1271_acx_init_mem_config._entry_ptr.102, ptr @wl1271_acx_init_rx_interrupt._entry, ptr @wl1271_acx_init_rx_interrupt._entry_ptr, ptr @wl1271_acx_keep_alive_config._entry, ptr @wl1271_acx_keep_alive_config._entry_ptr, ptr @wl1271_acx_keep_alive_mode._entry, ptr @wl1271_acx_keep_alive_mode._entry_ptr, ptr @wl1271_acx_pm_config._entry, ptr @wl1271_acx_pm_config._entry_ptr, ptr @wl1271_acx_ps_rx_streaming._entry, ptr @wl1271_acx_ps_rx_streaming._entry_ptr, ptr @wl1271_acx_rssi_snr_avg_weights._entry, ptr @wl1271_acx_rssi_snr_avg_weights._entry_ptr, ptr @wl1271_acx_rssi_snr_trigger._entry, ptr @wl1271_acx_rssi_snr_trigger._entry_ptr, ptr @wl1271_acx_rts_threshold._entry, ptr @wl1271_acx_rts_threshold._entry_ptr, ptr @wl1271_acx_rx_msdu_life_time._entry, ptr @wl1271_acx_rx_msdu_life_time._entry_ptr, ptr @wl1271_acx_service_period_timeout._entry, ptr @wl1271_acx_service_period_timeout._entry_ptr, ptr @wl1271_acx_set_ht_capabilities._entry, ptr @wl1271_acx_set_ht_capabilities._entry_ptr, ptr @wl1271_acx_set_ht_information._entry, ptr @wl1271_acx_set_ht_information._entry_ptr, ptr @wl1271_acx_set_inconnection_sta._entry, ptr @wl1271_acx_set_inconnection_sta._entry_ptr, ptr @wl1271_acx_set_preamble._entry, ptr @wl1271_acx_set_preamble._entry_ptr, ptr @wl1271_acx_set_rx_filter._entry, ptr @wl1271_acx_set_rx_filter._entry_ptr, ptr @wl1271_acx_sg_enable._entry, ptr @wl1271_acx_sg_enable._entry_ptr, ptr @wl1271_acx_sleep_auth._entry, ptr @wl1271_acx_sleep_auth._entry_ptr, ptr @wl1271_acx_slot._entry, ptr @wl1271_acx_slot._entry_ptr, ptr @wl1271_acx_sta_rate_policies._entry, ptr @wl1271_acx_sta_rate_policies._entry.76, ptr @wl1271_acx_sta_rate_policies._entry.78, ptr @wl1271_acx_sta_rate_policies._entry_ptr, ptr @wl1271_acx_sta_rate_policies._entry_ptr.77, ptr @wl1271_acx_sta_rate_policies._entry_ptr.79, ptr @wl1271_acx_statistics._entry, ptr @wl1271_acx_statistics._entry_ptr, ptr @wl1271_acx_tid_cfg._entry, ptr @wl1271_acx_tid_cfg._entry_ptr, ptr @wl1271_acx_tx_config_options._entry, ptr @wl1271_acx_tx_config_options._entry_ptr, ptr @wl1271_acx_tx_power._entry, ptr @wl1271_acx_tx_power._entry_ptr, ptr @wl1271_acx_wake_up_conditions._entry, ptr @wl1271_acx_wake_up_conditions._entry_ptr, ptr @wl12xx_acx_config_hangover._entry, ptr @wl12xx_acx_config_hangover._entry_ptr, ptr @wl12xx_acx_config_ps._entry, ptr @wl12xx_acx_config_ps._entry_ptr, ptr @wl12xx_acx_mem_cfg._entry, ptr @wl12xx_acx_mem_cfg._entry_ptr, ptr @wl12xx_acx_set_ba_initiator_policy._entry, ptr @wl12xx_acx_set_ba_initiator_policy._entry_ptr, ptr @wl12xx_acx_set_ba_receiver_session._entry, ptr @wl12xx_acx_set_ba_receiver_session._entry.140, ptr @wl12xx_acx_set_ba_receiver_session._entry_ptr, ptr @wl12xx_acx_set_ba_receiver_session._entry_ptr.142, ptr @wl12xx_acx_set_rate_mgmt_params._entry, ptr @wl12xx_acx_set_rate_mgmt_params._entry_ptr, ptr @wl12xx_acx_sg_cfg._entry, ptr @wl12xx_acx_sg_cfg._entry_ptr, ptr @wl12xx_acx_tsf_info._entry, ptr @wl12xx_acx_tsf_info._entry_ptr, ptr @wlcore_acx_average_rssi._entry, ptr @wlcore_acx_average_rssi._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177], section "llvm.metadata"
@0 = internal global [227 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_wake_up_conditions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_sleep_auth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_tx_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_feature_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_rx_msdu_life_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_group_address_tbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_service_period_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_rts_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_dco_itrim_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_beacon_filter_opt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_beacon_filter_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_conn_monit_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_sg_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_acx_sg_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_cca_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_bcn_dtim_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_aid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_event_mbox_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_set_preamble._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_cts_protect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_statistics._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_sta_rate_policies._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_sta_rate_policies._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_sta_rate_policies._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_ap_rate_policy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_ac_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_tid_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_frag_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_tx_config_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_acx_mem_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_init_mem_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_init_mem_config._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_init_rx_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_bet_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_arp_ip_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_pm_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_keep_alive_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_keep_alive_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_rssi_snr_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_rssi_snr_avg_weights._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_set_ht_capabilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_set_ht_information._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_acx_set_ba_initiator_policy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_acx_set_ba_receiver_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_acx_set_ba_receiver_session._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_acx_tsf_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_ps_rx_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_ap_max_tx_retry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_acx_config_ps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_set_inconnection_sta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_fm_coex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_acx_set_rate_mgmt_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_acx_config_hangover._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_acx_average_rssi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_default_rx_filter_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_acx_set_rx_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_wake_up_conditions(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i8 noundef zeroext %wake_up_event, i8 noundef zeroext %listen_interval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body3, !prof !472

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_wake_up_conditions.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_wake_up_conditions, %if.then11)) #6
          to label %do.end15 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %wake_up_event to i32
  %conv12 = zext i8 %listen_interval to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_wake_up_conditions.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv12) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %do.body3, %entry.do.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #9
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %do.end15.out_crit_edge, label %if.end19

do.end15.out_crit_edge:                           ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end19:                                         ; preds = %do.end15
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id20 = getelementptr inbounds %struct.acx_wake_up_condition, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id20 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id20, align 8
  %wake_up_event21 = getelementptr inbounds %struct.acx_wake_up_condition, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %wake_up_event21 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %wake_up_event, ptr %wake_up_event21, align 1
  %listen_interval22 = getelementptr inbounds %struct.acx_wake_up_condition, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %listen_interval22 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %listen_interval, ptr %listen_interval22, align 2
  %call23 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %do.end28, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call23) #10
  br label %out

out:                                              ; preds = %do.end28, %if.end19.out_crit_edge, %do.end15.out_crit_edge
  %ret.0 = phi i32 [ %call23, %do.end28 ], [ %call23, %if.end19.out_crit_edge ], [ -12, %do.end15.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_configure(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_sleep_auth(ptr noundef %wl, i8 noundef zeroext %sleep_auth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_sleep_auth.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_sleep_auth, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %sleep_auth to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_sleep_auth.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.6, i32 noundef %conv) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %sleep_auth19 = getelementptr inbounds %struct.acx_sleep_auth, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %sleep_auth19 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %sleep_auth, ptr %sleep_auth19, align 8
  %call20 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 29, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  %conv27 = zext i8 %sleep_auth to i32
  br i1 %cmp, label %do.end25, label %if.end29

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv27, i32 noundef %call20) #10
  br label %out

if.end29:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %sleep_auth31 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 142
  %3 = ptrtoint ptr %sleep_auth31 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv27, ptr %sleep_auth31, align 8
  br label %out

out:                                              ; preds = %if.end29, %do.end25, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call20, %do.end25 ], [ %call20, %if.end29 ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_tx_power(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i32 noundef %power) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_tx_power.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_tx_power, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_tx_power.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.9, i32 noundef %power) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %power)
  %1 = icmp ugt i32 %power, 25
  br i1 %1, label %do.end14.cleanup_crit_edge, label %if.end17

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %do.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #9
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.end17.out_crit_edge, label %if.end21

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end21:                                         ; preds = %if.end17
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %3 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %role_id, align 2
  %role_id22 = getelementptr inbounds %struct.acx_current_tx_power, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %role_id22 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %role_id22, align 8
  %6 = trunc i32 %power to i8
  %conv = mul nuw i8 %6, 10
  %current_tx_power = getelementptr inbounds %struct.acx_current_tx_power, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %current_tx_power to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %current_tx_power, align 1
  %call23 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 61, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end29, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call23) #10
  br label %out

out:                                              ; preds = %do.end29, %if.end21.out_crit_edge, %if.end17.out_crit_edge
  %ret.0 = phi i32 [ %call23, %do.end29 ], [ %call23, %if.end21.out_crit_edge ], [ -12, %if.end17.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %do.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_feature_cfg(ptr noundef %wl, ptr nocapture noundef readonly %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_feature_cfg.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_feature_cfg, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_feature_cfg.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.12) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 20) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id19 = getelementptr inbounds %struct.acx_feature_config, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id19, align 8
  %data_flow_options = getelementptr inbounds %struct.acx_feature_config, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %data_flow_options to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %data_flow_options, align 8
  %options = getelementptr inbounds %struct.acx_feature_config, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %options, align 4
  %call20 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 67, ptr noundef nonnull %call7.i.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.end24, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %out

out:                                              ; preds = %do.end24, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call20, %do.end24 ], [ %call20, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_mem_map(ptr noundef %wl, ptr noundef %mem_map, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_mem_map.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_mem_map, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_mem_map.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.15) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  %call15 = tail call i32 @wl1271_cmd_interrogate(ptr noundef %wl, i16 noundef zeroext 4, ptr noundef %mem_map, i32 noundef 8, i32 noundef %len) #6
  %1 = tail call i32 @llvm.smin.i32(i32 %call15, i32 0)
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_interrogate(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_rx_msdu_life_time(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_rx_msdu_life_time.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_rx_msdu_life_time, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_rx_msdu_life_time.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.17) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %rx = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 1
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %rx, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %lifetime = getelementptr inbounds %struct.acx_rx_msdu_lifetime, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %lifetime to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %lifetime, align 8
  %call19 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 60, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %do.end23, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call19) #10
  br label %out

out:                                              ; preds = %do.end23, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call19, %do.end23 ], [ %call19, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_slot(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i32 noundef %slot_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_slot.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_slot, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_slot.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.20) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id19 = getelementptr inbounds %struct.acx_slot, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id19, align 8
  %wone_index = getelementptr inbounds %struct.acx_slot, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %wone_index to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %wone_index, align 1
  %conv = trunc i32 %slot_time to i8
  %slot_time20 = getelementptr inbounds %struct.acx_slot, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %slot_time20 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %slot_time20, align 2
  %call21 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 2, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %do.end26, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %call21) #10
  br label %out

out:                                              ; preds = %do.end26, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call21, %do.end26 ], [ %call21, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_group_address_tbl(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i1 noundef zeroext %enable, ptr nocapture noundef readonly %mc_list, i32 noundef %mc_list_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body3, !prof !472

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_group_address_tbl.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_group_address_tbl, %if.then12)) #6
          to label %do.end15 [label %if.then12], !srcloc !473

if.then12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_group_address_tbl.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.23) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body3, %entry.do.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 60) #9
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %do.end15.out_crit_edge, label %if.end19

do.end15.out_crit_edge:                           ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end19:                                         ; preds = %do.end15
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id20 = getelementptr inbounds %struct.acx_dot11_grp_addr_tbl, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id20 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id20, align 8
  %enabled = getelementptr inbounds %struct.acx_dot11_grp_addr_tbl, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %enabled, align 1
  %conv22 = trunc i32 %mc_list_len to i8
  %num_groups = getelementptr inbounds %struct.acx_dot11_grp_addr_tbl, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %num_groups to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv22, ptr %num_groups, align 2
  %mac_table = getelementptr inbounds %struct.acx_dot11_grp_addr_tbl, ptr %call7.i.i, i32 0, i32 5
  %mul = mul i32 %mc_list_len, 6
  %7 = call ptr @memcpy(ptr %mac_table, ptr %mc_list, i32 %mul)
  %call23 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 63, ptr noundef nonnull %call7.i.i, i32 noundef 60) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %do.end28, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call23) #10
  br label %out

out:                                              ; preds = %do.end28, %if.end19.out_crit_edge, %do.end15.out_crit_edge
  %ret.0 = phi i32 [ %call23, %do.end28 ], [ %call23, %if.end19.out_crit_edge ], [ -12, %do.end15.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_service_period_timeout(ptr noundef %wl, ptr nocapture noundef readonly %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %do.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %1 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end18_crit_edge, label %do.body5, !prof !472

do.body.do.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_service_period_timeout.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_service_period_timeout, %if.then14)) #6
          to label %do.end18 [label %if.then14], !srcloc !473

if.then14:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_service_period_timeout.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.26) #6
  br label %do.end18

do.end18:                                         ; preds = %if.then14, %do.body5, %do.body.do.end18_crit_edge
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id19 = getelementptr inbounds %struct.acx_rx_timeout, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id19, align 8
  %ps_poll_timeout = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 1, i32 2
  %5 = ptrtoint ptr %ps_poll_timeout to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %ps_poll_timeout, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %ps_poll_timeout20 = getelementptr inbounds %struct.acx_rx_timeout, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %ps_poll_timeout20 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %ps_poll_timeout20, align 2
  %upsd_timeout = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 1, i32 3
  %9 = ptrtoint ptr %upsd_timeout to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %upsd_timeout, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %upsd_timeout23 = getelementptr inbounds %struct.acx_rx_timeout, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %upsd_timeout23 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %upsd_timeout23, align 4
  %call24 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 33, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %do.end28, label %do.end18.out_crit_edge

do.end18.out_crit_edge:                           ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end28:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %call24) #10
  br label %out

out:                                              ; preds = %do.end28, %do.end18.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call24, %do.end28 ], [ %call24, %do.end18.out_crit_edge ], [ -12, %entry.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_rts_threshold(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i32 noundef %rts_threshold) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2353, i32 %rts_threshold)
  %cmp = icmp ugt i32 %rts_threshold, 2353
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rts_threshold1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 1, i32 4
  %0 = ptrtoint ptr %rts_threshold1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %rts_threshold1, align 1
  %conv = zext i16 %1 to i32
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %rts_threshold.addr.0 = phi i32 [ %conv, %if.then ], [ %rts_threshold, %entry.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %2 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end17_crit_edge, label %do.body5, !prof !472

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_rts_threshold.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_rts_threshold, %if.then13)) #6
          to label %do.end17 [label %if.then13], !srcloc !473

if.then13:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_rts_threshold.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.29, i32 noundef %rts_threshold.addr.0) #6
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body5, %do.body.do.end17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #9
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %do.end17.out_crit_edge, label %if.end21

do.end17.out_crit_edge:                           ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end21:                                         ; preds = %do.end17
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %4 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %role_id, align 2
  %role_id22 = getelementptr inbounds %struct.acx_rts_threshold, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %role_id22 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %role_id22, align 8
  %conv23 = trunc i32 %rts_threshold.addr.0 to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv23)
  %threshold = getelementptr inbounds %struct.acx_rts_threshold, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %threshold to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %threshold, align 2
  %call24 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 62, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end30, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %call24) #10
  br label %out

out:                                              ; preds = %do.end30, %if.end21.out_crit_edge, %do.end17.out_crit_edge
  %ret.0 = phi i32 [ %call24, %do.end30 ], [ %call24, %if.end21.out_crit_edge ], [ -12, %do.end17.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_dco_itrim_params(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %itrim = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_dco_itrim_params.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_dco_itrim_params, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_dco_itrim_params.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.32) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %2 = ptrtoint ptr %itrim to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %itrim, align 1
  %enable19 = getelementptr inbounds %struct.acx_dco_itrim_params, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %enable19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %enable19, align 8
  %timeout = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 4, i32 1
  %5 = ptrtoint ptr %timeout to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %timeout, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %timeout20 = getelementptr inbounds %struct.acx_dco_itrim_params, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %timeout20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %timeout20, align 4
  %call21 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 55, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %do.end25, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %call21) #10
  br label %out

out:                                              ; preds = %do.end25, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call21, %do.end25 ], [ %call21, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_beacon_filter_opt(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i1 noundef zeroext %enable_filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable_filter to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end16_crit_edge, label %do.body3, !prof !472

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_beacon_filter_opt.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_beacon_filter_opt, %if.then12)) #6
          to label %do.end16 [label %if.then12], !srcloc !473

if.then12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i1 %enable_filter to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_beacon_filter_opt.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.35, i32 noundef %conv) #6
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body3, %entry.do.end16_crit_edge
  br i1 %enable_filter, label %land.lhs.true, label %do.end16.if.end22_crit_edge

do.end16.if.end22_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true:                                    ; preds = %do.end16
  %bcn_filt_mode = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 4
  %1 = ptrtoint ptr %bcn_filt_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bcn_filt_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %do.end16.if.end22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #9
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %if.end22.out_crit_edge, label %if.end26

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end26:                                         ; preds = %if.end22
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %4 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %role_id, align 2
  %role_id27 = getelementptr inbounds %struct.acx_beacon_filter_option, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %role_id27 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %role_id27, align 8
  %enable = getelementptr inbounds %struct.acx_beacon_filter_option, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %enable, align 1
  %max_num_beacons = getelementptr inbounds %struct.acx_beacon_filter_option, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %max_num_beacons to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %max_num_beacons, align 2
  %call30 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 11, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end36, label %if.end26.out_crit_edge

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %call30) #10
  br label %out

out:                                              ; preds = %do.end36, %if.end26.out_crit_edge, %if.end22.out_crit_edge, %land.lhs.true.out_crit_edge
  %ret.0 = phi i32 [ 0, %land.lhs.true.out_crit_edge ], [ %call30, %do.end36 ], [ %call30, %if.end26.out_crit_edge ], [ -12, %if.end22.out_crit_edge ]
  %beacon_filter.0 = phi ptr [ null, %land.lhs.true.out_crit_edge ], [ %call7.i.i, %do.end36 ], [ %call7.i.i, %if.end26.out_crit_edge ], [ null, %if.end22.out_crit_edge ]
  tail call void @kfree(ptr noundef %beacon_filter.0) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_beacon_filter_table(ptr noundef %wl, ptr nocapture noundef readonly %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_beacon_filter_table.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_beacon_filter_table, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_beacon_filter_table.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.38) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 112) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id19 = getelementptr inbounds %struct.acx_beacon_filter_ie_table, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id19, align 8
  %num_ie = getelementptr inbounds %struct.acx_beacon_filter_ie_table, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %num_ie to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %num_ie, align 1
  %bcn_filt_ie_count = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 5
  %6 = ptrtoint ptr %bcn_filt_ie_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bcn_filt_ie_count, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp94.not = icmp eq i8 %7, 0
  br i1 %cmp94.not, label %if.end18.for.end_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end18.for.body_crit_edge
  %i.097 = phi i32 [ %inc47, %cleanup.for.body_crit_edge ], [ 0, %if.end18.for.body_crit_edge ]
  %idx.096 = phi i32 [ %idx.2, %cleanup.for.body_crit_edge ], [ 0, %if.end18.for.body_crit_edge ]
  %vendor_spec.0.off095 = phi i1 [ %vendor_spec.2.off0, %cleanup.for.body_crit_edge ], [ false, %if.end18.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 6, i32 %i.097
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %inc = add i32 %idx.096, 1
  %arrayidx23 = getelementptr %struct.acx_beacon_filter_ie_table, ptr %call7.i.i, i32 0, i32 4, i32 %idx.096
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx23, align 1
  %rule = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 6, i32 %i.097, i32 1
  %11 = ptrtoint ptr %rule to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rule, align 1
  %inc25 = add i32 %idx.096, 2
  %arrayidx26 = getelementptr %struct.acx_beacon_filter_ie_table, ptr %call7.i.i, i32 0, i32 4, i32 %inc
  %13 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %9)
  %cmp29 = icmp eq i8 %9, -35
  br i1 %cmp29, label %if.then31, label %for.body.if.end44_crit_edge

for.body.if.end44_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then31:                                        ; preds = %for.body
  br i1 %vendor_spec.0.off095, label %if.then31.cleanup_crit_edge, label %if.end34

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx36 = getelementptr %struct.acx_beacon_filter_ie_table, ptr %call7.i.i, i32 0, i32 4, i32 %inc25
  %oui = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 6, i32 %i.097, i32 2
  %14 = call ptr @memcpy(ptr %arrayidx36, ptr %oui, i32 3)
  %add = add i32 %idx.096, 5
  %type = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 6, i32 %i.097, i32 3
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type, align 1
  %inc38 = add i32 %idx.096, 6
  %arrayidx39 = getelementptr %struct.acx_beacon_filter_ie_table, ptr %call7.i.i, i32 0, i32 4, i32 %add
  %17 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx39, align 1
  %arrayidx41 = getelementptr %struct.acx_beacon_filter_ie_table, ptr %call7.i.i, i32 0, i32 4, i32 %inc38
  %version = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 6, i32 %i.097, i32 4
  %18 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %version, align 1
  %20 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %arrayidx41, align 1
  %add43 = add i32 %idx.096, 8
  br label %if.end44

if.end44:                                         ; preds = %if.end34, %for.body.if.end44_crit_edge
  %vendor_spec.1.off0 = phi i1 [ true, %if.end34 ], [ %vendor_spec.0.off095, %for.body.if.end44_crit_edge ]
  %idx.1 = phi i32 [ %add43, %if.end34 ], [ %inc25, %for.body.if.end44_crit_edge ]
  %21 = ptrtoint ptr %num_ie to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_ie, align 1
  %inc46 = add i8 %22, 1
  store i8 %inc46, ptr %num_ie, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then31.cleanup_crit_edge
  %vendor_spec.2.off0 = phi i1 [ %vendor_spec.1.off0, %if.end44 ], [ true, %if.then31.cleanup_crit_edge ]
  %idx.2 = phi i32 [ %idx.1, %if.end44 ], [ %inc25, %if.then31.cleanup_crit_edge ]
  %inc47 = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc47, %conv
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end18.for.end_crit_edge
  %call48 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 24, ptr noundef nonnull %call7.i.i, i32 noundef 112) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.end54, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end54:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %call48) #10
  br label %out

out:                                              ; preds = %do.end54, %for.end.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call48, %do.end54 ], [ %call48, %for.end.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_conn_monit_params(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end16_crit_edge, label %do.body3, !prof !472

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_conn_monit_params.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_conn_monit_params, %if.then12)) #6
          to label %do.end16 [label %if.then12], !srcloc !473

if.then12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %enable, ptr @.str.42, ptr @.str.43
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_conn_monit_params.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond) #6
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body3, %entry.do.end16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 20) #9
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %do.end16.out_crit_edge, label %if.end20

do.end16.out_crit_edge:                           ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end20:                                         ; preds = %do.end16
  br i1 %enable, label %if.then22, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %synch_fail_thold = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 7
  %2 = ptrtoint ptr %synch_fail_thold to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %synch_fail_thold, align 1
  %bss_lose_timeout = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 8
  %4 = ptrtoint ptr %bss_lose_timeout to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %bss_lose_timeout, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end20.if.end25_crit_edge
  %timeout.0 = phi i32 [ %5, %if.then22 ], [ -1, %if.end20.if.end25_crit_edge ]
  %threshold.0 = phi i32 [ %3, %if.then22 ], [ -1, %if.end20.if.end25_crit_edge ]
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %6 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %role_id, align 2
  %role_id26 = getelementptr inbounds %struct.acx_conn_monit_params, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %role_id26 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %role_id26, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %threshold.0)
  %synch_fail_thold27 = getelementptr inbounds %struct.acx_conn_monit_params, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %synch_fail_thold27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %synch_fail_thold27, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %timeout.0)
  %bss_lose_timeout28 = getelementptr inbounds %struct.acx_conn_monit_params, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %bss_lose_timeout28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %bss_lose_timeout28, align 8
  %call29 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 18, ptr noundef nonnull %call7.i.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  br i1 %cmp, label %do.end33, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %call29) #10
  br label %out

out:                                              ; preds = %do.end33, %if.end25.out_crit_edge, %do.end16.out_crit_edge
  %ret.0 = phi i32 [ %call29, %do.end33 ], [ %call29, %if.end25.out_crit_edge ], [ -12, %do.end16.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_sg_enable(ptr noundef %wl, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body3, !prof !472

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_sg_enable.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_sg_enable, %if.then12)) #6
          to label %do.end15 [label %if.then12], !srcloc !473

if.then12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_sg_enable.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.46) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body3, %entry.do.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #9
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %do.end15.out_crit_edge, label %if.end19

do.end15.out_crit_edge:                           ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end19:                                         ; preds = %do.end15
  br i1 %enable, label %if.then21, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19.if.end24_crit_edge
  %.sink = phi i8 [ %3, %if.then21 ], [ 0, %if.end19.if.end24_crit_edge ]
  %4 = getelementptr inbounds %struct.acx_bt_wlan_coex, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %4, align 8
  %call25 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 21, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %do.end29, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %call25) #10
  br label %out

out:                                              ; preds = %do.end29, %if.end24.out_crit_edge, %do.end15.out_crit_edge
  %ret.0 = phi i32 [ %call25, %do.end29 ], [ %call25, %if.end24.out_crit_edge ], [ -12, %do.end15.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl12xx_acx_sg_cfg(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conf = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_acx_sg_cfg.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_acx_sg_cfg, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_acx_sg_cfg.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.49) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 280) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %do.end14.for.body_crit_edge

do.end14.for.body_crit_edge:                      ; preds = %do.end14
  br label %for.body

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end14.for.body_crit_edge
  %i.041 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end14.for.body_crit_edge ]
  %arrayidx = getelementptr [67 x i32], ptr %conf, i32 0, i32 %i.041
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %arrayidx, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %arrayidx20 = getelementptr %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 1, i32 %i.041
  %5 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx20, align 4
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, 67
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %param_idx = getelementptr inbounds %struct.acx_bt_wlan_coex_param, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %param_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %param_idx, align 4
  %call21 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 22, ptr noundef nonnull %call7.i.i, i32 noundef 280) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end26, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end26:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %call21) #10
  br label %out

out:                                              ; preds = %do.end26, %for.end.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call21, %do.end26 ], [ %call21, %for.end.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_cca_threshold(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_cca_threshold.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_cca_threshold, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_cca_threshold.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.52) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %rx_cca_threshold = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 1, i32 5
  %2 = ptrtoint ptr %rx_cca_threshold to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %rx_cca_threshold, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %rx_cca_threshold19 = getelementptr inbounds %struct.acx_energy_detection, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %rx_cca_threshold19 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %rx_cca_threshold19, align 8
  %tx = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx, align 4
  %tx_energy_detection21 = getelementptr inbounds %struct.acx_energy_detection, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %tx_energy_detection21 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %tx_energy_detection21, align 2
  %call22 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 16, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %do.end26, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %call22) #10
  br label %out

out:                                              ; preds = %do.end26, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call22, %do.end26 ], [ %call22, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_bcn_dtim_options(ptr noundef %wl, ptr nocapture noundef readonly %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_bcn_dtim_options.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_bcn_dtim_options, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_bcn_dtim_options.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.55) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id19 = getelementptr inbounds %struct.acx_beacon_broadcast, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id19, align 8
  %beacon_rx_timeout = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 9
  %5 = ptrtoint ptr %beacon_rx_timeout to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %beacon_rx_timeout, align 1
  %conv = trunc i32 %6 to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %beacon_rx_timeout20 = getelementptr inbounds %struct.acx_beacon_broadcast, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %beacon_rx_timeout20 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %beacon_rx_timeout20, align 2
  %broadcast_timeout = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 10
  %9 = ptrtoint ptr %broadcast_timeout to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %broadcast_timeout, align 1
  %conv23 = trunc i32 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv23)
  %broadcast_timeout24 = getelementptr inbounds %struct.acx_beacon_broadcast, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %broadcast_timeout24 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %broadcast_timeout24, align 4
  %rx_broadcast_in_ps = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 11
  %13 = ptrtoint ptr %rx_broadcast_in_ps to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rx_broadcast_in_ps, align 1
  %rx_broadcast_in_ps27 = getelementptr inbounds %struct.acx_beacon_broadcast, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %rx_broadcast_in_ps27 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %rx_broadcast_in_ps27, align 1
  %ps_poll_threshold = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 12
  %16 = ptrtoint ptr %ps_poll_threshold to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ps_poll_threshold, align 1
  %ps_poll_threshold30 = getelementptr inbounds %struct.acx_beacon_broadcast, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %ps_poll_threshold30 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %ps_poll_threshold30, align 2
  %call31 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 20, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %do.end36, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end36:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call31) #10
  br label %out

out:                                              ; preds = %do.end36, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call31, %do.end36 ], [ %call31, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_aid(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i16 noundef zeroext %aid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_aid.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_aid, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_aid.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.58) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id19 = getelementptr inbounds %struct.acx_aid, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id19, align 8
  %5 = tail call i16 @llvm.bswap.i16(i16 %aid)
  %aid20 = getelementptr inbounds %struct.acx_aid, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %aid20 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %aid20, align 2
  %call21 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 5, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %do.end25, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %call21) #10
  br label %out

out:                                              ; preds = %do.end25, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call21, %do.end25 ], [ %call21, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_event_mbox_mask(ptr noundef %wl, i32 noundef %event_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_event_mbox_mask.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_event_mbox_mask, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_event_mbox_mask.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.61) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %high_event_mask = getelementptr inbounds %struct.acx_event_mask, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %high_event_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %high_event_mask, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %event_mask)
  %event_mask19 = getelementptr inbounds %struct.acx_event_mask, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %event_mask19 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %event_mask19, align 8
  %call20 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 17, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.end24, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %call20) #10
  br label %out

out:                                              ; preds = %do.end24, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call20, %do.end24 ], [ %call20, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_set_preamble(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i32 noundef %preamble) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_set_preamble.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_set_preamble, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_set_preamble.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.64) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id19 = getelementptr inbounds %struct.acx_preamble, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id19, align 8
  %conv = trunc i32 %preamble to i8
  %preamble20 = getelementptr inbounds %struct.acx_preamble, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %preamble20 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %preamble20, align 1
  %call21 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 30, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %do.end26, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %call21) #10
  br label %out

out:                                              ; preds = %do.end26, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call21, %do.end26 ], [ %call21, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_cts_protect(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i32 noundef %ctsprotect) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_cts_protect.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_cts_protect, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_cts_protect.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.67) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id19 = getelementptr inbounds %struct.acx_ctsprotect, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id19, align 8
  %conv = trunc i32 %ctsprotect to i8
  %ctsprotect20 = getelementptr inbounds %struct.acx_ctsprotect, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %ctsprotect20 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %ctsprotect20, align 1
  %call21 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 28, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %do.end26, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %call21) #10
  br label %out

out:                                              ; preds = %do.end26, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call21, %do.end26 ], [ %call21, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_statistics(ptr noundef %wl, ptr noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_statistics.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_statistics, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_statistics.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.70) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  %fw_stats_len = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 87, i32 2
  %1 = ptrtoint ptr %fw_stats_len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_stats_len, align 8
  %call16 = tail call i32 @wl1271_cmd_interrogate(ptr noundef %wl, i16 noundef zeroext 7, ptr noundef %stats, i32 noundef 8, i32 noundef %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %do.end20, label %do.end14.cleanup_crit_edge

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end20:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %call16) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end20 ], [ 0, %do.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_sta_rate_policies(ptr noundef %wl, ptr noundef %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_sta_rate_policies.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_sta_rate_policies, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_sta_rate_policies.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.73) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 20) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %do.body19

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body19:                                        ; preds = %do.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %2 = load i32, ptr @wl12xx_debug_level, align 4
  %and20 = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.do.end47_crit_edge, label %do.body29, !prof !472

do.body19.do.end47_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47

do.body29:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_sta_rate_policies.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_sta_rate_policies, %if.then41)) #6
          to label %do.end47 [label %if.then41], !srcloc !473

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  %basic_rate = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 19
  %3 = ptrtoint ptr %basic_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %basic_rate, align 4
  %rate_set = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 20
  %5 = ptrtoint ptr %rate_set to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rate_set, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_sta_rate_policies.__UNIQUE_ID_ddebug374, ptr noundef nonnull @.str.74, i32 noundef %4, i32 noundef %6) #6
  br label %do.end47

do.end47:                                         ; preds = %if.then41, %do.body29, %do.body19.do.end47_crit_edge
  %7 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 8
  %basic_rate_idx = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 8, i32 0, i32 1
  %8 = ptrtoint ptr %basic_rate_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %basic_rate_idx, align 1
  %conv = zext i8 %9 to i32
  %10 = shl nuw i32 %conv, 24
  %rate_policy_idx = getelementptr inbounds %struct.acx_rate_policy, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %rate_policy_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rate_policy_idx, align 8
  %basic_rate48 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 19
  %12 = ptrtoint ptr %basic_rate48 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %basic_rate48, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %rate_policy = getelementptr inbounds %struct.acx_rate_policy, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %rate_policy to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rate_policy, align 4
  %short_retry_limit = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 1, i32 1
  %16 = ptrtoint ptr %short_retry_limit to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %short_retry_limit, align 1
  %short_retry_limit50 = getelementptr inbounds %struct.acx_rate_policy, ptr %call7.i.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %short_retry_limit50 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %short_retry_limit50, align 8
  %long_retry_limit = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 1, i32 2
  %19 = ptrtoint ptr %long_retry_limit to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %long_retry_limit, align 1
  %long_retry_limit52 = getelementptr inbounds %struct.acx_rate_policy, ptr %call7.i.i, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %long_retry_limit52 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %long_retry_limit52, align 1
  %aflags = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 1, i32 3
  %22 = ptrtoint ptr %aflags to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %aflags, align 1
  %aflags54 = getelementptr inbounds %struct.acx_rate_policy, ptr %call7.i.i, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %aflags54 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %aflags54, align 2
  %call55 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 27, ptr noundef nonnull %call7.i.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp = icmp slt i32 %call55, 0
  br i1 %cmp, label %do.end47.out.sink.split_crit_edge, label %if.end63

do.end47.out.sink.split_crit_edge:                ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split

if.end63:                                         ; preds = %do.end47
  %ap_rate_idx = getelementptr inbounds %struct.anon.130, ptr %7, i32 0, i32 2
  %25 = ptrtoint ptr %ap_rate_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ap_rate_idx, align 2
  %conv64 = zext i8 %26 to i32
  %27 = shl nuw i32 %conv64, 24
  %28 = ptrtoint ptr %rate_policy_idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %rate_policy_idx, align 8
  %ops.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 114
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %sta_get_ap_rate_mask.i = getelementptr inbounds %struct.wlcore_ops, ptr %30, i32 0, i32 20
  %31 = ptrtoint ptr %sta_get_ap_rate_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sta_get_ap_rate_mask.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %do.body1.i, label %wlcore_hw_sta_get_ap_rate_mask.exit

do.body1.i:                                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wlcore/hw_ops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 108, 0\0A.popsection", ""() #6, !srcloc !474
  unreachable

wlcore_hw_sta_get_ap_rate_mask.exit:              ; preds = %if.end63
  %call.i = tail call i32 %32(ptr noundef %wl, ptr noundef %wlvif) #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %call.i)
  %34 = ptrtoint ptr %rate_policy to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %rate_policy, align 4
  %35 = ptrtoint ptr %short_retry_limit to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %short_retry_limit, align 1
  %37 = ptrtoint ptr %short_retry_limit50 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %short_retry_limit50, align 8
  %38 = ptrtoint ptr %long_retry_limit to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %long_retry_limit, align 1
  %40 = ptrtoint ptr %long_retry_limit52 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %long_retry_limit52, align 1
  %41 = ptrtoint ptr %aflags to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %aflags, align 1
  %43 = ptrtoint ptr %aflags54 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %aflags54, align 2
  %call78 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 27, ptr noundef nonnull %call7.i.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %wlcore_hw_sta_get_ap_rate_mask.exit.out.sink.split_crit_edge, label %if.end87

wlcore_hw_sta_get_ap_rate_mask.exit.out.sink.split_crit_edge: ; preds = %wlcore_hw_sta_get_ap_rate_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split

if.end87:                                         ; preds = %wlcore_hw_sta_get_ap_rate_mask.exit
  %p2p_rate_idx = getelementptr inbounds %struct.anon.130, ptr %7, i32 0, i32 3
  %44 = ptrtoint ptr %p2p_rate_idx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %p2p_rate_idx, align 1
  %conv88 = zext i8 %45 to i32
  %46 = shl nuw i32 %conv88, 24
  %47 = ptrtoint ptr %rate_policy_idx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %rate_policy_idx, align 8
  %48 = ptrtoint ptr %rate_policy to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 134217728, ptr %rate_policy, align 4
  %49 = ptrtoint ptr %short_retry_limit to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %short_retry_limit, align 1
  %51 = ptrtoint ptr %short_retry_limit50 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %short_retry_limit50, align 8
  %52 = ptrtoint ptr %long_retry_limit to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %long_retry_limit, align 1
  %54 = ptrtoint ptr %long_retry_limit52 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %long_retry_limit52, align 1
  %55 = ptrtoint ptr %aflags to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %aflags, align 1
  %57 = ptrtoint ptr %aflags54 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %aflags54, align 2
  %call101 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 27, ptr noundef nonnull %call7.i.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.end87.out.sink.split_crit_edge, label %if.end87.out_crit_edge

if.end87.out_crit_edge:                           ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end87.out.sink.split_crit_edge:                ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end87.out.sink.split_crit_edge, %wlcore_hw_sta_get_ap_rate_mask.exit.out.sink.split_crit_edge, %do.end47.out.sink.split_crit_edge
  %call101.sink = phi i32 [ %call55, %do.end47.out.sink.split_crit_edge ], [ %call78, %wlcore_hw_sta_get_ap_rate_mask.exit.out.sink.split_crit_edge ], [ %call101, %if.end87.out.sink.split_crit_edge ]
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %call101.sink) #10
  br label %out

out:                                              ; preds = %out.sink.split, %if.end87.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call101, %if.end87.out_crit_edge ], [ -12, %do.end14.out_crit_edge ], [ %call101.sink, %out.sink.split ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_ap_rate_policy(ptr noundef %wl, ptr nocapture noundef readonly %c, i8 noundef zeroext %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_ap_rate_policy.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_ap_rate_policy, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %idx to i32
  %1 = ptrtoint ptr %c to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %c, align 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_ap_rate_policy.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.81, i32 noundef %conv, i32 noundef %2) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 20) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %4 = ptrtoint ptr %c to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %c, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %rate_policy = getelementptr inbounds %struct.acx_rate_policy, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %rate_policy to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rate_policy, align 4
  %short_retry_limit = getelementptr inbounds %struct.conf_tx_rate_class, ptr %c, i32 0, i32 1
  %8 = ptrtoint ptr %short_retry_limit to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %short_retry_limit, align 1
  %short_retry_limit22 = getelementptr inbounds %struct.acx_rate_policy, ptr %call7.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %short_retry_limit22 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %short_retry_limit22, align 8
  %long_retry_limit = getelementptr inbounds %struct.conf_tx_rate_class, ptr %c, i32 0, i32 2
  %11 = ptrtoint ptr %long_retry_limit to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %long_retry_limit, align 1
  %long_retry_limit24 = getelementptr inbounds %struct.acx_rate_policy, ptr %call7.i.i, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %long_retry_limit24 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %long_retry_limit24, align 1
  %aflags = getelementptr inbounds %struct.conf_tx_rate_class, ptr %c, i32 0, i32 3
  %14 = ptrtoint ptr %aflags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %aflags, align 1
  %aflags26 = getelementptr inbounds %struct.acx_rate_policy, ptr %call7.i.i, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %aflags26 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %aflags26, align 2
  %conv27 = zext i8 %idx to i32
  %17 = shl nuw i32 %conv27, 24
  %rate_policy_idx = getelementptr inbounds %struct.acx_rate_policy, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %rate_policy_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rate_policy_idx, align 8
  %call28 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 27, ptr noundef nonnull %call7.i.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %do.end33, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end33:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %call28) #10
  br label %out

out:                                              ; preds = %do.end33, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call28, %do.end33 ], [ %call28, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_ac_cfg(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i8 noundef zeroext %ac, i8 noundef zeroext %cw_min, i16 noundef zeroext %cw_max, i8 noundef zeroext %aifsn, i16 noundef zeroext %txop) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end18_crit_edge, label %do.body3, !prof !472

entry.do.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_ac_cfg.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_ac_cfg, %if.then11)) #6
          to label %do.end18 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %ac to i32
  %conv12 = zext i8 %cw_min to i32
  %conv13 = zext i16 %cw_max to i32
  %conv14 = zext i8 %aifsn to i32
  %conv15 = zext i16 %txop to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_ac_cfg.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.84, i32 noundef %conv, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14, i32 noundef %conv15) #6
  br label %do.end18

do.end18:                                         ; preds = %if.then11, %do.body3, %entry.do.end18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #9
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %do.end18.out_crit_edge, label %if.end22

do.end18.out_crit_edge:                           ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end22:                                         ; preds = %do.end18
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id23 = getelementptr inbounds %struct.acx_ac_cfg, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id23 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id23, align 8
  %ac24 = getelementptr inbounds %struct.acx_ac_cfg, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %ac24 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %ac, ptr %ac24, align 1
  %cw_min25 = getelementptr inbounds %struct.acx_ac_cfg, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %cw_min25 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %cw_min, ptr %cw_min25, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %cw_max)
  %cw_max26 = getelementptr inbounds %struct.acx_ac_cfg, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %cw_max26 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %cw_max26, align 4
  %aifsn27 = getelementptr inbounds %struct.acx_ac_cfg, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %aifsn27 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %aifsn, ptr %aifsn27, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %txop)
  %tx_op_limit = getelementptr inbounds %struct.acx_ac_cfg, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %tx_op_limit to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %tx_op_limit, align 2
  %call28 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 3, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %do.end33, label %if.end22.out_crit_edge

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end33:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %call28) #10
  br label %out

out:                                              ; preds = %do.end33, %if.end22.out_crit_edge, %do.end18.out_crit_edge
  %ret.0 = phi i32 [ %call28, %do.end33 ], [ %call28, %if.end22.out_crit_edge ], [ -12, %do.end18.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_tid_cfg(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i8 noundef zeroext %queue_id, i8 noundef zeroext %channel_type, i8 noundef zeroext %tsid, i8 noundef zeroext %ps_scheme, i8 noundef zeroext %ack_policy, i32 noundef %apsd_conf0, i32 noundef %apsd_conf1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_tid_cfg.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_tid_cfg, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_tid_cfg.__UNIQUE_ID_ddebug377, ptr noundef nonnull @.str.87) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id19 = getelementptr inbounds %struct.acx_tid_config, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id19, align 8
  %queue_id20 = getelementptr inbounds %struct.acx_tid_config, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %queue_id20 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %queue_id, ptr %queue_id20, align 1
  %channel_type21 = getelementptr inbounds %struct.acx_tid_config, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %channel_type21 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %channel_type, ptr %channel_type21, align 2
  %tsid22 = getelementptr inbounds %struct.acx_tid_config, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %tsid22 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %tsid, ptr %tsid22, align 1
  %ps_scheme23 = getelementptr inbounds %struct.acx_tid_config, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %ps_scheme23 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %ps_scheme, ptr %ps_scheme23, align 4
  %ack_policy24 = getelementptr inbounds %struct.acx_tid_config, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %ack_policy24 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %ack_policy, ptr %ack_policy24, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %apsd_conf0)
  %apsd_conf = getelementptr inbounds %struct.acx_tid_config, ptr %call7.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %apsd_conf to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %apsd_conf, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %apsd_conf1)
  %arrayidx26 = getelementptr %struct.acx_tid_config, ptr %call7.i.i, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx26, align 4
  %call27 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 9, ptr noundef nonnull %call7.i.i, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %do.end31, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end31:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %call27) #10
  br label %out

out:                                              ; preds = %do.end31, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call27, %do.end31 ], [ %call27, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_frag_threshold(ptr noundef %wl, i32 noundef %frag_threshold) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2352, i32 %frag_threshold)
  %cmp = icmp ugt i32 %frag_threshold, 2352
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %frag_threshold1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 8
  %0 = ptrtoint ptr %frag_threshold1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %frag_threshold1, align 1
  %conv = zext i16 %1 to i32
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %frag_threshold.addr.0 = phi i32 [ %conv, %if.then ], [ %frag_threshold, %entry.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %2 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end17_crit_edge, label %do.body5, !prof !472

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_frag_threshold.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_frag_threshold, %if.then13)) #6
          to label %do.end17 [label %if.then13], !srcloc !473

if.then13:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_frag_threshold.__UNIQUE_ID_ddebug378, ptr noundef nonnull @.str.90, i32 noundef %frag_threshold.addr.0) #6
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body5, %do.body.do.end17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #9
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %do.end17.out_crit_edge, label %if.end21

do.end17.out_crit_edge:                           ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end21:                                         ; preds = %do.end17
  %conv22 = trunc i32 %frag_threshold.addr.0 to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv22)
  %frag_threshold23 = getelementptr inbounds %struct.acx_frag_threshold, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %frag_threshold23 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %frag_threshold23, align 8
  %call24 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 40, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end30, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %call24) #10
  br label %out

out:                                              ; preds = %do.end30, %if.end21.out_crit_edge, %do.end17.out_crit_edge
  %ret.0 = phi i32 [ %call24, %do.end30 ], [ %call24, %if.end21.out_crit_edge ], [ -12, %do.end17.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_tx_config_options(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_tx_config_options.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_tx_config_options, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_tx_config_options.__UNIQUE_ID_ddebug379, ptr noundef nonnull @.str.93) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %tx_compl_timeout = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 9
  %2 = ptrtoint ptr %tx_compl_timeout to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %tx_compl_timeout, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %tx_compl_timeout19 = getelementptr inbounds %struct.acx_tx_config_options, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %tx_compl_timeout19 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %tx_compl_timeout19, align 8
  %tx_compl_threshold = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 10
  %6 = ptrtoint ptr %tx_compl_threshold to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %tx_compl_threshold, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %tx_compl_threshold22 = getelementptr inbounds %struct.acx_tx_config_options, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %tx_compl_threshold22 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %tx_compl_threshold22, align 2
  %call23 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 15, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %do.end27, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %call23) #10
  br label %out

out:                                              ; preds = %do.end27, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call23, %do.end27 ], [ %call23, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl12xx_acx_mem_cfg(ptr noundef %wl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_acx_mem_cfg.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_acx_mem_cfg, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_acx_mem_cfg.__UNIQUE_ID_ddebug380, ptr noundef nonnull @.str.96) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %mem19 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 10
  %2 = ptrtoint ptr %mem19 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mem19, align 1
  %num_stations20 = getelementptr inbounds %struct.wl12xx_acx_config_memory, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %num_stations20 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %num_stations20, align 2
  %rx_block_num = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 10, i32 2
  %5 = ptrtoint ptr %rx_block_num to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rx_block_num, align 1
  %rx_mem_block_num = getelementptr inbounds %struct.wl12xx_acx_config_memory, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %rx_mem_block_num to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %rx_mem_block_num, align 8
  %tx_min_block_num = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 10, i32 3
  %8 = ptrtoint ptr %tx_min_block_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tx_min_block_num, align 1
  %tx_min_mem_block_num = getelementptr inbounds %struct.wl12xx_acx_config_memory, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %tx_min_mem_block_num to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %tx_min_mem_block_num, align 1
  %ssid_profiles = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 10, i32 1
  %11 = ptrtoint ptr %ssid_profiles to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ssid_profiles, align 1
  %num_ssid_profiles = getelementptr inbounds %struct.wl12xx_acx_config_memory, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %num_ssid_profiles to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %num_ssid_profiles, align 1
  %num_tx_desc = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 126
  %14 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_tx_desc, align 8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %total_tx_descriptors = getelementptr inbounds %struct.wl12xx_acx_config_memory, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %total_tx_descriptors to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %total_tx_descriptors, align 4
  %dynamic_memory = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 10, i32 4
  %18 = ptrtoint ptr %dynamic_memory to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dynamic_memory, align 1
  %dyn_mem_enable = getelementptr inbounds %struct.wl12xx_acx_config_memory, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %dyn_mem_enable to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %dyn_mem_enable, align 8
  %min_req_tx_blocks = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 10, i32 5
  %21 = ptrtoint ptr %min_req_tx_blocks to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %min_req_tx_blocks, align 1
  %tx_free_req = getelementptr inbounds %struct.wl12xx_acx_config_memory, ptr %call7.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %tx_free_req to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %tx_free_req, align 1
  %min_req_rx_blocks = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 10, i32 6
  %24 = ptrtoint ptr %min_req_rx_blocks to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %min_req_rx_blocks, align 1
  %rx_free_req = getelementptr inbounds %struct.wl12xx_acx_config_memory, ptr %call7.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %rx_free_req to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %rx_free_req, align 2
  %tx_min = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 10, i32 7
  %27 = ptrtoint ptr %tx_min to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tx_min, align 1
  %tx_min21 = getelementptr inbounds %struct.wl12xx_acx_config_memory, ptr %call7.i.i, i32 0, i32 9
  %29 = ptrtoint ptr %tx_min21 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %tx_min21, align 1
  %mem_blocks = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 13, i32 1
  %30 = ptrtoint ptr %mem_blocks to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mem_blocks, align 1
  %fwlog_blocks = getelementptr inbounds %struct.wl12xx_acx_config_memory, ptr %call7.i.i, i32 0, i32 10
  %32 = ptrtoint ptr %fwlog_blocks to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %fwlog_blocks, align 4
  %call23 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 1, ptr noundef nonnull %call7.i.i, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %do.end27, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %call23) #10
  br label %out

out:                                              ; preds = %do.end27, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call23, %do.end27 ], [ %call23, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_init_mem_config(ptr noundef %wl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 104) #9
  %target_mem_map = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 42
  %1 = ptrtoint ptr %target_mem_map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %target_mem_map, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %2 = load i32, ptr @wl12xx_debug_level, align 4
  %and.i = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.wl1271_acx_mem_map.exit_crit_edge, label %do.body3.i, !prof !472

if.end.wl1271_acx_mem_map.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %wl1271_acx_mem_map.exit

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_mem_map.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_init_mem_config, %if.then11.i)) #6
          to label %wl1271_acx_mem_map.exit [label %if.then11.i], !srcloc !473

if.then11.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_mem_map.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.15) #6
  br label %wl1271_acx_mem_map.exit

wl1271_acx_mem_map.exit:                          ; preds = %if.then11.i, %do.body3.i, %if.end.wl1271_acx_mem_map.exit_crit_edge
  %call15.i = tail call i32 @wl1271_cmd_interrogate(ptr noundef %wl, i16 noundef zeroext 4, ptr noundef nonnull %call7.i.i, i32 noundef 8, i32 noundef 104) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp = icmp slt i32 %call15.i, 0
  br i1 %cmp, label %do.end8, label %if.end13

do.end8:                                          ; preds = %wl1271_acx_mem_map.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #10
  %3 = ptrtoint ptr %target_mem_map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %target_mem_map, align 8
  tail call void @kfree(ptr noundef %4) #6
  %5 = ptrtoint ptr %target_mem_map to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %target_mem_map, align 8
  br label %cleanup

if.end13:                                         ; preds = %wl1271_acx_mem_map.exit
  %6 = ptrtoint ptr %target_mem_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %target_mem_map, align 8
  %num_tx_mem_blocks = getelementptr inbounds %struct.wl1271_acx_mem_map, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %num_tx_mem_blocks to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %num_tx_mem_blocks, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %tx_blocks_available = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 44
  %11 = ptrtoint ptr %tx_blocks_available to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_blocks_available, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %12 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %do.body20, !prof !472

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_init_mem_config.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_init_mem_config, %if.then30)) #6
          to label %cleanup [label %if.then30], !srcloc !473

if.then30:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %tx_blocks_available to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_blocks_available, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_init_mem_config.__UNIQUE_ID_ddebug381, ptr noundef nonnull @.str.103, i32 noundef %14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body20, %if.end13.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %call15.i, %do.end8 ], [ -12, %do.end ], [ 0, %if.then30 ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %do.body20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_init_rx_interrupt(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_init_rx_interrupt.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_init_rx_interrupt, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_init_rx_interrupt.__UNIQUE_ID_ddebug382, ptr noundef nonnull @.str.105) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %irq_pkt_threshold = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 1, i32 7
  %2 = ptrtoint ptr %irq_pkt_threshold to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %irq_pkt_threshold, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %threshold = getelementptr inbounds %struct.wl1271_acx_rx_config_opt, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %threshold to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %threshold, align 2
  %irq_timeout = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 1, i32 8
  %6 = ptrtoint ptr %irq_timeout to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %irq_timeout, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %timeout = getelementptr inbounds %struct.wl1271_acx_rx_config_opt, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %timeout, align 4
  %irq_blk_threshold = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 1, i32 6
  %10 = ptrtoint ptr %irq_blk_threshold to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %irq_blk_threshold, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %mblk_threshold = getelementptr inbounds %struct.wl1271_acx_rx_config_opt, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %mblk_threshold to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %mblk_threshold, align 8
  %queue_type = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 1, i32 9
  %14 = ptrtoint ptr %queue_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %queue_type, align 1
  %queue_type25 = getelementptr inbounds %struct.wl1271_acx_rx_config_opt, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %queue_type25 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %queue_type25, align 2
  %call26 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 39, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %do.end30, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end30:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %call26) #10
  br label %out

out:                                              ; preds = %do.end30, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call26, %do.end30 ], [ %call26, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_bet_enable(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body3, !prof !472

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_bet_enable.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_bet_enable, %if.then12)) #6
          to label %do.end15 [label %if.then12], !srcloc !473

if.then12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_bet_enable.__UNIQUE_ID_ddebug383, ptr noundef nonnull @.str.108) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body3, %entry.do.end15_crit_edge
  br i1 %enable, label %land.lhs.true, label %do.end15.if.end19_crit_edge

do.end15.if.end19_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true:                                    ; preds = %do.end15
  %bet_enable = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 14
  %1 = ptrtoint ptr %bet_enable to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bet_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %do.end15.if.end19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #9
  %tobool21.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool21.not, label %if.end19.out_crit_edge, label %if.end23

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end23:                                         ; preds = %if.end19
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %4 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %role_id, align 2
  %role_id24 = getelementptr inbounds %struct.wl1271_acx_bet_enable, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %role_id24 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %role_id24, align 8
  %conv27 = zext i1 %enable to i8
  %enable28 = getelementptr inbounds %struct.wl1271_acx_bet_enable, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %enable28 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv27, ptr %enable28, align 1
  %bet_max_consecutive = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 15
  %8 = ptrtoint ptr %bet_max_consecutive to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bet_max_consecutive, align 1
  %max_consecutive = getelementptr inbounds %struct.wl1271_acx_bet_enable, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %max_consecutive to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %max_consecutive, align 2
  %call31 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 41, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end37, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end37:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %call31) #10
  br label %out

out:                                              ; preds = %do.end37, %if.end23.out_crit_edge, %if.end19.out_crit_edge, %land.lhs.true.out_crit_edge
  %ret.0 = phi i32 [ 0, %land.lhs.true.out_crit_edge ], [ %call31, %do.end37 ], [ %call31, %if.end23.out_crit_edge ], [ -12, %if.end19.out_crit_edge ]
  %acx.0 = phi ptr [ null, %land.lhs.true.out_crit_edge ], [ %call7.i.i, %do.end37 ], [ %call7.i.i, %if.end23.out_crit_edge ], [ null, %if.end19.out_crit_edge ]
  tail call void @kfree(ptr noundef %acx.0) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_arp_ip_filter(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i8 noundef zeroext %enable, i32 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_arp_ip_filter.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_arp_ip_filter, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %enable to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_arp_ip_filter.__UNIQUE_ID_ddebug384, ptr noundef nonnull @.str.111, i32 noundef %conv) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 28) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id19 = getelementptr inbounds %struct.wl1271_acx_arp_filter, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id19, align 8
  %version = getelementptr inbounds %struct.wl1271_acx_arp_filter, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %version, align 1
  %enable20 = getelementptr inbounds %struct.wl1271_acx_arp_filter, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %enable20 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %enable, ptr %enable20, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool21.not = icmp eq i8 %enable, 0
  br i1 %tobool21.not, label %if.end18.if.end24_crit_edge, label %if.then22

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %address23 = getelementptr inbounds %struct.wl1271_acx_arp_filter, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %address23 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %address, ptr %address23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end18.if.end24_crit_edge
  %call25 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 25, ptr noundef nonnull %call7.i.i, i32 noundef 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %do.end30, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef %call25) #10
  br label %out

out:                                              ; preds = %do.end30, %if.end24.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call25, %do.end30 ], [ %call25, %if.end24.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_pm_config(ptr noundef %wl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_config = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_pm_config.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_pm_config, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_pm_config.__UNIQUE_ID_ddebug385, ptr noundef nonnull @.str.114) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %2 = ptrtoint ptr %pm_config to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %pm_config, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %host_clk_settling_time19 = getelementptr inbounds %struct.wl1271_acx_pm_config, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %host_clk_settling_time19 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %host_clk_settling_time19, align 8
  %host_fast_wakeup_support = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 5, i32 1
  %6 = ptrtoint ptr %host_fast_wakeup_support to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %host_fast_wakeup_support, align 1
  %host_fast_wakeup_support20 = getelementptr inbounds %struct.wl1271_acx_pm_config, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %host_fast_wakeup_support20 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %host_fast_wakeup_support20, align 4
  %call21 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 64, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %do.end25, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %call21) #10
  br label %out

out:                                              ; preds = %do.end25, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call21, %do.end25 ], [ %call21, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_keep_alive_mode(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end16_crit_edge, label %do.body3, !prof !472

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_keep_alive_mode.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_keep_alive_mode, %if.then12)) #6
          to label %do.end16 [label %if.then12], !srcloc !473

if.then12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i1 %enable to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_keep_alive_mode.__UNIQUE_ID_ddebug386, ptr noundef nonnull @.str.117, i32 noundef %conv) #6
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body3, %entry.do.end16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #9
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %do.end16.out_crit_edge, label %if.end20

do.end16.out_crit_edge:                           ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end20:                                         ; preds = %do.end16
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id21 = getelementptr inbounds %struct.wl1271_acx_keep_alive_mode, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id21 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id21, align 8
  %enabled = getelementptr inbounds %struct.wl1271_acx_keep_alive_mode, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %enabled, align 1
  %call24 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 44, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %do.end29, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %call24) #10
  br label %out

out:                                              ; preds = %do.end29, %if.end20.out_crit_edge, %do.end16.out_crit_edge
  %ret.0 = phi i32 [ %call24, %do.end29 ], [ %call24, %if.end20.out_crit_edge ], [ -12, %do.end16.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_keep_alive_config(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i8 noundef zeroext %index, i8 noundef zeroext %tpl_valid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_keep_alive_config.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_keep_alive_config, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_keep_alive_config.__UNIQUE_ID_ddebug387, ptr noundef nonnull @.str.120) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id19 = getelementptr inbounds %struct.wl1271_acx_keep_alive_config, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id19, align 8
  %keep_alive_interval = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 21
  %5 = ptrtoint ptr %keep_alive_interval to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %keep_alive_interval, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %period = getelementptr inbounds %struct.wl1271_acx_keep_alive_config, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %period, align 4
  %index20 = getelementptr inbounds %struct.wl1271_acx_keep_alive_config, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %index20 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %index, ptr %index20, align 1
  %tpl_validation = getelementptr inbounds %struct.wl1271_acx_keep_alive_config, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %tpl_validation to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %tpl_valid, ptr %tpl_validation, align 2
  %trigger = getelementptr inbounds %struct.wl1271_acx_keep_alive_config, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %trigger to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %trigger, align 1
  %call21 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 45, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %do.end25, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %call21) #10
  br label %out

out:                                              ; preds = %do.end25, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call21, %do.end25 ], [ %call21, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_rssi_snr_trigger(ptr noundef %wl, ptr nocapture noundef %wlvif, i1 noundef zeroext %enable, i16 noundef signext %thold, i8 noundef zeroext %hyst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body3, !prof !472

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_rssi_snr_trigger.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_rssi_snr_trigger, %if.then12)) #6
          to label %do.end15 [label %if.then12], !srcloc !473

if.then12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_rssi_snr_trigger.__UNIQUE_ID_ddebug388, ptr noundef nonnull @.str.123) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body3, %entry.do.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 20) #9
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %do.end15.out_crit_edge, label %if.end19

do.end15.out_crit_edge:                           ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end19:                                         ; preds = %do.end15
  %last_rssi_event = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 28
  %2 = ptrtoint ptr %last_rssi_event to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %last_rssi_event, align 4
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %3 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %role_id, align 2
  %role_id20 = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %role_id20 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %role_id20, align 8
  %roam_trigger = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 6
  %6 = ptrtoint ptr %roam_trigger to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %roam_trigger, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %pacing = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %pacing to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %pacing, align 2
  %metric = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %metric to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %metric, align 1
  %type = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %type, align 2
  %spec.select = select i1 %enable, i8 1, i8 2
  %12 = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, ptr %call7.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.select, ptr %12, align 2
  %index = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, ptr %call7.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %index, align 1
  %dir = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %dir to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %dir, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %thold)
  %threshold = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %threshold to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %threshold, align 4
  %hysteresis = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %hysteresis to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %hyst, ptr %hysteresis, align 8
  %call26 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 42, ptr noundef nonnull %call7.i.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %do.end30, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end30:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %call26) #10
  br label %out

out:                                              ; preds = %do.end30, %if.end19.out_crit_edge, %do.end15.out_crit_edge
  %ret.0 = phi i32 [ %call26, %do.end30 ], [ %call26, %if.end19.out_crit_edge ], [ -12, %do.end15.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_rssi_snr_avg_weights(ptr noundef %wl, ptr nocapture noundef readonly %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_rssi_snr_avg_weights.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_rssi_snr_avg_weights, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_rssi_snr_avg_weights.__UNIQUE_ID_ddebug389, ptr noundef nonnull @.str.126) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id19 = getelementptr inbounds %struct.wl1271_acx_rssi_snr_avg_weights, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id19, align 8
  %avg_weight_rssi_beacon = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 6, i32 1
  %5 = ptrtoint ptr %avg_weight_rssi_beacon to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %avg_weight_rssi_beacon, align 1
  %rssi_beacon = getelementptr inbounds %struct.wl1271_acx_rssi_snr_avg_weights, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %rssi_beacon to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %rssi_beacon, align 4
  %avg_weight_rssi_data = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 6, i32 2
  %8 = ptrtoint ptr %avg_weight_rssi_data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %avg_weight_rssi_data, align 1
  %rssi_data = getelementptr inbounds %struct.wl1271_acx_rssi_snr_avg_weights, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %rssi_data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %rssi_data, align 1
  %avg_weight_snr_beacon = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 6, i32 3
  %11 = ptrtoint ptr %avg_weight_snr_beacon to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %avg_weight_snr_beacon, align 1
  %snr_beacon = getelementptr inbounds %struct.wl1271_acx_rssi_snr_avg_weights, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %snr_beacon to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %snr_beacon, align 2
  %avg_weight_snr_data = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 6, i32 4
  %14 = ptrtoint ptr %avg_weight_snr_data to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %avg_weight_snr_data, align 1
  %snr_data = getelementptr inbounds %struct.wl1271_acx_rssi_snr_avg_weights, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %snr_data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %snr_data, align 1
  %call20 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 43, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.end24, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %call20) #10
  br label %out

out:                                              ; preds = %do.end24, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call20, %do.end24 ], [ %call20, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_set_ht_capabilities(ptr noundef %wl, ptr nocapture noundef readonly %ht_cap, i1 noundef zeroext %allow_ht_operation, i8 noundef zeroext %hlid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end17_crit_edge, label %do.body3, !prof !472

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_set_ht_capabilities.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_set_ht_capabilities, %if.then12)) #6
          to label %do.end17 [label %if.then12], !srcloc !473

if.then12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 1
  %1 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ht_supported, align 2, !range !475
  %3 = zext i8 %2 to i32
  %4 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ht_cap, align 2
  %conv14 = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_set_ht_capabilities.__UNIQUE_ID_ddebug390, ptr noundef nonnull @.str.129, i32 noundef %3, i32 noundef %conv14) #6
  br label %do.end17

do.end17:                                         ; preds = %if.then12, %do.body3, %entry.do.end17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 16) #9
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %do.end17.out_crit_edge, label %if.end21

do.end17.out_crit_edge:                           ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end21:                                         ; preds = %do.end17
  br i1 %allow_ht_operation, label %land.lhs.true, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end21
  %ht_supported24 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 1
  %7 = ptrtoint ptr %ht_supported24 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ht_supported24, align 2, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool25.not = icmp eq i8 %8, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end30_crit_edge, label %if.then27

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ht_cap, align 2
  %conv29 = zext i16 %10 to i32
  %or = or i32 %conv29, 65536
  %ampdu_factor = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 2
  %11 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ampdu_factor, align 1
  %ampdu_max_length = getelementptr inbounds %struct.wl1271_acx_ht_capabilities, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %ampdu_max_length to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %ampdu_max_length, align 1
  %ampdu_density = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 3
  %14 = ptrtoint ptr %ampdu_density to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ampdu_density, align 2
  %ampdu_min_spacing = getelementptr inbounds %struct.wl1271_acx_ht_capabilities, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %ampdu_min_spacing to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %ampdu_min_spacing, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %land.lhs.true.if.end30_crit_edge, %if.end21.if.end30_crit_edge
  %ht_capabilites.0 = phi i32 [ %or, %if.then27 ], [ 0, %land.lhs.true.if.end30_crit_edge ], [ 0, %if.end21.if.end30_crit_edge ]
  %hlid31 = getelementptr inbounds %struct.wl1271_acx_ht_capabilities, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %hlid31 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %hlid, ptr %hlid31, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %ht_capabilites.0)
  %ht_capabilites32 = getelementptr inbounds %struct.wl1271_acx_ht_capabilities, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %ht_capabilites32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ht_capabilites32, align 8
  %call33 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 48, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %do.end38, label %if.end30.out_crit_edge

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %call33) #10
  br label %out

out:                                              ; preds = %do.end38, %if.end30.out_crit_edge, %do.end17.out_crit_edge
  %ret.0 = phi i32 [ %call33, %do.end38 ], [ %call33, %if.end30.out_crit_edge ], [ -12, %do.end17.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_set_ht_information(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i16 noundef zeroext %ht_operation_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_set_ht_information.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_set_ht_information, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_set_ht_information.__UNIQUE_ID_ddebug391, ptr noundef nonnull @.str.132) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id19 = getelementptr inbounds %struct.wl1271_acx_ht_information, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id19, align 8
  %5 = trunc i16 %ht_operation_mode to i8
  %conv21 = and i8 %5, 3
  %ht_protection = getelementptr inbounds %struct.wl1271_acx_ht_information, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %ht_protection to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv21, ptr %ht_protection, align 2
  %rifs_mode = getelementptr inbounds %struct.wl1271_acx_ht_information, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %rifs_mode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %rifs_mode, align 1
  %8 = lshr i8 %5, 2
  %9 = and i8 %8, 1
  %gf_protection = getelementptr inbounds %struct.wl1271_acx_ht_information, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %gf_protection to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %gf_protection, align 1
  %ht_tx_burst_limit = getelementptr inbounds %struct.wl1271_acx_ht_information, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %ht_tx_burst_limit to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %ht_tx_burst_limit, align 4
  %dual_cts_protection = getelementptr inbounds %struct.wl1271_acx_ht_information, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %dual_cts_protection to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %dual_cts_protection, align 1
  %call30 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 49, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp = icmp slt i32 %call30, 0
  br i1 %cmp, label %do.end35, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end35:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %call30) #10
  br label %out

out:                                              ; preds = %do.end35, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call30, %do.end35 ], [ %call30, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl12xx_acx_set_ba_initiator_policy(ptr noundef %wl, ptr nocapture noundef readonly %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_acx_set_ba_initiator_policy.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_acx_set_ba_initiator_policy, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_acx_set_ba_initiator_policy.__UNIQUE_ID_ddebug392, ptr noundef nonnull @.str.135) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id19 = getelementptr inbounds %struct.wl1271_acx_ba_initiator_policy, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id19, align 8
  %tx_ba_tid_bitmap = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 9, i32 3
  %5 = ptrtoint ptr %tx_ba_tid_bitmap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tx_ba_tid_bitmap, align 2
  %tid_bitmap = getelementptr inbounds %struct.wl1271_acx_ba_initiator_policy, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %tid_bitmap, align 1
  %tx_ba_win_size = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 9, i32 1
  %8 = ptrtoint ptr %tx_ba_win_size to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tx_ba_win_size, align 1
  %win_size = getelementptr inbounds %struct.wl1271_acx_ba_initiator_policy, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %win_size to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %win_size, align 2
  %inactivity_timeout = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 9, i32 2
  %11 = ptrtoint ptr %inactivity_timeout to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %inactivity_timeout, align 2
  %inactivity_timeout24 = getelementptr inbounds %struct.wl1271_acx_ba_initiator_policy, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %inactivity_timeout24 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %inactivity_timeout24, align 4
  %call25 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 46, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %do.end29, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end29:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %call25) #10
  br label %out

out:                                              ; preds = %do.end29, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call25, %do.end29 ], [ %call25, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl12xx_acx_set_ba_receiver_session(ptr noundef %wl, i8 noundef zeroext %tid_index, i16 noundef zeroext %ssn, i1 noundef zeroext %enable, i8 noundef zeroext %peer_hlid, i8 noundef zeroext %win_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body3, !prof !472

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_acx_set_ba_receiver_session.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_acx_set_ba_receiver_session, %if.then12)) #6
          to label %do.end15 [label %if.then12], !srcloc !473

if.then12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_acx_set_ba_receiver_session.__UNIQUE_ID_ddebug393, ptr noundef nonnull @.str.138) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body3, %entry.do.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #9
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %do.end15.out_crit_edge, label %if.end19

do.end15.out_crit_edge:                           ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end19:                                         ; preds = %do.end15
  %hlid = getelementptr inbounds %struct.wl1271_acx_ba_receiver_setup, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %hlid to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %peer_hlid, ptr %hlid, align 8
  %tid = getelementptr inbounds %struct.wl1271_acx_ba_receiver_setup, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %tid to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %tid_index, ptr %tid, align 1
  %enable21 = getelementptr inbounds %struct.wl1271_acx_ba_receiver_setup, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %enable21 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %enable21, align 2
  %win_size22 = getelementptr inbounds %struct.wl1271_acx_ba_receiver_setup, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %win_size22 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %win_size, ptr %win_size22, align 1
  %ssn23 = getelementptr inbounds %struct.wl1271_acx_ba_receiver_setup, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %ssn23 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %ssn, ptr %ssn23, align 4
  %call24 = tail call i32 @wlcore_cmd_configure_failsafe(ptr noundef %wl, i16 noundef zeroext 47, ptr noundef nonnull %call7.i.i, i32 noundef 16, i32 noundef 16777216) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %call24) #10
  br label %out

if.end32:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call24)
  %cmp33 = icmp eq i32 %call24, 24
  br i1 %cmp33, label %do.end38, label %if.end32.out_crit_edge

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %conv40 = zext i8 %tid_index to i32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %conv40) #10
  br label %out

out:                                              ; preds = %do.end38, %if.end32.out_crit_edge, %do.end29, %do.end15.out_crit_edge
  %ret.0 = phi i32 [ %call24, %do.end29 ], [ -16, %do.end38 ], [ -12, %do.end15.out_crit_edge ], [ 0, %if.end32.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_cmd_configure_failsafe(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl12xx_acx_tsf_info(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, ptr nocapture noundef writeonly %mactime) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %1 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %role_id, align 2
  %role_id1 = getelementptr inbounds %struct.wl12xx_acx_fw_tsf_information, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %role_id1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %role_id1, align 8
  %call2 = tail call i32 @wl1271_cmd_interrogate(ptr noundef %wl, i16 noundef zeroext 34, ptr noundef nonnull %call7.i.i, i32 noundef 8, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143) #10
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %current_tsf_low = getelementptr inbounds %struct.wl12xx_acx_fw_tsf_information, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %current_tsf_low to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_tsf_low, align 8
  %current_tsf_high = getelementptr inbounds %struct.wl12xx_acx_fw_tsf_information, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %current_tsf_high to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_tsf_high, align 4
  %8 = zext i32 %7 to i64
  %9 = zext i32 %5 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %13 = ptrtoint ptr %mactime to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %mactime, align 8
  br label %out

out:                                              ; preds = %if.end5, %do.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call2, %do.end ], [ %call2, %if.end5 ], [ -12, %entry.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_ps_rx_streaming(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body3, !prof !472

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_ps_rx_streaming.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_ps_rx_streaming, %if.then12)) #6
          to label %do.end15 [label %if.then12], !srcloc !473

if.then12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_ps_rx_streaming.__UNIQUE_ID_ddebug394, ptr noundef nonnull @.str.146) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body3, %entry.do.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #9
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %do.end15.out_crit_edge, label %if.end19

do.end15.out_crit_edge:                           ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end19:                                         ; preds = %do.end15
  %queues = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 12, i32 1
  %2 = ptrtoint ptr %queues to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %queues, align 1
  %conv = zext i8 %3 to i32
  %conv. = select i1 %enable, i32 %conv, i32 0
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %role_id29 = getelementptr inbounds %struct.wl1271_acx_ps_rx_streaming, ptr %call7.i.i, i32 0, i32 1
  %tid = getelementptr inbounds %struct.wl1271_acx_ps_rx_streaming, ptr %call7.i.i, i32 0, i32 2
  %enable34 = getelementptr inbounds %struct.wl1271_acx_ps_rx_streaming, ptr %call7.i.i, i32 0, i32 3
  %interval = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 12, i32 2
  %period = getelementptr inbounds %struct.wl1271_acx_ps_rx_streaming, ptr %call7.i.i, i32 0, i32 4
  %timeout = getelementptr inbounds %struct.wl1271_acx_ps_rx_streaming, ptr %call7.i.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end19
  %ret.071 = phi i32 [ 0, %if.end19 ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %i.069 = phi i32 [ 0, %if.end19 ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.069
  %and25 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %for.body.for.inc_crit_edge, label %if.end28

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end28:                                         ; preds = %for.body
  %4 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %role_id, align 2
  %6 = ptrtoint ptr %role_id29 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %role_id29, align 8
  %conv30 = trunc i32 %i.069 to i8
  %7 = ptrtoint ptr %tid to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv30, ptr %tid, align 1
  %and32 = and i32 %shl, %conv.
  %conv33 = trunc i32 %and32 to i8
  %8 = ptrtoint ptr %enable34 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv33, ptr %enable34, align 2
  %9 = ptrtoint ptr %interval to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %interval, align 1
  %11 = ptrtoint ptr %period to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %period, align 1
  %12 = ptrtoint ptr %timeout to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %10, ptr %timeout, align 4
  %call40 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 10, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end46, label %if.end28.for.inc_crit_edge

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end46:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef %call40) #10
  br label %out

for.inc:                                          ; preds = %if.end28.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %call40, %if.end28.for.inc_crit_edge ], [ %ret.071, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %do.end46, %do.end15.out_crit_edge
  %ret.2 = phi i32 [ %call40, %do.end46 ], [ -12, %do.end15.out_crit_edge ], [ %ret.1, %for.inc.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_ap_max_tx_retry(ptr noundef %wl, ptr nocapture noundef readonly %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_ap_max_tx_retry.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_ap_max_tx_retry, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_ap_max_tx_retry.__UNIQUE_ID_ddebug395, ptr noundef nonnull @.str.149) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.cleanup_crit_edge, label %if.end18

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id19 = getelementptr inbounds %struct.wl1271_acx_ap_max_tx_retry, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id19, align 8
  %max_tx_retries = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 4
  %5 = ptrtoint ptr %max_tx_retries to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %max_tx_retries, align 1
  %conv = zext i8 %6 to i16
  %7 = shl nuw i16 %conv, 8
  %max_tx_retry = getelementptr inbounds %struct.wl1271_acx_ap_max_tx_retry, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %max_tx_retry to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %max_tx_retry, align 2
  %call20 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 58, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.end25, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %call20) #10
  br label %out

out:                                              ; preds = %do.end25, %if.end18.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %out ], [ -12, %do.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl12xx_acx_config_ps(ptr noundef %wl, ptr nocapture noundef readonly %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_acx_config_ps.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_acx_config_ps, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_acx_config_ps.__UNIQUE_ID_ddebug396, ptr noundef nonnull @.str.152) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %psm_exit_retries = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 17
  %2 = ptrtoint ptr %psm_exit_retries to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %psm_exit_retries, align 1
  %exit_retries = getelementptr inbounds %struct.wl1271_acx_config_ps, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %exit_retries to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %exit_retries, align 8
  %psm_entry_retries = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 16
  %5 = ptrtoint ptr %psm_entry_retries to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %psm_entry_retries, align 1
  %enter_retries = getelementptr inbounds %struct.wl1271_acx_config_ps, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %enter_retries to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %enter_retries, align 1
  %basic_rate = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 19
  %8 = ptrtoint ptr %basic_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %basic_rate, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %null_data_rate = getelementptr inbounds %struct.wl1271_acx_config_ps, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %null_data_rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %null_data_rate, align 4
  %call21 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 65, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %do.end25, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %call21) #10
  br label %out

out:                                              ; preds = %do.end25, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call21, %do.end25 ], [ %call21, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_set_inconnection_sta(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_set_inconnection_sta.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_set_inconnection_sta, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_set_inconnection_sta.__UNIQUE_ID_ddebug397, ptr noundef nonnull @.str.155, ptr noundef %addr) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.cleanup_crit_edge, label %if.end18

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %do.end14
  %addr19 = getelementptr inbounds %struct.wl1271_acx_inconnection_sta, ptr %call7.i.i, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %addr19, ptr %addr, i32 6)
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %3 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %role_id, align 2
  %role_id20 = getelementptr inbounds %struct.wl1271_acx_inconnection_sta, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %role_id20 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %role_id20, align 2
  %call21 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 59, ptr noundef nonnull %call7.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %do.end25, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %call21) #10
  br label %out

out:                                              ; preds = %do.end25, %if.end18.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %out ], [ -12, %do.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_fm_coex(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_fm_coex.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_fm_coex, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_fm_coex.__UNIQUE_ID_ddebug398, ptr noundef nonnull @.str.158) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %fm_coex = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 11
  %2 = ptrtoint ptr %fm_coex to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fm_coex, align 1
  %enable19 = getelementptr inbounds %struct.wl1271_acx_fm_coex, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %enable19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %enable19, align 8
  %swallow_period = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 11, i32 1
  %5 = ptrtoint ptr %swallow_period to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %swallow_period, align 1
  %swallow_period22 = getelementptr inbounds %struct.wl1271_acx_fm_coex, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %swallow_period22 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %swallow_period22, align 1
  %n_divider_fref_set_1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 11, i32 2
  %8 = ptrtoint ptr %n_divider_fref_set_1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %n_divider_fref_set_1, align 1
  %n_divider_fref_set_125 = getelementptr inbounds %struct.wl1271_acx_fm_coex, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %n_divider_fref_set_125 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %n_divider_fref_set_125, align 2
  %n_divider_fref_set_2 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 11, i32 3
  %11 = ptrtoint ptr %n_divider_fref_set_2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %n_divider_fref_set_2, align 1
  %n_divider_fref_set_228 = getelementptr inbounds %struct.wl1271_acx_fm_coex, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %n_divider_fref_set_228 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %n_divider_fref_set_228, align 1
  %m_divider_fref_set_1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 11, i32 4
  %14 = ptrtoint ptr %m_divider_fref_set_1 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %m_divider_fref_set_1, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %m_divider_fref_set_131 = getelementptr inbounds %struct.wl1271_acx_fm_coex, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %m_divider_fref_set_131 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %m_divider_fref_set_131, align 4
  %m_divider_fref_set_2 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 11, i32 5
  %18 = ptrtoint ptr %m_divider_fref_set_2 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %m_divider_fref_set_2, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %m_divider_fref_set_234 = getelementptr inbounds %struct.wl1271_acx_fm_coex, ptr %call7.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %m_divider_fref_set_234 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %m_divider_fref_set_234, align 2
  %coex_pll_stabilization_time = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 11, i32 6
  %22 = ptrtoint ptr %coex_pll_stabilization_time to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %coex_pll_stabilization_time, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %coex_pll_stabilization_time37 = getelementptr inbounds %struct.wl1271_acx_fm_coex, ptr %call7.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %coex_pll_stabilization_time37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %coex_pll_stabilization_time37, align 8
  %ldo_stabilization_time = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 11, i32 7
  %26 = ptrtoint ptr %ldo_stabilization_time to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %ldo_stabilization_time, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %ldo_stabilization_time40 = getelementptr inbounds %struct.wl1271_acx_fm_coex, ptr %call7.i.i, i32 0, i32 8
  %29 = ptrtoint ptr %ldo_stabilization_time40 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %ldo_stabilization_time40, align 4
  %fm_disturbed_band_margin = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 11, i32 8
  %30 = ptrtoint ptr %fm_disturbed_band_margin to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fm_disturbed_band_margin, align 1
  %fm_disturbed_band_margin43 = getelementptr inbounds %struct.wl1271_acx_fm_coex, ptr %call7.i.i, i32 0, i32 9
  %32 = ptrtoint ptr %fm_disturbed_band_margin43 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %fm_disturbed_band_margin43, align 2
  %swallow_clk_diff = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 11, i32 9
  %33 = ptrtoint ptr %swallow_clk_diff to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %swallow_clk_diff, align 1
  %swallow_clk_diff46 = getelementptr inbounds %struct.wl1271_acx_fm_coex, ptr %call7.i.i, i32 0, i32 10
  %35 = ptrtoint ptr %swallow_clk_diff46 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %swallow_clk_diff46, align 1
  %call47 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 23, ptr noundef nonnull %call7.i.i, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp = icmp slt i32 %call47, 0
  br i1 %cmp, label %do.end51, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end51:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, i32 noundef %call47) #10
  br label %out

out:                                              ; preds = %do.end51, %if.end18.out_crit_edge, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call47, %do.end51 ], [ %call47, %if.end18.out_crit_edge ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl12xx_acx_set_rate_mgmt_params(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rate = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body4, !prof !472

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_acx_set_rate_mgmt_params.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_acx_set_rate_mgmt_params, %if.then12)) #6
          to label %do.end15 [label %if.then12], !srcloc !473

if.then12:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_acx_set_rate_mgmt_params.__UNIQUE_ID_ddebug399, ptr noundef nonnull @.str.161) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body4, %entry.do.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 44) #9
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %do.end15.cleanup_crit_edge, label %if.end19

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %do.end15
  %index = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %index, align 8
  %3 = ptrtoint ptr %rate to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %rate, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %rate_retry_score20 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %rate_retry_score20 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %rate_retry_score20, align 2
  %per_add = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 14, i32 1
  %7 = ptrtoint ptr %per_add to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %per_add, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %per_add21 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %per_add21 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %per_add21, align 4
  %per_th1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 14, i32 2
  %11 = ptrtoint ptr %per_th1 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %per_th1, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %per_th122 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %per_th122 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %per_th122, align 2
  %per_th2 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 14, i32 3
  %15 = ptrtoint ptr %per_th2 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %per_th2, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %per_th223 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, ptr %call7.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %per_th223 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %per_th223, align 8
  %max_per = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 14, i32 4
  %19 = ptrtoint ptr %max_per to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %max_per, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %max_per24 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, ptr %call7.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %max_per24 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %max_per24, align 2
  %inverse_curiosity_factor = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 14, i32 5
  %23 = ptrtoint ptr %inverse_curiosity_factor to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %inverse_curiosity_factor, align 1
  %inverse_curiosity_factor25 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, ptr %call7.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %inverse_curiosity_factor25 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %inverse_curiosity_factor25, align 4
  %tx_fail_low_th = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 14, i32 6
  %26 = ptrtoint ptr %tx_fail_low_th to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tx_fail_low_th, align 1
  %tx_fail_low_th26 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, ptr %call7.i.i, i32 0, i32 9
  %28 = ptrtoint ptr %tx_fail_low_th26 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %tx_fail_low_th26, align 1
  %tx_fail_high_th = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 14, i32 7
  %29 = ptrtoint ptr %tx_fail_high_th to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tx_fail_high_th, align 1
  %tx_fail_high_th27 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, ptr %call7.i.i, i32 0, i32 10
  %31 = ptrtoint ptr %tx_fail_high_th27 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %tx_fail_high_th27, align 2
  %per_alpha_shift = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 14, i32 8
  %32 = ptrtoint ptr %per_alpha_shift to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %per_alpha_shift, align 1
  %per_alpha_shift28 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, ptr %call7.i.i, i32 0, i32 11
  %34 = ptrtoint ptr %per_alpha_shift28 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %per_alpha_shift28, align 1
  %per_add_shift = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 14, i32 9
  %35 = ptrtoint ptr %per_add_shift to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %per_add_shift, align 1
  %per_add_shift29 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, ptr %call7.i.i, i32 0, i32 12
  %37 = ptrtoint ptr %per_add_shift29 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %per_add_shift29, align 8
  %per_beta1_shift = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 14, i32 10
  %38 = ptrtoint ptr %per_beta1_shift to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %per_beta1_shift, align 1
  %per_beta1_shift30 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, ptr %call7.i.i, i32 0, i32 13
  %40 = ptrtoint ptr %per_beta1_shift30 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %per_beta1_shift30, align 1
  %per_beta2_shift = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 14, i32 11
  %41 = ptrtoint ptr %per_beta2_shift to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %per_beta2_shift, align 1
  %per_beta2_shift31 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, ptr %call7.i.i, i32 0, i32 14
  %43 = ptrtoint ptr %per_beta2_shift31 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %per_beta2_shift31, align 2
  %rate_check_up = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 14, i32 12
  %44 = ptrtoint ptr %rate_check_up to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rate_check_up, align 1
  %rate_check_up32 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, ptr %call7.i.i, i32 0, i32 15
  %46 = ptrtoint ptr %rate_check_up32 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %rate_check_up32, align 1
  %rate_check_down = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 14, i32 13
  %47 = ptrtoint ptr %rate_check_down to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rate_check_down, align 1
  %rate_check_down33 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, ptr %call7.i.i, i32 0, i32 16
  %49 = ptrtoint ptr %rate_check_down33 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %rate_check_down33, align 4
  %rate_retry_policy = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, ptr %call7.i.i, i32 0, i32 17
  %rate_retry_policy34 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 14, i32 14
  %50 = call ptr @memcpy(ptr %rate_retry_policy, ptr %rate_retry_policy34, i32 13)
  %call36 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 52, ptr noundef nonnull %call7.i.i, i32 noundef 44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp = icmp slt i32 %call36, 0
  br i1 %cmp, label %do.end40, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end40:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, i32 noundef %call36) #10
  br label %out

out:                                              ; preds = %do.end40, %if.end19.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %out ], [ -12, %do.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl12xx_acx_config_hangover(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hangover = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body4, !prof !472

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_acx_config_hangover.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_acx_config_hangover, %if.then12)) #6
          to label %do.end15 [label %if.then12], !srcloc !473

if.then12:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_acx_config_hangover.__UNIQUE_ID_ddebug400, ptr noundef nonnull @.str.164) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body4, %entry.do.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #9
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %do.end15.out_crit_edge, label %if.end19

do.end15.out_crit_edge:                           ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end19:                                         ; preds = %do.end15
  %2 = ptrtoint ptr %hangover to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %hangover, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %recover_time20 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %recover_time20 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %recover_time20, align 8
  %hangover_period = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 15, i32 1
  %6 = ptrtoint ptr %hangover_period to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hangover_period, align 1
  %hangover_period21 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %hangover_period21 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %hangover_period21, align 4
  %dynamic_mode = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 15, i32 2
  %9 = ptrtoint ptr %dynamic_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dynamic_mode, align 1
  %dynamic_mode22 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %dynamic_mode22 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %dynamic_mode22, align 1
  %early_termination_mode = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 15, i32 3
  %12 = ptrtoint ptr %early_termination_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %early_termination_mode, align 1
  %early_termination_mode23 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %early_termination_mode23 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %early_termination_mode23, align 2
  %max_period = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 15, i32 4
  %15 = ptrtoint ptr %max_period to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %max_period, align 1
  %max_period24 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %max_period24 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %max_period24, align 1
  %min_period = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 15, i32 5
  %18 = ptrtoint ptr %min_period to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %min_period, align 1
  %min_period25 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %min_period25 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %min_period25, align 8
  %increase_delta = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 15, i32 6
  %21 = ptrtoint ptr %increase_delta to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %increase_delta, align 1
  %increase_delta26 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, ptr %call7.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %increase_delta26 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %increase_delta26, align 1
  %decrease_delta = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 15, i32 7
  %24 = ptrtoint ptr %decrease_delta to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %decrease_delta, align 1
  %decrease_delta27 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, ptr %call7.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %decrease_delta27 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %decrease_delta27, align 2
  %quiet_time = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 15, i32 8
  %27 = ptrtoint ptr %quiet_time to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %quiet_time, align 1
  %quiet_time28 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, ptr %call7.i.i, i32 0, i32 9
  %29 = ptrtoint ptr %quiet_time28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %quiet_time28, align 1
  %increase_time = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 15, i32 9
  %30 = ptrtoint ptr %increase_time to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %increase_time, align 1
  %increase_time29 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, ptr %call7.i.i, i32 0, i32 10
  %32 = ptrtoint ptr %increase_time29 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %increase_time29, align 4
  %window_size = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 15, i32 10
  %33 = ptrtoint ptr %window_size to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %window_size, align 1
  %window_size30 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, ptr %call7.i.i, i32 0, i32 11
  %35 = ptrtoint ptr %window_size30 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %window_size30, align 1
  %call31 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 66, ptr noundef nonnull %call7.i.i, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %do.end35, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end35:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, i32 noundef %call31) #10
  br label %out

out:                                              ; preds = %do.end35, %if.end19.out_crit_edge, %do.end15.out_crit_edge
  %ret.0 = phi i32 [ %call31, %do.end35 ], [ %call31, %if.end19.out_crit_edge ], [ -12, %do.end15.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlcore_acx_average_rssi(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, ptr nocapture noundef writeonly %avg_rssi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !472

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_acx_average_rssi.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_acx_average_rssi, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !473

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_acx_average_rssi.__UNIQUE_ID_ddebug401, ptr noundef nonnull @.str.167) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 20) #9
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id19 = getelementptr inbounds %struct.acx_roaming_stats, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id19, align 8
  %call20 = tail call i32 @wl1271_cmd_interrogate(ptr noundef %wl, i16 noundef zeroext 26, ptr noundef nonnull %call7.i.i, i32 noundef 20, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %call20) #10
  br label %out

if.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %rssi_beacon = getelementptr inbounds %struct.acx_roaming_stats, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %rssi_beacon to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rssi_beacon, align 1
  %7 = ptrtoint ptr %avg_rssi to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %avg_rssi, align 1
  br label %out

out:                                              ; preds = %if.end27, %do.end24, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ -12, %do.end24 ], [ %call20, %if.end27 ], [ -12, %do.end14.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_default_rx_filter_enable(ptr noundef %wl, i1 noundef zeroext %enable, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end16_crit_edge, label %do.body3, !prof !472

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_default_rx_filter_enable.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_default_rx_filter_enable, %if.then12)) #6
          to label %do.end16 [label %if.then12], !srcloc !473

if.then12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i1 %enable to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_default_rx_filter_enable.__UNIQUE_ID_ddebug402, ptr noundef nonnull @.str.170, i32 noundef %conv, i32 noundef %action) #6
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body3, %entry.do.end16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #9
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %do.end16.cleanup_crit_edge, label %if.end20

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %do.end16
  %enable23 = getelementptr inbounds %struct.acx_default_rx_filter, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %enable23 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %enable23, align 8
  %conv24 = trunc i32 %action to i8
  %default_action = getelementptr inbounds %struct.acx_default_rx_filter, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %default_action to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv24, ptr %default_action, align 1
  %call25 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 36, ptr noundef nonnull %call7.i.i, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %do.end30, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end30:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, i32 noundef %call25) #10
  br label %out

out:                                              ; preds = %do.end30, %if.end20.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end16.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %out ], [ -12, %do.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_acx_set_rx_filter(ptr noundef %wl, i8 noundef zeroext %index, i1 noundef zeroext %enable, ptr noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %tobool1.not = icmp eq ptr %filter, null
  %spec.select = and i1 %tobool1.not, %enable
  br i1 %spec.select, label %do.end, label %entry.if.end_crit_edge, !prof !476

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1798, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %conv = zext i8 %index to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %index)
  %cmp = icmp ugt i8 %index, 4
  br i1 %cmp, label %do.end39, label %if.end.if.end45_crit_edge, !prof !476

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

do.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1799, i32 noundef 9, ptr noundef null) #6
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.end.if.end45_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool54.not = icmp eq i32 %and, 0
  br i1 %tobool54.not, label %if.end45.do.end81_crit_edge, label %do.body62, !prof !472

if.end45.do.end81_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

do.body62:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_set_rx_filter.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_set_rx_filter, %if.then72)) #6
          to label %do.end81 [label %if.then72], !srcloc !473

if.then72:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  %conv75 = zext i1 %enable to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_set_rx_filter.__UNIQUE_ID_ddebug403, ptr noundef nonnull @.str.173, i32 noundef %conv, i32 noundef %conv75, ptr noundef %filter) #6
  br label %do.end81

do.end81:                                         ; preds = %if.then72, %do.body62, %if.end45.do.end81_crit_edge
  br i1 %enable, label %if.then83, label %do.end81.if.end115_crit_edge

do.end81.if.end115_crit_edge:                     ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

if.then83:                                        ; preds = %do.end81
  %call84 = tail call i32 @wl1271_rx_filter_get_fields_size(ptr noundef %filter) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %1 = load i32, ptr @wl12xx_debug_level, align 4
  %and86 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.then83.if.end115_crit_edge, label %do.body95, !prof !472

if.then83.if.end115_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

do.body95:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_set_rx_filter.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_set_rx_filter, %if.then107)) #6
          to label %if.end115 [label %if.then107], !srcloc !473

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %filter to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %filter, align 4
  %conv108 = zext i8 %3 to i32
  %num_fields = getelementptr inbounds %struct.wl12xx_rx_filter, ptr %filter, i32 0, i32 1
  %4 = ptrtoint ptr %num_fields to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_fields, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_acx_set_rx_filter.__UNIQUE_ID_ddebug404, ptr noundef nonnull @.str.174, i32 noundef %conv108, i32 noundef %5, i32 noundef %call84) #6
  br label %if.end115

if.end115:                                        ; preds = %if.then107, %do.body95, %if.then83.if.end115_crit_edge, %do.end81.if.end115_crit_edge
  %fields_size.0 = phi i32 [ %call84, %if.then107 ], [ %call84, %if.then83.if.end115_crit_edge ], [ 0, %do.end81.if.end115_crit_edge ], [ %call84, %do.body95 ]
  %add116 = add i32 %fields_size.0, 15
  %and117 = and i32 %add116, -4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and117, i32 noundef 3520) #11
  %tobool119.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool119.not, label %if.end115.cleanup_crit_edge, label %if.end121

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end121:                                        ; preds = %if.end115
  %enable124 = getelementptr inbounds %struct.acx_rx_filter_cfg, ptr %call9.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %enable124 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %enable124, align 8
  %index125 = getelementptr inbounds %struct.acx_rx_filter_cfg, ptr %call9.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %index125 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %index, ptr %index125, align 1
  br i1 %enable, label %if.then127, label %if.end121.do.body134_crit_edge

if.end121.do.body134_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body134

if.then127:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  %num_fields128 = getelementptr inbounds %struct.wl12xx_rx_filter, ptr %filter, i32 0, i32 1
  %8 = ptrtoint ptr %num_fields128 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_fields128, align 4
  %conv129 = trunc i32 %9 to i8
  %num_fields130 = getelementptr inbounds %struct.acx_rx_filter_cfg, ptr %call9.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %num_fields130 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv129, ptr %num_fields130, align 1
  %11 = ptrtoint ptr %filter to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %filter, align 4
  %action132 = getelementptr inbounds %struct.acx_rx_filter_cfg, ptr %call9.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %action132 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %action132, align 2
  %fields = getelementptr inbounds %struct.acx_rx_filter_cfg, ptr %call9.i.i, i32 0, i32 5
  tail call void @wl1271_rx_filter_flatten_fields(ptr noundef %filter, ptr noundef %fields) #6
  br label %do.body134

do.body134:                                       ; preds = %if.then127, %if.end121.do.body134_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %14 = load i32, ptr @wl12xx_debug_level, align 4
  %and135 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %do.body134.do.end159_crit_edge, label %do.body138

do.body134.do.end159_crit_edge:                   ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end159

do.body138:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_acx_set_rx_filter.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_acx_set_rx_filter, %if.then150)) #6
          to label %do.end159 [label %if.then150], !srcloc !473

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #8
  %15 = tail call i32 @llvm.umin.i32(i32 %and117, i32 1024)
  tail call void @print_hex_dump(ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.175, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call9.i.i, i32 noundef %15, i1 noundef zeroext false) #6
  br label %do.end159

do.end159:                                        ; preds = %if.then150, %do.body138, %do.body134.do.end159_crit_edge
  %call160 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext 37, ptr noundef nonnull %call9.i.i, i32 noundef %and117) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %cmp161 = icmp slt i32 %call160, 0
  br i1 %cmp161, label %do.end166, label %do.end159.out_crit_edge

do.end159.out_crit_edge:                          ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end166:                                        ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #8
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %call160) #10
  br label %out

out:                                              ; preds = %do.end166, %do.end159.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end115.cleanup_crit_edge
  %retval.0 = phi i32 [ %call160, %out ], [ -12, %if.end115.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_rx_filter_get_fields_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1271_rx_filter_flatten_fields(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 227)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 227)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !195, !196, !197, !199, !200, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !255, !256, !257, !258, !260, !261, !262, !264, !265, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !361, !362, !363, !365, !366, !367, !369, !370, !371, !373, !374, !375, !376, !378, !379, !380, !382, !383, !384, !386, !387, !388, !390, !391, !392, !394, !395, !396, !398, !399, !400, !402, !403, !404, !406, !407, !408, !410, !411, !412, !414, !415, !416, !418, !419, !420, !422, !423, !424, !426, !427, !428, !430, !431, !432, !434, !435, !436, !438, !439, !440, !442, !443, !444, !446, !447, !448, !450, !451, !452, !454, !455, !457, !458, !459, !461, !462}
!llvm.module.flags = !{!463, !464, !465, !466, !467, !468, !469, !470}
!llvm.ident = !{!471}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 28, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wl1271_acx_wake_up_conditions.__UNIQUE_ID_ddebug350, !1, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 44, i32 3}
!8 = !{ptr @wl1271_acx_wake_up_conditions._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @wl1271_acx_wake_up_conditions._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 58, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @wl1271_acx_sleep_auth.__UNIQUE_ID_ddebug351, !11, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 70, i32 3}
!16 = !{ptr @wl1271_acx_sleep_auth._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @wl1271_acx_sleep_auth._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_wl1271_acx_sleep_auth, !19, !"__ksymtab_wl1271_acx_sleep_auth", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 80, i32 1}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 88, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @wl1271_acx_tx_power.__UNIQUE_ID_ddebug352, !21, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 104, i32 3}
!26 = !{ptr @wl1271_acx_tx_power._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @wl1271_acx_tx_power._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 118, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @wl1271_acx_feature_cfg.__UNIQUE_ID_ddebug353, !29, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 134, i32 3}
!34 = !{ptr @wl1271_acx_feature_cfg._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @wl1271_acx_feature_cfg._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 148, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @wl1271_acx_mem_map.__UNIQUE_ID_ddebug354, !37, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 163, i32 2}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @wl1271_acx_rx_msdu_life_time.__UNIQUE_ID_ddebug355, !41, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 175, i32 3}
!46 = !{ptr @wl1271_acx_rx_msdu_life_time._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @wl1271_acx_rx_msdu_life_time._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 190, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @wl1271_acx_slot.__UNIQUE_ID_ddebug356, !49, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 204, i32 3}
!54 = !{ptr @wl1271_acx_slot._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @wl1271_acx_slot._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 219, i32 2}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @wl1271_acx_group_address_tbl.__UNIQUE_ID_ddebug357, !57, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 236, i32 3}
!62 = !{ptr @wl1271_acx_group_address_tbl._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @wl1271_acx_group_address_tbl._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 257, i32 2}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @wl1271_acx_service_period_timeout.__UNIQUE_ID_ddebug358, !65, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 266, i32 3}
!70 = !{ptr @wl1271_acx_service_period_timeout._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @wl1271_acx_service_period_timeout._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 289, i32 2}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @wl1271_acx_rts_threshold.__UNIQUE_ID_ddebug359, !73, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 302, i32 3}
!78 = !{ptr @wl1271_acx_rts_threshold._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @wl1271_acx_rts_threshold._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 317, i32 2}
!82 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @wl1271_acx_dco_itrim_params.__UNIQUE_ID_ddebug360, !81, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 331, i32 3}
!86 = !{ptr @wl1271_acx_dco_itrim_params._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @wl1271_acx_dco_itrim_params._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 346, i32 2}
!90 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @wl1271_acx_beacon_filter_opt.__UNIQUE_ID_ddebug361, !89, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 371, i32 3}
!94 = !{ptr @wl1271_acx_beacon_filter_opt._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @wl1271_acx_beacon_filter_opt._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 388, i32 2}
!98 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @wl1271_acx_beacon_filter_table.__UNIQUE_ID_ddebug362, !97, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 427, i32 3}
!102 = !{ptr @wl1271_acx_beacon_filter_table._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @wl1271_acx_beacon_filter_table._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 446, i32 2}
!106 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @wl1271_acx_conn_monit_params.__UNIQUE_ID_ddebug363, !105, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!108 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 467, i32 3}
!112 = !{ptr @wl1271_acx_conn_monit_params._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @wl1271_acx_conn_monit_params._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 483, i32 2}
!116 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @wl1271_acx_sg_enable.__UNIQUE_ID_ddebug364, !115, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 498, i32 3}
!120 = !{ptr @wl1271_acx_sg_enable._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @wl1271_acx_sg_enable._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 513, i32 2}
!124 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @wl12xx_acx_sg_cfg.__UNIQUE_ID_ddebug365, !123, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!126 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 528, i32 3}
!128 = !{ptr @wl12xx_acx_sg_cfg._entry, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @wl12xx_acx_sg_cfg._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 542, i32 2}
!132 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @wl1271_acx_cca_threshold.__UNIQUE_ID_ddebug366, !131, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!134 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 556, i32 3}
!136 = !{ptr @wl1271_acx_cca_threshold._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @wl1271_acx_cca_threshold._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 568, i32 2}
!140 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @wl1271_acx_bcn_dtim_options.__UNIQUE_ID_ddebug367, !139, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!142 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 584, i32 3}
!144 = !{ptr @wl1271_acx_bcn_dtim_options._entry, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @wl1271_acx_bcn_dtim_options._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.57, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 598, i32 2}
!148 = !{ptr @.str.58, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @wl1271_acx_aid.__UNIQUE_ID_ddebug368, !147, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!150 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 611, i32 3}
!152 = !{ptr @wl1271_acx_aid._entry, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @wl1271_acx_aid._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.60, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 625, i32 2}
!156 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @wl1271_acx_event_mbox_mask.__UNIQUE_ID_ddebug369, !155, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!158 = !{ptr @.str.62, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 640, i32 3}
!160 = !{ptr @wl1271_acx_event_mbox_mask._entry, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @wl1271_acx_event_mbox_mask._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.63, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 655, i32 2}
!164 = !{ptr @.str.64, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @wl1271_acx_set_preamble.__UNIQUE_ID_ddebug370, !163, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!166 = !{ptr @.str.65, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 668, i32 3}
!168 = !{ptr @wl1271_acx_set_preamble._entry, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @wl1271_acx_set_preamble._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.66, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 683, i32 2}
!172 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @wl1271_acx_cts_protect.__UNIQUE_ID_ddebug371, !171, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!174 = !{ptr @.str.68, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 696, i32 3}
!176 = !{ptr @wl1271_acx_cts_protect._entry, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @wl1271_acx_cts_protect._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.69, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 709, i32 2}
!180 = !{ptr @.str.70, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @wl1271_acx_statistics.__UNIQUE_ID_ddebug372, !179, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!182 = !{ptr @.str.71, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 715, i32 3}
!184 = !{ptr @wl1271_acx_statistics._entry, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @wl1271_acx_statistics._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.72, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 728, i32 2}
!188 = !{ptr @.str.73, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @wl1271_acx_sta_rate_policies.__UNIQUE_ID_ddebug373, !187, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!190 = !{ptr @.str.74, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 737, i32 2}
!192 = !{ptr @wl1271_acx_sta_rate_policies.__UNIQUE_ID_ddebug374, !191, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!193 = !{ptr @.str.75, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 749, i32 3}
!195 = !{ptr @wl1271_acx_sta_rate_policies._entry, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @wl1271_acx_sta_rate_policies._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @wl1271_acx_sta_rate_policies._entry.76, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 765, i32 3}
!199 = !{ptr @wl1271_acx_sta_rate_policies._entry_ptr.77, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @wl1271_acx_sta_rate_policies._entry.78, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 783, i32 3}
!202 = !{ptr @wl1271_acx_sta_rate_policies._entry_ptr.79, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.80, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 798, i32 2}
!205 = !{ptr @.str.81, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @wl1271_acx_ap_rate_policy.__UNIQUE_ID_ddebug375, !204, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!207 = !{ptr @.str.82, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 816, i32 3}
!209 = !{ptr @wl1271_acx_ap_rate_policy._entry, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @wl1271_acx_ap_rate_policy._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.83, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 831, i32 2}
!213 = !{ptr @.str.84, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @wl1271_acx_ac_cfg.__UNIQUE_ID_ddebug376, !212, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!215 = !{ptr @.str.85, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 850, i32 3}
!217 = !{ptr @wl1271_acx_ac_cfg._entry, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @wl1271_acx_ac_cfg._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.86, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 867, i32 2}
!221 = !{ptr @.str.87, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @wl1271_acx_tid_cfg.__UNIQUE_ID_ddebug377, !220, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!223 = !{ptr @.str.88, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 887, i32 3}
!225 = !{ptr @wl1271_acx_tid_cfg._entry, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @wl1271_acx_tid_cfg._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.89, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 908, i32 2}
!229 = !{ptr @.str.90, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @wl1271_acx_frag_threshold.__UNIQUE_ID_ddebug378, !228, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!231 = !{ptr @.str.91, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 920, i32 3}
!233 = !{ptr @wl1271_acx_frag_threshold._entry, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @wl1271_acx_frag_threshold._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.92, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 934, i32 2}
!237 = !{ptr @.str.93, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @wl1271_acx_tx_config_options.__UNIQUE_ID_ddebug379, !236, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!239 = !{ptr @.str.94, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 947, i32 3}
!241 = !{ptr @wl1271_acx_tx_config_options._entry, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @wl1271_acx_tx_config_options._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.95, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 962, i32 2}
!245 = !{ptr @.str.96, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @wl12xx_acx_mem_cfg.__UNIQUE_ID_ddebug380, !244, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!247 = !{ptr @.str.97, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 987, i32 3}
!249 = !{ptr @wl12xx_acx_mem_cfg._entry, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @wl12xx_acx_mem_cfg._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @__ksymtab_wl12xx_acx_mem_cfg, !252, !"__ksymtab_wl12xx_acx_mem_cfg", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 995, i32 1}
!253 = !{ptr @.str.98, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1004, i32 3}
!255 = !{ptr @.str.99, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @wl1271_acx_init_mem_config._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @wl1271_acx_init_mem_config._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.101, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1012, i32 3}
!260 = !{ptr @wl1271_acx_init_mem_config._entry.100, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @wl1271_acx_init_mem_config._entry_ptr.102, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.103, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1021, i32 2}
!264 = !{ptr @wl1271_acx_init_mem_config.__UNIQUE_ID_ddebug381, !263, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!265 = !{ptr @__ksymtab_wl1271_acx_init_mem_config, !266, !"__ksymtab_wl1271_acx_init_mem_config", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1026, i32 1}
!267 = !{ptr @.str.104, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1033, i32 2}
!269 = !{ptr @.str.105, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @wl1271_acx_init_rx_interrupt.__UNIQUE_ID_ddebug382, !268, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!271 = !{ptr @.str.106, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1049, i32 3}
!273 = !{ptr @wl1271_acx_init_rx_interrupt._entry, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @wl1271_acx_init_rx_interrupt._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.107, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1064, i32 2}
!277 = !{ptr @.str.108, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @wl1271_acx_bet_enable.__UNIQUE_ID_ddebug383, !276, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!279 = !{ptr @.str.109, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1081, i32 3}
!281 = !{ptr @wl1271_acx_bet_enable._entry, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @wl1271_acx_bet_enable._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.110, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1096, i32 2}
!285 = !{ptr @.str.111, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @wl1271_acx_arp_ip_filter.__UNIQUE_ID_ddebug384, !284, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!287 = !{ptr @.str.112, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1114, i32 3}
!289 = !{ptr @wl1271_acx_arp_ip_filter._entry, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @wl1271_acx_arp_ip_filter._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.113, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1129, i32 2}
!293 = !{ptr @.str.114, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @wl1271_acx_pm_config.__UNIQUE_ID_ddebug385, !292, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!295 = !{ptr @.str.115, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1142, i32 3}
!297 = !{ptr @wl1271_acx_pm_config._entry, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @wl1271_acx_pm_config._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @__ksymtab_wl1271_acx_pm_config, !300, !"__ksymtab_wl1271_acx_pm_config", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1150, i32 1}
!301 = !{ptr @.str.116, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1158, i32 2}
!303 = !{ptr @.str.117, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @wl1271_acx_keep_alive_mode.__UNIQUE_ID_ddebug386, !302, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!305 = !{ptr @.str.118, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1171, i32 3}
!307 = !{ptr @wl1271_acx_keep_alive_mode._entry, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @wl1271_acx_keep_alive_mode._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.119, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1186, i32 2}
!311 = !{ptr @.str.120, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @wl1271_acx_keep_alive_config.__UNIQUE_ID_ddebug387, !310, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!313 = !{ptr @.str.121, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1203, i32 3}
!315 = !{ptr @wl1271_acx_keep_alive_config._entry, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @wl1271_acx_keep_alive_config._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.122, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1218, i32 2}
!319 = !{ptr @.str.123, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @wl1271_acx_rssi_snr_trigger.__UNIQUE_ID_ddebug388, !318, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!321 = !{ptr @.str.124, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1244, i32 3}
!323 = !{ptr @wl1271_acx_rssi_snr_trigger._entry, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @wl1271_acx_rssi_snr_trigger._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.125, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1260, i32 2}
!327 = !{ptr @.str.126, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @wl1271_acx_rssi_snr_avg_weights.__UNIQUE_ID_ddebug389, !326, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!329 = !{ptr @.str.127, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1276, i32 3}
!331 = !{ptr @wl1271_acx_rssi_snr_avg_weights._entry, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @wl1271_acx_rssi_snr_avg_weights._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.128, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1293, i32 2}
!335 = !{ptr @.str.129, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @wl1271_acx_set_ht_capabilities.__UNIQUE_ID_ddebug390, !334, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!337 = !{ptr @.str.130, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1323, i32 3}
!339 = !{ptr @wl1271_acx_set_ht_capabilities._entry, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @wl1271_acx_set_ht_capabilities._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @__ksymtab_wl1271_acx_set_ht_capabilities, !342, !"__ksymtab_wl1271_acx_set_ht_capabilities", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1331, i32 1}
!343 = !{ptr @.str.131, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1341, i32 2}
!345 = !{ptr @.str.132, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @wl1271_acx_set_ht_information.__UNIQUE_ID_ddebug391, !344, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!347 = !{ptr @.str.133, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1361, i32 3}
!349 = !{ptr @wl1271_acx_set_ht_information._entry, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @wl1271_acx_set_ht_information._entry_ptr, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.134, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1377, i32 2}
!353 = !{ptr @.str.135, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @wl12xx_acx_set_ba_initiator_policy.__UNIQUE_ID_ddebug392, !352, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!355 = !{ptr @.str.136, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1396, i32 3}
!357 = !{ptr @wl12xx_acx_set_ba_initiator_policy._entry, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @wl12xx_acx_set_ba_initiator_policy._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.137, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1413, i32 2}
!361 = !{ptr @.str.138, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @wl12xx_acx_set_ba_receiver_session.__UNIQUE_ID_ddebug393, !360, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!363 = !{ptr @.str.139, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1431, i32 3}
!365 = !{ptr @wl12xx_acx_set_ba_receiver_session._entry, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @wl12xx_acx_set_ba_receiver_session._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.141, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1437, i32 3}
!369 = !{ptr @wl12xx_acx_set_ba_receiver_session._entry.140, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @wl12xx_acx_set_ba_receiver_session._entry_ptr.142, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.143, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1465, i32 3}
!373 = !{ptr @.str.144, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @wl12xx_acx_tsf_info._entry, !372, !"_entry", i1 false, i1 false}
!375 = !{ptr @wl12xx_acx_tsf_info._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.145, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1484, i32 2}
!378 = !{ptr @.str.146, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @wl1271_acx_ps_rx_streaming.__UNIQUE_ID_ddebug394, !377, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!380 = !{ptr @.str.147, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1517, i32 4}
!382 = !{ptr @wl1271_acx_ps_rx_streaming._entry, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @wl1271_acx_ps_rx_streaming._entry_ptr, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.148, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1531, i32 2}
!386 = !{ptr @.str.149, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @wl1271_acx_ap_max_tx_retry.__UNIQUE_ID_ddebug395, !385, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!388 = !{ptr @.str.150, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1542, i32 3}
!390 = !{ptr @wl1271_acx_ap_max_tx_retry._entry, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @wl1271_acx_ap_max_tx_retry._entry_ptr, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.151, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1556, i32 2}
!394 = !{ptr @.str.152, !393, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @wl12xx_acx_config_ps.__UNIQUE_ID_ddebug396, !393, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!396 = !{ptr @.str.153, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1572, i32 3}
!398 = !{ptr @wl12xx_acx_config_ps._entry, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @wl12xx_acx_config_ps._entry_ptr, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.154, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1587, i32 2}
!402 = !{ptr @.str.155, !401, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @wl1271_acx_set_inconnection_sta.__UNIQUE_ID_ddebug397, !401, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!404 = !{ptr @.str.156, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1599, i32 3}
!406 = !{ptr @wl1271_acx_set_inconnection_sta._entry, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @wl1271_acx_set_inconnection_sta._entry_ptr, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.157, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1613, i32 2}
!410 = !{ptr @.str.158, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @wl1271_acx_fm_coex.__UNIQUE_ID_ddebug398, !409, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!412 = !{ptr @.str.159, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1639, i32 3}
!414 = !{ptr @wl1271_acx_fm_coex._entry, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @wl1271_acx_fm_coex._entry_ptr, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.160, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1654, i32 2}
!418 = !{ptr @.str.161, !417, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @wl12xx_acx_set_rate_mgmt_params.__UNIQUE_ID_ddebug399, !417, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!420 = !{ptr @.str.162, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1681, i32 3}
!422 = !{ptr @wl12xx_acx_set_rate_mgmt_params._entry, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @wl12xx_acx_set_rate_mgmt_params._entry_ptr, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.163, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1696, i32 2}
!426 = !{ptr @.str.164, !425, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @wl12xx_acx_config_hangover.__UNIQUE_ID_ddebug400, !425, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!428 = !{ptr @.str.165, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1720, i32 3}
!430 = !{ptr @wl12xx_acx_config_hangover._entry, !429, !"_entry", i1 false, i1 false}
!431 = !{ptr @wl12xx_acx_config_hangover._entry_ptr, !429, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @.str.166, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1736, i32 2}
!434 = !{ptr @.str.167, !433, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @wlcore_acx_average_rssi.__UNIQUE_ID_ddebug401, !433, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!436 = !{ptr @.str.168, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1748, i32 3}
!438 = !{ptr @wlcore_acx_average_rssi._entry, !437, !"_entry", i1 false, i1 false}
!439 = !{ptr @wlcore_acx_average_rssi._entry_ptr, !437, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.169, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1767, i32 2}
!442 = !{ptr @.str.170, !441, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @wl1271_acx_default_rx_filter_enable.__UNIQUE_ID_ddebug402, !441, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!444 = !{ptr @.str.171, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1780, i32 3}
!446 = !{ptr @wl1271_acx_default_rx_filter_enable._entry, !445, !"_entry", i1 false, i1 false}
!447 = !{ptr @wl1271_acx_default_rx_filter_enable._entry_ptr, !445, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.172, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1801, i32 2}
!450 = !{ptr @.str.173, !449, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @wl1271_acx_set_rx_filter.__UNIQUE_ID_ddebug403, !449, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!452 = !{ptr @.str.174, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1808, i32 3}
!454 = !{ptr @wl1271_acx_set_rx_filter.__UNIQUE_ID_ddebug404, !453, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!455 = !{ptr @.str.175, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1827, i32 2}
!457 = !{ptr @wl1271_acx_set_rx_filter.__UNIQUE_ID_ddebug407, !456, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!458 = !{ptr @.str.176, !456, !"<string literal>", i1 false, i1 false}
!459 = !{ptr @.str.177, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/net/wireless/ti/wlcore/acx.c", i32 1831, i32 3}
!461 = !{ptr @wl1271_acx_set_rx_filter._entry, !460, !"_entry", i1 false, i1 false}
!462 = !{ptr @wl1271_acx_set_rx_filter._entry_ptr, !460, !"_entry_ptr", i1 false, i1 false}
!463 = !{i32 1, !"wchar_size", i32 2}
!464 = !{i32 1, !"min_enum_size", i32 4}
!465 = !{i32 8, !"branch-target-enforcement", i32 0}
!466 = !{i32 8, !"sign-return-address", i32 0}
!467 = !{i32 8, !"sign-return-address-all", i32 0}
!468 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!469 = !{i32 7, !"uwtable", i32 1}
!470 = !{i32 7, !"frame-pointer", i32 2}
!471 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!472 = !{!"branch_weights", i32 2000, i32 1}
!473 = !{i64 2148376747, i64 2148376752, i64 2148376765, i64 2148376809, i64 2148376843, i64 2148376864}
!474 = !{i64 2157684320, i64 2157684824, i64 2157684357, i64 2157684413, i64 2157684447, i64 2157684471, i64 2157684512, i64 2157684533, i64 2157684561, i64 2157684595}
!475 = !{i8 0, i8 2}
!476 = !{!"branch_weights", i32 1, i32 2000}
