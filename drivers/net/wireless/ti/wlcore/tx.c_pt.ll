; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wlcore/tx.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wlcore/tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+wl1271_free_tx_id\22, \22a\22\09"
module asm "\09.weak\09__crc_wl1271_free_tx_id\09\09\09\09"
module asm "\09.long\09__crc_wl1271_free_tx_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wl1271_free_tx_id:\09\09\09\09\09"
module asm "\09.asciz \09\22wl1271_free_tx_id\22\09\09\09\09\09"
module asm "__kstrtabns_wl1271_free_tx_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wl12xx_is_dummy_packet\22, \22a\22\09"
module asm "\09.weak\09__crc_wl12xx_is_dummy_packet\09\09\09\09"
module asm "\09.long\09__crc_wl12xx_is_dummy_packet\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wl12xx_is_dummy_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22wl12xx_is_dummy_packet\22\09\09\09\09\09"
module asm "__kstrtabns_wl12xx_is_dummy_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wlcore_calc_packet_alignment\22, \22a\22\09"
module asm "\09.weak\09__crc_wlcore_calc_packet_alignment\09\09\09\09"
module asm "\09.long\09__crc_wlcore_calc_packet_alignment\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wlcore_calc_packet_alignment:\09\09\09\09\09"
module asm "\09.asciz \09\22wlcore_calc_packet_alignment\22\09\09\09\09\09"
module asm "__kstrtabns_wlcore_calc_packet_alignment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wlcore_tx_complete\22, \22a\22\09"
module asm "\09.weak\09__crc_wlcore_tx_complete\09\09\09\09"
module asm "\09.long\09__crc_wlcore_tx_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wlcore_tx_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22wlcore_tx_complete\22\09\09\09\09\09"
module asm "__kstrtabns_wlcore_tx_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wl1271_tx_flush\22, \22a\22\09"
module asm "\09.weak\09__crc_wl1271_tx_flush\09\09\09\09"
module asm "\09.long\09__crc_wl1271_tx_flush\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wl1271_tx_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22wl1271_tx_flush\22\09\09\09\09\09"
module asm "__kstrtabns_wl1271_tx_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wl1271_tx_min_rate_get\22, \22a\22\09"
module asm "\09.weak\09__crc_wl1271_tx_min_rate_get\09\09\09\09"
module asm "\09.long\09__crc_wl1271_tx_min_rate_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wl1271_tx_min_rate_get:\09\09\09\09\09"
module asm "\09.asciz \09\22wl1271_tx_min_rate_get\22\09\09\09\09\09"
module asm "__kstrtabns_wl1271_tx_min_rate_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
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
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.wlcore_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.133, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
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
%struct.wl1271_tx_hw_descr = type { i16, %union.anon.137, i32, i16, i16, i8, i8, i8, %union.anon.138 }
%union.anon.137 = type { %struct.wl127x_tx_mem }
%struct.wl127x_tx_mem = type { i8, i8 }
%union.anon.138 = type { i8 }
%struct.anon.130 = type { i8, i8, i8, i8, i8, i8, i32 }
%struct.wl1271_if_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wl1271_acx_mem_map = type { %struct.acx_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.acx_header = type { %struct.wl1271_cmd_header, i16, i16 }
%struct.wl1271_cmd_header = type { i16, i16, [0 x i8] }
%struct.wl1271_tx_hw_res_if = type { i32, i32, [16 x %struct.wl1271_tx_hw_res_descr] }
%struct.wl1271_tx_hw_res_descr = type { i8, i8, i16, i32, i32, i8, i8, i8, i8 }

@__kstrtab_wl1271_free_tx_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_wl1271_free_tx_id = external dso_local constant [0 x i8], align 1
@__ksymtab_wl1271_free_tx_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wl1271_free_tx_id to i32), ptr @__kstrtab_wl1271_free_tx_id, ptr @__kstrtabns_wl1271_free_tx_id }, section "___ksymtab+wl1271_free_tx_id", align 4
@__kstrtab_wl12xx_is_dummy_packet = external dso_local constant [0 x i8], align 1
@__kstrtabns_wl12xx_is_dummy_packet = external dso_local constant [0 x i8], align 1
@__ksymtab_wl12xx_is_dummy_packet = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wl12xx_is_dummy_packet to i32), ptr @__kstrtab_wl12xx_is_dummy_packet, ptr @__kstrtabns_wl12xx_is_dummy_packet }, section "___ksymtab+wl12xx_is_dummy_packet", align 4
@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wl12xx_tx_get_hlid.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlcore\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl12xx_tx_get_hlid\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireless/ti/wlcore/tx.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wlcore: tx offchannel\0A\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_wlcore_calc_packet_alignment = external dso_local constant [0 x i8], align 1
@__kstrtabns_wlcore_calc_packet_alignment = external dso_local constant [0 x i8], align 1
@__ksymtab_wlcore_calc_packet_alignment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wlcore_calc_packet_alignment to i32), ptr @__kstrtab_wlcore_calc_packet_alignment, ptr @__kstrtabns_wlcore_calc_packet_alignment }, section "___ksymtab+wlcore_calc_packet_alignment", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wlcore_tx_complete.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wlcore_tx_complete\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"wlcore: tx_complete received, packets: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@wlcore_tx_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wlcore: WARNING TX result overflow from chipset: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wlcore_tx_complete._entry_ptr = internal global ptr @wlcore_tx_complete._entry, section ".printk_index", align 4
@__kstrtab_wlcore_tx_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_wlcore_tx_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_wlcore_tx_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wlcore_tx_complete to i32), ptr @__kstrtab_wlcore_tx_complete, ptr @__kstrtabns_wlcore_tx_complete }, section "___ksymtab+wlcore_tx_complete", align 4
@wl1271_tx_reset_link_queues.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl1271_tx_reset_link_queues\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wlcore: link freeing skb 0x%p\0A\00", [33 x i8] zeroinitializer }, align 32
@wl12xx_tx_reset.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 1, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl12xx_tx_reset\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wlcore: freeing skb 0x%p\0A\00", [38 x i8] zeroinitializer }, align 32
@wl1271_tx_flush.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 1, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl1271_tx_flush\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wlcore: flushing tx buffer: %d %d\0A\00", [61 x i8] zeroinitializer }, align 32
@wl1271_tx_flush.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 1, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wlcore: tx flush took %d ms\0A\00", [35 x i8] zeroinitializer }, align 32
@wl1271_tx_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014wlcore: WARNING Unable to flush all TX buffers, timed out (timeout %d ms\0A\00", [52 x i8] zeroinitializer }, align 32
@wl1271_tx_flush._entry_ptr = internal global ptr @wl1271_tx_flush._entry, section ".printk_index", align 4
@__kstrtab_wl1271_tx_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_wl1271_tx_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_wl1271_tx_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wl1271_tx_flush to i32), ptr @__kstrtab_wl1271_tx_flush, ptr @__kstrtabns_wl1271_tx_flush }, section "___ksymtab_gpl+wl1271_tx_flush", align 4
@__kstrtab_wl1271_tx_min_rate_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_wl1271_tx_min_rate_get = external dso_local constant [0 x i8], align 1
@__ksymtab_wl1271_tx_min_rate_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wl1271_tx_min_rate_get to i32), ptr @__kstrtab_wl1271_tx_min_rate_get, ptr @__kstrtabns_wl1271_tx_min_rate_get }, section "___ksymtab_gpl+wl1271_tx_min_rate_get", align 4
@wlcore_stop_queue_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wlcore_wake_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wlcore_stop_queues.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wlcore_wake_queues.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wl1271_skb_dequeue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wlcore_lnk_dequeue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wlcore_lnk_dequeue.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/ti/wlcore/wlcore_i.h\00", [54 x i8] zeroinitializer }, align 32
@wl1271_prepare_tx_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013wlcore: ERROR discarding null skb\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wl1271_prepare_tx_frame\00", [40 x i8] zeroinitializer }, align 32
@wl1271_prepare_tx_frame._entry_ptr = internal global ptr @wl1271_prepare_tx_frame._entry, section ".printk_index", align 4
@wl1271_prepare_tx_frame._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013wlcore: ERROR invalid hlid. dropping skb 0x%p\0A\00", [47 x i8] zeroinitializer }, align 32
@wl1271_prepare_tx_frame._entry_ptr.21 = internal global ptr @wl1271_prepare_tx_frame._entry.19, section ".printk_index", align 4
@wl1271_set_default_wep_key.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wl1271_set_default_wep_key\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wlcore: default wep key idx: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@wl1271_tx_allocate.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl1271_tx_allocate\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"wlcore: tx_allocate: size: %d, blocks: %d, id: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireless/ti/wlcore/io.h\00", [60 x i8] zeroinitializer }, align 32
@wl1271_tx_complete_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014wlcore: WARNING TX result illegal id: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wl1271_tx_complete_packet\00", [38 x i8] zeroinitializer }, align 32
@wl1271_tx_complete_packet._entry_ptr = internal global ptr @wl1271_tx_complete_packet._entry, section ".printk_index", align 4
@wl1271_tx_complete_packet.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"wlcore: tx status id %u skb 0x%p failures %u rate 0x%x status 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@switch.table.wlcore_tx_work_locked = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 2, i32 0, i32 1], [16 x i8] zeroinitializer }, align 32
@switch.table.wlcore_tx_work_locked.30 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 2, i32 0, i32 1], [16 x i8] zeroinitializer }, align 32
@switch.table.wl1271_skb_queue_head = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 2, i32 0, i32 1], [16 x i8] zeroinitializer }, align 32
@switch.table.wl1271_tx_allocate = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 2, i32 0, i32 1], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 4294967280, i64 4294967285]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 172, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 996, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1000, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1031, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1105, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1154, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1167, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1173, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [45 x i8] c"../drivers/net/wireless/ti/wlcore/wlcore_i.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 495, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 371, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 376, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 45, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 240, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [39 x i8] c"../drivers/net/wireless/ti/wlcore/io.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 51, i32 6 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 912, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [39 x i8] c"../drivers/net/wireless/ti/wlcore/tx.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 961, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [35 x i8] c"switch.table.wlcore_tx_work_locked\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [38 x i8] c"switch.table.wlcore_tx_work_locked.30\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [35 x i8] c"switch.table.wl1271_skb_queue_head\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [32 x i8] c"switch.table.wl1271_tx_allocate\00", align 1
@llvm.compiler.used = appending global [47 x ptr] [ptr @__ksymtab_wl1271_free_tx_id, ptr @__ksymtab_wl1271_tx_flush, ptr @__ksymtab_wl1271_tx_min_rate_get, ptr @__ksymtab_wl12xx_is_dummy_packet, ptr @__ksymtab_wlcore_calc_packet_alignment, ptr @__ksymtab_wlcore_tx_complete, ptr @wl1271_prepare_tx_frame._entry, ptr @wl1271_prepare_tx_frame._entry.19, ptr @wl1271_prepare_tx_frame._entry_ptr, ptr @wl1271_prepare_tx_frame._entry_ptr.21, ptr @wl1271_tx_complete_packet._entry, ptr @wl1271_tx_complete_packet._entry_ptr, ptr @wl1271_tx_flush._entry, ptr @wl1271_tx_flush._entry_ptr, ptr @wlcore_tx_complete._entry, ptr @wlcore_tx_complete._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @switch.table.wlcore_tx_work_locked, ptr @switch.table.wlcore_tx_work_locked.30, ptr @switch.table.wl1271_skb_queue_head, ptr @switch.table.wl1271_tx_allocate], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_tx_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_tx_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_prepare_tx_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_prepare_tx_frame._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_tx_complete_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wlcore_tx_work_locked to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wlcore_tx_work_locked.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wl1271_skb_queue_head to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wl1271_tx_allocate to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1271_free_tx_id(ptr noundef %wl, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_frames_map = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 57
  %rem.i = and i32 %id, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div6.i = lshr i32 %id, 5
  %add.ptr.i = getelementptr i32, ptr %tx_frames_map, i32 %div6.i
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %1, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %2 = and i32 %1, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %tx_frames_cnt = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 59
  %3 = ptrtoint ptr %tx_frames_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_frames_cnt, align 4
  %num_tx_desc = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 126
  %5 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_tx_desc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp eq i32 %4, %6
  br i1 %cmp, label %if.then3, label %if.then.if.end_crit_edge, !prof !97

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #10
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %arrayidx = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 58, i32 %id
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %tx_frames_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_frames_cnt, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %tx_frames_cnt, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @wl12xx_is_dummy_packet(ptr nocapture noundef readonly %wl, ptr noundef readnone %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dummy_packet = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 63
  %0 = ptrtoint ptr %dummy_packet to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dummy_packet, align 4
  %cmp = icmp eq ptr %1, %skb
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @wl12xx_tx_get_hlid(ptr nocapture noundef readonly %wl, ptr noundef %wlvif, ptr nocapture noundef readonly %skb, ptr noundef readonly %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bss_type = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 3
  %0 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bss_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  %flags.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 2
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not.i = icmp eq i32 %4, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %system_hlid.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 32
  br label %cleanup

if.end.i:                                         ; preds = %if.else.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 2
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.i.not.i.i = icmp eq i16 %9, 0
  %addr3.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %6, i32 0, i32 4
  %addr1.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %6, i32 0, i32 2
  %retval.0.i.i = select i1 %cmp.i.not.i.i, ptr %addr1.i.i, ptr %addr3.i.i
  %10 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %retval.0.i.i, align 4
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %if.else6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %bcast_hlid.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 8, i32 0, i32 1
  br label %cleanup

if.else6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %14 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cb.i, align 8
  %and = and i32 %15, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end23, label %do.body

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %16 = load i32, ptr @wl12xx_debug_level, align 4
  %and4 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body.do.end22_crit_edge, label %do.body9, !prof !98

do.body.do.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_tx_get_hlid.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_tx_get_hlid, %if.then18)) #10
          to label %do.end22 [label %if.then18], !srcloc !99

if.then18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_tx_get_hlid.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.3) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.body9, %do.body.do.end22_crit_edge
  %dev_hlid = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 7
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end22, %if.else6.i, %if.then5.i, %if.then2.i, %if.then.i
  %retval.0.in = phi ptr [ %dev_hlid, %do.end22 ], [ %17, %if.end23 ], [ %drv_priv.i, %if.then.i ], [ %bcast_hlid.i, %if.then5.i ], [ %13, %if.else6.i ], [ %system_hlid.i, %if.then2.i ]
  %18 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load1_noabort(i32 %18)
  %retval.0 = load i8, ptr %retval.0.in, align 1
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @wlcore_calc_packet_alignment(ptr nocapture noundef readonly %wl, i32 noundef %packet_length) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 8
  %2 = and i32 %1, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %.not = icmp eq i32 %2, 4
  %add = add i32 %packet_length, 3
  %and4 = and i32 %add, -4
  %add5 = add i32 %packet_length, 255
  %and6 = and i32 %add5, -256
  %retval.0 = select i1 %.not, i32 %and6, i32 %and4
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_tx_enabled_rates_get(ptr nocapture noundef readonly %wl, i32 noundef %rate_set, i32 noundef %rate_band) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %arrayidx = getelementptr %struct.wiphy, ptr %3, i32 0, i32 53, i32 %rate_band
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp30 = icmp sgt i32 %7, 0
  br i1 %cmp30, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %bit.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %enabled_rates.032 = phi i32 [ 0, %for.body.lr.ph ], [ %enabled_rates.1, %if.end.for.body_crit_edge ]
  %rate_set.addr.031 = phi i32 [ %rate_set, %for.body.lr.ph ], [ %shr, %if.end.for.body_crit_edge ]
  %and = and i32 %rate_set.addr.031, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitrates, align 4
  %hw_value = getelementptr %struct.ieee80211_rate, ptr %9, i32 %bit.033, i32 2
  %10 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %11 to i32
  %or = or i32 %enabled_rates.032, %conv
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %enabled_rates.1 = phi i32 [ %or, %if.then ], [ %enabled_rates.032, %for.body.if.end_crit_edge ]
  %shr = lshr i32 %rate_set.addr.031, 1
  %inc = add nuw nsw i32 %bit.033, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %rate_set.addr.0.lcssa = phi i32 [ %rate_set, %entry.for.end_crit_edge ], [ %shr, %if.end.for.end_crit_edge ]
  %enabled_rates.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %enabled_rates.1, %if.end.for.end_crit_edge ]
  %sub = sub i32 16, %7
  %shr3 = lshr i32 %rate_set.addr.0.lcssa, %sub
  %and8 = shl i32 %shr3, 13
  %12 = and i32 %and8, 8192
  %enabled_rates.3 = or i32 %12, %enabled_rates.0.lcssa
  %13 = shl i32 %shr3, 13
  %14 = and i32 %13, 16384
  %enabled_rates.3.1 = or i32 %14, %enabled_rates.3
  %15 = shl i32 %shr3, 13
  %16 = and i32 %15, 32768
  %enabled_rates.3.2 = or i32 %16, %enabled_rates.3.1
  %17 = shl i32 %shr3, 13
  %18 = and i32 %17, 65536
  %enabled_rates.3.3 = or i32 %18, %enabled_rates.3.2
  %19 = shl i32 %shr3, 13
  %20 = and i32 %19, 131072
  %enabled_rates.3.4 = or i32 %20, %enabled_rates.3.3
  %21 = shl i32 %shr3, 13
  %22 = and i32 %21, 262144
  %enabled_rates.3.5 = or i32 %22, %enabled_rates.3.4
  %23 = shl i32 %shr3, 13
  %24 = and i32 %23, 524288
  %enabled_rates.3.6 = or i32 %24, %enabled_rates.3.5
  %25 = shl i32 %shr3, 13
  %26 = and i32 %25, 1048576
  %enabled_rates.3.7 = or i32 %26, %enabled_rates.3.6
  %27 = shl i32 %shr3, 13
  %28 = and i32 %27, 2097152
  %enabled_rates.3.8 = or i32 %28, %enabled_rates.3.7
  %29 = shl i32 %shr3, 13
  %30 = and i32 %29, 4194304
  %enabled_rates.3.9 = or i32 %30, %enabled_rates.3.8
  %31 = shl i32 %shr3, 13
  %32 = and i32 %31, 8388608
  %enabled_rates.3.10 = or i32 %32, %enabled_rates.3.9
  %33 = shl i32 %shr3, 13
  %34 = and i32 %33, 16777216
  %enabled_rates.3.11 = or i32 %34, %enabled_rates.3.10
  %35 = shl i32 %shr3, 13
  %36 = and i32 %35, 33554432
  %enabled_rates.3.12 = or i32 %36, %enabled_rates.3.11
  %37 = shl i32 %shr3, 13
  %38 = and i32 %37, 67108864
  %enabled_rates.3.13 = or i32 %38, %enabled_rates.3.12
  %39 = shl i32 %shr3, 13
  %40 = and i32 %39, 134217728
  %enabled_rates.3.14 = or i32 %40, %enabled_rates.3.13
  %41 = shl i32 %shr3, 13
  %42 = and i32 %41, 268435456
  %enabled_rates.3.15 = or i32 %42, %enabled_rates.3.14
  ret i32 %enabled_rates.3.15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1271_handle_tx_low_watermark(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wlvif_list = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 39
  %0 = ptrtoint ptr %wlvif_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn29 = load ptr, ptr %wlvif_list, align 4
  %cmp.not31 = icmp eq ptr %.pn29, %wlvif_list
  br i1 %cmp.not31, label %entry.for.end15_crit_edge, label %for.cond2.preheader.lr.ph

entry.for.end15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end15

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %wl_lock.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 11
  br label %wlcore_tx_get_mac80211_queue.exit.i.i

wlcore_tx_get_mac80211_queue.exit.i.i:            ; preds = %for.inc.3.wlcore_tx_get_mac80211_queue.exit.i.i_crit_edge, %for.cond2.preheader.lr.ph
  %.pn32 = phi ptr [ %.pn29, %for.cond2.preheader.lr.ph ], [ %.pn, %for.inc.3.wlcore_tx_get_mac80211_queue.exit.i.i_crit_edge ]
  %wlvif.033 = getelementptr i8, ptr %.pn32, i32 -4
  %hw_queue_base.i.i.i = getelementptr i8, ptr %.pn32, i32 564
  %tx_queue_count = getelementptr i8, ptr %.pn32, i32 96
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wl_lock.i) #10
  %1 = ptrtoint ptr %hw_queue_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hw_queue_base.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %3 = ptrtoint ptr %wl_lock.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %wl_lock.i, align 4
  %4 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %wlcore_tx_get_mac80211_queue.exit.i.i.do.body5.i.i_crit_edge, label %wlcore_is_queue_stopped_by_reason.exit, !prof !97

wlcore_tx_get_mac80211_queue.exit.i.i.do.body5.i.i_crit_edge: ; preds = %wlcore_tx_get_mac80211_queue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %wlcore_tx_get_mac80211_queue.exit.i.i.3.do.body5.i.i_crit_edge, %wlcore_tx_get_mac80211_queue.exit.i.i.2.do.body5.i.i_crit_edge, %wlcore_tx_get_mac80211_queue.exit.i.i.1.do.body5.i.i_crit_edge, %wlcore_tx_get_mac80211_queue.exit.i.i.do.body5.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wlcore/tx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1306, 0\0A.popsection", ""() #10, !srcloc !100
  unreachable

wlcore_is_queue_stopped_by_reason.exit:           ; preds = %wlcore_tx_get_mac80211_queue.exit.i.i
  %add4.i.i.i = add i32 %2, 2
  %arrayidx.i.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 52, i32 %add4.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i, align 4
  %7 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.i.i.not = icmp eq i32 %7, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wl_lock.i, i32 noundef %call2.i) #10
  br i1 %tobool12.i.i.not, label %wlcore_is_queue_stopped_by_reason.exit.wlcore_tx_get_mac80211_queue.exit.i.i.1_crit_edge, label %land.lhs.true

wlcore_is_queue_stopped_by_reason.exit.wlcore_tx_get_mac80211_queue.exit.i.i.1_crit_edge: ; preds = %wlcore_is_queue_stopped_by_reason.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_tx_get_mac80211_queue.exit.i.i.1

land.lhs.true:                                    ; preds = %wlcore_is_queue_stopped_by_reason.exit
  %8 = ptrtoint ptr %tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %9)
  %cmp6 = icmp slt i32 %9, 33
  br i1 %cmp6, label %if.then, label %land.lhs.true.wlcore_tx_get_mac80211_queue.exit.i.i.1_crit_edge

land.lhs.true.wlcore_tx_get_mac80211_queue.exit.i.i.1_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_tx_get_mac80211_queue.exit.i.i.1

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @wlcore_wake_queue(ptr noundef %wl, ptr noundef %wlvif.033, i8 noundef zeroext 0, i32 noundef 0)
  br label %wlcore_tx_get_mac80211_queue.exit.i.i.1

wlcore_tx_get_mac80211_queue.exit.i.i.1:          ; preds = %if.then, %land.lhs.true.wlcore_tx_get_mac80211_queue.exit.i.i.1_crit_edge, %wlcore_is_queue_stopped_by_reason.exit.wlcore_tx_get_mac80211_queue.exit.i.i.1_crit_edge
  %call2.i.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wl_lock.i) #10
  %10 = ptrtoint ptr %hw_queue_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_queue_base.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %12 = ptrtoint ptr %wl_lock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %agg.tmp.sroa.0.0.copyload.i.i.i.1 = load volatile i32, ptr %wl_lock.i, align 4
  %13 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i.1, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i.1 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i.1, 16
  %conv.i.i.i.i.1 = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i.1, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i.1, i32 %lock.sroa.0.0.extract.shift.i.i.i.i.1)
  %cmp.i.i.not.i.i.1 = icmp eq i32 %conv.i.i.i.i.1, %lock.sroa.0.0.extract.shift.i.i.i.i.1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i.1, label %wlcore_tx_get_mac80211_queue.exit.i.i.1.do.body5.i.i_crit_edge, label %wlcore_is_queue_stopped_by_reason.exit.1, !prof !97

wlcore_tx_get_mac80211_queue.exit.i.i.1.do.body5.i.i_crit_edge: ; preds = %wlcore_tx_get_mac80211_queue.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

wlcore_is_queue_stopped_by_reason.exit.1:         ; preds = %wlcore_tx_get_mac80211_queue.exit.i.i.1
  %add6.i.i.i.1 = add i32 %11, 3
  %arrayidx.i.i.1 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 52, i32 %add6.i.i.i.1
  %14 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i.1, align 4
  %16 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.i.i.not.1 = icmp eq i32 %16, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wl_lock.i, i32 noundef %call2.i.1) #10
  br i1 %tobool12.i.i.not.1, label %wlcore_is_queue_stopped_by_reason.exit.1.wlcore_tx_get_mac80211_queue.exit.i.i.2_crit_edge, label %land.lhs.true.1

wlcore_is_queue_stopped_by_reason.exit.1.wlcore_tx_get_mac80211_queue.exit.i.i.2_crit_edge: ; preds = %wlcore_is_queue_stopped_by_reason.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_tx_get_mac80211_queue.exit.i.i.2

land.lhs.true.1:                                  ; preds = %wlcore_is_queue_stopped_by_reason.exit.1
  %arrayidx.1 = getelementptr i8, ptr %.pn32, i32 100
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %18)
  %cmp6.1 = icmp slt i32 %18, 33
  br i1 %cmp6.1, label %if.then.1, label %land.lhs.true.1.wlcore_tx_get_mac80211_queue.exit.i.i.2_crit_edge

land.lhs.true.1.wlcore_tx_get_mac80211_queue.exit.i.i.2_crit_edge: ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_tx_get_mac80211_queue.exit.i.i.2

if.then.1:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @wlcore_wake_queue(ptr noundef %wl, ptr noundef %wlvif.033, i8 noundef zeroext 1, i32 noundef 0)
  br label %wlcore_tx_get_mac80211_queue.exit.i.i.2

wlcore_tx_get_mac80211_queue.exit.i.i.2:          ; preds = %if.then.1, %land.lhs.true.1.wlcore_tx_get_mac80211_queue.exit.i.i.2_crit_edge, %wlcore_is_queue_stopped_by_reason.exit.1.wlcore_tx_get_mac80211_queue.exit.i.i.2_crit_edge
  %call2.i.2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wl_lock.i) #10
  %19 = ptrtoint ptr %hw_queue_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hw_queue_base.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %21 = ptrtoint ptr %wl_lock.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %agg.tmp.sroa.0.0.copyload.i.i.i.2 = load volatile i32, ptr %wl_lock.i, align 4
  %22 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i.2, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i.2 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i.2, 16
  %conv.i.i.i.i.2 = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i.2, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i.2, i32 %lock.sroa.0.0.extract.shift.i.i.i.i.2)
  %cmp.i.i.not.i.i.2 = icmp eq i32 %conv.i.i.i.i.2, %lock.sroa.0.0.extract.shift.i.i.i.i.2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i.2, label %wlcore_tx_get_mac80211_queue.exit.i.i.2.do.body5.i.i_crit_edge, label %wlcore_is_queue_stopped_by_reason.exit.2, !prof !97

wlcore_tx_get_mac80211_queue.exit.i.i.2.do.body5.i.i_crit_edge: ; preds = %wlcore_tx_get_mac80211_queue.exit.i.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

wlcore_is_queue_stopped_by_reason.exit.2:         ; preds = %wlcore_tx_get_mac80211_queue.exit.i.i.2
  %add2.i.i.i.2 = add i32 %20, 1
  %arrayidx.i.i.2 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 52, i32 %add2.i.i.i.2
  %23 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i.i.2, align 4
  %25 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool12.i.i.not.2 = icmp eq i32 %25, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wl_lock.i, i32 noundef %call2.i.2) #10
  br i1 %tobool12.i.i.not.2, label %wlcore_is_queue_stopped_by_reason.exit.2.wlcore_tx_get_mac80211_queue.exit.i.i.3_crit_edge, label %land.lhs.true.2

wlcore_is_queue_stopped_by_reason.exit.2.wlcore_tx_get_mac80211_queue.exit.i.i.3_crit_edge: ; preds = %wlcore_is_queue_stopped_by_reason.exit.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_tx_get_mac80211_queue.exit.i.i.3

land.lhs.true.2:                                  ; preds = %wlcore_is_queue_stopped_by_reason.exit.2
  %arrayidx.2 = getelementptr i8, ptr %.pn32, i32 104
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %27)
  %cmp6.2 = icmp slt i32 %27, 33
  br i1 %cmp6.2, label %if.then.2, label %land.lhs.true.2.wlcore_tx_get_mac80211_queue.exit.i.i.3_crit_edge

land.lhs.true.2.wlcore_tx_get_mac80211_queue.exit.i.i.3_crit_edge: ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_tx_get_mac80211_queue.exit.i.i.3

if.then.2:                                        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @wlcore_wake_queue(ptr noundef %wl, ptr noundef %wlvif.033, i8 noundef zeroext 2, i32 noundef 0)
  br label %wlcore_tx_get_mac80211_queue.exit.i.i.3

wlcore_tx_get_mac80211_queue.exit.i.i.3:          ; preds = %if.then.2, %land.lhs.true.2.wlcore_tx_get_mac80211_queue.exit.i.i.3_crit_edge, %wlcore_is_queue_stopped_by_reason.exit.2.wlcore_tx_get_mac80211_queue.exit.i.i.3_crit_edge
  %call2.i.3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wl_lock.i) #10
  %28 = ptrtoint ptr %hw_queue_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hw_queue_base.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %30 = ptrtoint ptr %wl_lock.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %agg.tmp.sroa.0.0.copyload.i.i.i.3 = load volatile i32, ptr %wl_lock.i, align 4
  %31 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i.3, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i.3 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i.3, 16
  %conv.i.i.i.i.3 = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i.3, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i.3, i32 %lock.sroa.0.0.extract.shift.i.i.i.i.3)
  %cmp.i.i.not.i.i.3 = icmp eq i32 %conv.i.i.i.i.3, %lock.sroa.0.0.extract.shift.i.i.i.i.3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i.3, label %wlcore_tx_get_mac80211_queue.exit.i.i.3.do.body5.i.i_crit_edge, label %wlcore_is_queue_stopped_by_reason.exit.3, !prof !97

wlcore_tx_get_mac80211_queue.exit.i.i.3.do.body5.i.i_crit_edge: ; preds = %wlcore_tx_get_mac80211_queue.exit.i.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i

wlcore_is_queue_stopped_by_reason.exit.3:         ; preds = %wlcore_tx_get_mac80211_queue.exit.i.i.3
  %arrayidx.i.i.3 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 52, i32 %29
  %32 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i.i.3, align 4
  %34 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool12.i.i.not.3 = icmp eq i32 %34, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wl_lock.i, i32 noundef %call2.i.3) #10
  br i1 %tobool12.i.i.not.3, label %wlcore_is_queue_stopped_by_reason.exit.3.for.inc.3_crit_edge, label %land.lhs.true.3

wlcore_is_queue_stopped_by_reason.exit.3.for.inc.3_crit_edge: ; preds = %wlcore_is_queue_stopped_by_reason.exit.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %wlcore_is_queue_stopped_by_reason.exit.3
  %arrayidx.3 = getelementptr i8, ptr %.pn32, i32 108
  %35 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %36)
  %cmp6.3 = icmp slt i32 %36, 33
  br i1 %cmp6.3, label %if.then.3, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then.3:                                        ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @wlcore_wake_queue(ptr noundef %wl, ptr noundef %wlvif.033, i8 noundef zeroext 3, i32 noundef 0)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %land.lhs.true.3.for.inc.3_crit_edge, %wlcore_is_queue_stopped_by_reason.exit.3.for.inc.3_crit_edge
  %37 = ptrtoint ptr %.pn32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn32, align 4
  %cmp.not = icmp eq ptr %.pn, %wlvif_list
  br i1 %cmp.not, label %for.inc.3.for.end15_crit_edge, label %for.inc.3.wlcore_tx_get_mac80211_queue.exit.i.i_crit_edge

for.inc.3.wlcore_tx_get_mac80211_queue.exit.i.i_crit_edge: ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_tx_get_mac80211_queue.exit.i.i

for.inc.3.for.end15_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end15

for.end15:                                        ; preds = %for.inc.3.for.end15_crit_edge, %entry.for.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wlcore_is_queue_stopped_by_reason(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i8 noundef zeroext %queue, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wl_lock = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wl_lock) #10
  %hw_queue_base.i.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 41
  %0 = ptrtoint ptr %hw_queue_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_queue_base.i.i, align 8
  %2 = zext i8 %queue to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %queue, label %sw.default.i.i [
    i8 3, label %entry.wlcore_tx_get_mac80211_queue.exit.i_crit_edge
    i8 2, label %sw.bb1.i.i
    i8 0, label %sw.bb3.i.i
    i8 1, label %sw.bb5.i.i
  ]

entry.wlcore_tx_get_mac80211_queue.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_tx_get_mac80211_queue.exit.i

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add2.i.i = add i32 %1, 1
  br label %wlcore_tx_get_mac80211_queue.exit.i

sw.bb3.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add4.i.i = add i32 %1, 2
  br label %wlcore_tx_get_mac80211_queue.exit.i

sw.bb5.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add6.i.i = add i32 %1, 3
  br label %wlcore_tx_get_mac80211_queue.exit.i

sw.default.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add7.i.i = add i32 %1, 2
  br label %wlcore_tx_get_mac80211_queue.exit.i

wlcore_tx_get_mac80211_queue.exit.i:              ; preds = %sw.default.i.i, %sw.bb5.i.i, %sw.bb3.i.i, %sw.bb1.i.i, %entry.wlcore_tx_get_mac80211_queue.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %add7.i.i, %sw.default.i.i ], [ %add6.i.i, %sw.bb5.i.i ], [ %add4.i.i, %sw.bb3.i.i ], [ %add2.i.i, %sw.bb1.i.i ], [ %1, %entry.wlcore_tx_get_mac80211_queue.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %3 = ptrtoint ptr %wl_lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %wl_lock, align 4
  %4 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body5.i, label %wlcore_is_queue_stopped_by_reason_locked.exit, !prof !97

do.body5.i:                                       ; preds = %wlcore_tx_get_mac80211_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wlcore/tx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1306, 0\0A.popsection", ""() #10, !srcloc !100
  unreachable

wlcore_is_queue_stopped_by_reason_locked.exit:    ; preds = %wlcore_tx_get_mac80211_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 52, i32 %retval.0.i.i
  %div3.i.i = lshr i32 %reason, 5
  %arrayidx.i.i = getelementptr i32, ptr %arrayidx.i, i32 %div3.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %reason, 31
  %7 = shl nuw i32 1, %and.i.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.i = icmp ne i32 %8, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wl_lock, i32 noundef %call2) #10
  ret i1 %tobool12.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlcore_wake_queue(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i8 noundef zeroext %queue, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_queue_base.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 41
  %0 = ptrtoint ptr %hw_queue_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_queue_base.i, align 8
  %2 = zext i8 %queue to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %queue, label %sw.default.i [
    i8 3, label %entry.wlcore_tx_get_mac80211_queue.exit_crit_edge
    i8 2, label %sw.bb1.i
    i8 0, label %sw.bb3.i
    i8 1, label %sw.bb5.i
  ]

entry.wlcore_tx_get_mac80211_queue.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_tx_get_mac80211_queue.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add2.i = add i32 %1, 1
  br label %wlcore_tx_get_mac80211_queue.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add4.i = add i32 %1, 2
  br label %wlcore_tx_get_mac80211_queue.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add6.i = add i32 %1, 3
  br label %wlcore_tx_get_mac80211_queue.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add7.i = add i32 %1, 2
  br label %wlcore_tx_get_mac80211_queue.exit

wlcore_tx_get_mac80211_queue.exit:                ; preds = %sw.default.i, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %entry.wlcore_tx_get_mac80211_queue.exit_crit_edge
  %retval.0.i = phi i32 [ %add7.i, %sw.default.i ], [ %add6.i, %sw.bb5.i ], [ %add4.i, %sw.bb3.i ], [ %add2.i, %sw.bb1.i ], [ %1, %entry.wlcore_tx_get_mac80211_queue.exit_crit_edge ]
  %wl_lock = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 11
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wl_lock) #10
  %arrayidx = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 52, i32 %retval.0.i
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef %reason, ptr noundef %arrayidx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.rhs, label %wlcore_tx_get_mac80211_queue.exit.if.end41_crit_edge

wlcore_tx_get_mac80211_queue.exit.if.end41_crit_edge: ; preds = %wlcore_tx_get_mac80211_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

land.rhs:                                         ; preds = %wlcore_tx_get_mac80211_queue.exit
  %.b63 = load i1, ptr @wlcore_wake_queue.__already_done, align 1
  br i1 %.b63, label %land.rhs.if.end41_crit_edge, label %if.then, !prof !98

land.rhs.if.end41_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @wlcore_wake_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1232, i32 noundef 9, ptr noundef null) #10
  br label %if.end41

if.end41:                                         ; preds = %if.then, %land.rhs.if.end41_crit_edge, %wlcore_tx_get_mac80211_queue.exit.if.end41_crit_edge
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool51.not = icmp eq i32 %4, 0
  br i1 %tobool51.not, label %if.end53, label %if.end41.out_crit_edge

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end53:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_wake_queue(ptr noundef %6, i32 noundef %retval.0.i) #10
  br label %out

out:                                              ; preds = %if.end53, %if.end41.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wl_lock, i32 noundef %call4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl12xx_rearm_rx_streaming(ptr noundef %wl, ptr noundef %active_hlids) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_streaming = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 12
  %interval = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 12, i32 2
  %0 = ptrtoint ptr %interval to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %interval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup52_crit_edge, label %if.end

entry.cleanup52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup52

if.end:                                           ; preds = %entry
  %always = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 12, i32 3
  %2 = ptrtoint ptr %always to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %always, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup52_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true.cleanup52_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup52

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %7 = ptrtoint ptr %rx_streaming to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %rx_streaming, align 1
  %wlvif_list = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 39
  %9 = ptrtoint ptr %wlvif_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn85 = load ptr, ptr %wlvif_list, align 4
  %cmp.not86 = icmp eq ptr %.pn85, %wlvif_list
  br i1 %cmp.not86, label %if.end6.cleanup52_crit_edge, label %for.body.lr.ph

if.end6.cleanup52_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup52

for.body.lr.ph:                                   ; preds = %if.end6
  %num_links = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 128
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc45.for.body_crit_edge, %for.body.lr.ph
  %.pn87 = phi ptr [ %.pn85, %for.body.lr.ph ], [ %.pn, %for.inc45.for.body_crit_edge ]
  %bss_type = getelementptr i8, ptr %.pn87, i32 12
  %10 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bss_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp10 = icmp eq i8 %11, 2
  br i1 %cmp10, label %if.then12, label %for.body.for.inc45_crit_edge

for.body.for.inc45_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc45

if.then12:                                        ; preds = %for.body
  %12 = ptrtoint ptr %num_links to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_links, align 8
  %conv13 = zext i8 %13 to i32
  %call14 = tail call i32 @_find_next_bit_be(ptr noundef %active_hlids, i32 noundef %conv13, i32 noundef 0) #10
  %conv1779 = and i32 %call14, 255
  %14 = ptrtoint ptr %num_links to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_links, align 8
  %conv1980 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1779, i32 %conv1980)
  %cmp2081 = icmp ult i32 %conv1779, %conv1980
  br i1 %cmp2081, label %for.body22.lr.ph, label %if.then12.for.inc45_crit_edge

if.then12.for.inc45_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc45

for.body22.lr.ph:                                 ; preds = %if.then12
  %links_map = getelementptr i8, ptr %.pn87, i32 112
  br label %for.body22

for.body22:                                       ; preds = %for.inc.for.body22_crit_edge, %for.body22.lr.ph
  %conv1984 = phi i32 [ %conv1980, %for.body22.lr.ph ], [ %conv19, %for.inc.for.body22_crit_edge ]
  %conv1783 = phi i32 [ %conv1779, %for.body22.lr.ph ], [ %conv17, %for.inc.for.body22_crit_edge ]
  %hlid.0.in82 = phi i32 [ %call14, %for.body22.lr.ph ], [ %call31, %for.inc.for.body22_crit_edge ]
  %div3.i = lshr i32 %conv1783, 5
  %arrayidx.i = getelementptr i32, ptr %links_map, i32 %div3.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %hlid.0.in82, 31
  %18 = shl nuw i32 1, %and.i
  %19 = and i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool25.not = icmp eq i32 %19, 0
  br i1 %tobool25.not, label %for.inc, label %if.end35

for.inc:                                          ; preds = %for.body22
  %add = add nuw nsw i32 %conv1783, 1
  %call31 = tail call i32 @_find_next_bit_be(ptr noundef %active_hlids, i32 noundef %conv1984, i32 noundef %add) #10
  %conv17 = and i32 %call31, 255
  %20 = ptrtoint ptr %num_links to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_links, align 8
  %conv19 = zext i8 %21 to i32
  %cmp20 = icmp ult i32 %conv17, %conv19
  br i1 %cmp20, label %for.inc.for.body22_crit_edge, label %for.inc.for.inc45_crit_edge

for.inc.for.inc45_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc45

for.inc.for.body22_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body22

if.end35:                                         ; preds = %for.body22
  %flags36 = getelementptr i8, ptr %.pn87, i32 8
  %22 = ptrtoint ptr %flags36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags36, align 4
  %24 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool38.not = icmp eq i32 %24, 0
  br i1 %tobool38.not, label %if.then39, label %if.end35.if.end40_crit_edge

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %rx_streaming_enable_work = getelementptr i8, ptr %.pn87, i32 224
  tail call void @ieee80211_queue_work(ptr noundef %26, ptr noundef %rx_streaming_enable_work) #10
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end35.if.end40_crit_edge
  %rx_streaming_timer = getelementptr i8, ptr %.pn87, i32 312
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %8) #10
  %add42 = add i32 %call2.i, %27
  %call43 = tail call i32 @mod_timer(ptr noundef %rx_streaming_timer, i32 noundef %add42) #10
  br label %for.inc45

for.inc45:                                        ; preds = %if.end40, %for.inc.for.inc45_crit_edge, %if.then12.for.inc45_crit_edge, %for.body.for.inc45_crit_edge
  %28 = ptrtoint ptr %.pn87 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn87, align 4
  %cmp.not = icmp eq ptr %.pn, %wlvif_list
  br i1 %cmp.not, label %for.inc45.cleanup52_crit_edge, label %for.inc45.for.body_crit_edge

for.inc45.for.body_crit_edge:                     ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc45.cleanup52_crit_edge:                    ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup52

cleanup52:                                        ; preds = %for.inc45.cleanup52_crit_edge, %if.end6.cleanup52_crit_edge, %land.lhs.true.cleanup52_crit_edge, %entry.cleanup52_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlcore_tx_work_locked(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  %low_prio_hlid.i = alloca i8, align 1
  %active_hlids = alloca [1 x i32], align 4
  %hlid = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active_hlids) #10
  %0 = ptrtoint ptr %active_hlids to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %active_hlids, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hlid) #10
  %1 = ptrtoint ptr %hlid to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %hlid, align 1, !annotation !101
  %state = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %while.cond.preheader, label %entry.cleanup59_crit_edge, !prof !98

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

while.cond.preheader:                             ; preds = %entry
  %last_wlvif.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 112
  %arrayidx.i.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 3
  %arrayidx.1.i.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 2
  %arrayidx.2.i.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 0
  %arrayidx.3.i.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 1
  %arrayidx1.i.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 48, i32 3
  %arrayidx1.1.i.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 48, i32 2
  %arrayidx1.2.i.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 48, i32 0
  %arrayidx1.3.i.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 48, i32 1
  %wlvif_list.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 39
  %system_hlid.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 32
  %ops.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 114
  %flags111.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %dummy_packet.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 63
  %wl_lock.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 11
  %quirks.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %time_offset.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 50
  %hw.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %ap_fw_ps_map.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 105
  %active_link_count.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 103
  %ap_count.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 41
  %aggr_buf.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 61
  %rtable.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 116
  %if_ops.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %dev.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %tx_packets_count = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 49
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %while.cond.preheader
  %buf_offset.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %add, %while.cond.outer.backedge ]
  %last_len.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %retval.1.i, %while.cond.outer.backedge ]
  %sent_packets.0.off0.ph = phi i1 [ false, %while.cond.preheader ], [ %sent_packets.0.off0, %while.cond.outer.backedge ]
  %bus_ret.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %bus_ret.0, %while.cond.outer.backedge ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer
  %buf_offset.0 = phi i32 [ %buf_offset.0.ph, %while.cond.outer ], [ 0, %while.cond.backedge ]
  %sent_packets.0.off0 = phi i1 [ %sent_packets.0.off0.ph, %while.cond.outer ], [ true, %while.cond.backedge ]
  %bus_ret.0 = phi i32 [ %bus_ret.0.ph, %while.cond.outer ], [ %bus_ret.0.be, %while.cond.backedge ]
  %4 = ptrtoint ptr %last_wlvif.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %last_wlvif.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_prio_hlid.i) #10
  %6 = ptrtoint ptr %low_prio_hlid.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %low_prio_hlid.i, align 1
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %while.cond.wl1271_tx_get_queue.exit.1.i.i_crit_edge, label %land.lhs.true.i.i

while.cond.wl1271_tx_get_queue.exit.1.i.i_crit_edge: ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %wl1271_tx_get_queue.exit.1.i.i

land.lhs.true.i.i:                                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp2.not.i.i = icmp eq i32 %10, -1
  %spec.select.i.i = select i1 %cmp2.not.i.i, i32 -1, i32 3
  br label %wl1271_tx_get_queue.exit.1.i.i

wl1271_tx_get_queue.exit.1.i.i:                   ; preds = %land.lhs.true.i.i, %while.cond.wl1271_tx_get_queue.exit.1.i.i_crit_edge
  %q.1.i.i = phi i32 [ -1, %while.cond.wl1271_tx_get_queue.exit.1.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %min_pkts.1.i.i = phi i32 [ -1, %while.cond.wl1271_tx_get_queue.exit.1.i.i_crit_edge ], [ %10, %land.lhs.true.i.i ]
  %11 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.1.i.i, label %wl1271_tx_get_queue.exit.1.i.i.wl1271_tx_get_queue.exit.2.i.i_crit_edge, label %land.lhs.true.1.i.i

wl1271_tx_get_queue.exit.1.i.i.wl1271_tx_get_queue.exit.2.i.i_crit_edge: ; preds = %wl1271_tx_get_queue.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wl1271_tx_get_queue.exit.2.i.i

land.lhs.true.1.i.i:                              ; preds = %wl1271_tx_get_queue.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx1.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %min_pkts.1.i.i)
  %cmp2.1.i.i = icmp ult i32 %14, %min_pkts.1.i.i
  %spec.select.1.i.i = select i1 %cmp2.1.i.i, i32 2, i32 %q.1.i.i
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %min_pkts.1.i.i) #10
  br label %wl1271_tx_get_queue.exit.2.i.i

wl1271_tx_get_queue.exit.2.i.i:                   ; preds = %land.lhs.true.1.i.i, %wl1271_tx_get_queue.exit.1.i.i.wl1271_tx_get_queue.exit.2.i.i_crit_edge
  %q.1.1.i.i = phi i32 [ %q.1.i.i, %wl1271_tx_get_queue.exit.1.i.i.wl1271_tx_get_queue.exit.2.i.i_crit_edge ], [ %spec.select.1.i.i, %land.lhs.true.1.i.i ]
  %min_pkts.1.1.i.i = phi i32 [ %min_pkts.1.i.i, %wl1271_tx_get_queue.exit.1.i.i.wl1271_tx_get_queue.exit.2.i.i_crit_edge ], [ %15, %land.lhs.true.1.i.i ]
  %16 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.2.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.2.i.i, label %wl1271_tx_get_queue.exit.2.i.i.wl1271_tx_get_queue.exit.3.i.i_crit_edge, label %land.lhs.true.2.i.i

wl1271_tx_get_queue.exit.2.i.i.wl1271_tx_get_queue.exit.3.i.i_crit_edge: ; preds = %wl1271_tx_get_queue.exit.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wl1271_tx_get_queue.exit.3.i.i

land.lhs.true.2.i.i:                              ; preds = %wl1271_tx_get_queue.exit.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx1.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %min_pkts.1.1.i.i)
  %cmp2.2.i.i = icmp ult i32 %19, %min_pkts.1.1.i.i
  %spec.select.2.i.i = select i1 %cmp2.2.i.i, i32 0, i32 %q.1.1.i.i
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %min_pkts.1.1.i.i) #10
  br label %wl1271_tx_get_queue.exit.3.i.i

wl1271_tx_get_queue.exit.3.i.i:                   ; preds = %land.lhs.true.2.i.i, %wl1271_tx_get_queue.exit.2.i.i.wl1271_tx_get_queue.exit.3.i.i_crit_edge
  %q.1.2.i.i = phi i32 [ %q.1.1.i.i, %wl1271_tx_get_queue.exit.2.i.i.wl1271_tx_get_queue.exit.3.i.i_crit_edge ], [ %spec.select.2.i.i, %land.lhs.true.2.i.i ]
  %min_pkts.1.2.i.i = phi i32 [ %min_pkts.1.1.i.i, %wl1271_tx_get_queue.exit.2.i.i.wl1271_tx_get_queue.exit.3.i.i_crit_edge ], [ %20, %land.lhs.true.2.i.i ]
  %21 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.3.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.3.i.i, label %wl1271_tx_get_queue.exit.3.i.i.wlcore_select_ac.exit.i_crit_edge, label %land.lhs.true.3.i.i

wl1271_tx_get_queue.exit.3.i.i.wlcore_select_ac.exit.i_crit_edge: ; preds = %wl1271_tx_get_queue.exit.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_select_ac.exit.i

land.lhs.true.3.i.i:                              ; preds = %wl1271_tx_get_queue.exit.3.i.i
  %23 = ptrtoint ptr %arrayidx1.3.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx1.3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %min_pkts.1.2.i.i)
  %cmp2.3.i.i = icmp ult i32 %24, %min_pkts.1.2.i.i
  br i1 %cmp2.3.i.i, label %land.lhs.true.3.i.i.if.end.i_crit_edge, label %land.lhs.true.3.i.i.wlcore_select_ac.exit.i_crit_edge

land.lhs.true.3.i.i.wlcore_select_ac.exit.i_crit_edge: ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_select_ac.exit.i

land.lhs.true.3.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

wlcore_select_ac.exit.i:                          ; preds = %land.lhs.true.3.i.i.wlcore_select_ac.exit.i_crit_edge, %wl1271_tx_get_queue.exit.3.i.i.wlcore_select_ac.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %q.1.2.i.i)
  %cmp.i = icmp slt i32 %q.1.2.i.i, 0
  br i1 %cmp.i, label %wlcore_select_ac.exit.i.land.lhs.true110.i_crit_edge, label %wlcore_select_ac.exit.i.if.end.i_crit_edge

wlcore_select_ac.exit.i.if.end.i_crit_edge:       ; preds = %wlcore_select_ac.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

wlcore_select_ac.exit.i.land.lhs.true110.i_crit_edge: ; preds = %wlcore_select_ac.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true110.i

if.end.i:                                         ; preds = %wlcore_select_ac.exit.i.if.end.i_crit_edge, %land.lhs.true.3.i.i.if.end.i_crit_edge
  %q.1.3.i257.i = phi i32 [ %q.1.2.i.i, %wlcore_select_ac.exit.i.if.end.i_crit_edge ], [ 1, %land.lhs.true.3.i.i.if.end.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i.if.then19.i_crit_edge, label %if.then1.i

if.end.i.if.then19.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i

if.then1.i:                                       ; preds = %if.end.i
  %list.i = getelementptr inbounds %struct.wl12xx_vif, ptr %5, i32 0, i32 1
  %25 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn251281.i = load ptr, ptr %list.i, align 4
  %cmp3.not283.i = icmp eq ptr %.pn251281.i, %wlvif_list.i
  br i1 %cmp3.not283.i, label %if.then1.i.if.then19.i_crit_edge, label %for.body.lr.ph.i

if.then1.i.if.then19.i_crit_edge:                 ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i

for.body.lr.ph.i:                                 ; preds = %if.then1.i
  %conv.i = trunc i32 %q.1.3.i257.i to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn251284.i = phi ptr [ %.pn251281.i, %for.body.lr.ph.i ], [ %.pn251.i, %for.inc.i.for.body.i_crit_edge ]
  %tx_queue_count.i = getelementptr i8, ptr %.pn251284.i, i32 96
  %arrayidx.i = getelementptr [4 x i32], ptr %tx_queue_count.i, i32 0, i32 %q.1.3.i257.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool4.not.i = icmp eq i32 %27, 0
  br i1 %tobool4.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end6.i:                                        ; preds = %for.body.i
  %wlvif.0285.i = getelementptr i8, ptr %.pn251284.i, i32 -4
  %call7.i = call fastcc ptr @wlcore_vif_dequeue_high_prio(ptr noundef %wl, ptr noundef %wlvif.0285.i, i8 noundef zeroext %conv.i, ptr noundef nonnull %hlid, ptr noundef nonnull %low_prio_hlid.i) #10
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end6.i.for.inc.i_crit_edge, label %if.end6.i.wl1271_skb_dequeue.exit.thread.sink.split_crit_edge

if.end6.i.wl1271_skb_dequeue.exit.thread.sink.split_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wl1271_skb_dequeue.exit.thread.sink.split

if.end6.i.for.inc.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end6.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %28 = ptrtoint ptr %.pn251284.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn251.i = load ptr, ptr %.pn251284.i, align 4
  %cmp3.not.i = icmp eq ptr %.pn251.i, %wlvif_list.i
  br i1 %cmp3.not.i, label %for.inc.i.if.then19.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.then19.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i

if.then19.i:                                      ; preds = %for.inc.i.if.then19.i_crit_edge, %if.then1.i.if.then19.i_crit_edge, %if.end.i.if.then19.i_crit_edge
  %29 = ptrtoint ptr %system_hlid.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %system_hlid.i, align 4
  %conv20.i = trunc i32 %q.1.3.i257.i to i8
  %idxprom.i.i = zext i8 %30 to i32
  %arrayidx.i252.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %idxprom.i.i
  %31 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i.i.i, align 4
  %lnk_high_prio.i.i.i = getelementptr inbounds %struct.wlcore_ops, ptr %32, i32 0, i32 39
  %33 = ptrtoint ptr %lnk_high_prio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lnk_high_prio.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i, label %do.body1.i.i.i, label %wlcore_hw_lnk_high_prio.exit.i.i

do.body1.i.i.i:                                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wlcore/hw_ops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

wlcore_hw_lnk_high_prio.exit.i.i:                 ; preds = %if.then19.i
  %call.i.i.i = tail call zeroext i1 %34(ptr noundef %wl, i8 noundef zeroext %30, ptr noundef %arrayidx.i252.i) #10
  br i1 %call.i.i.i, label %wlcore_lnk_dequeue_high_prio.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %wlcore_hw_lnk_high_prio.exit.i.i
  %35 = ptrtoint ptr %low_prio_hlid.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %low_prio_hlid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp.i.i = icmp eq i8 %36, -1
  br i1 %cmp.i.i, label %land.lhs.true.i253.i, label %if.then.i.i.for.cond35.i.preheader_crit_edge

if.then.i.i.for.cond35.i.preheader_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond35.i.preheader

for.cond35.i.preheader:                           ; preds = %wlcore_lnk_dequeue_high_prio.exit.i.for.cond35.i.preheader_crit_edge, %if.then8.i.i, %wlcore_hw_lnk_low_prio.exit.i.i.for.cond35.i.preheader_crit_edge, %land.lhs.true.i253.i.for.cond35.i.preheader_crit_edge, %if.then.i.i.for.cond35.i.preheader_crit_edge
  br label %for.cond35.i

land.lhs.true.i253.i:                             ; preds = %if.then.i.i
  %idxprom2.i.i = and i32 %q.1.3.i257.i, 255
  %arrayidx3.i.i = getelementptr [4 x %struct.sk_buff_head], ptr %arrayidx.i252.i, i32 0, i32 %idxprom2.i.i
  %37 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx3.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %38, %arrayidx3.i.i
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i253.i.for.cond35.i.preheader_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i253.i.for.cond35.i.preheader_crit_edge: ; preds = %land.lhs.true.i253.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond35.i.preheader

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i253.i
  %39 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i.i, align 4
  %lnk_low_prio.i.i.i = getelementptr inbounds %struct.wlcore_ops, ptr %40, i32 0, i32 40
  %41 = ptrtoint ptr %lnk_low_prio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lnk_low_prio.i.i.i, align 4
  %tobool.not.i23.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i23.i.i, label %do.body1.i24.i.i, label %wlcore_hw_lnk_low_prio.exit.i.i

do.body1.i24.i.i:                                 ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wlcore/hw_ops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 268, 0\0A.popsection", ""() #10, !srcloc !103
  unreachable

wlcore_hw_lnk_low_prio.exit.i.i:                  ; preds = %land.lhs.true5.i.i
  %call.i25.i.i = tail call zeroext i1 %42(ptr noundef %wl, i8 noundef zeroext %30, ptr noundef %arrayidx.i252.i) #10
  br i1 %call.i25.i.i, label %if.then8.i.i, label %wlcore_hw_lnk_low_prio.exit.i.i.for.cond35.i.preheader_crit_edge

wlcore_hw_lnk_low_prio.exit.i.i.for.cond35.i.preheader_crit_edge: ; preds = %wlcore_hw_lnk_low_prio.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond35.i.preheader

if.then8.i.i:                                     ; preds = %wlcore_hw_lnk_low_prio.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %low_prio_hlid.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %30, ptr %low_prio_hlid.i, align 1
  br label %for.cond35.i.preheader

wlcore_lnk_dequeue_high_prio.exit.i:              ; preds = %wlcore_hw_lnk_high_prio.exit.i.i
  %call10.i.i = tail call fastcc ptr @wlcore_lnk_dequeue(ptr noundef %wl, ptr noundef %arrayidx.i252.i, i8 noundef zeroext %conv20.i) #10
  %tobool22.not.i = icmp eq ptr %call10.i.i, null
  br i1 %tobool22.not.i, label %wlcore_lnk_dequeue_high_prio.exit.i.for.cond35.i.preheader_crit_edge, label %if.then23.i

wlcore_lnk_dequeue_high_prio.exit.i.for.cond35.i.preheader_crit_edge: ; preds = %wlcore_lnk_dequeue_high_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond35.i.preheader

if.then23.i:                                      ; preds = %wlcore_lnk_dequeue_high_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %system_hlid.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %system_hlid.i, align 4
  %46 = ptrtoint ptr %hlid to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %hlid, align 1
  br label %wl1271_skb_dequeue.exit.thread.sink.split

for.cond35.i:                                     ; preds = %next53.i.for.cond35.i_crit_edge, %for.cond35.i.preheader
  %.pn.in.i = phi ptr [ %.pn.i, %next53.i.for.cond35.i_crit_edge ], [ %wlvif_list.i, %for.cond35.i.preheader ]
  %47 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %wlvif.1.i = getelementptr i8, ptr %.pn.i, i32 -4
  %cmp38.not.i = icmp eq ptr %.pn.i, %wlvif_list.i
  br i1 %cmp38.not.i, label %for.cond35.i.land.lhs.true.i_crit_edge, label %for.body41.i

for.cond35.i.land.lhs.true.i_crit_edge:           ; preds = %for.cond35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.body41.i:                                     ; preds = %for.cond35.i
  %tx_queue_count42.i = getelementptr i8, ptr %.pn.i, i32 96
  %arrayidx43.i = getelementptr [4 x i32], ptr %tx_queue_count42.i, i32 0, i32 %q.1.3.i257.i
  %48 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool44.not.i = icmp eq i32 %49, 0
  br i1 %tobool44.not.i, label %for.body41.i.next53.i_crit_edge, label %if.end46.i

for.body41.i.next53.i_crit_edge:                  ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %next53.i

if.end46.i:                                       ; preds = %for.body41.i
  %call48.i = call fastcc ptr @wlcore_vif_dequeue_high_prio(ptr noundef %wl, ptr noundef %wlvif.1.i, i8 noundef zeroext %conv20.i, ptr noundef nonnull %hlid, ptr noundef nonnull %low_prio_hlid.i) #10
  %tobool49.not.i = icmp eq ptr %call48.i, null
  br i1 %tobool49.not.i, label %if.end46.i.next53.i_crit_edge, label %if.end46.i.wl1271_skb_dequeue.exit.thread.sink.split_crit_edge

if.end46.i.wl1271_skb_dequeue.exit.thread.sink.split_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wl1271_skb_dequeue.exit.thread.sink.split

if.end46.i.next53.i_crit_edge:                    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %next53.i

next53.i:                                         ; preds = %if.end46.i.next53.i_crit_edge, %for.body41.i.next53.i_crit_edge
  %50 = ptrtoint ptr %last_wlvif.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %last_wlvif.i, align 4
  %cmp55.i = icmp eq ptr %wlvif.1.i, %51
  br i1 %cmp55.i, label %next53.i.land.lhs.true.i_crit_edge, label %next53.i.for.cond35.i_crit_edge

next53.i.for.cond35.i_crit_edge:                  ; preds = %next53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond35.i

next53.i.land.lhs.true.i_crit_edge:               ; preds = %next53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %next53.i.land.lhs.true.i_crit_edge, %for.cond35.i.land.lhs.true.i_crit_edge
  %52 = ptrtoint ptr %low_prio_hlid.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %low_prio_hlid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %53)
  %cmp69.not.i = icmp eq i8 %53, -1
  br i1 %cmp69.not.i, label %land.lhs.true.i.land.lhs.true110.i_crit_edge, label %if.then71.i

land.lhs.true.i.land.lhs.true110.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true110.i

if.then71.i:                                      ; preds = %land.lhs.true.i
  %conv68.i = zext i8 %53 to i32
  %arrayidx72.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %conv68.i
  %call74.i = tail call fastcc ptr @wlcore_lnk_dequeue(ptr noundef %wl, ptr noundef %arrayidx72.i, i8 noundef zeroext %conv20.i) #10
  %tobool75.not.i = icmp eq ptr %call74.i, null
  br i1 %tobool75.not.i, label %do.end.i, label %if.then71.i.if.end92.i_crit_edge, !prof !97

if.then71.i.if.end92.i_crit_edge:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92.i

do.end.i:                                         ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 645, i32 noundef 9, ptr noundef null) #10
  br label %if.end92.i

if.end92.i:                                       ; preds = %do.end.i, %if.then71.i.if.end92.i_crit_edge
  %54 = ptrtoint ptr %hlid to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %hlid, align 1
  %wlvif100.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %conv68.i, i32 7
  %55 = ptrtoint ptr %wlvif100.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wlvif100.i, align 4
  %57 = ptrtoint ptr %last_wlvif.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %last_wlvif.i, align 4
  %58 = load ptr, ptr %wlvif100.i, align 4
  %tobool103.not.i = icmp eq ptr %58, null
  br i1 %tobool103.not.i, label %if.end92.i.out.i_crit_edge, label %if.then104.i

if.end92.i.out.i_crit_edge:                       ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then104.i:                                     ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #12
  %last_tx_hlid.i = getelementptr inbounds %struct.wl12xx_vif, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %last_tx_hlid.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv68.i, ptr %last_tx_hlid.i, align 8
  br label %out.i

out.i:                                            ; preds = %if.then104.i, %if.end92.i.out.i_crit_edge
  br i1 %tobool75.not.i, label %out.i.land.lhs.true110.i_crit_edge, label %out.i.wl1271_skb_dequeue.exit.thread_crit_edge

out.i.wl1271_skb_dequeue.exit.thread_crit_edge:   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wl1271_skb_dequeue.exit.thread

out.i.land.lhs.true110.i_crit_edge:               ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true110.i

land.lhs.true110.i:                               ; preds = %out.i.land.lhs.true110.i_crit_edge, %land.lhs.true.i.land.lhs.true110.i_crit_edge, %wlcore_select_ac.exit.i.land.lhs.true110.i_crit_edge
  %call112.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flags111.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %tobool113.not.i = icmp eq i32 %call112.i, 0
  br i1 %tobool113.not.i, label %wl1271_skb_dequeue.exit.thread209, label %if.then114.i

wl1271_skb_dequeue.exit.thread209:                ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_prio_hlid.i) #10
  br label %out_ack

if.then114.i:                                     ; preds = %land.lhs.true110.i
  %60 = ptrtoint ptr %dummy_packet.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dummy_packet.i, align 4
  %62 = ptrtoint ptr %system_hlid.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %system_hlid.i, align 4
  %64 = ptrtoint ptr %hlid to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %hlid, align 1
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 10
  %65 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %queue_mapping.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %66)
  %67 = icmp ult i16 %66, 4
  br i1 %67, label %switch.lookup, label %if.then114.i.wl1271_tx_get_queue.exit.i_crit_edge

if.then114.i.wl1271_tx_get_queue.exit.i_crit_edge: ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wl1271_tx_get_queue.exit.i

switch.lookup:                                    ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #12
  %68 = sext i16 %66 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.wlcore_tx_work_locked, i32 0, i32 %68
  %69 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %69)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %wl1271_tx_get_queue.exit.i

wl1271_tx_get_queue.exit.i:                       ; preds = %switch.lookup, %if.then114.i.wl1271_tx_get_queue.exit.i_crit_edge
  %retval.0.i254.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then114.i.wl1271_tx_get_queue.exit.i_crit_edge ]
  %call125.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wl_lock.i) #10
  %arrayidx131.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 %retval.0.i254.i
  %70 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx131.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp132.i = icmp slt i32 %71, 1
  br i1 %cmp132.i, label %land.rhs.i, label %wl1271_tx_get_queue.exit.i.wl1271_skb_dequeue.exit_crit_edge

wl1271_tx_get_queue.exit.i.wl1271_skb_dequeue.exit_crit_edge: ; preds = %wl1271_tx_get_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wl1271_skb_dequeue.exit

land.rhs.i:                                       ; preds = %wl1271_tx_get_queue.exit.i
  %.b250.i = load i1, ptr @wl1271_skb_dequeue.__already_done, align 1
  br i1 %.b250.i, label %land.rhs.i.wl1271_skb_dequeue.exit_crit_edge, label %if.then149.i, !prof !98

land.rhs.i.wl1271_skb_dequeue.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wl1271_skb_dequeue.exit

if.then149.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @wl1271_skb_dequeue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 664, i32 noundef 9, ptr noundef null) #10
  br label %wl1271_skb_dequeue.exit

wl1271_skb_dequeue.exit.thread.sink.split:        ; preds = %if.end46.i.wl1271_skb_dequeue.exit.thread.sink.split_crit_edge, %if.then23.i, %if.end6.i.wl1271_skb_dequeue.exit.thread.sink.split_crit_edge
  %.sink = phi ptr [ null, %if.then23.i ], [ %wlvif.1.i, %if.end46.i.wl1271_skb_dequeue.exit.thread.sink.split_crit_edge ], [ %wlvif.0285.i, %if.end6.i.wl1271_skb_dequeue.exit.thread.sink.split_crit_edge ]
  %skb.8.i.ph.ph = phi ptr [ %call10.i.i, %if.then23.i ], [ %call48.i, %if.end46.i.wl1271_skb_dequeue.exit.thread.sink.split_crit_edge ], [ %call7.i, %if.end6.i.wl1271_skb_dequeue.exit.thread.sink.split_crit_edge ]
  %72 = ptrtoint ptr %last_wlvif.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %.sink, ptr %last_wlvif.i, align 4
  br label %wl1271_skb_dequeue.exit.thread

wl1271_skb_dequeue.exit.thread:                   ; preds = %wl1271_skb_dequeue.exit.thread.sink.split, %out.i.wl1271_skb_dequeue.exit.thread_crit_edge
  %skb.8.i.ph = phi ptr [ %call74.i, %out.i.wl1271_skb_dequeue.exit.thread_crit_edge ], [ %skb.8.i.ph.ph, %wl1271_skb_dequeue.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_prio_hlid.i) #10
  br label %while.body

wl1271_skb_dequeue.exit:                          ; preds = %if.then149.i, %land.rhs.i.wl1271_skb_dequeue.exit_crit_edge, %wl1271_tx_get_queue.exit.i.wl1271_skb_dequeue.exit_crit_edge
  %73 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx131.i, align 4
  %dec.i = add i32 %74, -1
  store i32 %dec.i, ptr %arrayidx131.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wl_lock.i, i32 noundef %call125.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_prio_hlid.i) #10
  %tobool2.not = icmp eq ptr %61, null
  br i1 %tobool2.not, label %wl1271_skb_dequeue.exit.out_ack_crit_edge, label %wl1271_skb_dequeue.exit.while.body_crit_edge

wl1271_skb_dequeue.exit.while.body_crit_edge:     ; preds = %wl1271_skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

wl1271_skb_dequeue.exit.out_ack_crit_edge:        ; preds = %wl1271_skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_ack

while.body:                                       ; preds = %wl1271_skb_dequeue.exit.while.body_crit_edge, %wl1271_skb_dequeue.exit.thread
  %skb.8.i208 = phi ptr [ %skb.8.i.ph, %wl1271_skb_dequeue.exit.thread ], [ %61, %wl1271_skb_dequeue.exit.while.body_crit_edge ]
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb.8.i208, i32 0, i32 3
  %75 = ptrtoint ptr %dummy_packet.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dummy_packet.i, align 4
  %cmp.i126 = icmp eq ptr %76, %skb.8.i208
  br i1 %cmp.i126, label %if.end7.thread, label %if.then5

if.then5:                                         ; preds = %while.body
  %vif = getelementptr inbounds %struct.sk_buff, ptr %skb.8.i208, i32 0, i32 3, i32 24
  %77 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vif, align 8
  %tobool.not.i127 = icmp eq ptr %78, null
  br i1 %tobool.not.i127, label %do.end.i128, label %if.then5.if.end7_crit_edge, !prof !97

if.then5.if.end7_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.end.i128:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 495, i32 noundef 9, ptr noundef null) #10
  br label %if.end7

if.end7.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %system_hlid.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %system_hlid.i, align 4
  %81 = ptrtoint ptr %hlid to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %hlid, align 1
  br label %if.end.i134

if.end7:                                          ; preds = %do.end.i128, %if.then5.if.end7_crit_edge
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %78, i32 0, i32 19
  %tobool8.not = icmp eq ptr %drv_priv.i, null
  br i1 %tobool8.not, label %if.end7.if.end.i134thread-pre-split_crit_edge, label %land.rhs

if.end7.if.end.i134thread-pre-split_crit_edge:    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i134thread-pre-split

land.rhs:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.8.i208, i32 0, i32 19
  %82 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %83, align 2
  %86 = and i16 %85, 19456
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %86)
  %cmp.i.i130 = icmp eq i16 %86, 2048
  br label %if.end.i134thread-pre-split

if.end.i134thread-pre-split:                      ; preds = %land.rhs, %if.end7.if.end.i134thread-pre-split_crit_edge
  %.ph = phi i1 [ %cmp.i.i130, %land.rhs ], [ false, %if.end7.if.end.i134thread-pre-split_crit_edge ]
  %87 = ptrtoint ptr %hlid to i32
  call void @__asan_load1_noabort(i32 %87)
  %.pr = load i8, ptr %hlid, align 1
  br label %if.end.i134

if.end.i134:                                      ; preds = %if.end.i134thread-pre-split, %if.end7.thread
  %88 = phi i8 [ %.pr, %if.end.i134thread-pre-split ], [ %80, %if.end7.thread ]
  %tobool8.not215 = phi i1 [ %tobool8.not, %if.end.i134thread-pre-split ], [ true, %if.end7.thread ]
  %wlvif.0214 = phi ptr [ %drv_priv.i, %if.end.i134thread-pre-split ], [ null, %if.end7.thread ]
  %89 = phi i1 [ %.ph, %if.end.i134thread-pre-split ], [ false, %if.end7.thread ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %88)
  %cmp.i133 = icmp eq i8 %88, -1
  br i1 %cmp.i133, label %if.else21.thread, label %if.end8.i

if.else21.thread:                                 ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %skb.8.i208) #13
  br label %if.then23

if.end8.i:                                        ; preds = %if.end.i134
  %90 = ptrtoint ptr %dummy_packet.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dummy_packet.i, align 4
  %cmp.i.i136 = icmp eq ptr %91, %skb.8.i208
  %92 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %93, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %if.end8.i.if.end18.i_crit_edge, label %land.lhs.true.i137

if.end8.i.if.end18.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

land.lhs.true.i137:                               ; preds = %if.end8.i
  %hw_key.i = getelementptr inbounds %struct.sk_buff, ptr %skb.8.i208, i32 0, i32 3, i32 28
  %94 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw_key.i, align 4
  %tobool12.not.i = icmp eq ptr %95, null
  br i1 %tobool12.not.i, label %land.lhs.true.i137.if.end18.i_crit_edge, label %land.lhs.true13.i

land.lhs.true.i137.if.end18.i_crit_edge:          ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

land.lhs.true13.i:                                ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #12
  %cipher.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cipher.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %97)
  %cmp15.i = icmp eq i32 %97, 1027074
  %spec.select.i = select i1 %cmp15.i, i32 4, i32 0
  br label %if.end18.i

if.end18.i:                                       ; preds = %land.lhs.true13.i, %land.lhs.true.i137.if.end18.i_crit_edge, %if.end8.i.if.end18.i_crit_edge
  %extra.0.i = phi i32 [ 0, %land.lhs.true.i137.if.end18.i_crit_edge ], [ 0, %if.end8.i.if.end18.i_crit_edge ], [ %spec.select.i, %land.lhs.true13.i ]
  %hw_key19.i = getelementptr inbounds %struct.sk_buff, ptr %skb.8.i208, i32 0, i32 3, i32 28
  %98 = ptrtoint ptr %hw_key19.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hw_key19.i, align 4
  %tobool20.not.i = icmp eq ptr %99, null
  br i1 %tobool20.not.i, label %if.end18.i.if.end78.i_crit_edge, label %if.then21.i

if.end18.i.if.end78.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78.i

if.then21.i:                                      ; preds = %if.end18.i
  %hw_key_idx.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %hw_key_idx.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %hw_key_idx.i, align 2
  %cipher25.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %99, i32 0, i32 1
  %102 = ptrtoint ptr %cipher25.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cipher25.i, align 8
  %104 = and i32 %103, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027073, i32 %104)
  %105 = icmp ne i32 %104, 1027073
  %or.cond.i = or i1 %tobool8.not215, %105
  br i1 %or.cond.i, label %if.then21.i.cleanup.thread.i_crit_edge, label %land.rhs.i138

if.then21.i.cleanup.thread.i_crit_edge:           ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

land.rhs.i138:                                    ; preds = %if.then21.i
  %default_key.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif.0214, i32 0, i32 23
  %106 = ptrtoint ptr %default_key.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %default_key.i, align 4
  %conv35.i = zext i8 %101 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %conv35.i)
  %cmp36.not.i = icmp eq i32 %107, %conv35.i
  br i1 %cmp36.not.i, label %land.rhs.i138.cleanup.thread.i_crit_edge, label %do.end49.i, !prof !98

land.rhs.i138.cleanup.thread.i_crit_edge:         ; preds = %land.rhs.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

do.end49.i:                                       ; preds = %land.rhs.i138
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 397, i32 noundef 9, ptr noundef null) #10
  %call65.i = tail call fastcc i32 @wl1271_set_default_wep_key(ptr noundef %wl, ptr noundef nonnull %wlvif.0214, i8 noundef zeroext %101) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %cmp66.i = icmp slt i32 %call65.i, 0
  br i1 %cmp66.i, label %do.end49.i.wl1271_prepare_tx_frame.exit_crit_edge, label %if.end69.i

do.end49.i.wl1271_prepare_tx_frame.exit_crit_edge: ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wl1271_prepare_tx_frame.exit

if.end69.i:                                       ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %default_key.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %conv35.i, ptr %default_key.i, align 4
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end69.i, %land.rhs.i138.cleanup.thread.i_crit_edge, %if.then21.i.cleanup.thread.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1339905, i32 %103)
  %cmp73.i = icmp eq i32 %103, 1339905
  br label %if.end78.i

if.end78.i:                                       ; preds = %cleanup.thread.i, %if.end18.i.if.end78.i_crit_edge
  %is_gem.1.off0.i = phi i1 [ false, %if.end18.i.if.end78.i_crit_edge ], [ %cmp73.i, %cleanup.thread.i ]
  %call80.i = tail call fastcc i32 @wl1271_tx_allocate(ptr noundef %wl, ptr noundef nonnull %skb.8.i208, i32 noundef %extra.0.i, i32 noundef %buf_offset.0, i8 noundef zeroext %88, i1 noundef zeroext %is_gem.1.off0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %cmp81.i = icmp slt i32 %call80.i, 0
  br i1 %cmp81.i, label %if.end78.i.wl1271_prepare_tx_frame.exit_crit_edge, label %if.end84.i

if.end78.i.wl1271_prepare_tx_frame.exit_crit_edge: ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wl1271_prepare_tx_frame.exit

if.end84.i:                                       ; preds = %if.end78.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.8.i208, i32 0, i32 19
  %109 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.wl1271_tx_hw_descr, ptr %110, i32 1
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %extra.0.i
  %111 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %add.ptr1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra.0.i)
  %tobool.not.i.i139 = icmp eq i32 %extra.0.i, 0
  br i1 %tobool.not.i.i139, label %if.end84.i.if.end.i.i_crit_edge, label %if.then.i.i140

if.end84.i.if.end.i.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i140:                                   ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %112) #14
  %113 = call ptr @memmove(ptr %add.ptr.i.i, ptr %add.ptr1.i.i, i32 %call.i.i)
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.8.i208, i32 0, i32 18
  %114 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.8.i208, i32 0, i32 15, i32 0, i32 20
  %116 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %117 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %115, i32 %conv.i.i.i.i
  %118 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %119 to i32
  %sub.ptr.sub.i.i.i = sub i32 %extra.0.i, %sub.ptr.rhs.cast.i.i.i
  %add.i.i = add i32 %sub.ptr.sub.i.i.i, %sub.ptr.lhs.cast.i.i.i
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %115 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.rhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv.i.i178.i.i = trunc i32 %sub.ptr.sub.i.i.i.i to i16
  %120 = trunc i32 %add.i.i to i16
  %conv1.i.i.i = add i16 %120, %conv.i.i178.i.i
  store i16 %conv1.i.i.i, ptr %network_header.i.i.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i140, %if.end84.i.if.end.i.i_crit_edge
  %call.i.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #10
  %shr.i.i = lshr i64 %call.i.i.i.i, 10
  %121 = ptrtoint ptr %time_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %time_offset.i.i, align 8
  %sub.i.i = sub i64 %shr.i.i, %122
  %conv.i.i = trunc i64 %sub.i.i to i32
  %123 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #10
  %start_time.i.i = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %110, i32 0, i32 2
  %124 = ptrtoint ptr %start_time.i.i to i32
  call void @__asan_storeN_noabort(i32 %124, i32 4)
  store i32 %123, ptr %start_time.i.i, align 1
  %125 = ptrtoint ptr %dummy_packet.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dummy_packet.i, align 4
  %cmp.i.i.i = icmp eq ptr %126, %skb.8.i208
  %or.cond.i.i = or i1 %tobool8.not215, %cmp.i.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.if.end14.i.i_crit_edge, label %lor.lhs.false9.i.i

if.end.i.i.if.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i.i

lor.lhs.false9.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bss_type.i.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif.0214, i32 0, i32 3
  %127 = ptrtoint ptr %bss_type.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %bss_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %128)
  %cmp.not.i.i = icmp eq i8 %128, 3
  %spec.select191.i.i = select i1 %cmp.not.i.i, i16 16415, i16 -12281
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %lor.lhs.false9.i.i, %if.end.i.i.if.end14.i.i_crit_edge
  %.sink.i.i = phi i16 [ -12281, %if.end.i.i.if.end14.i.i_crit_edge ], [ %spec.select191.i.i, %lor.lhs.false9.i.i ]
  %life_time13.i.i = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %110, i32 0, i32 3
  %129 = ptrtoint ptr %life_time13.i.i to i32
  call void @__asan_storeN_noabort(i32 %129, i32 2)
  store i16 %.sink.i.i, ptr %life_time13.i.i, align 1
  %queue_mapping.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.8.i208, i32 0, i32 10
  %130 = ptrtoint ptr %queue_mapping.i.i.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %queue_mapping.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %131)
  %132 = icmp ult i16 %131, 4
  br i1 %132, label %switch.lookup538, label %if.end14.i.i.wl1271_tx_get_queue.exit.i.i_crit_edge

if.end14.i.i.wl1271_tx_get_queue.exit.i.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wl1271_tx_get_queue.exit.i.i

switch.lookup538:                                 ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %133 = sext i16 %131 to i32
  %switch.gep539 = getelementptr inbounds [4 x i32], ptr @switch.table.wlcore_tx_work_locked.30, i32 0, i32 %133
  %134 = ptrtoint ptr %switch.gep539 to i32
  call void @__asan_load4_noabort(i32 %134)
  %switch.load540 = load i32, ptr %switch.gep539, align 4
  br label %wl1271_tx_get_queue.exit.i.i

wl1271_tx_get_queue.exit.i.i:                     ; preds = %switch.lookup538, %if.end14.i.i.wl1271_tx_get_queue.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %switch.load540, %switch.lookup538 ], [ 0, %if.end14.i.i.wl1271_tx_get_queue.exit.i.i_crit_edge ]
  %priority.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.8.i208, i32 0, i32 15, i32 0, i32 6
  %135 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %priority.i.i, align 4
  %conv18.i.i = trunc i32 %136 to i8
  %tid.i.i = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %110, i32 0, i32 6
  %137 = ptrtoint ptr %tid.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv18.i.i, ptr %tid.i.i, align 1
  br i1 %or.cond.i.i, label %if.end36.thread.i.i, label %if.then25.i.i

if.then25.i.i:                                    ; preds = %wl1271_tx_get_queue.exit.i.i
  %idxprom.i.i141 = zext i8 %88 to i32
  %arrayidx.i.i142 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 38, i32 %idxprom.i.i141
  %138 = ptrtoint ptr %arrayidx.i.i142 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx.i.i142, align 1
  %140 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %quirks.i, align 8
  %and.i.i = and i32 %141, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool26.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool26.not.i.i, label %if.then25.i.i.if.else43.i.i_crit_edge, label %land.lhs.true.i.i144

if.then25.i.i.if.else43.i.i_crit_edge:            ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else43.i.i

land.lhs.true.i.i144:                             ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bss_type27.i.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif.0214, i32 0, i32 3
  %142 = ptrtoint ptr %bss_type27.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %bss_type27.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %143)
  %cmp29.i.i = icmp eq i8 %143, 3
  %spec.select.i.i143 = select i1 %cmp29.i.i, i8 0, i8 %139
  br label %if.else43.i.i

if.end36.thread.i.i:                              ; preds = %wl1271_tx_get_queue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %.mux.i.i = select i1 %cmp.i.i.i, i16 8220, i16 0
  %hlid37188.i.i = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %110, i32 0, i32 7
  %144 = ptrtoint ptr %hlid37188.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %88, ptr %hlid37188.i.i, align 1
  br label %if.end96.i.i

if.else43.i.i:                                    ; preds = %land.lhs.true.i.i144, %if.then25.i.i.if.else43.i.i_crit_edge
  %session_id.0.i.i = phi i8 [ %139, %if.then25.i.i.if.else43.i.i_crit_edge ], [ %spec.select.i.i143, %land.lhs.true.i.i144 ]
  %conv33.i.i = zext i8 %session_id.0.i.i to i16
  %shl.i.i = shl nuw nsw i16 %conv33.i.i, 2
  %hlid37.i.i = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %110, i32 0, i32 7
  %145 = ptrtoint ptr %hlid37.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %88, ptr %hlid37.i.i, align 1
  %bss_type44.i.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif.0214, i32 0, i32 3
  %146 = ptrtoint ptr %bss_type44.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %bss_type44.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %147)
  %cmp46.not.i.i = icmp eq i8 %147, 3
  br i1 %cmp46.not.i.i, label %if.else69.i.i, label %if.then48.i.i

if.then48.i.i:                                    ; preds = %if.else43.i.i
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.8.i208, i32 0, i32 15, i32 0, i32 18
  %148 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %protocol.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %149)
  %cmp50.i.i = icmp eq i16 %149, -30578
  br i1 %cmp50.i.i, label %if.then52.i.i, label %if.else54.i.i

if.then52.i.i:                                    ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %basic_rate_idx.i.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif.0214, i32 0, i32 8, i32 0, i32 1
  %150 = ptrtoint ptr %basic_rate_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %basic_rate_idx.i.i, align 1
  br label %if.end96.i.i

if.else54.i.i:                                    ; preds = %if.then48.i.i
  %152 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %cb.i, align 8
  %and55.i.i = and i32 %153, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i)
  %tobool56.not.i.i = icmp eq i32 %and55.i.i, 0
  br i1 %tobool56.not.i.i, label %if.else59.i.i, label %if.then57.i.i

if.then57.i.i:                                    ; preds = %if.else54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %154 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif.0214, i32 0, i32 8
  %p2p_rate_idx.i.i = getelementptr inbounds %struct.anon.130, ptr %154, i32 0, i32 3
  %155 = ptrtoint ptr %p2p_rate_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %p2p_rate_idx.i.i, align 1
  br label %if.end96.i.i

if.else59.i.i:                                    ; preds = %if.else54.i.i
  %157 = and i16 %112, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %157)
  %cmp.i180.i.i = icmp eq i16 %157, 2048
  br i1 %cmp.i180.i.i, label %if.then61.i.i, label %if.else63.i.i

if.then61.i.i:                                    ; preds = %if.else59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %158 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif.0214, i32 0, i32 8
  %ap_rate_idx.i.i = getelementptr inbounds %struct.anon.130, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %ap_rate_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %ap_rate_idx.i.i, align 2
  br label %if.end96.i.i

if.else63.i.i:                                    ; preds = %if.else59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %basic_rate_idx64.i.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif.0214, i32 0, i32 8, i32 0, i32 1
  %161 = ptrtoint ptr %basic_rate_idx64.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %basic_rate_idx64.i.i, align 1
  br label %if.end96.i.i

if.else69.i.i:                                    ; preds = %if.else43.i.i
  %163 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif.0214, i32 0, i32 8
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %163, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %165, i8 %88)
  %cmp72.i.i = icmp eq i8 %165, %88
  br i1 %cmp72.i.i, label %if.then74.i.i, label %if.else76.i.i

if.then74.i.i:                                    ; preds = %if.else69.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mgmt_rate_idx.i.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif.0214, i32 0, i32 8, i32 0, i32 4
  %166 = ptrtoint ptr %mgmt_rate_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %mgmt_rate_idx.i.i, align 8
  br label %if.end96.i.i

if.else76.i.i:                                    ; preds = %if.else69.i.i
  %bcast_hlid.i.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif.0214, i32 0, i32 8, i32 0, i32 1
  %168 = ptrtoint ptr %bcast_hlid.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %bcast_hlid.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %169, i8 %88)
  %cmp79.i.i = icmp eq i8 %169, %88
  br i1 %cmp79.i.i, label %if.else76.i.i.if.then88.i.i_crit_edge, label %lor.lhs.false81.i.i

if.else76.i.i.if.then88.i.i_crit_edge:            ; preds = %if.else76.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then88.i.i

lor.lhs.false81.i.i:                              ; preds = %if.else76.i.i
  %protocol82.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.8.i208, i32 0, i32 15, i32 0, i32 18
  %170 = ptrtoint ptr %protocol82.i.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %protocol82.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %171)
  %cmp84.i.i = icmp ne i16 %171, -30578
  %172 = and i16 %112, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %172)
  %cmp.i181.i.i = icmp eq i16 %172, 2048
  %or.cond190.i.i = select i1 %cmp84.i.i, i1 %cmp.i181.i.i, i1 false
  br i1 %or.cond190.i.i, label %if.else90.i.i, label %lor.lhs.false81.i.i.if.then88.i.i_crit_edge

lor.lhs.false81.i.i.if.then88.i.i_crit_edge:      ; preds = %lor.lhs.false81.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then88.i.i

if.then88.i.i:                                    ; preds = %lor.lhs.false81.i.i.if.then88.i.i_crit_edge, %if.else76.i.i.if.then88.i.i_crit_edge
  %bcast_rate_idx.i.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif.0214, i32 0, i32 8, i32 0, i32 5
  %173 = ptrtoint ptr %bcast_rate_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %bcast_rate_idx.i.i, align 1
  br label %if.end96.i.i

if.else90.i.i:                                    ; preds = %lor.lhs.false81.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx91.i.i = getelementptr %struct.wl12xx_vif, ptr %wlvif.0214, i32 0, i32 8, i32 0, i32 6, i32 %retval.0.i.i.i
  %175 = ptrtoint ptr %arrayidx91.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx91.i.i, align 1
  br label %if.end96.i.i

if.end96.i.i:                                     ; preds = %if.else90.i.i, %if.then88.i.i, %if.then74.i.i, %if.else63.i.i, %if.then61.i.i, %if.then57.i.i, %if.then52.i.i, %if.end36.thread.i.i
  %tx_attr.0189.i.i = phi i16 [ %shl.i.i, %if.then52.i.i ], [ %shl.i.i, %if.then57.i.i ], [ %shl.i.i, %if.then61.i.i ], [ %shl.i.i, %if.else63.i.i ], [ %shl.i.i, %if.then74.i.i ], [ %shl.i.i, %if.then88.i.i ], [ %shl.i.i, %if.else90.i.i ], [ %.mux.i.i, %if.end36.thread.i.i ]
  %rate_idx.0.shrunk.i.i = phi i8 [ %151, %if.then52.i.i ], [ %156, %if.then57.i.i ], [ %160, %if.then61.i.i ], [ %162, %if.else63.i.i ], [ %167, %if.then74.i.i ], [ %174, %if.then88.i.i ], [ %176, %if.else90.i.i ], [ 0, %if.end36.thread.i.i ]
  %rate_idx.0.i.i = zext i8 %rate_idx.0.shrunk.i.i to i16
  %shl97.i.i = shl nuw nsw i16 %rate_idx.0.i.i, 5
  %177 = and i16 %112, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20480, i16 %177)
  %cmp.i182.i.i = icmp eq i16 %177, -20480
  %178 = shl i16 %112, 8
  %179 = and i16 %178, 16384
  %180 = select i1 %cmp.i182.i.i, i16 %179, i16 0
  %flags111.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.8.i208, i32 0, i32 3, i32 32
  %181 = ptrtoint ptr %flags111.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %flags111.i.i, align 8
  %183 = trunc i32 %182 to i16
  %184 = shl i16 %183, 15
  %or99.i.i = or i16 %tx_attr.0189.i.i, %180
  %tx_attr.1.i.i = or i16 %or99.i.i, %shl97.i.i
  %185 = or i16 %tx_attr.1.i.i, %184
  %186 = tail call i16 @llvm.bswap.i16(i16 %185) #10
  %tx_attr119.i.i = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %110, i32 0, i32 4
  %187 = ptrtoint ptr %tx_attr119.i.i to i32
  call void @__asan_storeN_noabort(i32 %187, i32 2)
  store i16 %186, ptr %tx_attr119.i.i, align 1
  %188 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %ops.i.i.i, align 4
  %set_tx_desc_csum.i.i.i = getelementptr inbounds %struct.wlcore_ops, ptr %189, i32 0, i32 23
  %190 = ptrtoint ptr %set_tx_desc_csum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %set_tx_desc_csum.i.i.i, align 4
  %tobool.not.i.i.i146 = icmp eq ptr %191, null
  br i1 %tobool.not.i.i.i146, label %do.body1.i.i.i147, label %wlcore_hw_set_tx_desc_csum.exit.i.i

do.body1.i.i.i147:                                ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wlcore/hw_ops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 127, 0\0A.popsection", ""() #10, !srcloc !104
  unreachable

wlcore_hw_set_tx_desc_csum.exit.i.i:              ; preds = %if.end96.i.i
  tail call void %191(ptr noundef %wl, ptr noundef %110, ptr noundef nonnull %skb.8.i208) #10
  %192 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ops.i.i.i, align 4
  %set_tx_desc_data_len.i.i.i = getelementptr inbounds %struct.wlcore_ops, ptr %193, i32 0, i32 11
  %194 = ptrtoint ptr %set_tx_desc_data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %set_tx_desc_data_len.i.i.i, align 4
  %tobool.not.i185.i.i = icmp eq ptr %195, null
  br i1 %tobool.not.i185.i.i, label %do.body1.i186.i.i, label %wl1271_tx_fill_hdr.exit.i

do.body1.i186.i.i:                                ; preds = %wlcore_hw_set_tx_desc_csum.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wlcore/hw_ops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 39, 0\0A.popsection", ""() #10, !srcloc !105
  unreachable

wl1271_tx_fill_hdr.exit.i:                        ; preds = %wlcore_hw_set_tx_desc_csum.exit.i.i
  tail call void %195(ptr noundef %wl, ptr noundef %110, ptr noundef nonnull %skb.8.i208) #10
  %or.cond165.i = or i1 %tobool8.not215, %cmp.i.i136
  br i1 %or.cond165.i, label %wl1271_tx_fill_hdr.exit.i.if.end93.i_crit_edge, label %land.lhs.true88.i

wl1271_tx_fill_hdr.exit.i.if.end93.i_crit_edge:   ; preds = %wl1271_tx_fill_hdr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.i

land.lhs.true88.i:                                ; preds = %wl1271_tx_fill_hdr.exit.i
  %bss_type.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif.0214, i32 0, i32 3
  %196 = ptrtoint ptr %bss_type.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %bss_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %197)
  %cmp90.i = icmp eq i8 %197, 3
  br i1 %cmp90.i, label %if.then92.i, label %land.lhs.true88.i.if.end93.i_crit_edge

land.lhs.true88.i.if.end93.i_crit_edge:           ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.i

if.then92.i:                                      ; preds = %land.lhs.true88.i
  %198 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i167.i = getelementptr i8, ptr %199, i32 16
  %200 = ptrtoint ptr %add.ptr.i167.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %add.ptr.i167.i, align 2
  %202 = and i16 %201, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20480, i16 %202)
  %cmp.i.i168.i = icmp eq i16 %202, -20480
  br i1 %cmp.i.i168.i, label %if.end.i169.i, label %if.then92.i.wl1271_tx_ap_update_inconnection_sta.exit.i_crit_edge

if.then92.i.wl1271_tx_ap_update_inconnection_sta.exit.i_crit_edge: ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wl1271_tx_ap_update_inconnection_sta.exit.i

if.end.i169.i:                                    ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #12
  %addr1.i.i = getelementptr i8, ptr %199, i32 20
  %call1.i.i = tail call i32 @wl1271_acx_set_inconnection_sta(ptr noundef %wl, ptr noundef nonnull %wlvif.0214, ptr noundef %addr1.i.i) #10
  tail call void @wlcore_update_inconn_sta(ptr noundef %wl, ptr noundef nonnull %wlvif.0214, ptr noundef null, i1 noundef zeroext true) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %203 = load volatile i32, ptr @jiffies, align 128
  %pending_auth_reply_time.i.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif.0214, i32 0, i32 43
  %204 = ptrtoint ptr %pending_auth_reply_time.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %pending_auth_reply_time.i.i, align 8
  %pending_auth_complete_work.i.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif.0214, i32 0, i32 44
  %call2.i.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %pending_auth_complete_work.i.i) #10
  %205 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %hw.i.i, align 4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %206, ptr noundef %pending_auth_complete_work.i.i, i32 noundef 100) #10
  br label %wl1271_tx_ap_update_inconnection_sta.exit.i

wl1271_tx_ap_update_inconnection_sta.exit.i:      ; preds = %if.end.i169.i, %if.then92.i.wl1271_tx_ap_update_inconnection_sta.exit.i_crit_edge
  %conv.i170.i = zext i8 %88 to i32
  %links_map.i.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif.0214, i32 0, i32 11
  %div3.i.i.i = lshr i32 %conv.i170.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %links_map.i.i, i32 %div3.i.i.i
  %207 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %conv.i170.i, 31
  %209 = shl nuw i32 1, %and.i.i.i
  %210 = and i32 %208, %209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool.not.i171.i = icmp eq i32 %210, 0
  br i1 %tobool.not.i171.i, label %do.end.i.i, label %if.end23.i.i, !prof !97

do.end.i.i:                                       ; preds = %wl1271_tx_ap_update_inconnection_sta.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 113, i32 noundef 9, ptr noundef null) #10
  br label %if.end93.i

if.end23.i.i:                                     ; preds = %wl1271_tx_ap_update_inconnection_sta.exit.i
  %arrayidx.i49.i.i = getelementptr i32, ptr %ap_fw_ps_map.i.i, i32 %div3.i.i.i
  %211 = ptrtoint ptr %arrayidx.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile i32, ptr %arrayidx.i49.i.i, align 4
  %allocated_pkts.i.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %conv.i170.i, i32 1
  %213 = ptrtoint ptr %allocated_pkts.i.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %allocated_pkts.i.i, align 8
  %215 = ptrtoint ptr %active_link_count.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %active_link_count.i.i, align 8
  %217 = ptrtoint ptr %ap_count.i.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %ap_count.i.i, align 1
  %conv27.i.i = zext i8 %218 to i32
  %mul.i.i = shl nuw nsw i32 %conv27.i.i, 1
  %add.i172.i = or i32 %mul.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %216, i32 %add.i172.i)
  %cmp.i173.i = icmp sgt i32 %216, %add.i172.i
  %219 = and i32 %212, %209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool26.not.i174.i = icmp ne i32 %219, 0
  %or.cond.i175.i = select i1 %cmp.i173.i, i1 %tobool26.not.i174.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %214)
  %cmp33.i.i = icmp ugt i8 %214, 1
  %or.cond47.i.i = select i1 %or.cond.i175.i, i1 %cmp33.i.i, i1 false
  br i1 %or.cond47.i.i, label %if.then35.i.i, label %if.end23.i.i.if.end93.i_crit_edge

if.end23.i.i.if.end93.i_crit_edge:                ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.i

if.then35.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @wl12xx_ps_link_start(ptr noundef %wl, ptr noundef nonnull %wlvif.0214, i8 noundef zeroext %88, i1 noundef zeroext true) #10
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then35.i.i, %if.end23.i.i.if.end93.i_crit_edge, %do.end.i.i, %land.lhs.true88.i.if.end93.i_crit_edge, %wl1271_tx_fill_hdr.exit.i.if.end93.i_crit_edge
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.8.i208, i32 0, i32 6
  %220 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %len.i, align 4
  %222 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %quirks.i, align 8
  %224 = and i32 %223, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %224)
  %.not.i.i = icmp eq i32 %224, 4
  %add.i177.i = add i32 %221, 3
  %and4.i.i = and i32 %add.i177.i, -4
  %add5.i.i = add i32 %221, 255
  %and6.i.i = and i32 %add5.i.i, -256
  %retval.0.i.i = select i1 %.not.i.i, i32 %and6.i.i, i32 %and4.i.i
  %225 = ptrtoint ptr %aggr_buf.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %aggr_buf.i, align 4
  %add.ptr.i148 = getelementptr i8, ptr %226, i32 %buf_offset.0
  %227 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %data.i.i, align 4
  %229 = call ptr @memcpy(ptr %add.ptr.i148, ptr %228, i32 %221)
  %230 = load ptr, ptr %aggr_buf.i, align 4
  %add.ptr97.i = getelementptr i8, ptr %230, i32 %buf_offset.0
  %231 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %len.i, align 4
  %add.ptr99.i = getelementptr i8, ptr %add.ptr97.i, i32 %232
  %sub.i = sub i32 %retval.0.i.i, %232
  %233 = call ptr @memset(ptr %add.ptr99.i, i32 0, i32 %sub.i)
  br i1 %cmp.i.i136, label %if.then102.i, label %if.end93.i.wl1271_prepare_tx_frame.exit_crit_edge

if.end93.i.wl1271_prepare_tx_frame.exit_crit_edge: ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wl1271_prepare_tx_frame.exit

if.then102.i:                                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #12
  %call103.i = tail call ptr @skb_pull(ptr noundef nonnull %skb.8.i208, i32 noundef 16) #10
  br label %wl1271_prepare_tx_frame.exit

wl1271_prepare_tx_frame.exit:                     ; preds = %if.then102.i, %if.end93.i.wl1271_prepare_tx_frame.exit_crit_edge, %if.end78.i.wl1271_prepare_tx_frame.exit_crit_edge, %do.end49.i.wl1271_prepare_tx_frame.exit_crit_edge
  %retval.1.i = phi i32 [ %call80.i, %if.end78.i.wl1271_prepare_tx_frame.exit_crit_edge ], [ %retval.0.i.i, %if.then102.i ], [ %retval.0.i.i, %if.end93.i.wl1271_prepare_tx_frame.exit_crit_edge ], [ %call65.i, %do.end49.i.wl1271_prepare_tx_frame.exit_crit_edge ]
  %234 = zext i32 %retval.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %234, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %retval.1.i, label %if.else21 [
    i32 -11, label %if.then12
    i32 -16, label %if.then20
  ]

if.then12:                                        ; preds = %wl1271_prepare_tx_frame.exit
  tail call fastcc void @wl1271_skb_queue_head(ptr noundef %wl, ptr noundef %wlvif.0214, ptr noundef nonnull %skb.8.i208, i8 noundef zeroext %88)
  %235 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %ops.i.i.i, align 4
  %pre_pkt_send.i = getelementptr inbounds %struct.wlcore_ops, ptr %236, i32 0, i32 35
  %237 = ptrtoint ptr %pre_pkt_send.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %pre_pkt_send.i, align 4
  %tobool.not.i149 = icmp eq ptr %238, null
  br i1 %tobool.not.i149, label %if.then12.wlcore_hw_pre_pkt_send.exit_crit_edge, label %if.then.i

if.then12.wlcore_hw_pre_pkt_send.exit_crit_edge:  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_hw_pre_pkt_send.exit

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %call.i150 = tail call i32 %238(ptr noundef %wl, i32 noundef %buf_offset.0, i32 noundef %last_len.0.ph) #10
  br label %wlcore_hw_pre_pkt_send.exit

wlcore_hw_pre_pkt_send.exit:                      ; preds = %if.then.i, %if.then12.wlcore_hw_pre_pkt_send.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i150, %if.then.i ], [ %buf_offset.0, %if.then12.wlcore_hw_pre_pkt_send.exit_crit_edge ]
  %239 = ptrtoint ptr %aggr_buf.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %aggr_buf.i, align 4
  %241 = ptrtoint ptr %rtable.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %rtable.i, align 4
  %arrayidx.i151 = getelementptr i32, ptr %242, i32 10
  %243 = ptrtoint ptr %arrayidx.i151 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx.i151, align 4
  %call.i.i152 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %244) #10
  %245 = ptrtoint ptr %flags111.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load volatile i32, ptr %flags111.i, align 4
  %247 = and i32 %246, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %tobool.not.i.i.i153 = icmp eq i32 %247, 0
  br i1 %tobool.not.i.i.i153, label %lor.lhs.false.i.i.i, label %wlcore_hw_pre_pkt_send.exit.cleanup59_crit_edge

wlcore_hw_pre_pkt_send.exit.cleanup59_crit_edge:  ; preds = %wlcore_hw_pre_pkt_send.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

lor.lhs.false.i.i.i:                              ; preds = %wlcore_hw_pre_pkt_send.exit
  %248 = ptrtoint ptr %flags111.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load volatile i32, ptr %flags111.i, align 4
  %250 = and i32 %249, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool3.not.i.i.i = icmp ne i32 %250, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i.i152)
  %cmp.i.i.i154 = icmp ne i32 %call.i.i152, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i154, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !97

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 52, i32 noundef 9, ptr noundef null) #10
  br label %cleanup59

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %251 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %252, i32 0, i32 1
  %253 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %write.i.i.i, align 4
  %255 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i = tail call i32 %254(ptr noundef %256, i32 noundef %call.i.i152, ptr noundef %240, i32 noundef %retval.0.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.while.cond.backedge_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.while.cond.backedge_crit_edge:     ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %wlcore_write_data.exit.while.cond.backedge_crit_edge, %if.end25.i.i.i.while.cond.backedge_crit_edge
  %bus_ret.0.be = phi i32 [ %call27.i.i.i, %wlcore_write_data.exit.while.cond.backedge_crit_edge ], [ 0, %if.end25.i.i.i.while.cond.backedge_crit_edge ]
  br label %while.cond

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %257 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %cmp29.not.i.i.i = icmp eq i32 %258, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wlcore_write_data.exit_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wlcore_write_data.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_write_data.exit

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags111.i) #10
  br label %wlcore_write_data.exit

wlcore_write_data.exit:                           ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_write_data.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp15 = icmp slt i32 %call27.i.i.i, 0
  br i1 %cmp15, label %wlcore_write_data.exit.cleanup59_crit_edge, label %wlcore_write_data.exit.while.cond.backedge_crit_edge

wlcore_write_data.exit.while.cond.backedge_crit_edge: ; preds = %wlcore_write_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

wlcore_write_data.exit.cleanup59_crit_edge:       ; preds = %wlcore_write_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

if.then20:                                        ; preds = %wl1271_prepare_tx_frame.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @wl1271_skb_queue_head(ptr noundef %wl, ptr noundef %wlvif.0214, ptr noundef nonnull %skb.8.i208, i8 noundef zeroext %88)
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags111.i) #10
  br label %out_ack

if.else21:                                        ; preds = %wl1271_prepare_tx_frame.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %cmp22 = icmp slt i32 %retval.1.i, 0
  br i1 %cmp22, label %if.else21.if.then23_crit_edge, label %if.end30

if.else21.if.then23_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

if.then23:                                        ; preds = %if.else21.if.then23_crit_edge, %if.else21.thread
  %259 = ptrtoint ptr %dummy_packet.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dummy_packet.i, align 4
  %cmp.i157 = icmp eq ptr %260, %skb.8.i208
  br i1 %cmp.i157, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @wl1271_skb_queue_head(ptr noundef %wl, ptr noundef %wlvif.0214, ptr noundef nonnull %skb.8.i208, i8 noundef zeroext %88)
  br label %out_ack

if.else26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %261 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %hw.i.i, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %262, ptr noundef nonnull %skb.8.i208) #10
  br label %out_ack

if.end30:                                         ; preds = %if.else21
  %add = add i32 %retval.1.i, %buf_offset.0
  %263 = ptrtoint ptr %tx_packets_count to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %tx_packets_count, align 4
  %inc = add i32 %264, 1
  store i32 %inc, ptr %tx_packets_count, align 4
  br i1 %89, label %if.then32, label %if.end30.while.cond.outer.backedge_crit_edge

if.end30.while.cond.outer.backedge_crit_edge:     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.backedge

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.8.i208, i32 0, i32 19
  %265 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %data, align 4
  %hlid33 = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %266, i32 0, i32 7
  %267 = ptrtoint ptr %hlid33 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %hlid33, align 1
  %269 = and i8 %268, 31
  %rem.i = zext i8 %269 to i32
  %shl.i = shl nuw i32 1, %rem.i
  %270 = ptrtoint ptr %active_hlids to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %active_hlids, align 4
  %or.i = or i32 %shl.i, %271
  store i32 %or.i, ptr %active_hlids, align 4
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.then32, %if.end30.while.cond.outer.backedge_crit_edge
  br label %while.cond.outer

out_ack:                                          ; preds = %if.else26, %if.then25, %if.then20, %wl1271_skb_dequeue.exit.out_ack_crit_edge, %wl1271_skb_dequeue.exit.thread209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_offset.0)
  %tobool36.not = icmp eq i32 %buf_offset.0, 0
  br i1 %tobool36.not, label %if.end45, label %if.then37

if.then37:                                        ; preds = %out_ack
  %272 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %ops.i.i.i, align 4
  %pre_pkt_send.i159 = getelementptr inbounds %struct.wlcore_ops, ptr %273, i32 0, i32 35
  %274 = ptrtoint ptr %pre_pkt_send.i159 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %pre_pkt_send.i159, align 4
  %tobool.not.i160 = icmp eq ptr %275, null
  br i1 %tobool.not.i160, label %if.then37.wlcore_hw_pre_pkt_send.exit164_crit_edge, label %if.then.i162

if.then37.wlcore_hw_pre_pkt_send.exit164_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_hw_pre_pkt_send.exit164

if.then.i162:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %call.i161 = tail call i32 %275(ptr noundef %wl, i32 noundef %buf_offset.0, i32 noundef %last_len.0.ph) #10
  br label %wlcore_hw_pre_pkt_send.exit164

wlcore_hw_pre_pkt_send.exit164:                   ; preds = %if.then.i162, %if.then37.wlcore_hw_pre_pkt_send.exit164_crit_edge
  %retval.0.i163 = phi i32 [ %call.i161, %if.then.i162 ], [ %buf_offset.0, %if.then37.wlcore_hw_pre_pkt_send.exit164_crit_edge ]
  %276 = ptrtoint ptr %aggr_buf.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %aggr_buf.i, align 4
  %278 = ptrtoint ptr %rtable.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %rtable.i, align 4
  %arrayidx.i166 = getelementptr i32, ptr %279, i32 10
  %280 = ptrtoint ptr %arrayidx.i166 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx.i166, align 4
  %call.i.i167 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %281) #10
  %282 = ptrtoint ptr %flags111.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load volatile i32, ptr %flags111.i, align 4
  %284 = and i32 %283, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool.not.i.i.i169 = icmp eq i32 %284, 0
  br i1 %tobool.not.i.i.i169, label %lor.lhs.false.i.i.i173, label %wlcore_hw_pre_pkt_send.exit164.cleanup59_crit_edge

wlcore_hw_pre_pkt_send.exit164.cleanup59_crit_edge: ; preds = %wlcore_hw_pre_pkt_send.exit164
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

lor.lhs.false.i.i.i173:                           ; preds = %wlcore_hw_pre_pkt_send.exit164
  %285 = ptrtoint ptr %flags111.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load volatile i32, ptr %flags111.i, align 4
  %287 = and i32 %286, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool3.not.i.i.i170 = icmp ne i32 %287, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i.i167)
  %cmp.i.i.i171 = icmp ne i32 %call.i.i167, 131068
  %spec.select.i.i.i172 = and i1 %cmp.i.i.i171, %tobool3.not.i.i.i170
  br i1 %spec.select.i.i.i172, label %do.end.i.i.i174, label %if.end25.i.i.i180, !prof !97

do.end.i.i.i174:                                  ; preds = %lor.lhs.false.i.i.i173
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 52, i32 noundef 9, ptr noundef null) #10
  br label %cleanup59

if.end25.i.i.i180:                                ; preds = %lor.lhs.false.i.i.i173
  %288 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i176 = getelementptr inbounds %struct.wl1271_if_operations, ptr %289, i32 0, i32 1
  %290 = ptrtoint ptr %write.i.i.i176 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %write.i.i.i176, align 4
  %292 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i178 = tail call i32 %291(ptr noundef %293, i32 noundef %call.i.i167, ptr noundef %277, i32 noundef %retval.0.i163, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i178)
  %tobool28.not.i.i.i179 = icmp eq i32 %call27.i.i.i178, 0
  br i1 %tobool28.not.i.i.i179, label %if.end25.i.i.i180.if.then47_crit_edge, label %land.lhs.true.i.i.i183

if.end25.i.i.i180.if.then47_crit_edge:            ; preds = %if.end25.i.i.i180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

land.lhs.true.i.i.i183:                           ; preds = %if.end25.i.i.i180
  %294 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %295)
  %cmp29.not.i.i.i182 = icmp eq i32 %295, 0
  br i1 %cmp29.not.i.i.i182, label %land.lhs.true.i.i.i183.wlcore_write_data.exit186_crit_edge, label %if.then30.i.i.i184

land.lhs.true.i.i.i183.wlcore_write_data.exit186_crit_edge: ; preds = %land.lhs.true.i.i.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_write_data.exit186

if.then30.i.i.i184:                               ; preds = %land.lhs.true.i.i.i183
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags111.i) #10
  br label %wlcore_write_data.exit186

wlcore_write_data.exit186:                        ; preds = %if.then30.i.i.i184, %land.lhs.true.i.i.i183.wlcore_write_data.exit186_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i178)
  %cmp41 = icmp slt i32 %call27.i.i.i178, 0
  br i1 %cmp41, label %wlcore_write_data.exit186.cleanup59_crit_edge, label %wlcore_write_data.exit186.if.then47_crit_edge

wlcore_write_data.exit186.if.then47_crit_edge:    ; preds = %wlcore_write_data.exit186
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

wlcore_write_data.exit186.cleanup59_crit_edge:    ; preds = %wlcore_write_data.exit186
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

if.end45:                                         ; preds = %out_ack
  br i1 %sent_packets.0.off0, label %if.end45.if.then47_crit_edge, label %if.end45.if.end57_crit_edge

if.end45.if.end57_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.end45.if.then47_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

if.then47:                                        ; preds = %if.end45.if.then47_crit_edge, %wlcore_write_data.exit186.if.then47_crit_edge, %if.end25.i.i.i180.if.then47_crit_edge
  %bus_ret.3238 = phi i32 [ %bus_ret.0, %if.end45.if.then47_crit_edge ], [ %call27.i.i.i178, %wlcore_write_data.exit186.if.then47_crit_edge ], [ 0, %if.end25.i.i.i180.if.then47_crit_edge ]
  %296 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %quirks.i, align 8
  %and = and i32 %297, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %if.then47.if.end56_crit_edge, label %if.then49

if.then47.if.end56_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then49:                                        ; preds = %if.then47
  %298 = ptrtoint ptr %tx_packets_count to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %tx_packets_count, align 4
  %call.i187 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3148280) #10
  %300 = tail call i32 @llvm.bswap.i32(i32 %299) #10
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %301 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %buffer_32.i.i, align 4
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %300, ptr %302, align 4
  %304 = load ptr, ptr %buffer_32.i.i, align 4
  %305 = ptrtoint ptr %flags111.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load volatile i32, ptr %flags111.i, align 4
  %307 = and i32 %306, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %307)
  %tobool.not.i.i.i189 = icmp eq i32 %307, 0
  br i1 %tobool.not.i.i.i189, label %lor.lhs.false.i.i.i193, label %if.then49.cleanup59_crit_edge

if.then49.cleanup59_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

lor.lhs.false.i.i.i193:                           ; preds = %if.then49
  %308 = ptrtoint ptr %flags111.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load volatile i32, ptr %flags111.i, align 4
  %310 = and i32 %309, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool3.not.i.i.i190 = icmp ne i32 %310, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i187)
  %cmp.i.i.i191 = icmp ne i32 %call.i187, 131068
  %spec.select.i.i.i192 = and i1 %cmp.i.i.i191, %tobool3.not.i.i.i190
  br i1 %spec.select.i.i.i192, label %do.end.i.i.i194, label %if.end25.i.i.i200, !prof !97

do.end.i.i.i194:                                  ; preds = %lor.lhs.false.i.i.i193
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 52, i32 noundef 9, ptr noundef null) #10
  br label %cleanup59

if.end25.i.i.i200:                                ; preds = %lor.lhs.false.i.i.i193
  %311 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i196 = getelementptr inbounds %struct.wl1271_if_operations, ptr %312, i32 0, i32 1
  %313 = ptrtoint ptr %write.i.i.i196 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %write.i.i.i196, align 4
  %315 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i198 = tail call i32 %314(ptr noundef %316, i32 noundef %call.i187, ptr noundef %304, i32 noundef 4, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i198)
  %tobool28.not.i.i.i199 = icmp eq i32 %call27.i.i.i198, 0
  br i1 %tobool28.not.i.i.i199, label %if.end25.i.i.i200.if.end56_crit_edge, label %land.lhs.true.i.i.i203

if.end25.i.i.i200.if.end56_crit_edge:             ; preds = %if.end25.i.i.i200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

land.lhs.true.i.i.i203:                           ; preds = %if.end25.i.i.i200
  %317 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %cmp29.not.i.i.i202 = icmp eq i32 %318, 0
  br i1 %cmp29.not.i.i.i202, label %land.lhs.true.i.i.i203.wlcore_write32.exit_crit_edge, label %if.then30.i.i.i204

land.lhs.true.i.i.i203.wlcore_write32.exit_crit_edge: ; preds = %land.lhs.true.i.i.i203
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_write32.exit

if.then30.i.i.i204:                               ; preds = %land.lhs.true.i.i.i203
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags111.i) #10
  br label %wlcore_write32.exit

wlcore_write32.exit:                              ; preds = %if.then30.i.i.i204, %land.lhs.true.i.i.i203.wlcore_write32.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i198)
  %cmp52 = icmp slt i32 %call27.i.i.i198, 0
  br i1 %cmp52, label %wlcore_write32.exit.cleanup59_crit_edge, label %wlcore_write32.exit.if.end56_crit_edge

wlcore_write32.exit.if.end56_crit_edge:           ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

wlcore_write32.exit.cleanup59_crit_edge:          ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

if.end56:                                         ; preds = %wlcore_write32.exit.if.end56_crit_edge, %if.end25.i.i.i200.if.end56_crit_edge, %if.then47.if.end56_crit_edge
  %bus_ret.4 = phi i32 [ %call27.i.i.i198, %wlcore_write32.exit.if.end56_crit_edge ], [ %bus_ret.3238, %if.then47.if.end56_crit_edge ], [ 0, %if.end25.i.i.i200.if.end56_crit_edge ]
  tail call void @wl1271_handle_tx_low_watermark(ptr noundef %wl)
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end45.if.end57_crit_edge
  %bus_ret.5 = phi i32 [ %bus_ret.4, %if.end56 ], [ %bus_ret.0, %if.end45.if.end57_crit_edge ]
  call void @wl12xx_rearm_rx_streaming(ptr noundef %wl, ptr noundef nonnull %active_hlids)
  br label %cleanup59

cleanup59:                                        ; preds = %if.end57, %wlcore_write32.exit.cleanup59_crit_edge, %do.end.i.i.i194, %if.then49.cleanup59_crit_edge, %wlcore_write_data.exit186.cleanup59_crit_edge, %do.end.i.i.i174, %wlcore_hw_pre_pkt_send.exit164.cleanup59_crit_edge, %wlcore_write_data.exit.cleanup59_crit_edge, %do.end.i.i.i, %wlcore_hw_pre_pkt_send.exit.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup59_crit_edge ], [ %call27.i.i.i178, %wlcore_write_data.exit186.cleanup59_crit_edge ], [ %call27.i.i.i198, %wlcore_write32.exit.cleanup59_crit_edge ], [ %bus_ret.5, %if.end57 ], [ -5, %do.end.i.i.i174 ], [ -5, %wlcore_hw_pre_pkt_send.exit164.cleanup59_crit_edge ], [ -5, %do.end.i.i.i194 ], [ -5, %if.then49.cleanup59_crit_edge ], [ -5, %do.end.i.i.i ], [ -5, %wlcore_hw_pre_pkt_send.exit.cleanup59_crit_edge ], [ %call27.i.i.i, %wlcore_write_data.exit.cleanup59_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hlid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_hlids) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl1271_skb_queue_head(ptr noundef %wl, ptr noundef %wlvif, ptr noundef %skb, i8 noundef zeroext %hlid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %1)
  %2 = icmp ult i16 %1, 4
  br i1 %2, label %switch.lookup, label %entry.wl1271_tx_get_queue.exit_crit_edge

entry.wl1271_tx_get_queue.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %wl1271_tx_get_queue.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = sext i16 %1 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.wl1271_skb_queue_head, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %wl1271_tx_get_queue.exit

wl1271_tx_get_queue.exit:                         ; preds = %switch.lookup, %entry.wl1271_tx_get_queue.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.wl1271_tx_get_queue.exit_crit_edge ]
  %dummy_packet.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 63
  %5 = ptrtoint ptr %dummy_packet.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dummy_packet.i, align 4
  %cmp.i = icmp eq ptr %6, %skb
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %wl1271_tx_get_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  %flags3 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags3) #10
  br label %do.body9

if.else:                                          ; preds = %wl1271_tx_get_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  %idxprom = zext i8 %hlid to i32
  %arrayidx = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %idxprom
  %arrayidx4 = getelementptr [4 x %struct.sk_buff_head], ptr %arrayidx, i32 0, i32 %retval.0.i
  tail call void @skb_queue_head(ptr noundef %arrayidx4, ptr noundef %skb) #10
  %num_links = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 128
  %7 = ptrtoint ptr %num_links to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_links, align 8
  %conv6 = zext i8 %8 to i32
  %add = add nuw nsw i32 %conv6, %idxprom
  %9 = trunc i32 %add to i16
  %rem.lhs.trunc = add nsw i16 %9, -1
  %rem.rhs.trunc = zext i8 %8 to i16
  %rem36 = srem i16 %rem.lhs.trunc, %rem.rhs.trunc
  %rem.sext = sext i16 %rem36 to i32
  %last_tx_hlid = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 9
  %10 = ptrtoint ptr %last_tx_hlid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rem.sext, ptr %last_tx_hlid, align 8
  br label %do.body9

do.body9:                                         ; preds = %if.else, %if.then
  %wl_lock = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 11
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wl_lock) #10
  %arrayidx15 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 %retval.0.i
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx15, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %arrayidx15, align 4
  %tobool.not = icmp eq ptr %wlvif, null
  br i1 %tobool.not, label %do.body9.if.end20_crit_edge, label %if.then16

do.body9.if.end20_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx18 = getelementptr %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 10, i32 %retval.0.i
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx18, align 4
  %inc19 = add i32 %14, 1
  store i32 %inc19, ptr %arrayidx18, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %do.body9.if.end20_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wl_lock, i32 noundef %call12) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1271_tx_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -672
  %mutex = getelementptr i8, ptr %work, i32 -564
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %dev = getelementptr i8, ptr %work, i32 -660
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !107
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.out_crit_edge, label %do.end11.i.i.i.i

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !108
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @wlcore_tx_work_locked(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %usage_count.i20 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 13
  %call.i.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i20, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %usage_count.i20, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i20, ptr %usage_count.i20, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i20) #10, !srcloc !107
  %asmresult.i.i.i.i22 = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i22)
  %cmp.not.i.i.i.i23 = icmp eq i32 %asmresult.i.i.i.i22, 0
  br i1 %cmp.not.i.i.i.i23, label %if.then4.pm_runtime_put_noidle.exit25_crit_edge, label %do.end11.i.i.i.i24

if.then4.pm_runtime_put_noidle.exit25_crit_edge:  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit25

do.end11.i.i.i.i24:                               ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !108
  br label %pm_runtime_put_noidle.exit25

pm_runtime_put_noidle.exit25:                     ; preds = %do.end11.i.i.i.i24, %if.then4.pm_runtime_put_noidle.exit25_crit_edge
  tail call void @wl12xx_queue_recovery_work(ptr noundef %add.ptr) #10
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i26 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i26, ptr %last_busy.i, align 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i27 = tail call i32 @__pm_runtime_suspend(ptr noundef %10, i32 noundef 13) #10
  br label %out

out:                                              ; preds = %if.end6, %pm_runtime_put_noidle.exit25, %do.end11.i.i.i.i, %if.then.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl12xx_queue_recovery_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlcore_tx_complete(ptr noundef %wl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %target_mem_map = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 42
  %0 = ptrtoint ptr %target_mem_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %target_mem_map, align 8
  %tx_result = getelementptr inbounds %struct.wl1271_acx_mem_map, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %tx_result to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %tx_result, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %tx_res_if = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 93
  %5 = ptrtoint ptr %tx_res_if to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_res_if, align 8
  %call.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %4) #10
  %flags.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i.i, align 4
  %9 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false.i.i:                                ; preds = %entry
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i.i, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not.i.i = icmp ne i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i)
  %cmp.i.i = icmp ne i32 %call.i, 131068
  %spec.select.i.i = and i1 %cmp.i.i, %tobool3.not.i.i
  br i1 %spec.select.i.i, label %lor.lhs.false.i.i.out.sink.split_crit_edge, label %if.end25.i.i, !prof !97

lor.lhs.false.i.i.out.sink.split_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

if.end25.i.i:                                     ; preds = %lor.lhs.false.i.i
  %if_ops.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %13 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %if_ops.i.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %dev.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 4
  %call27.i.i = tail call i32 %16(ptr noundef %18, i32 noundef %call.i, ptr noundef %6, i32 noundef 264, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end25.i.i.if.end_crit_edge, label %land.lhs.true.i.i

if.end25.i.i.if.end_crit_edge:                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i.i:                                ; preds = %if.end25.i.i
  %state.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %19 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp29.not.i.i = icmp eq i32 %20, 0
  br i1 %cmp29.not.i.i, label %land.lhs.true.i.i.wlcore_read.exit_crit_edge, label %if.then30.i.i

land.lhs.true.i.i.wlcore_read.exit_crit_edge:     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_read.exit

if.then30.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i) #10
  br label %wlcore_read.exit

wlcore_read.exit:                                 ; preds = %if.then30.i.i, %land.lhs.true.i.i.wlcore_read.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %cmp = icmp slt i32 %call27.i.i, 0
  br i1 %cmp, label %wlcore_read.exit.out_crit_edge, label %wlcore_read.exit.if.end_crit_edge

wlcore_read.exit.if.end_crit_edge:                ; preds = %wlcore_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

wlcore_read.exit.out_crit_edge:                   ; preds = %wlcore_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %wlcore_read.exit.if.end_crit_edge, %if.end25.i.i.if.end_crit_edge
  %21 = ptrtoint ptr %tx_res_if to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_res_if, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %22, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %tx_result to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %tx_result, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %add = add i32 %28, 4
  %call.i61 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %add) #10
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %29 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buffer_32.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %24, ptr %30, align 4
  %32 = load ptr, ptr %buffer_32.i.i, align 4
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags.i.i, align 4
  %35 = and i32 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false.i.i.i:                              ; preds = %if.end
  %36 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags.i.i, align 4
  %38 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool3.not.i.i.i = icmp ne i32 %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i61)
  %cmp.i.i.i = icmp ne i32 %call.i61, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %lor.lhs.false.i.i.i.out.sink.split_crit_edge, label %if.end25.i.i.i, !prof !97

lor.lhs.false.i.i.i.out.sink.split_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %39 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %if_ops.i.i, align 8
  %write.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write.i.i.i, align 4
  %43 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i.i, align 4
  %call27.i.i.i = tail call i32 %42(ptr noundef %44, i32 noundef %call.i61, ptr noundef %32, i32 noundef 4, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.if.end6_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.if.end6_crit_edge:                 ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %45 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp29.not.i.i.i = icmp eq i32 %46, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_write32.exit

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i) #10
  br label %wlcore_write32.exit

wlcore_write32.exit:                              ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp4 = icmp slt i32 %call27.i.i.i, 0
  br i1 %cmp4, label %wlcore_write32.exit.out_crit_edge, label %wlcore_write32.exit.if.end6_crit_edge

wlcore_write32.exit.if.end6_crit_edge:            ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

wlcore_write32.exit.out_crit_edge:                ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end6:                                          ; preds = %wlcore_write32.exit.if.end6_crit_edge, %if.end25.i.i.i.if.end6_crit_edge
  %tx_results_count = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 46
  %47 = ptrtoint ptr %tx_results_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_results_count, align 8
  %sub = sub i32 %25, %48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %49 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %49, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6.do.end23_crit_edge, label %do.body10, !prof !98

if.end6.do.end23_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

do.body10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_tx_complete.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_tx_complete, %if.then19)) #10
          to label %do.end23 [label %if.then19], !srcloc !99

if.then19:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_tx_complete.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.5, i32 noundef %sub) #10
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body10, %if.end6.do.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp24 = icmp ugt i32 %sub, 16
  br i1 %cmp24, label %do.end34, label %do.end23.if.end37_crit_edge, !prof !97

do.end23.if.end37_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

do.end34:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %sub) #13
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %do.end23.if.end37_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %48)
  %cmp3874.not = icmp eq i32 %25, %48
  br i1 %cmp3874.not, label %if.end37.out_crit_edge, label %if.end37.for.body_crit_edge

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  br label %for.body

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end37.for.body_crit_edge
  %i.075 = phi i32 [ %inc43, %for.body.for.body_crit_edge ], [ 0, %if.end37.for.body_crit_edge ]
  %50 = ptrtoint ptr %tx_results_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_results_count, align 8
  %conv = and i32 %51, 15
  %52 = ptrtoint ptr %tx_res_if to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_res_if, align 8
  %arrayidx = getelementptr %struct.wl1271_tx_hw_res_if, ptr %53, i32 0, i32 2, i32 %conv
  tail call fastcc void @wl1271_tx_complete_packet(ptr noundef %wl, ptr noundef %arrayidx)
  %54 = ptrtoint ptr %tx_results_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_results_count, align 8
  %inc = add i32 %55, 1
  store i32 %inc, ptr %tx_results_count, align 8
  %inc43 = add nuw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc43, %sub
  br i1 %exitcond.not, label %for.body.out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out.sink.split:                                   ; preds = %lor.lhs.false.i.i.i.out.sink.split_crit_edge, %lor.lhs.false.i.i.out.sink.split_crit_edge
  %.sink = phi i32 [ 70, %lor.lhs.false.i.i.out.sink.split_crit_edge ], [ 52, %lor.lhs.false.i.i.i.out.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #10
  br label %out

out:                                              ; preds = %out.sink.split, %for.body.out_crit_edge, %if.end37.out_crit_edge, %wlcore_write32.exit.out_crit_edge, %if.end.out_crit_edge, %wlcore_read.exit.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call27.i.i, %wlcore_read.exit.out_crit_edge ], [ %call27.i.i.i, %wlcore_write32.exit.out_crit_edge ], [ -5, %entry.out_crit_edge ], [ -5, %if.end.out_crit_edge ], [ %call27.i.i.i, %if.end37.out_crit_edge ], [ -5, %out.sink.split ], [ %call27.i.i.i, %for.body.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl1271_tx_complete_packet(ptr noundef %wl, ptr nocapture noundef readonly %result) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %result, align 1
  %conv = zext i8 %1 to i32
  %num_tx_desc = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 126
  %2 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_desc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ugt i32 %3, %conv
  br i1 %cmp.not, label %lor.rhs, label %entry.do.end_crit_edge, !prof !98

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 58, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %lor.rhs.do.end_crit_edge, label %if.end, !prof !97

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv) #13
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3
  %dummy_packet.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 63
  %6 = ptrtoint ptr %dummy_packet.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dummy_packet.i, align 4
  %cmp.i = icmp eq ptr %7, %5
  br i1 %cmp.i, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %tx_frames_map.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 57
  %rem.i.i = and i32 %conv, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div6.i.i = lshr i32 %conv, 5
  %add.ptr.i.i = getelementptr i32, ptr %tx_frames_map.i, i32 %div6.i.i
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %9, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %10 = and i32 %9, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.then10.cleanup_crit_edge, label %if.then.i

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then10
  %tx_frames_cnt.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 59
  %11 = ptrtoint ptr %tx_frames_cnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_frames_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp.i152 = icmp eq i32 %12, %3
  br i1 %cmp.i152, label %if.then3.i, label %if.then.i.if.end.i_crit_edge, !prof !97

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %tx_frames_cnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_frames_cnt.i, align 4
  %dec.i = add i32 %15, -1
  store i32 %dec.i, ptr %tx_frames_cnt.i, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %16 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 8
  %vif12 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 24
  %17 = ptrtoint ptr %vif12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vif12, align 8
  %tobool.not.i153 = icmp eq ptr %18, null
  br i1 %tobool.not.i153, label %do.end.i, label %if.end11.wl12xx_vif_to_data.exit_crit_edge, !prof !97

if.end11.wl12xx_vif_to_data.exit_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %wl12xx_vif_to_data.exit

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 495, i32 noundef 9, ptr noundef null) #10
  br label %wl12xx_vif_to_data.exit

wl12xx_vif_to_data.exit:                          ; preds = %do.end.i, %if.end11.wl12xx_vif_to_data.exit_crit_edge
  %status = getelementptr inbounds %struct.wl1271_tx_hw_res_descr, ptr %result, i32 0, i32 1
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %status, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %20, label %wl12xx_vif_to_data.exit.if.end33_crit_edge [
    i8 0, label %if.then17
    i8 3, label %if.then30
  ]

wl12xx_vif_to_data.exit.if.end33_crit_edge:       ; preds = %wl12xx_vif_to_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then17:                                        ; preds = %wl12xx_vif_to_data.exit
  %22 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cb.i, align 8
  %and = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.then19, label %if.then17.if.end21_crit_edge

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %23, 512
  %24 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or, ptr %cb.i, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then17.if.end21_crit_edge
  %rate_class_index = getelementptr inbounds %struct.wl1271_tx_hw_res_descr, ptr %result, i32 0, i32 7
  %25 = ptrtoint ptr %rate_class_index to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rate_class_index, align 1
  %band = getelementptr inbounds %struct.ieee80211_vif, ptr %18, i32 1, i32 1, i32 33, i32 1, i32 12
  %27 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %band, align 4
  %call22 = tail call zeroext i8 @wlcore_rate_to_idx(ptr noundef %wl, i8 noundef zeroext %26, i32 noundef %28) #10
  %29 = ptrtoint ptr %rate_class_index to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rate_class_index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %30)
  %cmp.inv.i = icmp ugt i8 %30, 8
  %spec.select.i = select i1 %cmp.inv.i, i8 0, i8 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp5.i = icmp eq i8 %30, 0
  %31 = or i8 %spec.select.i, -128
  %flags.1.i = select i1 %cmp5.i, i8 %31, i8 %spec.select.i
  br label %if.end33.sink.split

if.then30:                                        ; preds = %wl12xx_vif_to_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  %excessive_retries = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 87, i32 4
  %32 = ptrtoint ptr %excessive_retries to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %excessive_retries, align 8
  %inc = add i32 %33, 1
  store i32 %inc, ptr %excessive_retries, align 8
  br label %if.end33.sink.split

if.end33.sink.split:                              ; preds = %if.then30, %if.end21
  %rate.0.ph = phi i8 [ -1, %if.then30 ], [ %call22, %if.end21 ]
  %rate_flags.0.ph = phi i8 [ 0, %if.then30 ], [ %flags.1.i, %if.end21 ]
  %ack_failures31 = getelementptr inbounds %struct.wl1271_tx_hw_res_descr, ptr %result, i32 0, i32 6
  %34 = ptrtoint ptr %ack_failures31 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ack_failures31, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %wl12xx_vif_to_data.exit.if.end33_crit_edge
  %rate.0 = phi i8 [ -1, %wl12xx_vif_to_data.exit.if.end33_crit_edge ], [ %rate.0.ph, %if.end33.sink.split ]
  %rate_flags.0 = phi i8 [ 0, %wl12xx_vif_to_data.exit.if.end33_crit_edge ], [ %rate_flags.0.ph, %if.end33.sink.split ]
  %retries.0 = phi i8 [ 0, %wl12xx_vif_to_data.exit.if.end33_crit_edge ], [ %35, %if.end33.sink.split ]
  %36 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %rate.0, ptr %16, align 8
  %count = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 9
  %bf.value = zext i8 %retries.0 to i16
  %bf.shl = shl i16 %bf.value, 11
  %conv39 = zext i8 %rate_flags.0 to i16
  %bf.set46 = or i16 %bf.shl, %conv39
  %37 = ptrtoint ptr %count to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %bf.set46, ptr %count, align 1
  %ack_signal = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 20
  %38 = ptrtoint ptr %ack_signal to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %ack_signal, align 4
  %ack_failures47 = getelementptr inbounds %struct.wl1271_tx_hw_res_descr, ptr %result, i32 0, i32 6
  %39 = ptrtoint ptr %ack_failures47 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ack_failures47, align 1
  %conv48 = zext i8 %40 to i32
  %retry_count = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 87, i32 3
  %41 = ptrtoint ptr %retry_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %retry_count, align 4
  %add = add i32 %42, %conv48
  store i32 %add, ptr %retry_count, align 4
  %call50 = tail call ptr @skb_pull(ptr noundef nonnull %5, i32 noundef 16) #10
  %quirks = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %43 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %quirks, align 8
  %and51 = and i32 %44, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end33.do.body63_crit_edge, label %land.lhs.true

if.end33.do.body63_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

land.lhs.true:                                    ; preds = %if.end33
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 28
  %45 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_key, align 4
  %tobool53.not = icmp eq ptr %46, null
  br i1 %tobool53.not, label %land.lhs.true.do.body63_crit_edge, label %land.lhs.true54

land.lhs.true.do.body63_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

land.lhs.true54:                                  ; preds = %land.lhs.true
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %48)
  %cmp56 = icmp eq i32 %48, 1027074
  br i1 %cmp56, label %if.then58, label %land.lhs.true54.do.body63_crit_edge

land.lhs.true54.do.body63_crit_edge:              ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

if.then58:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #12
  %call59 = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef nonnull %5) #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %50, i32 4
  %51 = call ptr @memmove(ptr %add.ptr, ptr %50, i32 %call59)
  %call61 = tail call ptr @skb_pull(ptr noundef nonnull %5, i32 noundef 4) #10
  br label %do.body63

do.body63:                                        ; preds = %if.then58, %land.lhs.true54.do.body63_crit_edge, %land.lhs.true.do.body63_crit_edge, %if.end33.do.body63_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %52 = load i32, ptr @wl12xx_debug_level, align 4
  %and64 = and i32 %52, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body63.do.end97_crit_edge, label %do.body73, !prof !98

do.body63.do.end97_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end97

do.body73:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_tx_complete_packet.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_tx_complete_packet, %if.then83)) #10
          to label %do.end97 [label %if.then83], !srcloc !99

if.then83:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %result, align 1
  %conv85 = zext i8 %54 to i32
  %55 = ptrtoint ptr %ack_failures47 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ack_failures47, align 1
  %conv87 = zext i8 %56 to i32
  %rate_class_index88 = getelementptr inbounds %struct.wl1271_tx_hw_res_descr, ptr %result, i32 0, i32 7
  %57 = ptrtoint ptr %rate_class_index88 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %rate_class_index88, align 1
  %conv89 = zext i8 %58 to i32
  %59 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %status, align 1
  %conv91 = zext i8 %60 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_tx_complete_packet.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.29, i32 noundef %conv85, ptr noundef nonnull %5, i32 noundef %conv87, i32 noundef %conv89, i32 noundef %conv91) #10
  br label %do.end97

do.end97:                                         ; preds = %if.then83, %do.body73, %do.body63.do.end97_crit_edge
  %deferred_tx_queue = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 54
  tail call void @skb_queue_tail(ptr noundef %deferred_tx_queue, ptr noundef nonnull %5) #10
  %freezable_wq = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 56
  %61 = ptrtoint ptr %freezable_wq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %freezable_wq, align 4
  %netstack_work = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 64
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %62, ptr noundef %netstack_work) #10
  %63 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %result, align 1
  %conv100 = zext i8 %64 to i32
  %tx_frames_map.i155 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 57
  %rem.i.i156 = and i32 %conv100, 31
  %shl.i.i157 = shl nuw i32 1, %rem.i.i156
  %div6.i.i158 = lshr i32 %conv100, 5
  %add.ptr.i.i159 = getelementptr i32, ptr %tx_frames_map.i155, i32 %div6.i.i158
  %65 = ptrtoint ptr %add.ptr.i.i159 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr.i.i159, align 4
  %neg.i.i160 = xor i32 %shl.i.i157, -1
  %and.i.i161 = and i32 %66, %neg.i.i160
  store i32 %and.i.i161, ptr %add.ptr.i.i159, align 4
  %67 = and i32 %shl.i.i157, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i162 = icmp eq i32 %67, 0
  br i1 %tobool.not.i162, label %do.end97.cleanup_crit_edge, label %if.then.i166

do.end97.cleanup_crit_edge:                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i166:                                     ; preds = %do.end97
  %tx_frames_cnt.i163 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 59
  %68 = ptrtoint ptr %tx_frames_cnt.i163 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_frames_cnt.i163, align 4
  %70 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_tx_desc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %71)
  %cmp.i165 = icmp eq i32 %69, %71
  br i1 %cmp.i165, label %if.then3.i168, label %if.then.i166.if.end.i171_crit_edge, !prof !97

if.then.i166.if.end.i171_crit_edge:               ; preds = %if.then.i166
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i171

if.then3.i168:                                    ; preds = %if.then.i166
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i167 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags.i167) #10
  br label %if.end.i171

if.end.i171:                                      ; preds = %if.then3.i168, %if.then.i166.if.end.i171_crit_edge
  %arrayidx.i169 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 58, i32 %conv100
  %72 = ptrtoint ptr %arrayidx.i169 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %arrayidx.i169, align 4
  %73 = ptrtoint ptr %tx_frames_cnt.i163 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_frames_cnt.i163, align 4
  %dec.i170 = add i32 %74, -1
  store i32 %dec.i170, ptr %tx_frames_cnt.i163, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i171, %do.end97.cleanup_crit_edge, %if.end.i, %if.then10.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1271_tx_reset_link_queues(ptr noundef %wl, i8 noundef zeroext %hlid) local_unnamed_addr #0 align 64 {
entry:
  %total = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %total) #10
  %0 = getelementptr inbounds [4 x i32], ptr %total, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %total, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %total, i32 0, i32 3
  %idxprom = zext i8 %hlid to i32
  %arrayidx = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %idxprom
  %dummy_packet.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 63
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %3 = call ptr @memset(ptr %total, i32 255, i32 16)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.083 = phi i32 [ 0, %entry ], [ %inc27, %for.inc.for.body_crit_edge ]
  %arrayidx1 = getelementptr [4 x i32], ptr %total, i32 0, i32 %i.083
  %arrayidx2 = getelementptr [4 x %struct.sk_buff_head], ptr %arrayidx, i32 0, i32 %i.083
  %call79 = tail call ptr @skb_dequeue(ptr noundef %arrayidx2) #10
  %tobool.not80 = icmp eq ptr %call79, null
  br i1 %tobool.not80, label %for.body.for.inc_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  br label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body:                                          ; preds = %if.end25.do.body_crit_edge, %for.body.do.body_crit_edge
  %call82 = phi ptr [ %call, %if.end25.do.body_crit_edge ], [ %call79, %for.body.do.body_crit_edge ]
  %storemerge81 = phi i32 [ %inc, %if.end25.do.body_crit_edge ], [ 0, %for.body.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %4 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.do.end18_crit_edge, label %do.body6, !prof !98

do.body.do.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_tx_reset_link_queues.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_tx_reset_link_queues, %if.then15)) #10
          to label %do.end18 [label %if.then15], !srcloc !99

if.then15:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_tx_reset_link_queues.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.8, ptr noundef nonnull %call82) #10
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.body6, %do.body.do.end18_crit_edge
  %5 = ptrtoint ptr %dummy_packet.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dummy_packet.i, align 4
  %cmp.i = icmp eq ptr %6, %call82
  br i1 %cmp.i, label %do.end18.if.end25_crit_edge, label %if.then20

do.end18.if.end25_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then20:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  %7 = getelementptr inbounds %struct.sk_buff, ptr %call82, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 8
  %count = getelementptr inbounds %struct.sk_buff, ptr %call82, i32 0, i32 3, i32 9
  %9 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %bf.load = load i16, ptr %count, align 1
  %bf.clear = and i16 %bf.load, 2047
  store i16 %bf.clear, ptr %count, align 1
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  tail call fastcc void @local_bh_disable() #10
  tail call void @ieee80211_tx_status(ptr noundef %11, ptr noundef nonnull %call82) #10
  tail call fastcc void @local_bh_enable() #10
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %do.end18.if.end25_crit_edge
  %inc = add i32 %storemerge81, 1
  %call = tail call ptr @skb_dequeue(ptr noundef %arrayidx2) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end25.for.inc_crit_edge, label %if.end25.do.body_crit_edge

if.end25.do.body_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end25.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %storemerge.lcssa = phi i32 [ 0, %for.body.for.inc_crit_edge ], [ %inc, %if.end25.for.inc_crit_edge ]
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge.lcssa, ptr %arrayidx1, align 4
  %inc27 = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc27, 4
  br i1 %exitcond.not, label %do.body29, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body29:                                        ; preds = %for.inc
  %wl_lock = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 11
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wl_lock) #10
  %wlvif = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %idxprom, i32 7
  %13 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total, align 4
  %arrayidx43 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 0
  %15 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx43, align 4
  %sub = sub i32 %16, %14
  store i32 %sub, ptr %arrayidx43, align 4
  %17 = ptrtoint ptr %wlvif to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wlvif, align 4
  %tobool44.not = icmp eq ptr %18, null
  br i1 %tobool44.not, label %for.inc52.thread, label %for.inc52

for.inc52.thread:                                 ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %0, align 4
  %arrayidx43.187 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 1
  br label %for.inc52.1.sink.split

for.inc52:                                        ; preds = %do.body29
  %arrayidx49 = getelementptr %struct.wl12xx_vif, ptr %18, i32 0, i32 10, i32 0
  %21 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx49, align 4
  %sub50 = sub i32 %22, %14
  store i32 %sub50, ptr %arrayidx49, align 4
  %23 = ptrtoint ptr %wlvif to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load ptr, ptr %wlvif, align 4
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %0, align 4
  %arrayidx43.1 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 1
  %26 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx43.1, align 4
  %sub.1 = sub i32 %27, %25
  store i32 %sub.1, ptr %arrayidx43.1, align 4
  %tobool44.not.1 = icmp eq ptr %.pr, null
  br i1 %tobool44.not.1, label %for.inc52.for.inc52.1_crit_edge, label %if.then45.1

for.inc52.for.inc52.1_crit_edge:                  ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc52.1

if.then45.1:                                      ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx49.1 = getelementptr %struct.wl12xx_vif, ptr %.pr, i32 0, i32 10, i32 1
  br label %for.inc52.1.sink.split

for.inc52.1.sink.split:                           ; preds = %if.then45.1, %for.inc52.thread
  %arrayidx43.187.sink95 = phi ptr [ %arrayidx43.187, %for.inc52.thread ], [ %arrayidx49.1, %if.then45.1 ]
  %.sink94 = phi i32 [ %20, %for.inc52.thread ], [ %25, %if.then45.1 ]
  %28 = ptrtoint ptr %arrayidx43.187.sink95 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx43.187.sink95, align 4
  %sub.188 = sub i32 %29, %.sink94
  store i32 %sub.188, ptr %arrayidx43.187.sink95, align 4
  br label %for.inc52.1

for.inc52.1:                                      ; preds = %for.inc52.1.sink.split, %for.inc52.for.inc52.1_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  %arrayidx43.2 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 2
  %32 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx43.2, align 4
  %sub.2 = sub i32 %33, %31
  store i32 %sub.2, ptr %arrayidx43.2, align 4
  %34 = ptrtoint ptr %wlvif to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wlvif, align 4
  %tobool44.not.2 = icmp eq ptr %35, null
  br i1 %tobool44.not.2, label %for.inc52.2.thread, label %for.inc52.2

for.inc52.2.thread:                               ; preds = %for.inc52.1
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %2, align 4
  %arrayidx43.391 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 3
  br label %for.inc52.3.sink.split

for.inc52.2:                                      ; preds = %for.inc52.1
  %arrayidx49.2 = getelementptr %struct.wl12xx_vif, ptr %35, i32 0, i32 10, i32 2
  %38 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx49.2, align 4
  %sub50.2 = sub i32 %39, %31
  store i32 %sub50.2, ptr %arrayidx49.2, align 4
  %40 = ptrtoint ptr %wlvif to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr90 = load ptr, ptr %wlvif, align 4
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %2, align 4
  %arrayidx43.3 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 3
  %43 = ptrtoint ptr %arrayidx43.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx43.3, align 4
  %sub.3 = sub i32 %44, %42
  store i32 %sub.3, ptr %arrayidx43.3, align 4
  %tobool44.not.3 = icmp eq ptr %.pr90, null
  br i1 %tobool44.not.3, label %for.inc52.2.for.inc52.3_crit_edge, label %if.then45.3

for.inc52.2.for.inc52.3_crit_edge:                ; preds = %for.inc52.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc52.3

if.then45.3:                                      ; preds = %for.inc52.2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx49.3 = getelementptr %struct.wl12xx_vif, ptr %.pr90, i32 0, i32 10, i32 3
  br label %for.inc52.3.sink.split

for.inc52.3.sink.split:                           ; preds = %if.then45.3, %for.inc52.2.thread
  %arrayidx43.391.sink97 = phi ptr [ %arrayidx43.391, %for.inc52.2.thread ], [ %arrayidx49.3, %if.then45.3 ]
  %.sink96 = phi i32 [ %37, %for.inc52.2.thread ], [ %42, %if.then45.3 ]
  %45 = ptrtoint ptr %arrayidx43.391.sink97 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx43.391.sink97, align 4
  %sub.392 = sub i32 %46, %.sink96
  store i32 %sub.392, ptr %arrayidx43.391.sink97, align 4
  br label %for.inc52.3

for.inc52.3:                                      ; preds = %for.inc52.3.sink.split, %for.inc52.2.for.inc52.3_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wl_lock, i32 noundef %call33) #10
  tail call void @wl1271_handle_tx_low_watermark(ptr noundef %wl)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %total) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl12xx_tx_reset_wlvif(ptr noundef %wl, ptr noundef %wlvif) local_unnamed_addr #0 align 64 {
entry:
  %hlid = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %links_map = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 11
  %num_links = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 128
  %0 = ptrtoint ptr %num_links to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_links, align 8
  %conv = zext i8 %1 to i32
  %call = tail call i32 @_find_next_bit_be(ptr noundef %links_map, i32 noundef %conv, i32 noundef 0) #10
  %2 = ptrtoint ptr %num_links to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_links, align 8
  %conv247 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv247)
  %cmp48 = icmp slt i32 %call, %conv247
  br i1 %cmp48, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bss_type = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 3
  %bcast_hlid = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 8, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ %call, %for.body.lr.ph ], [ %call20, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bss_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp5 = icmp eq i8 %6, 3
  br i1 %cmp5, label %land.lhs.true, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %7 = ptrtoint ptr %bcast_hlid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bcast_hlid, align 1
  %conv7 = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.049, i32 %conv7)
  %cmp8.not = icmp eq i32 %i.049, %conv7
  br i1 %cmp8.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true10

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true10:                                  ; preds = %land.lhs.true
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %4, align 8
  %conv11 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.049, i32 %conv11)
  %cmp12.not = icmp eq i32 %i.049, %conv11
  br i1 %cmp12.not, label %land.lhs.true10.if.else_crit_edge, label %if.then

land.lhs.true10.if.else_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  %conv14 = trunc i32 %i.049 to i8
  call void @wl1271_free_sta(ptr noundef %wl, ptr noundef %wlvif, i8 noundef zeroext %conv14) #10
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true10.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hlid) #10
  %conv15 = trunc i32 %i.049 to i8
  %11 = ptrtoint ptr %hlid to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv15, ptr %hlid, align 1
  call void @wl12xx_free_link(ptr noundef %wl, ptr noundef %wlvif, ptr noundef nonnull %hlid) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hlid) #10
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %12 = ptrtoint ptr %num_links to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_links, align 8
  %conv19 = zext i8 %13 to i32
  %add = add nsw i32 %i.049, 1
  %call20 = call i32 @_find_next_bit_be(ptr noundef %links_map, i32 noundef %conv19, i32 noundef %add) #10
  %14 = ptrtoint ptr %num_links to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_links, align 8
  %conv2 = zext i8 %15 to i32
  %cmp = icmp slt i32 %call20, %conv2
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %last_tx_hlid = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 9
  %16 = call ptr @memset(ptr %last_tx_hlid, i32 0, i32 20)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1271_free_sta(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl12xx_free_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl12xx_tx_reset(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 1
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1.i, align 4
  %add.1.i = add i32 %1, %3
  %arrayidx.2.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 2
  %4 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.2.i, align 4
  %add.2.i = add i32 %5, %add.1.i
  %arrayidx.3.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 3
  %6 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.3.i, align 4
  %add.3.i = sub i32 0, %add.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add.3.i)
  %cmp.not = icmp eq i32 %7, %add.3.i
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %num_links = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 128
  %8 = ptrtoint ptr %num_links to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_links, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp199.not = icmp eq i8 %9, 0
  br i1 %cmp199.not, label %for.cond.preheader.for.cond4.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond4.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.body.for.cond4.preheader_crit_edge, %for.cond.preheader.for.cond4.preheader_crit_edge
  %10 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 16)
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0100 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv3 = trunc i32 %i.0100 to i8
  tail call void @wl1271_tx_reset_link_queues(ptr noundef %wl, i8 noundef zeroext %conv3)
  %inc = add nuw nsw i32 %i.0100, 1
  %11 = ptrtoint ptr %num_links to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_links, align 8
  %conv = zext i8 %12 to i32
  %cmp1 = icmp ult i32 %inc, %conv
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.for.cond4.preheader_crit_edge

for.body.for.cond4.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end:                                           ; preds = %for.cond4.preheader, %entry.if.end_crit_edge
  tail call void @wl1271_handle_tx_low_watermark(ptr noundef %wl)
  %num_tx_desc = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 126
  %13 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_tx_desc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp12102.not = icmp eq i32 %14, 0
  br i1 %cmp12102.not, label %if.end.for.end61_crit_edge, label %for.body14.lr.ph

if.end.for.end61_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end61

for.body14.lr.ph:                                 ; preds = %if.end
  %tx_frames_map.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 57
  %tx_frames_cnt.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 59
  %flags.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %dummy_packet.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 63
  %quirks = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  br label %for.body14

for.body14:                                       ; preds = %for.inc59.for.body14_crit_edge, %for.body14.lr.ph
  %i.2103 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc60, %for.inc59.for.body14_crit_edge ]
  %arrayidx15 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 58, i32 %i.2103
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx15, align 4
  %cmp16 = icmp eq ptr %16, null
  br i1 %cmp16, label %for.body14.for.inc59_crit_edge, label %if.end19

for.body14.for.inc59_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc59

if.end19:                                         ; preds = %for.body14
  %rem.i.i = and i32 %i.2103, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div6.i.i = lshr i32 %i.2103, 5
  %add.ptr.i.i = getelementptr i32, ptr %tx_frames_map.i, i32 %div6.i.i
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i, align 4
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %18, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %19 = and i32 %18, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end19.wl1271_free_tx_id.exit_crit_edge, label %if.then.i

if.end19.wl1271_free_tx_id.exit_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %wl1271_free_tx_id.exit

if.then.i:                                        ; preds = %if.end19
  %20 = ptrtoint ptr %tx_frames_cnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_frames_cnt.i, align 4
  %22 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_tx_desc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.i = icmp eq i32 %21, %23
  br i1 %cmp.i, label %if.then3.i, label %if.then.i.if.end.i_crit_edge, !prof !97

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx15, align 4
  %25 = ptrtoint ptr %tx_frames_cnt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_frames_cnt.i, align 4
  %dec.i = add i32 %26, -1
  store i32 %dec.i, ptr %tx_frames_cnt.i, align 4
  br label %wl1271_free_tx_id.exit

wl1271_free_tx_id.exit:                           ; preds = %if.end.i, %if.end19.wl1271_free_tx_id.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %27 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %wl1271_free_tx_id.exit.do.end38_crit_edge, label %do.body25, !prof !98

wl1271_free_tx_id.exit.do.end38_crit_edge:        ; preds = %wl1271_free_tx_id.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38

do.body25:                                        ; preds = %wl1271_free_tx_id.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_tx_reset.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_tx_reset, %if.then34)) #10
          to label %do.end38 [label %if.then34], !srcloc !99

if.then34:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_tx_reset.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.10, ptr noundef nonnull %16) #10
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %do.body25, %wl1271_free_tx_id.exit.do.end38_crit_edge
  %28 = ptrtoint ptr %dummy_packet.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dummy_packet.i, align 4
  %cmp.i96 = icmp eq ptr %29, %16
  br i1 %cmp.i96, label %do.end38.for.inc59_crit_edge, label %if.then40

do.end38.for.inc59_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc59

if.then40:                                        ; preds = %do.end38
  %call42 = tail call ptr @skb_pull(ptr noundef nonnull %16, i32 noundef 16) #10
  %30 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %quirks, align 8
  %and43 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then40.if.end54_crit_edge, label %land.lhs.true

if.then40.if.end54_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.lhs.true:                                    ; preds = %if.then40
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 28
  %32 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_key, align 4
  %tobool45.not = icmp eq ptr %33, null
  br i1 %tobool45.not, label %land.lhs.true.if.end54_crit_edge, label %land.lhs.true46

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.lhs.true46:                                  ; preds = %land.lhs.true
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %35)
  %cmp48 = icmp eq i32 %35, 1027074
  br i1 %cmp48, label %if.then50, label %land.lhs.true46.if.end54_crit_edge

land.lhs.true46.if.end54_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then50:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef nonnull %16) #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 19
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 4
  %38 = call ptr @memmove(ptr %add.ptr, ptr %37, i32 %call51)
  %call53 = tail call ptr @skb_pull(ptr noundef nonnull %16, i32 noundef 4) #10
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %land.lhs.true46.if.end54_crit_edge, %land.lhs.true.if.end54_crit_edge, %if.then40.if.end54_crit_edge
  %39 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %39, align 8
  %count = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 9
  %41 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %bf.load = load i16, ptr %count, align 1
  %bf.clear = and i16 %bf.load, 2047
  store i16 %bf.clear, ptr %count, align 1
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  tail call fastcc void @local_bh_disable() #10
  tail call void @ieee80211_tx_status(ptr noundef %43, ptr noundef nonnull %16) #10
  tail call fastcc void @local_bh_enable() #10
  br label %for.inc59

for.inc59:                                        ; preds = %if.end54, %do.end38.for.inc59_crit_edge, %for.body14.for.inc59_crit_edge
  %inc60 = add nuw i32 %i.2103, 1
  %44 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_tx_desc, align 8
  %cmp12 = icmp ult i32 %inc60, %45
  br i1 %cmp12, label %for.inc59.for.body14_crit_edge, label %for.inc59.for.end61_crit_edge

for.inc59.for.end61_crit_edge:                    ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end61

for.inc59.for.body14_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14

for.end61:                                        ; preds = %for.inc59.for.end61_crit_edge, %if.end.for.end61_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_hdrlen_from_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1271_tx_flush(ptr noundef %wl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 500000
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 50
  %add = add i32 %spec.select.i, %0
  %flush_mutex = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 141
  tail call void @mutex_lock_nested(ptr noundef %flush_mutex, i32 noundef 0) #10
  %mutex = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %tx_frames_cnt = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 59
  %1 = ptrtoint ptr %tx_frames_cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tx_frames_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 0
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1.i, align 4
  %add.1.i = add i32 %4, %6
  %arrayidx.2.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 2
  %7 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.2.i, align 4
  %add.2.i = add i32 %8, %add.1.i
  %arrayidx.3.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 3
  %9 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.3.i, align 4
  %add.3.i = sub i32 0, %add.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add.3.i)
  %cmp2 = icmp eq i32 %10, %add.3.i
  br i1 %cmp2, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %wl_lock.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wl_lock.i) #10
  br label %for.body.i

for.body.i:                                       ; preds = %if.end40.i.for.body.i_crit_edge, %if.end
  %i.057.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end40.i.for.body.i_crit_edge ]
  %arrayidx.i103 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 52, i32 %i.057.i
  %call7.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %arrayidx.i103) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end40.i_crit_edge, label %land.rhs.i

for.body.i.if.end40.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

land.rhs.i:                                       ; preds = %for.body.i
  %.b56.i = load i1, ptr @wlcore_stop_queues.__already_done, align 1
  br i1 %.b56.i, label %land.rhs.i.if.end40.i_crit_edge, label %if.then.i, !prof !98

land.rhs.i.if.end40.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @wlcore_stop_queues.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1254, i32 noundef 9, ptr noundef null) #10
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end40.i_crit_edge, %for.body.i.if.end40.i_crit_edge
  %inc.i = add nuw nsw i32 %i.057.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %wlcore_stop_queues.exit, label %if.end40.i.for.body.i_crit_edge

if.end40.i.for.body.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

wlcore_stop_queues.exit:                          ; preds = %if.end40.i
  %hw.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %11 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %12) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wl_lock.i, i32 noundef %call2.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub139 = sub i32 %add, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub139)
  %cmp4140 = icmp sgt i32 %sub139, -1
  br i1 %cmp4140, label %do.body.lr.ph, label %wlcore_stop_queues.exit.do.end71_crit_edge

wlcore_stop_queues.exit.do.end71_crit_edge:       ; preds = %wlcore_stop_queues.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end71

do.body.lr.ph:                                    ; preds = %wlcore_stop_queues.exit
  %arrayidx.i104 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 0
  %arrayidx.1.i105 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 1
  %arrayidx.2.i107 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 2
  %arrayidx.3.i109 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 3
  %tx_work = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 55
  br label %do.body

do.body:                                          ; preds = %if.end68.do.body_crit_edge, %do.body.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %14 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end24_crit_edge, label %do.body9, !prof !98

do.body.do.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_tx_flush.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_tx_flush, %if.then18)) #10
          to label %do.end24 [label %if.then18], !srcloc !99

if.then18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %tx_frames_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_frames_cnt, align 4
  %17 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i104, align 4
  %19 = ptrtoint ptr %arrayidx.1.i105 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.1.i105, align 4
  %add.1.i106 = add i32 %20, %18
  %21 = ptrtoint ptr %arrayidx.2.i107 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.2.i107, align 4
  %add.2.i108 = add i32 %add.1.i106, %22
  %23 = ptrtoint ptr %arrayidx.3.i109 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.3.i109, align 4
  %add.3.i110 = add i32 %add.2.i108, %24
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_tx_flush.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.12, i32 noundef %16, i32 noundef %add.3.i110) #10
  br label %do.end24

do.end24:                                         ; preds = %if.then18, %do.body9, %do.body.do.end24_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %25 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i104, align 4
  %27 = ptrtoint ptr %arrayidx.1.i105 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.1.i105, align 4
  %add.1.i113 = add i32 %26, %28
  %29 = ptrtoint ptr %arrayidx.2.i107 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.2.i107, align 4
  %add.2.i115 = add i32 %30, %add.1.i113
  %31 = ptrtoint ptr %arrayidx.3.i109 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.3.i109, align 4
  %add.3.i117 = sub i32 0, %add.2.i115
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add.3.i117)
  %tobool27.not = icmp eq i32 %32, %add.3.i117
  br i1 %tobool27.not, label %do.end24.if.end29_crit_edge, label %if.then28

do.end24.if.end29_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then28:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @wl1271_tx_work(ptr noundef %tx_work)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %do.end24.if.end29_crit_edge
  tail call void @msleep(i32 noundef 20) #10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %33 = ptrtoint ptr %tx_frames_cnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_frames_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp32 = icmp eq i32 %34, 0
  br i1 %cmp32, label %land.lhs.true33, label %if.end29.if.end68_crit_edge

if.end29.if.end68_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

land.lhs.true33:                                  ; preds = %if.end29
  %35 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i104, align 4
  %37 = ptrtoint ptr %arrayidx.1.i105 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.1.i105, align 4
  %add.1.i120 = add i32 %36, %38
  %39 = ptrtoint ptr %arrayidx.2.i107 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.2.i107, align 4
  %add.2.i122 = add i32 %40, %add.1.i120
  %41 = ptrtoint ptr %arrayidx.3.i109 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.3.i109, align 4
  %add.3.i124 = sub i32 0, %add.2.i122
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %add.3.i124)
  %cmp35 = icmp eq i32 %42, %add.3.i124
  br i1 %cmp35, label %do.body37, label %land.lhs.true33.if.end68_crit_edge

land.lhs.true33.if.end68_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

do.body37:                                        ; preds = %land.lhs.true33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %43 = load i32, ptr @wl12xx_debug_level, align 4
  %and38 = and i32 %43, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.out_wake_crit_edge, label %do.body47, !prof !98

do.body37.out_wake_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_wake

do.body47:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_tx_flush.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_tx_flush, %if.then59)) #10
          to label %out_wake [label %if.then59], !srcloc !99

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %sub60 = sub i32 %44, %0
  %call61 = tail call i32 @jiffies_to_msecs(i32 noundef %sub60) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_tx_flush.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.13, i32 noundef %call61) #10
  br label %out_wake

if.end68:                                         ; preds = %land.lhs.true33.if.end68_crit_edge, %if.end29.if.end68_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %45
  %cmp4 = icmp sgt i32 %sub, -1
  br i1 %cmp4, label %if.end68.do.body_crit_edge, label %if.end68.do.end71_crit_edge

if.end68.do.end71_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end71

if.end68.do.body_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end71:                                         ; preds = %if.end68.do.end71_crit_edge, %wlcore_stop_queues.exit.do.end71_crit_edge
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 500) #13
  %num_links = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 128
  %46 = ptrtoint ptr %num_links to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %num_links, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp74142.not = icmp eq i8 %47, 0
  br i1 %cmp74142.not, label %do.end71.out_wake_crit_edge, label %do.end71.for.body_crit_edge

do.end71.for.body_crit_edge:                      ; preds = %do.end71
  br label %for.body

do.end71.out_wake_crit_edge:                      ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_wake

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end71.for.body_crit_edge
  %i.0143 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end71.for.body_crit_edge ]
  %conv76 = trunc i32 %i.0143 to i8
  tail call void @wl1271_tx_reset_link_queues(ptr noundef %wl, i8 noundef zeroext %conv76)
  %inc = add nuw nsw i32 %i.0143, 1
  %48 = ptrtoint ptr %num_links to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %num_links, align 8
  %conv = zext i8 %49 to i32
  %cmp74 = icmp ult i32 %inc, %conv
  br i1 %cmp74, label %for.body.for.body_crit_edge, label %for.body.out_wake_crit_edge

for.body.out_wake_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_wake

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

out_wake:                                         ; preds = %for.body.out_wake_crit_edge, %do.end71.out_wake_crit_edge, %if.then59, %do.body47, %do.body37.out_wake_crit_edge
  %call2.i126 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wl_lock.i) #10
  br label %for.body.i130

for.body.i130:                                    ; preds = %if.end41.i.for.body.i130_crit_edge, %out_wake
  %i.058.i = phi i32 [ 0, %out_wake ], [ %inc.i133, %if.end41.i.for.body.i130_crit_edge ]
  %arrayidx.i127 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 52, i32 %i.058.i
  %call7.i128 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %arrayidx.i127) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i128)
  %tobool.not.i129 = icmp eq i32 %call7.i128, 0
  br i1 %tobool.not.i129, label %land.rhs.i131, label %for.body.i130.if.end41.i_crit_edge

for.body.i130.if.end41.i_crit_edge:               ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

land.rhs.i131:                                    ; preds = %for.body.i130
  %.b57.i = load i1, ptr @wlcore_wake_queues.__already_done, align 1
  br i1 %.b57.i, label %land.rhs.i131.if.end41.i_crit_edge, label %if.then.i132, !prof !98

land.rhs.i131.if.end41.i_crit_edge:               ; preds = %land.rhs.i131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.then.i132:                                     ; preds = %land.rhs.i131
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @wlcore_wake_queues.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1275, i32 noundef 9, ptr noundef null) #10
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then.i132, %land.rhs.i131.if.end41.i_crit_edge, %for.body.i130.if.end41.i_crit_edge
  %inc.i133 = add nuw nsw i32 %i.058.i, 1
  %exitcond.not.i134 = icmp eq i32 %inc.i133, 12
  br i1 %exitcond.not.i134, label %wlcore_wake_queues.exit, label %if.end41.i.for.body.i130_crit_edge

if.end41.i.for.body.i130_crit_edge:               ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i130

wlcore_wake_queues.exit:                          ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %51) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wl_lock.i, i32 noundef %call2.i126) #10
  br label %out

out:                                              ; preds = %wlcore_wake_queues.exit, %land.lhs.true.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  tail call void @mutex_unlock(ptr noundef %flush_mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlcore_stop_queues(ptr noundef %wl, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wl_lock = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wl_lock) #10
  br label %for.body

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %entry
  %i.057 = phi i32 [ 0, %entry ], [ %inc, %if.end40.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 52, i32 %i.057
  %call7 = tail call i32 @_test_and_set_bit(i32 noundef %reason, ptr noundef %arrayidx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %for.body.if.end40_crit_edge, label %land.rhs

for.body.if.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

land.rhs:                                         ; preds = %for.body
  %.b56 = load i1, ptr @wlcore_stop_queues.__already_done, align 1
  br i1 %.b56, label %land.rhs.if.end40_crit_edge, label %if.then, !prof !98

land.rhs.if.end40_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @wlcore_stop_queues.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1254, i32 noundef 9, ptr noundef null) #10
  br label %if.end40

if.end40:                                         ; preds = %if.then, %land.rhs.if.end40_crit_edge, %for.body.if.end40_crit_edge
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %1) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wl_lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlcore_wake_queues(ptr noundef %wl, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wl_lock = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wl_lock) #10
  br label %for.body

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %entry
  %i.058 = phi i32 [ 0, %entry ], [ %inc, %if.end41.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 52, i32 %i.058
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef %reason, ptr noundef %arrayidx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.rhs, label %for.body.if.end41_crit_edge

for.body.if.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

land.rhs:                                         ; preds = %for.body
  %.b57 = load i1, ptr @wlcore_wake_queues.__already_done, align 1
  br i1 %.b57, label %land.rhs.if.end41_crit_edge, label %if.then, !prof !98

land.rhs.if.end41_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @wlcore_wake_queues.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1275, i32 noundef 9, ptr noundef null) #10
  br label %if.end41

if.end41:                                         ; preds = %if.then, %land.rhs.if.end41_crit_edge, %for.body.if.end41_crit_edge
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %1) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wl_lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_tx_min_rate_get(ptr nocapture readnone %wl, i32 noundef %rate_set) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate_set)
  %tobool.not = icmp eq i32 %rate_set, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !97

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1191, i32 noundef 9, ptr noundef null) #10
  br label %return

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.cttz.i32(i32 %rate_set, i1 true) #10, !range !109
  %shl = shl nuw i32 1, %0
  br label %return

return:                                           ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %shl, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlcore_stop_queue_locked(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i8 noundef zeroext %queue, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_queue_base.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 41
  %0 = ptrtoint ptr %hw_queue_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_queue_base.i, align 8
  %2 = zext i8 %queue to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %queue, label %sw.default.i [
    i8 3, label %entry.wlcore_tx_get_mac80211_queue.exit_crit_edge
    i8 2, label %sw.bb1.i
    i8 0, label %sw.bb3.i
    i8 1, label %sw.bb5.i
  ]

entry.wlcore_tx_get_mac80211_queue.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_tx_get_mac80211_queue.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add2.i = add i32 %1, 1
  br label %wlcore_tx_get_mac80211_queue.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add4.i = add i32 %1, 2
  br label %wlcore_tx_get_mac80211_queue.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add6.i = add i32 %1, 3
  br label %wlcore_tx_get_mac80211_queue.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add7.i = add i32 %1, 2
  br label %wlcore_tx_get_mac80211_queue.exit

wlcore_tx_get_mac80211_queue.exit:                ; preds = %sw.default.i, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %entry.wlcore_tx_get_mac80211_queue.exit_crit_edge
  %retval.0.i = phi i32 [ %add7.i, %sw.default.i ], [ %add6.i, %sw.bb5.i ], [ %add4.i, %sw.bb3.i ], [ %add2.i, %sw.bb1.i ], [ %1, %entry.wlcore_tx_get_mac80211_queue.exit_crit_edge ]
  %arrayidx = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 52, i32 %retval.0.i
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef %reason, ptr noundef %arrayidx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %wlcore_tx_get_mac80211_queue.exit.if.end36_crit_edge, label %land.rhs

wlcore_tx_get_mac80211_queue.exit.if.end36_crit_edge: ; preds = %wlcore_tx_get_mac80211_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

land.rhs:                                         ; preds = %wlcore_tx_get_mac80211_queue.exit
  %.b54 = load i1, ptr @wlcore_stop_queue_locked.__already_done, align 1
  br i1 %.b54, label %land.rhs.if.end36_crit_edge, label %if.then, !prof !98

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @wlcore_stop_queue_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1205, i32 noundef 9, ptr noundef null) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then, %land.rhs.if.end36_crit_edge, %wlcore_tx_get_mac80211_queue.exit.if.end36_crit_edge
  br i1 %tobool.not, label %if.end46, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_stop_queue(ptr noundef %6, i32 noundef %retval.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end36.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlcore_stop_queue(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i8 noundef zeroext %queue, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wl_lock = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wl_lock) #10
  %hw_queue_base.i.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 41
  %0 = ptrtoint ptr %hw_queue_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_queue_base.i.i, align 8
  %2 = zext i8 %queue to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %queue, label %sw.default.i.i [
    i8 3, label %entry.wlcore_tx_get_mac80211_queue.exit.i_crit_edge
    i8 2, label %sw.bb1.i.i
    i8 0, label %sw.bb3.i.i
    i8 1, label %sw.bb5.i.i
  ]

entry.wlcore_tx_get_mac80211_queue.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_tx_get_mac80211_queue.exit.i

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add2.i.i = add i32 %1, 1
  br label %wlcore_tx_get_mac80211_queue.exit.i

sw.bb3.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add4.i.i = add i32 %1, 2
  br label %wlcore_tx_get_mac80211_queue.exit.i

sw.bb5.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add6.i.i = add i32 %1, 3
  br label %wlcore_tx_get_mac80211_queue.exit.i

sw.default.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add7.i.i = add i32 %1, 2
  br label %wlcore_tx_get_mac80211_queue.exit.i

wlcore_tx_get_mac80211_queue.exit.i:              ; preds = %sw.default.i.i, %sw.bb5.i.i, %sw.bb3.i.i, %sw.bb1.i.i, %entry.wlcore_tx_get_mac80211_queue.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %add7.i.i, %sw.default.i.i ], [ %add6.i.i, %sw.bb5.i.i ], [ %add4.i.i, %sw.bb3.i.i ], [ %add2.i.i, %sw.bb1.i.i ], [ %1, %entry.wlcore_tx_get_mac80211_queue.exit.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 52, i32 %retval.0.i.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %call4.i = tail call i32 @_test_and_set_bit(i32 noundef %reason, ptr noundef %arrayidx.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %wlcore_tx_get_mac80211_queue.exit.i.if.end36.i_crit_edge, label %land.rhs.i

wlcore_tx_get_mac80211_queue.exit.i.if.end36.i_crit_edge: ; preds = %wlcore_tx_get_mac80211_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

land.rhs.i:                                       ; preds = %wlcore_tx_get_mac80211_queue.exit.i
  %.b54.i = load i1, ptr @wlcore_stop_queue_locked.__already_done, align 1
  br i1 %.b54.i, label %land.rhs.i.if.end36.i_crit_edge, label %if.then.i, !prof !98

land.rhs.i.if.end36.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @wlcore_stop_queue_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1205, i32 noundef 9, ptr noundef null) #10
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end36.i_crit_edge, %wlcore_tx_get_mac80211_queue.exit.i.if.end36.i_crit_edge
  br i1 %tobool.not.i, label %if.end46.i, label %if.end36.i.wlcore_stop_queue_locked.exit_crit_edge

if.end36.i.wlcore_stop_queue_locked.exit_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_stop_queue_locked.exit

if.end46.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %hw.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %5 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_stop_queue(ptr noundef %6, i32 noundef %retval.0.i.i) #10
  br label %wlcore_stop_queue_locked.exit

wlcore_stop_queue_locked.exit:                    ; preds = %if.end46.i, %if.end36.i.wlcore_stop_queue_locked.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wl_lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wlcore_is_queue_stopped_by_reason_locked(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i8 noundef zeroext %queue, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_queue_base.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 41
  %0 = ptrtoint ptr %hw_queue_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_queue_base.i, align 8
  %2 = zext i8 %queue to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %queue, label %sw.default.i [
    i8 3, label %entry.wlcore_tx_get_mac80211_queue.exit_crit_edge
    i8 2, label %sw.bb1.i
    i8 0, label %sw.bb3.i
    i8 1, label %sw.bb5.i
  ]

entry.wlcore_tx_get_mac80211_queue.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_tx_get_mac80211_queue.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add2.i = add i32 %1, 1
  br label %wlcore_tx_get_mac80211_queue.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add4.i = add i32 %1, 2
  br label %wlcore_tx_get_mac80211_queue.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add6.i = add i32 %1, 3
  br label %wlcore_tx_get_mac80211_queue.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add7.i = add i32 %1, 2
  br label %wlcore_tx_get_mac80211_queue.exit

wlcore_tx_get_mac80211_queue.exit:                ; preds = %sw.default.i, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %entry.wlcore_tx_get_mac80211_queue.exit_crit_edge
  %retval.0.i = phi i32 [ %add7.i, %sw.default.i ], [ %add6.i, %sw.bb5.i ], [ %add4.i, %sw.bb3.i ], [ %add2.i, %sw.bb1.i ], [ %1, %entry.wlcore_tx_get_mac80211_queue.exit_crit_edge ]
  %wl_lock = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %3 = ptrtoint ptr %wl_lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %wl_lock, align 4
  %4 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body5, label %do.end10, !prof !97

do.body5:                                         ; preds = %wlcore_tx_get_mac80211_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wlcore/tx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1306, 0\0A.popsection", ""() #10, !srcloc !100
  unreachable

do.end10:                                         ; preds = %wlcore_tx_get_mac80211_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 52, i32 %retval.0.i
  %div3.i = lshr i32 %reason, 5
  %arrayidx.i = getelementptr i32, ptr %arrayidx, i32 %div3.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %reason, 31
  %7 = shl nuw i32 1, %and.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12 = icmp ne i32 %8, 0
  ret i1 %tobool12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wlcore_is_queue_stopped_locked(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i8 noundef zeroext %queue) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_queue_base.i = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 41
  %0 = ptrtoint ptr %hw_queue_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_queue_base.i, align 8
  %2 = zext i8 %queue to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %queue, label %sw.default.i [
    i8 3, label %entry.wlcore_tx_get_mac80211_queue.exit_crit_edge
    i8 2, label %sw.bb1.i
    i8 0, label %sw.bb3.i
    i8 1, label %sw.bb5.i
  ]

entry.wlcore_tx_get_mac80211_queue.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_tx_get_mac80211_queue.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add2.i = add i32 %1, 1
  br label %wlcore_tx_get_mac80211_queue.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add4.i = add i32 %1, 2
  br label %wlcore_tx_get_mac80211_queue.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add6.i = add i32 %1, 3
  br label %wlcore_tx_get_mac80211_queue.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add7.i = add i32 %1, 2
  br label %wlcore_tx_get_mac80211_queue.exit

wlcore_tx_get_mac80211_queue.exit:                ; preds = %sw.default.i, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %entry.wlcore_tx_get_mac80211_queue.exit_crit_edge
  %retval.0.i = phi i32 [ %add7.i, %sw.default.i ], [ %add6.i, %sw.bb5.i ], [ %add4.i, %sw.bb3.i ], [ %add2.i, %sw.bb1.i ], [ %1, %entry.wlcore_tx_get_mac80211_queue.exit_crit_edge ]
  %wl_lock = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %3 = ptrtoint ptr %wl_lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %wl_lock, align 4
  %4 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body5, label %do.end10, !prof !97

do.body5:                                         ; preds = %wlcore_tx_get_mac80211_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wlcore/tx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1315, 0\0A.popsection", ""() #10, !srcloc !110
  unreachable

do.end10:                                         ; preds = %wlcore_tx_get_mac80211_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 52, i32 %retval.0.i
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11 = icmp ne i32 %6, 0
  ret i1 %tobool11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @wlcore_vif_dequeue_high_prio(ptr noundef %wl, ptr noundef %wlvif, i8 noundef zeroext %ac, ptr nocapture noundef writeonly %hlid, ptr nocapture noundef %low_prio_hlid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %last_tx_hlid = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 9
  %0 = ptrtoint ptr %last_tx_hlid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_tx_hlid, align 8
  %add = add i32 %1, 1
  %num_links = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 128
  %2 = ptrtoint ptr %num_links to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_links, align 8
  %conv = zext i8 %3 to i32
  %rem = srem i32 %add, %conv
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp41.not = icmp eq i8 %3, 0
  br i1 %cmp41.not, label %entry.if.end17_crit_edge, label %for.body.lr.ph

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.body.lr.ph:                                   ; preds = %entry
  %links_map = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 11
  %ops.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 114
  %idxprom2.i = zext i8 %ac to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv243 = phi i32 [ %conv, %for.body.lr.ph ], [ %conv2, %for.inc.for.body_crit_edge ]
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add4 = add i32 %i.042, %rem
  %rem7 = srem i32 %add4, %conv243
  %div3.i = lshr i32 %rem7, 5
  %arrayidx.i = getelementptr i32, ptr %links_map, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %rem7, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %6, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %conv8 = trunc i32 %rem7 to i8
  %idxprom.i = and i32 %rem7, 255
  %arrayidx.i33 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %idxprom.i
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %lnk_high_prio.i.i = getelementptr inbounds %struct.wlcore_ops, ptr %9, i32 0, i32 39
  %10 = ptrtoint ptr %lnk_high_prio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lnk_high_prio.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %do.body1.i.i, label %wlcore_hw_lnk_high_prio.exit.i

do.body1.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wlcore/hw_ops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

wlcore_hw_lnk_high_prio.exit.i:                   ; preds = %if.end
  %call.i.i = tail call zeroext i1 %11(ptr noundef %wl, i8 noundef zeroext %conv8, ptr noundef %arrayidx.i33) #10
  br i1 %call.i.i, label %wlcore_lnk_dequeue_high_prio.exit, label %if.then.i

if.then.i:                                        ; preds = %wlcore_hw_lnk_high_prio.exit.i
  %12 = ptrtoint ptr %low_prio_hlid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %low_prio_hlid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp.i = icmp eq i8 %13, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i.for.inc_crit_edge

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.then.i
  %arrayidx3.i = getelementptr [4 x %struct.sk_buff_head], ptr %arrayidx.i33, i32 0, i32 %idxprom2.i
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx3.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %arrayidx3.i
  br i1 %cmp.i.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %lnk_low_prio.i.i = getelementptr inbounds %struct.wlcore_ops, ptr %17, i32 0, i32 40
  %18 = ptrtoint ptr %lnk_low_prio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lnk_low_prio.i.i, align 4
  %tobool.not.i23.i = icmp eq ptr %19, null
  br i1 %tobool.not.i23.i, label %do.body1.i24.i, label %wlcore_hw_lnk_low_prio.exit.i

do.body1.i24.i:                                   ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wlcore/hw_ops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 268, 0\0A.popsection", ""() #10, !srcloc !103
  unreachable

wlcore_hw_lnk_low_prio.exit.i:                    ; preds = %land.lhs.true5.i
  %call.i25.i = tail call zeroext i1 %19(ptr noundef %wl, i8 noundef zeroext %conv8, ptr noundef %arrayidx.i33) #10
  br i1 %call.i25.i, label %if.then8.i, label %wlcore_hw_lnk_low_prio.exit.i.for.inc_crit_edge

wlcore_hw_lnk_low_prio.exit.i.for.inc_crit_edge:  ; preds = %wlcore_hw_lnk_low_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then8.i:                                       ; preds = %wlcore_hw_lnk_low_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %low_prio_hlid to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv8, ptr %low_prio_hlid, align 1
  br label %for.inc

wlcore_lnk_dequeue_high_prio.exit:                ; preds = %wlcore_hw_lnk_high_prio.exit.i
  %call10.i = tail call fastcc ptr @wlcore_lnk_dequeue(ptr noundef %wl, ptr noundef %arrayidx.i33, i8 noundef zeroext %ac) #10
  %tobool10.not = icmp eq ptr %call10.i, null
  br i1 %tobool10.not, label %wlcore_lnk_dequeue_high_prio.exit.for.inc_crit_edge, label %wlcore_lnk_dequeue_high_prio.exit.if.end17_crit_edge

wlcore_lnk_dequeue_high_prio.exit.if.end17_crit_edge: ; preds = %wlcore_lnk_dequeue_high_prio.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

wlcore_lnk_dequeue_high_prio.exit.for.inc_crit_edge: ; preds = %wlcore_lnk_dequeue_high_prio.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %wlcore_lnk_dequeue_high_prio.exit.for.inc_crit_edge, %if.then8.i, %wlcore_hw_lnk_low_prio.exit.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.then.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.042, 1
  %21 = ptrtoint ptr %num_links to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_links, align 8
  %conv2 = zext i8 %22 to i32
  %cmp = icmp ult i32 %inc, %conv2
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end17_crit_edge

for.inc.if.end17_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end17:                                         ; preds = %for.inc.if.end17_crit_edge, %wlcore_lnk_dequeue_high_prio.exit.if.end17_crit_edge, %entry.if.end17_crit_edge
  %storemerge = phi i32 [ 0, %entry.if.end17_crit_edge ], [ 0, %for.inc.if.end17_crit_edge ], [ %rem7, %wlcore_lnk_dequeue_high_prio.exit.if.end17_crit_edge ]
  %skb.238 = phi ptr [ null, %entry.if.end17_crit_edge ], [ null, %for.inc.if.end17_crit_edge ], [ %call10.i, %wlcore_lnk_dequeue_high_prio.exit.if.end17_crit_edge ]
  %23 = ptrtoint ptr %last_tx_hlid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge, ptr %last_tx_hlid, align 8
  %conv19 = trunc i32 %storemerge to i8
  %24 = ptrtoint ptr %hlid to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv19, ptr %hlid, align 1
  ret ptr %skb.238
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @wlcore_lnk_dequeue(ptr noundef %wl, ptr noundef %lnk, i8 noundef zeroext %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %q to i32
  %arrayidx = getelementptr [4 x %struct.sk_buff_head], ptr %lnk, i32 0, i32 %idxprom
  %call = tail call ptr @skb_dequeue(ptr noundef %arrayidx) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end123_crit_edge, label %do.body1

entry.if.end123_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

do.body1:                                         ; preds = %entry
  %wl_lock = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wl_lock) #10
  %arrayidx7 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp8 = icmp slt i32 %1, 1
  br i1 %cmp8, label %land.rhs, label %do.body1.if.end43_crit_edge

do.body1.if.end43_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.rhs:                                         ; preds = %do.body1
  %.b141 = load i1, ptr @wlcore_lnk_dequeue.__already_done, align 1
  br i1 %.b141, label %land.rhs.if.end43_crit_edge, label %if.then18, !prof !98

land.rhs.if.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then18:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @wlcore_lnk_dequeue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 516, i32 noundef 9, ptr noundef null) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then18, %land.rhs.if.end43_crit_edge, %do.body1.if.end43_crit_edge
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx7, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %arrayidx7, align 4
  %wlvif = getelementptr inbounds %struct.wl1271_link, ptr %lnk, i32 0, i32 7
  %4 = ptrtoint ptr %wlvif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wlvif, align 4
  %tobool54.not = icmp eq ptr %5, null
  br i1 %tobool54.not, label %if.end43.if.end121_crit_edge, label %if.then55

if.end43.if.end121_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then55:                                        ; preds = %if.end43
  %arrayidx60 = getelementptr %struct.wl12xx_vif, ptr %5, i32 0, i32 10, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp61 = icmp slt i32 %7, 1
  br i1 %cmp61, label %land.rhs70, label %if.then55.if.end108_crit_edge

if.then55.if.end108_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

land.rhs70:                                       ; preds = %if.then55
  %.b139140 = load i1, ptr @wlcore_lnk_dequeue.__already_done.15, align 1
  br i1 %.b139140, label %land.rhs70.if.end108_crit_edge, label %if.then81, !prof !98

land.rhs70.if.end108_crit_edge:                   ; preds = %land.rhs70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then81:                                        ; preds = %land.rhs70
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @wlcore_lnk_dequeue.__already_done.15, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 519, i32 noundef 9, ptr noundef null) #10
  br label %if.end108

if.end108:                                        ; preds = %if.then81, %land.rhs70.if.end108_crit_edge, %if.then55.if.end108_crit_edge
  %8 = ptrtoint ptr %wlvif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wlvif, align 4
  %arrayidx119 = getelementptr %struct.wl12xx_vif, ptr %9, i32 0, i32 10, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx119, align 4
  %dec120 = add i32 %11, -1
  store i32 %dec120, ptr %arrayidx119, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.end108, %if.end43.if.end121_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wl_lock, i32 noundef %call3) #10
  br label %if.end123

if.end123:                                        ; preds = %if.end121, %entry.if.end123_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1271_set_default_wep_key(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i8 noundef zeroext %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bss_type = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 3
  %0 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bss_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  %2 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 8
  %bcast_hlid = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 8, i32 0, i32 1
  %.sink.in = select i1 %cmp, ptr %bcast_hlid, ptr %2
  %3 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %3)
  %.sink = load i8, ptr %.sink.in, align 1
  %call2 = tail call i32 @wl12xx_cmd_set_default_wep_key(ptr noundef %wl, i8 noundef zeroext %id, i8 noundef zeroext %.sink) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %4 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.cleanup_crit_edge, label %do.body11, !prof !98

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_set_default_wep_key.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_set_default_wep_key, %if.then21)) #10
          to label %cleanup [label %if.then21], !srcloc !99

if.then21:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %conv22 = zext i8 %id to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_set_default_wep_key.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.23, i32 noundef %conv22) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.body11, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.body11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1271_tx_allocate(ptr noundef %wl, ptr noundef %skb, i32 noundef %extra, i32 noundef %buf_offset, i8 noundef zeroext %hlid, i1 noundef zeroext %is_gem) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %add = add i32 %extra, 16
  %add1 = add i32 %add, %1
  %add2 = add i32 %add1, %buf_offset
  %aggr_buf_size = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 62
  %2 = ptrtoint ptr %aggr_buf_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aggr_buf_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %3)
  %cmp = icmp ugt i32 %add2, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 114
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %get_spare_blocks.i = getelementptr inbounds %struct.wlcore_ops, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %get_spare_blocks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_spare_blocks.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.body1.i, label %wlcore_hw_get_spare_blocks.exit

do.body1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wlcore/hw_ops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 173, 0\0A.popsection", ""() #10, !srcloc !111
  unreachable

wlcore_hw_get_spare_blocks.exit:                  ; preds = %if.end
  %call.i = tail call i32 %7(ptr noundef %wl, i1 noundef zeroext %is_gem) #10
  %tx_frames_map.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 57
  %num_tx_desc.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 126
  %8 = ptrtoint ptr %num_tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_tx_desc.i, align 8
  %call.i1 = tail call i32 @_find_first_zero_bit_be(ptr noundef %tx_frames_map.i, i32 noundef %9) #10
  %10 = ptrtoint ptr %num_tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_desc.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i1, i32 %11)
  %cmp.not.i = icmp ult i32 %call.i1, %11
  br i1 %cmp.not.i, label %wl1271_alloc_tx_id.exit, label %wlcore_hw_get_spare_blocks.exit.cleanup_crit_edge

wlcore_hw_get_spare_blocks.exit.cleanup_crit_edge: ; preds = %wlcore_hw_get_spare_blocks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

wl1271_alloc_tx_id.exit:                          ; preds = %wlcore_hw_get_spare_blocks.exit
  %rem.i.i = and i32 %call.i1, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %call.i1, 5
  %add.ptr.i.i = getelementptr i32, ptr %tx_frames_map.i, i32 %div2.i.i
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %13, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %arrayidx.i2 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 58, i32 %call.i1
  %14 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %skb, ptr %arrayidx.i2, align 4
  %tx_frames_cnt.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 59
  %15 = ptrtoint ptr %tx_frames_cnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_frames_cnt.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %tx_frames_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp4 = icmp slt i32 %call.i1, 0
  br i1 %cmp4, label %wl1271_alloc_tx_id.exit.cleanup_crit_edge, label %if.end6

wl1271_alloc_tx_id.exit.cleanup_crit_edge:        ; preds = %wl1271_alloc_tx_id.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %wl1271_alloc_tx_id.exit
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %calc_tx_blocks.i = getelementptr inbounds %struct.wlcore_ops, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %calc_tx_blocks.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %calc_tx_blocks.i, align 4
  %tobool.not.i5 = icmp eq ptr %20, null
  br i1 %tobool.not.i5, label %do.body1.i6, label %wlcore_hw_calc_tx_blocks.exit

do.body1.i6:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wlcore/hw_ops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 18, 0\0A.popsection", ""() #10, !srcloc !112
  unreachable

wlcore_hw_calc_tx_blocks.exit:                    ; preds = %if.end6
  %call.i7 = tail call i32 %20(ptr noundef %wl, i32 noundef %add1, i32 noundef %call.i) #10
  %tx_blocks_available = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 44
  %21 = ptrtoint ptr %tx_blocks_available to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_blocks_available, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i7, i32 %22)
  %cmp8.not = icmp ugt i32 %call.i7, %22
  br i1 %cmp8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %wlcore_hw_calc_tx_blocks.exit
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %sub = sub i32 %add1, %24
  %call11 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %sub) #10
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %set_tx_desc_blocks.i = getelementptr inbounds %struct.wlcore_ops, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %set_tx_desc_blocks.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_tx_desc_blocks.i, align 4
  %tobool.not.i10 = icmp eq ptr %28, null
  br i1 %tobool.not.i10, label %do.body1.i11, label %wlcore_hw_set_tx_desc_blocks.exit

do.body1.i11:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wlcore/hw_ops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 28, 0\0A.popsection", ""() #10, !srcloc !113
  unreachable

wlcore_hw_set_tx_desc_blocks.exit:                ; preds = %if.then9
  tail call void %28(ptr noundef %wl, ptr noundef %call11, i32 noundef %call.i7, i32 noundef %call.i) #10
  %conv = trunc i32 %call.i1 to i8
  %id12 = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %call11, i32 0, i32 5
  %29 = ptrtoint ptr %id12 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %id12, align 1
  %30 = ptrtoint ptr %tx_blocks_available to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_blocks_available, align 8
  %sub14 = sub i32 %31, %call.i7
  store i32 %sub14, ptr %tx_blocks_available, align 8
  %tx_allocated_blocks = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 45
  %32 = ptrtoint ptr %tx_allocated_blocks to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_allocated_blocks, align 4
  %add15 = add i32 %33, %call.i7
  store i32 %add15, ptr %tx_allocated_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp17 = icmp eq i32 %33, 0
  br i1 %cmp17, label %wlcore_hw_set_tx_desc_blocks.exit.if.then21_crit_edge, label %lor.lhs.false

wlcore_hw_set_tx_desc_blocks.exit.if.then21_crit_edge: ; preds = %wlcore_hw_set_tx_desc_blocks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

lor.lhs.false:                                    ; preds = %wlcore_hw_set_tx_desc_blocks.exit
  %flags = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %call19 = tail call i32 @_test_and_clear_bit(i32 noundef 14, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %lor.lhs.false.if.end22_crit_edge, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %wlcore_hw_set_tx_desc_blocks.exit.if.then21_crit_edge
  tail call void @wl12xx_rearm_tx_watchdog_locked(ptr noundef %wl) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %lor.lhs.false.if.end22_crit_edge
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %34 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %queue_mapping.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %35)
  %36 = icmp ult i16 %35, 4
  br i1 %36, label %switch.lookup, label %if.end22.wl1271_tx_get_queue.exit_crit_edge

if.end22.wl1271_tx_get_queue.exit_crit_edge:      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %wl1271_tx_get_queue.exit

switch.lookup:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %37 = sext i16 %35 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.wl1271_tx_allocate, i32 0, i32 %37
  %38 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %wl1271_tx_get_queue.exit

wl1271_tx_get_queue.exit:                         ; preds = %switch.lookup, %if.end22.wl1271_tx_get_queue.exit_crit_edge
  %retval.0.i13 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end22.wl1271_tx_get_queue.exit_crit_edge ]
  %arrayidx = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 48, i32 %retval.0.i13
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %arrayidx, align 4
  %conv26 = zext i8 %hlid to i32
  %links_map = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 33
  %div3.i = lshr i32 %conv26, 5
  %arrayidx.i = getelementptr i32, ptr %links_map, i32 %div3.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv26, 31
  %43 = shl nuw i32 1, %and.i
  %44 = and i32 %42, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool28.not = icmp eq i32 %44, 0
  br i1 %tobool28.not, label %wl1271_tx_get_queue.exit.if.end32_crit_edge, label %if.then29

wl1271_tx_get_queue.exit.if.end32_crit_edge:      ; preds = %wl1271_tx_get_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then29:                                        ; preds = %wl1271_tx_get_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  %allocated_pkts = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %conv26, i32 1
  %45 = ptrtoint ptr %allocated_pkts to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %allocated_pkts, align 8
  %inc31 = add i8 %46, 1
  store i8 %inc31, ptr %allocated_pkts, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %wl1271_tx_get_queue.exit.if.end32_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %47 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %47, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.end32.cleanup_crit_edge, label %do.body37, !prof !98

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_tx_allocate.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_tx_allocate, %if.then47)) #10
          to label %cleanup [label %if.then47], !srcloc !99

if.then47:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_tx_allocate.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.25, i32 noundef %add1, i32 noundef %call.i7, i32 noundef %call.i1) #10
  br label %cleanup

if.else:                                          ; preds = %wlcore_hw_calc_tx_blocks.exit
  %48 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i.i, align 4
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %49, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %50 = and i32 %49, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i18 = icmp eq i32 %50, 0
  br i1 %tobool.not.i18, label %if.else.cleanup_crit_edge, label %if.then.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.else
  %51 = ptrtoint ptr %tx_frames_cnt.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_frames_cnt.i, align 4
  %53 = ptrtoint ptr %num_tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_tx_desc.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp.i = icmp eq i32 %52, %54
  br i1 %cmp.i, label %if.then3.i, label %if.then.i.if.end.i22_crit_edge, !prof !97

if.then.i.if.end.i22_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i22

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags.i) #10
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.then3.i, %if.then.i.if.end.i22_crit_edge
  %55 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %arrayidx.i2, align 4
  %56 = ptrtoint ptr %tx_frames_cnt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_frames_cnt.i, align 4
  %dec.i = add i32 %57, -1
  store i32 %dec.i, ptr %tx_frames_cnt.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i22, %if.else.cleanup_crit_edge, %if.then47, %do.body37, %if.end32.cleanup_crit_edge, %wl1271_alloc_tx_id.exit.cleanup_crit_edge, %wlcore_hw_get_spare_blocks.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ %call.i1, %wl1271_alloc_tx_id.exit.cleanup_crit_edge ], [ 0, %if.then47 ], [ 0, %if.end32.cleanup_crit_edge ], [ 0, %do.body37 ], [ -16, %if.else.cleanup_crit_edge ], [ -16, %if.end.i22 ], [ -16, %wlcore_hw_get_spare_blocks.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_cmd_set_default_wep_key(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl12xx_rearm_tx_watchdog_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_set_inconnection_sta(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_update_inconn_sta(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl12xx_ps_link_start(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_translate_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @wlcore_rate_to_idx(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !85, !87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__ksymtab_wl1271_free_tx_id, !1, !"__ksymtab_wl1271_free_tx_id", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 73, i32 1}
!2 = !{ptr @__ksymtab_wl12xx_is_dummy_packet, !3, !"__ksymtab_wl12xx_is_dummy_packet", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 138, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 172, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @wl12xx_tx_get_hlid.__UNIQUE_ID_ddebug350, !5, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!10 = !{ptr @__ksymtab_wlcore_calc_packet_alignment, !11, !"__ksymtab_wlcore_calc_packet_alignment", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 188, i32 1}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 996, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @wlcore_tx_complete.__UNIQUE_ID_ddebug355, !13, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 1000, i32 3}
!18 = !{ptr @wlcore_tx_complete._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @wlcore_tx_complete._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_wlcore_tx_complete, !21, !"__ksymtab_wlcore_tx_complete", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 1017, i32 1}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 1031, i32 4}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @wl1271_tx_reset_link_queues.__UNIQUE_ID_ddebug356, !23, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 1105, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @wl12xx_tx_reset.__UNIQUE_ID_ddebug357, !27, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 1154, i32 3}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @wl1271_tx_flush.__UNIQUE_ID_ddebug358, !31, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 1167, i32 4}
!36 = !{ptr @wl1271_tx_flush.__UNIQUE_ID_ddebug359, !35, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 1173, i32 2}
!39 = !{ptr @wl1271_tx_flush._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @wl1271_tx_flush._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @__ksymtab_wl1271_tx_flush, !42, !"__ksymtab_wl1271_tx_flush", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 1187, i32 1}
!43 = !{ptr @__ksymtab_wl1271_tx_min_rate_get, !44, !"__ksymtab_wl1271_tx_min_rate_get", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 1196, i32 1}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 1205, i32 2}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 1232, i32 2}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 1253, i32 17}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 1274, i32 3}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 664, i32 3}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 516, i32 3}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 519, i32 4}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ti/wlcore/wlcore_i.h", i32 495, i32 2}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 371, i32 3}
!63 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @wl1271_prepare_tx_frame._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @wl1271_prepare_tx_frame._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 376, i32 3}
!68 = !{ptr @wl1271_prepare_tx_frame._entry.19, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @wl1271_prepare_tx_frame._entry_ptr.21, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 45, i32 2}
!72 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @wl1271_set_default_wep_key.__UNIQUE_ID_ddebug349, !71, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 240, i32 3}
!76 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @wl1271_tx_allocate.__UNIQUE_ID_ddebug353, !75, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ti/wlcore/io.h", i32 51, i32 6}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 912, i32 3}
!82 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @wl1271_tx_complete_packet._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @wl1271_tx_complete_packet._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ti/wlcore/tx.c", i32 961, i32 2}
!87 = !{ptr @wl1271_tx_complete_packet.__UNIQUE_ID_ddebug354, !86, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2148724439, i64 2148724444, i64 2148724457, i64 2148724501, i64 2148724535, i64 2148724556}
!100 = !{i64 2157719317, i64 2157719818, i64 2157719354, i64 2157719410, i64 2157719444, i64 2157719468, i64 2157719509, i64 2157719530, i64 2157719558, i64 2157719592}
!101 = !{!"auto-init"}
!102 = !{i64 2157606765, i64 2157607269, i64 2157606802, i64 2157606858, i64 2157606892, i64 2157606916, i64 2157606957, i64 2157606978, i64 2157607006, i64 2157607040}
!103 = !{i64 2157608552, i64 2157609056, i64 2157608589, i64 2157608645, i64 2157608679, i64 2157608703, i64 2157608744, i64 2157608765, i64 2157608793, i64 2157608827}
!104 = !{i64 2157593866, i64 2157594370, i64 2157593903, i64 2157593959, i64 2157593993, i64 2157594017, i64 2157594058, i64 2157594079, i64 2157594107, i64 2157594141}
!105 = !{i64 2157584044, i64 2157584547, i64 2157584081, i64 2157584137, i64 2157584171, i64 2157584195, i64 2157584236, i64 2157584257, i64 2157584285, i64 2157584319}
!106 = !{i64 2148242043}
!107 = !{i64 726866, i64 726891, i64 726913, i64 726929, i64 726941, i64 726961, i64 726985, i64 727001, i64 727013}
!108 = !{i64 2148242231}
!109 = !{i32 0, i32 33}
!110 = !{i64 2157721234, i64 2157721735, i64 2157721271, i64 2157721327, i64 2157721361, i64 2157721385, i64 2157721426, i64 2157721447, i64 2157721475, i64 2157721509}
!111 = !{i64 2157596329, i64 2157596833, i64 2157596366, i64 2157596422, i64 2157596456, i64 2157596480, i64 2157596521, i64 2157596542, i64 2157596570, i64 2157596604}
!112 = !{i64 2157580476, i64 2157580979, i64 2157580513, i64 2157580569, i64 2157580603, i64 2157580627, i64 2157580668, i64 2157580689, i64 2157580717, i64 2157580751}
!113 = !{i64 2157582260, i64 2157582763, i64 2157582297, i64 2157582353, i64 2157582387, i64 2157582411, i64 2157582452, i64 2157582473, i64 2157582501, i64 2157582535}
