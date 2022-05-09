; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wlcore/scan.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wlcore/scan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wlcore_set_scan_chan_params\22, \22a\22\09"
module asm "\09.weak\09__crc_wlcore_set_scan_chan_params\09\09\09\09"
module asm "\09.long\09__crc_wlcore_set_scan_chan_params\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wlcore_set_scan_chan_params:\09\09\09\09\09"
module asm "\09.asciz \09\22wlcore_set_scan_chan_params\22\09\09\09\09\09"
module asm "__kstrtabns_wlcore_set_scan_chan_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wlcore_scan_sched_scan_ssid_list\22, \22a\22\09"
module asm "\09.weak\09__crc_wlcore_scan_sched_scan_ssid_list\09\09\09\09"
module asm "\09.long\09__crc_wlcore_scan_sched_scan_ssid_list\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wlcore_scan_sched_scan_ssid_list:\09\09\09\09\09"
module asm "\09.asciz \09\22wlcore_scan_sched_scan_ssid_list\22\09\09\09\09\09"
module asm "__kstrtabns_wlcore_scan_sched_scan_ssid_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wlcore_scan_sched_scan_results\22, \22a\22\09"
module asm "\09.weak\09__crc_wlcore_scan_sched_scan_results\09\09\09\09"
module asm "\09.long\09__crc_wlcore_scan_sched_scan_results\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wlcore_scan_sched_scan_results:\09\09\09\09\09"
module asm "\09.asciz \09\22wlcore_scan_sched_scan_results\22\09\09\09\09\09"
module asm "__kstrtabns_wlcore_scan_sched_scan_results:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wl12xx_vif = type { ptr, %struct.list_head, i32, i8, i8, i8, i8, i8, %union.anon.129, i32, [4 x i32], [1 x i32], [33 x i8], i8, i32, i32, i32, [2 x i32], i32, i32, i32, ptr, i32, i32, i16, i8, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.delayed_work, %struct.delayed_work, i32, i32, i8, i32, %struct.delayed_work, i32, %struct.ieee80211_sta_ht_cap, %struct.work_struct, i64, %struct.anon.132 }
%union.anon.129 = type { %struct.anon.131 }
%struct.anon.131 = type { i8, i8, [1 x i32], [14 x ptr], i8, i8, [4 x i8] }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.anon.132 = type { [0 x i8] }
%struct.wlcore_scan_channels = type { [3 x i8], [3 x i8], i8, i8, [14 x %struct.conn_scan_ch_params], [42 x %struct.conn_scan_ch_params], [4 x %struct.conn_scan_ch_params] }
%struct.conn_scan_ch_params = type { i16, i16, i16, i8, i8, i8, [3 x i8] }
%struct.wl1271 = type { i8, ptr, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock, i32, i32, i8, i32, i8, i8, %struct.mutex, i32, %struct.wlcore_partition_set, %struct.wl1271_chip, i32, ptr, i32, ptr, i32, i8, i32, i32, [3 x %struct.mac_address], i32, i8, [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [16 x i8], %struct.list_head, i8, i8, ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i64, [4 x i32], [12 x i32], %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, ptr, [1 x i32], [32 x ptr], i32, i32, ptr, i32, ptr, %struct.work_struct, ptr, i32, i32, i32, %struct.work_struct, i8, [2 x i32], [2 x i32], ptr, i32, i32, i32, [2 x i32], ptr, %struct.wl1271_scan, %struct.delayed_work, ptr, %struct.delayed_work, ptr, i32, ptr, i32, %struct.wl1271_stats, ptr, i32, [1 x i32], ptr, ptr, ptr, %struct.wlcore_conf, i8, i8, i32, i8, [2 x %struct.ieee80211_supported_band], i8, i8, [16 x %struct.wl1271_link], i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, i32, i8, i8, ptr, i8, i8, [2 x %struct.ieee80211_sta_ht_cap], i32, i8, i32, i32, [1 x i32], i32, i32, %struct.mutex, i32, i32, [5 x i32], [5 x i32], %struct.completion, ptr, i8, i32, [6 x i8] }
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
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
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
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.wlcore_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cfg80211_sched_scan_request = type { i64, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, %struct.cfg80211_bss_select_adjust, ptr, ptr, i32, i8, %struct.callback_head, i32, i8, %struct.list_head, [0 x ptr] }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.cfg80211_match_set = type { %struct.cfg80211_ssid, [6 x i8], i32, [6 x i32] }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.wl1271_cmd_sched_scan_ssid_list = type { %struct.wl1271_cmd_header, i8, [16 x %struct.wl1271_ssid], i8, [2 x i8] }
%struct.wl1271_cmd_header = type { i16, i16, [0 x i8] }
%struct.wl1271_ssid = type { i8, i8, [32 x i8] }

@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wl1271_scan_complete_work.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlcore\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wl1271_scan_complete_work\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ti/wlcore/scan.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wlcore: Scanning complete\0A\00", [37 x i8] zeroinitializer }, align 32
@wl1271_scan_complete_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016wlcore: Scan completed due to error.\0A\00", [56 x i8] zeroinitializer }, align 32
@wl1271_scan_complete_work._entry_ptr = internal global ptr @wl1271_scan_complete_work._entry, section ".printk_index", align 4
@wlcore_set_scan_chan_params.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wlcore_set_scan_chan_params\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"wlcore:     2.4GHz: active %d passive %d\0A\00", [54 x i8] zeroinitializer }, align 32
@wlcore_set_scan_chan_params.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"wlcore:     5GHz: active %d passive %d\0A\00", [56 x i8] zeroinitializer }, align 32
@wlcore_set_scan_chan_params.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wlcore:     DFS: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_wlcore_set_scan_chan_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_wlcore_set_scan_chan_params = external dso_local constant [0 x i8], align 1
@__ksymtab_wlcore_set_scan_chan_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wlcore_set_scan_chan_params to i32), ptr @__kstrtab_wlcore_set_scan_chan_params, ptr @__kstrtabns_wlcore_set_scan_chan_params }, section "___ksymtab_gpl+wlcore_set_scan_chan_params", align 4
@wlcore_scan_sched_scan_ssid_list.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wlcore_scan_sched_scan_ssid_list\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wlcore: cmd sched scan ssid list\0A\00", [62 x i8] zeroinitializer }, align 32
@wlcore_scan_sched_scan_ssid_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013wlcore: ERROR cmd sched scan ssid list failed\0A\00", [47 x i8] zeroinitializer }, align 32
@wlcore_scan_sched_scan_ssid_list._entry_ptr = internal global ptr @wlcore_scan_sched_scan_ssid_list._entry, section ".printk_index", align 4
@__kstrtab_wlcore_scan_sched_scan_ssid_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_wlcore_scan_sched_scan_ssid_list = external dso_local constant [0 x i8], align 1
@__ksymtab_wlcore_scan_sched_scan_ssid_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wlcore_scan_sched_scan_ssid_list to i32), ptr @__kstrtab_wlcore_scan_sched_scan_ssid_list, ptr @__kstrtabns_wlcore_scan_sched_scan_ssid_list }, section "___ksymtab_gpl+wlcore_scan_sched_scan_ssid_list", align 4
@wlcore_scan_sched_scan_results.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wlcore_scan_sched_scan_results\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wlcore: got periodic scan results\0A\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_wlcore_scan_sched_scan_results = external dso_local constant [0 x i8], align 1
@__kstrtabns_wlcore_scan_sched_scan_results = external dso_local constant [0 x i8], align 1
@__ksymtab_wlcore_scan_sched_scan_results = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wlcore_scan_sched_scan_results to i32), ptr @__kstrtab_wlcore_scan_sched_scan_results, ptr @__kstrtabns_wlcore_scan_sched_scan_results }, section "___ksymtab_gpl+wlcore_scan_sched_scan_results", align 4
@wlcore_scan_get_channels.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wlcore_scan_get_channels\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wlcore: n_pactive_ch = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wlcore_scan_get_channels.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"wlcore: freq %d, ch. %d, flags 0x%x, power %d, min/max_dwell %d/%d%s%s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c", DFS\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c", NO-IR\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/ti/wlcore/wlcore_i.h\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 33, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 68, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 320, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 322, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 324, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 380, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 461, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 476, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 223, i32 5 }
@___asan_gen_.86 = private constant [41 x i8] c"../drivers/net/wireless/ti/wlcore/scan.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 227, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [45 x i8] c"../drivers/net/wireless/ti/wlcore/wlcore_i.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 495, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__ksymtab_wlcore_scan_sched_scan_results, ptr @__ksymtab_wlcore_scan_sched_scan_ssid_list, ptr @__ksymtab_wlcore_set_scan_chan_params, ptr @wl1271_scan_complete_work._entry, ptr @wl1271_scan_complete_work._entry_ptr, ptr @wlcore_scan_sched_scan_ssid_list._entry, ptr @wlcore_scan_sched_scan_ssid_list._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_scan_complete_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_scan_sched_scan_ssid_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1271_scan_complete_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #8
  %0 = call ptr @memset(ptr %info, i32 0, i32 16)
  %add.ptr = getelementptr i8, ptr %work, i32 -1076
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %1 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end16_crit_edge, label %do.body3, !prof !59

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_scan_complete_work.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_scan_complete_work, %if.then13)) #8
          to label %do.end16 [label %if.then13], !srcloc !60

if.then13:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_scan_complete_work.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.3) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body3, %entry.do.end16_crit_edge
  %mutex = getelementptr i8, ptr %work, i32 -968
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %state = getelementptr i8, ptr %work, i32 -988
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end24, label %do.end16.out_crit_edge, !prof !59

do.end16.out_crit_edge:                           ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end24:                                         ; preds = %do.end16
  %state25 = getelementptr i8, ptr %work, i32 -39
  %4 = ptrtoint ptr %state25 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp26 = icmp eq i8 %5, 0
  br i1 %cmp26, label %if.end24.out_crit_edge, label %if.end29

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end29:                                         ; preds = %if.end24
  %scan_wlvif = getelementptr i8, ptr %work, i32 -56
  %6 = ptrtoint ptr %scan_wlvif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scan_wlvif, align 4
  tail call void @wl12xx_rearm_tx_watchdog_locked(ptr noundef %add.ptr) #8
  %8 = ptrtoint ptr %state25 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %state25, align 1
  %dev = getelementptr i8, ptr %work, i32 -1064
  %9 = call ptr @memset(ptr %scan_wlvif, i32 0, i32 16)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp36 = icmp slt i32 %call.i, 0
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end29
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !62
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then38.out_crit_edge, label %do.end11.i.i.i.i

if.then38.out_crit_edge:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end11.i.i.i.i:                                 ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  br label %out

if.end40:                                         ; preds = %if.end29
  %flags = getelementptr inbounds %struct.wl12xx_vif, ptr %7, i32 0, i32 2
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool42.not = icmp eq i32 %17, 0
  br i1 %tobool42.not, label %if.end40.if.end45_crit_edge, label %if.then43

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %probereq = getelementptr inbounds %struct.wl12xx_vif, ptr %7, i32 0, i32 21
  %18 = ptrtoint ptr %probereq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %probereq, align 4
  %call44 = tail call ptr @wl1271_cmd_build_ap_probe_req(ptr noundef %add.ptr, ptr noundef %7, ptr noundef %19) #8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40.if.end45_crit_edge
  %failed = getelementptr i8, ptr %work, i32 -40
  %20 = ptrtoint ptr %failed to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %failed, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool47.not = icmp eq i8 %21, 0
  br i1 %tobool47.not, label %if.end45.if.end54_crit_edge, label %do.end51

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  tail call void @wl12xx_queue_recovery_work(ptr noundef %add.ptr) #8
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %if.end45.if.end54_crit_edge
  %call55 = tail call i32 @wlcore_cmd_regdomain_config_locked(ptr noundef %add.ptr) #8
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %call.i80 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, i32 22
  %24 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store volatile i64 %call.i80, ptr %last_busy.i, align 8
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %call.i81 = tail call i32 @__pm_runtime_suspend(ptr noundef %26, i32 noundef 13) #8
  %hw = getelementptr i8, ptr %work, i32 -1072
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  call void @ieee80211_scan_completed(ptr noundef %28, ptr noundef nonnull %info) #8
  br label %out

out:                                              ; preds = %if.end54, %do.end11.i.i.i.i, %if.then38.out_crit_edge, %if.end24.out_crit_edge, %do.end16.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl12xx_rearm_tx_watchdog_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wl1271_cmd_build_ap_probe_req(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl12xx_queue_recovery_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_cmd_regdomain_config_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wlcore_set_scan_chan_params(ptr nocapture noundef readonly %wl, ptr nocapture noundef %cfg, ptr nocapture noundef readonly %channels, i32 noundef %n_channels, i32 noundef %n_ssids, i32 noundef %scan_type) #0 align 64 {
entry:
  %n_pactive_ch = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %n_pactive_ch) #8
  %0 = ptrtoint ptr %n_pactive_ch to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %n_pactive_ch, align 1
  %channels_2 = getelementptr inbounds %struct.wlcore_scan_channels, ptr %cfg, i32 0, i32 4
  %call = call fastcc i32 @wlcore_scan_get_channels(ptr noundef %wl, ptr noundef %channels, i32 noundef %n_channels, i32 noundef %n_ssids, ptr noundef %channels_2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 0, i32 noundef 14, ptr noundef nonnull %n_pactive_ch, i32 noundef %scan_type)
  %conv = trunc i32 %call to i8
  %1 = ptrtoint ptr %cfg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %cfg, align 1
  %conv5 = and i32 %call, 255
  %call6 = call fastcc i32 @wlcore_scan_get_channels(ptr noundef %wl, ptr noundef %channels, i32 noundef %n_channels, i32 noundef %n_ssids, ptr noundef %channels_2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %conv5, i32 noundef 14, ptr noundef nonnull %n_pactive_ch, i32 noundef %scan_type)
  %conv7 = trunc i32 %call6 to i8
  %active = getelementptr inbounds %struct.wlcore_scan_channels, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv7, ptr %active, align 1
  %channels_5 = getelementptr inbounds %struct.wlcore_scan_channels, ptr %cfg, i32 0, i32 5
  %max_channels_5 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 124
  %3 = ptrtoint ptr %max_channels_5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %max_channels_5, align 8
  %conv10 = zext i8 %4 to i32
  %call11 = call fastcc i32 @wlcore_scan_get_channels(ptr noundef %wl, ptr noundef %channels, i32 noundef %n_channels, i32 noundef %n_ssids, ptr noundef %channels_5, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 0, i32 noundef %conv10, ptr noundef nonnull %n_pactive_ch, i32 noundef %scan_type)
  %conv12 = trunc i32 %call11 to i8
  %arrayidx14 = getelementptr [3 x i8], ptr %cfg, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv12, ptr %arrayidx14, align 1
  %conv19 = and i32 %call11, 255
  %6 = ptrtoint ptr %max_channels_5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_channels_5, align 8
  %conv21 = zext i8 %7 to i32
  %call22 = call fastcc i32 @wlcore_scan_get_channels(ptr noundef %wl, ptr noundef %channels, i32 noundef %n_channels, i32 noundef %n_ssids, ptr noundef %channels_5, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %conv19, i32 noundef %conv21, ptr noundef nonnull %n_pactive_ch, i32 noundef %scan_type)
  %conv23 = trunc i32 %call22 to i8
  %dfs = getelementptr inbounds %struct.wlcore_scan_channels, ptr %cfg, i32 0, i32 2
  %8 = ptrtoint ptr %dfs to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv23, ptr %dfs, align 1
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx14, align 1
  %conv28 = zext i8 %10 to i32
  %conv30 = and i32 %call22, 255
  %add = add nuw nsw i32 %conv30, %conv28
  %11 = ptrtoint ptr %max_channels_5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_channels_5, align 8
  %conv32 = zext i8 %12 to i32
  %call33 = call fastcc i32 @wlcore_scan_get_channels(ptr noundef %wl, ptr noundef %channels, i32 noundef %n_channels, i32 noundef %n_ssids, ptr noundef %channels_5, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %add, i32 noundef %conv32, ptr noundef nonnull %n_pactive_ch, i32 noundef %scan_type)
  %conv34 = trunc i32 %call33 to i8
  %arrayidx36 = getelementptr %struct.wlcore_scan_channels, ptr %cfg, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv34, ptr %arrayidx36, align 1
  %arrayidx38 = getelementptr [3 x i8], ptr %cfg, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx38, align 1
  %arrayidx40 = getelementptr %struct.wlcore_scan_channels, ptr %cfg, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx40, align 1
  %16 = ptrtoint ptr %n_pactive_ch to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %n_pactive_ch, align 1
  %passive_active = getelementptr inbounds %struct.wlcore_scan_channels, ptr %cfg, i32 0, i32 3
  %18 = ptrtoint ptr %passive_active to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %passive_active, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %19 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body62_crit_edge, label %do.body43, !prof !59

entry.do.body62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

do.body43:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_set_scan_chan_params.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_set_scan_chan_params, %if.then52)) #8
          to label %do.body62 [label %if.then52], !srcloc !60

if.then52:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %active, align 1
  %conv55 = zext i8 %21 to i32
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cfg, align 1
  %conv58 = zext i8 %23 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_set_scan_chan_params.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.6, i32 noundef %conv55, i32 noundef %conv58) #8
  br label %do.body62

do.body62:                                        ; preds = %if.then52, %do.body43, %entry.do.body62_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %24 = load i32, ptr @wl12xx_debug_level, align 4
  %and63 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.body62.do.body97_crit_edge, label %do.body72, !prof !59

do.body62.do.body97_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body97

do.body72:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_set_scan_chan_params.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_set_scan_chan_params, %if.then84)) #8
          to label %do.body97 [label %if.then84], !srcloc !60

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx36, align 1
  %conv87 = zext i8 %26 to i32
  %27 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx14, align 1
  %conv90 = zext i8 %28 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_set_scan_chan_params.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.7, i32 noundef %conv87, i32 noundef %conv90) #8
  br label %do.body97

do.body97:                                        ; preds = %if.then84, %do.body72, %do.body62.do.body97_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %29 = load i32, ptr @wl12xx_debug_level, align 4
  %and98 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %do.body97.do.end127_crit_edge, label %do.body107, !prof !59

do.body97.do.end127_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end127

do.body107:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_set_scan_chan_params.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_set_scan_chan_params, %if.then119)) #8
          to label %do.end127 [label %if.then119], !srcloc !60

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %dfs to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dfs, align 1
  %conv121 = zext i8 %31 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_set_scan_chan_params.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.8, i32 noundef %conv121) #8
  br label %do.end127

do.end127:                                        ; preds = %if.then119, %do.body107, %do.body97.do.end127_crit_edge
  %32 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cfg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool131.not = icmp eq i8 %33, 0
  br i1 %tobool131.not, label %lor.lhs.false, label %do.end127.lor.end_crit_edge

do.end127.lor.end_crit_edge:                      ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.lhs.false:                                    ; preds = %do.end127
  %34 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %active, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool135.not = icmp eq i8 %35, 0
  br i1 %tobool135.not, label %lor.lhs.false136, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.lhs.false136:                                 ; preds = %lor.lhs.false
  %36 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool140.not = icmp eq i8 %37, 0
  br i1 %tobool140.not, label %lor.lhs.false141, label %lor.lhs.false136.lor.end_crit_edge

lor.lhs.false136.lor.end_crit_edge:               ; preds = %lor.lhs.false136
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.lhs.false141:                                 ; preds = %lor.lhs.false136
  %38 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool145.not = icmp eq i8 %39, 0
  br i1 %tobool145.not, label %lor.lhs.false146, label %lor.lhs.false141.lor.end_crit_edge

lor.lhs.false141.lor.end_crit_edge:               ; preds = %lor.lhs.false141
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.lhs.false146:                                 ; preds = %lor.lhs.false141
  %40 = ptrtoint ptr %dfs to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dfs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool149.not = icmp eq i8 %41, 0
  br i1 %tobool149.not, label %lor.lhs.false150, label %lor.lhs.false146.lor.end_crit_edge

lor.lhs.false146.lor.end_crit_edge:               ; preds = %lor.lhs.false146
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.lhs.false150:                                 ; preds = %lor.lhs.false146
  %42 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool154.not = icmp eq i8 %43, 0
  br i1 %tobool154.not, label %lor.rhs, label %lor.lhs.false150.lor.end_crit_edge

lor.lhs.false150.lor.end_crit_edge:               ; preds = %lor.lhs.false150
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false150
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool158 = icmp ne i8 %45, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false150.lor.end_crit_edge, %lor.lhs.false146.lor.end_crit_edge, %lor.lhs.false141.lor.end_crit_edge, %lor.lhs.false136.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge, %do.end127.lor.end_crit_edge
  %46 = phi i1 [ true, %lor.lhs.false150.lor.end_crit_edge ], [ true, %lor.lhs.false146.lor.end_crit_edge ], [ true, %lor.lhs.false141.lor.end_crit_edge ], [ true, %lor.lhs.false136.lor.end_crit_edge ], [ true, %lor.lhs.false.lor.end_crit_edge ], [ true, %do.end127.lor.end_crit_edge ], [ %tobool158, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %n_pactive_ch) #8
  ret i1 %46
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wlcore_scan_get_channels(ptr nocapture noundef readonly %wl, ptr nocapture noundef readonly %req_channels, i32 noundef %n_channels, i32 noundef %n_ssids, ptr nocapture noundef %channels, i32 noundef %band, i1 noundef zeroext %radar, i1 noundef zeroext %passive, i32 noundef %start, i32 noundef %max_channels, ptr noundef %n_pactive_ch, i32 noundef %scan_type) unnamed_addr #0 align 64 {
entry:
  %count.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_ssids)
  %tobool.not = icmp eq i32 %n_ssids, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scan_type)
  %cmp = icmp eq i32 %scan_type, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i) #8
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %count.i, align 4
  %hw.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %1 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw.i, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @wlcore_started_vifs_iter, ptr noundef nonnull %count.i) #8
  %3 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  %scan = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 7
  %min_dwell_time_active_long = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 7, i32 2
  %cond.in = select i1 %tobool3.not, ptr %min_dwell_time_active_long, ptr %scan
  %5 = ptrtoint ptr %cond.in to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %cond = load i32, ptr %cond.in, align 1
  %max_dwell_time_active11 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 7, i32 1
  %max_dwell_time_active_long = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 7, i32 3
  %cond14.in = select i1 %tobool3.not, ptr %max_dwell_time_active_long, ptr %max_dwell_time_active11
  %6 = ptrtoint ptr %cond14.in to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %cond14 = load i32, ptr %cond14.in, align 1
  %dwell_time_passive15 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 7, i32 4
  %dwell_time_dfs16 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 7, i32 5
  br label %if.end26

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sched_scan = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %band)
  %cmp19 = icmp eq i32 %band, 1
  %dwell_time_delta_per_probe_5 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 8, i32 3
  %dwell_time_delta_per_probe = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 8, i32 2
  %delta_per_probe.0.in = select i1 %cmp19, ptr %dwell_time_delta_per_probe_5, ptr %dwell_time_delta_per_probe
  %7 = ptrtoint ptr %delta_per_probe.0.in to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %delta_per_probe.0 = load i32, ptr %delta_per_probe.0.in, align 1
  %8 = ptrtoint ptr %sched_scan to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %sched_scan, align 1
  %num_probe_reqs = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 8, i32 6
  %10 = ptrtoint ptr %num_probe_reqs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_probe_reqs, align 1
  %conv = zext i8 %11 to i32
  %mul = mul i32 %delta_per_probe.0, %n_ssids
  %mul22 = mul i32 %mul, %conv
  %add = add i32 %mul22, %9
  %max_dwell_time_delta = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 8, i32 1
  %12 = ptrtoint ptr %max_dwell_time_delta to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %max_dwell_time_delta, align 1
  %add23 = add i32 %add, %13
  %dwell_time_passive24 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 8, i32 4
  %dwell_time_dfs25 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 8, i32 5
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then
  %min_dwell_time_active.0 = phi i32 [ %cond, %if.then ], [ %add, %if.else ]
  %max_dwell_time_active.0 = phi i32 [ %cond14, %if.then ], [ %add23, %if.else ]
  %dwell_time_passive.0.in = phi ptr [ %dwell_time_passive15, %if.then ], [ %dwell_time_passive24, %if.else ]
  %dwell_time_dfs.0.in = phi ptr [ %dwell_time_dfs16, %if.then ], [ %dwell_time_dfs25, %if.else ]
  %sub = add i32 %min_dwell_time_active.0, 999
  %div = udiv i32 %sub, 1000
  %sub29 = add i32 %max_dwell_time_active.0, 999
  %div30 = udiv i32 %sub29, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_channels)
  %cmp37276 = icmp ne i32 %n_channels, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %max_channels)
  %cmp39277 = icmp slt i32 %start, %max_channels
  %or.cond278 = and i1 %cmp37276, %cmp39277
  br i1 %or.cond278, label %for.body.lr.ph, label %if.end26.for.end_crit_edge

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end26
  %14 = ptrtoint ptr %dwell_time_dfs.0.in to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %dwell_time_dfs.0 = load i32, ptr %dwell_time_dfs.0.in, align 1
  %sub35 = add i32 %dwell_time_dfs.0, 999
  %div36 = udiv i32 %sub35, 1000
  %15 = ptrtoint ptr %dwell_time_passive.0.in to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %dwell_time_passive.0 = load i32, ptr %dwell_time_passive.0.in, align 1
  %sub32 = add i32 %dwell_time_passive.0, 999
  %div33 = udiv i32 %sub32, 1000
  %conv56 = zext i1 %radar to i32
  %conv81 = trunc i32 %div36 to i16
  %16 = call i16 @llvm.bswap.i16(i16 %conv81)
  %conv84 = trunc i32 %div33 to i16
  %17 = call i16 @llvm.bswap.i16(i16 %conv84)
  %conv88 = trunc i32 %div to i16
  %18 = call i16 @llvm.bswap.i16(i16 %conv88)
  %conv90 = trunc i32 %div30 to i16
  %19 = call i16 @llvm.bswap.i16(i16 %conv90)
  %tobool98.not = icmp ne ptr %n_pactive_ch, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %band)
  %cmp100 = icmp eq i32 %band, 0
  %or.cond268 = and i1 %cmp100, %tobool98.not
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0283 = phi i32 [ 0, %for.body.lr.ph ], [ %inc192, %for.inc.for.body_crit_edge ]
  %j.0279 = phi i32 [ %start, %for.body.lr.ph ], [ %j.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %req_channels, i32 %i.0283
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %flags41 = getelementptr inbounds %struct.ieee80211_channel, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags41, align 4
  %or = or i32 %23, 2
  %spec.select = select i1 %tobool.not, i32 %or, i32 %23
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %band)
  %cmp47 = icmp eq i32 %25, %band
  %and = and i32 %spec.select, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  %or.cond267 = select i1 %cmp47, i1 %tobool49.not, i1 false
  br i1 %or.cond267, label %land.lhs.true50, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true50:                                  ; preds = %for.body
  %and51 = and i32 %spec.select, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %and51.lobit = lshr exact i32 %and51, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and51.lobit, i32 %conv56)
  %cmp57 = icmp eq i32 %and51.lobit, %conv56
  br i1 %cmp57, label %land.lhs.true59, label %land.lhs.true50.for.inc_crit_edge

land.lhs.true50.for.inc_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true59:                                  ; preds = %land.lhs.true50
  br i1 %radar, label %land.lhs.true59.if.then72_crit_edge, label %lor.lhs.false

land.lhs.true59.if.then72_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72

lor.lhs.false:                                    ; preds = %land.lhs.true59
  %26 = and i32 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %27 = icmp eq i32 %26, 0
  %cmp70 = xor i1 %27, %passive
  br i1 %cmp70, label %lor.lhs.false.if.then72_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.if.then72_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72

if.then72:                                        ; preds = %lor.lhs.false.if.then72_crit_edge, %land.lhs.true59.if.then72_crit_edge
  br i1 %tobool52.not, label %if.then72.if.end87_crit_edge, label %if.then75

if.then72.if.end87_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then75:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  %flags77 = getelementptr %struct.conn_scan_ch_params, ptr %channels, i32 %j.0279, i32 5
  %28 = ptrtoint ptr %flags77 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags77, align 1
  %30 = or i8 %29, 1
  store i8 %30, ptr %flags77, align 1
  br label %if.end87

if.end87:                                         ; preds = %if.then75, %if.then72.if.end87_crit_edge
  %.sink = phi i16 [ %16, %if.then75 ], [ %17, %if.then72.if.end87_crit_edge ]
  %31 = getelementptr %struct.conn_scan_ch_params, ptr %channels, i32 %j.0279, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %.sink, ptr %31, align 1
  %arrayidx89 = getelementptr %struct.conn_scan_ch_params, ptr %channels, i32 %j.0279
  %33 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %18, ptr %arrayidx89, align 1
  %max_duration = getelementptr %struct.conn_scan_ch_params, ptr %channels, i32 %j.0279, i32 1
  %34 = ptrtoint ptr %max_duration to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %19, ptr %max_duration, align 1
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %max_power = getelementptr inbounds %struct.ieee80211_channel, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %max_power to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_power, align 4
  %conv93 = trunc i32 %38 to i8
  %tx_power_att = getelementptr %struct.conn_scan_ch_params, ptr %channels, i32 %j.0279, i32 4
  %39 = ptrtoint ptr %tx_power_att to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv93, ptr %tx_power_att, align 1
  %40 = load ptr, ptr %arrayidx, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %hw_value, align 2
  %conv96 = trunc i16 %42 to i8
  %channel = getelementptr %struct.conn_scan_ch_params, ptr %channels, i32 %j.0279, i32 3
  %43 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv96, ptr %channel, align 1
  br i1 %or.cond268, label %land.lhs.true102, label %if.end87.do.body147_crit_edge

if.end87.do.body147_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body147

land.lhs.true102:                                 ; preds = %if.end87
  %conv96.mask = and i16 %42, 255
  %44 = add nsw i16 %conv96.mask, -15
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %44)
  %45 = icmp ult i16 %44, -3
  %and115 = and i32 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  %or.cond270 = select i1 %45, i1 true, i1 %tobool116.not
  %brmerge = or i1 %tobool.not, %or.cond270
  br i1 %brmerge, label %land.lhs.true102.do.body147_crit_edge, label %if.then119

land.lhs.true102.do.body147_crit_edge:            ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body147

if.then119:                                       ; preds = %land.lhs.true102
  %flags121 = getelementptr %struct.conn_scan_ch_params, ptr %channels, i32 %j.0279, i32 5
  %46 = ptrtoint ptr %flags121 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %flags121, align 1
  %47 = ptrtoint ptr %n_pactive_ch to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %n_pactive_ch, align 1
  %inc = add i8 %48, 1
  store i8 %inc, ptr %n_pactive_ch, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %49 = load i32, ptr @wl12xx_debug_level, align 4
  %and122 = and i32 %49, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.then119.do.body147_crit_edge, label %do.body130, !prof !59

if.then119.do.body147_crit_edge:                  ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body147

do.body130:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_scan_get_channels.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_scan_get_channels, %if.then140)) #8
          to label %do.body147 [label %if.then140], !srcloc !60

if.then140:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %n_pactive_ch to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %n_pactive_ch, align 1
  %conv141 = zext i8 %51 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_scan_get_channels.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.15, i32 noundef %conv141) #8
  br label %do.body147

do.body147:                                       ; preds = %if.then140, %do.body130, %if.then119.do.body147_crit_edge, %land.lhs.true102.do.body147_crit_edge, %if.end87.do.body147_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %52 = load i32, ptr @wl12xx_debug_level, align 4
  %and148 = and i32 %52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %do.body147.do.end189_crit_edge, label %do.body157, !prof !59

do.body147.do.end189_crit_edge:                   ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end189

do.body157:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_scan_get_channels.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_scan_get_channels, %if.then169)) #8
          to label %do.end189 [label %if.then169], !srcloc !60

if.then169:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %center_freq, align 4
  %hw_value172 = getelementptr inbounds %struct.ieee80211_channel, ptr %54, i32 0, i32 3
  %57 = ptrtoint ptr %hw_value172 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %hw_value172, align 2
  %conv173 = zext i16 %58 to i32
  %flags175 = getelementptr inbounds %struct.ieee80211_channel, ptr %54, i32 0, i32 4
  %59 = ptrtoint ptr %flags175 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags175, align 4
  %max_power177 = getelementptr inbounds %struct.ieee80211_channel, ptr %54, i32 0, i32 6
  %61 = ptrtoint ptr %max_power177 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_power177, align 4
  %cond180 = select i1 %tobool52.not, ptr @.str.18, ptr @.str.17
  %and181 = and i32 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  %cond183 = select i1 %tobool182.not, ptr @.str.18, ptr @.str.19
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_scan_get_channels.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.16, i32 noundef %56, i32 noundef %conv173, i32 noundef %60, i32 noundef %62, i32 noundef %div, i32 noundef %div30, ptr noundef nonnull %cond180, ptr noundef nonnull %cond183) #8
  br label %do.end189

do.end189:                                        ; preds = %if.then169, %do.body157, %do.body147.do.end189_crit_edge
  %inc190 = add nsw i32 %j.0279, 1
  br label %for.inc

for.inc:                                          ; preds = %do.end189, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true50.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %inc190, %do.end189 ], [ %j.0279, %lor.lhs.false.for.inc_crit_edge ], [ %j.0279, %land.lhs.true50.for.inc_crit_edge ], [ %j.0279, %for.body.for.inc_crit_edge ]
  %inc192 = add nuw i32 %i.0283, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc192, i32 %n_channels)
  %cmp37 = icmp ult i32 %inc192, %n_channels
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1, i32 %max_channels)
  %cmp39 = icmp slt i32 %j.1, %max_channels
  %or.cond = select i1 %cmp37, i1 %cmp39, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end26.for.end_crit_edge
  %j.0.lcssa = phi i32 [ %start, %if.end26.for.end_crit_edge ], [ %j.1, %for.inc.for.end_crit_edge ]
  %sub193 = sub i32 %j.0.lcssa, %start
  ret i32 %sub193
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlcore_scan(ptr noundef %wl, ptr noundef %vif, ptr noundef readonly %ssid, i32 noundef %ssid_len, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %vif, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.wl12xx_vif_to_data.exit_crit_edge, !prof !65

entry.wl12xx_vif_to_data.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wl12xx_vif_to_data.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 495, i32 noundef 9, ptr noundef null) #8
  br label %wl12xx_vif_to_data.exit

wl12xx_vif_to_data.exit:                          ; preds = %do.end.i, %entry.wl12xx_vif_to_data.exit_crit_edge
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp = icmp ugt i32 %1, 64
  br i1 %cmp, label %do.body2, label %do.end7, !prof !65

do.body2:                                         ; preds = %wl12xx_vif_to_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wlcore/scan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 342, 0\0A.popsection", ""() #8, !srcloc !66
  unreachable

do.end7:                                          ; preds = %wl12xx_vif_to_data.exit
  %scan = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 79
  %state = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 79, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp8.not = icmp eq i8 %3, 0
  br i1 %cmp8.not, label %if.end11, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ssid_len)
  %tobool14.not = icmp eq i32 %ssid_len, 0
  %tobool15.not = icmp eq ptr %ssid, null
  %or.cond = or i1 %tobool15.not, %tobool14.not
  %ssid_len22 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 79, i32 5
  br i1 %or.cond, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %ssid_len22 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %ssid_len, ptr %ssid_len22, align 8
  %ssid20 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 79, i32 4
  %6 = call ptr @memcpy(ptr %ssid20, ptr %ssid, i32 %ssid_len)
  br label %if.end23

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %ssid_len22 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ssid_len22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then16
  %scan_wlvif = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 78
  %8 = ptrtoint ptr %scan_wlvif to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %drv_priv.i, ptr %scan_wlvif, align 4
  %9 = ptrtoint ptr %scan to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %req, ptr %scan, align 8
  %scanned_ch = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 79, i32 1
  %10 = ptrtoint ptr %scanned_ch to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %scanned_ch, align 4
  %failed = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 79, i32 2
  %11 = ptrtoint ptr %failed to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %failed, align 4
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %scan_complete_work = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 80
  tail call void @ieee80211_queue_delayed_work(ptr noundef %13, ptr noundef %scan_complete_work, i32 noundef 3000) #8
  %ops = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 114
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %scan_start = getelementptr inbounds %struct.wlcore_ops, ptr %15, i32 0, i32 28
  %16 = ptrtoint ptr %scan_start to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %scan_start, align 4
  %call30 = tail call i32 %17(ptr noundef %wl, ptr noundef %drv_priv.i, ptr noundef %req) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -16, %do.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlcore_scan_sched_scan_ssid_list(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %match_sets = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %match_sets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %match_sets, align 4
  %ssids1 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %ssids1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ssids1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %4 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %4, 4352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body4, !prof !59

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_scan_sched_scan_ssid_list.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_scan_sched_scan_ssid_list, %if.then12)) #8
          to label %do.end15 [label %if.then12], !srcloc !60

if.then12:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_scan_sched_scan_ssid_list.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.10) #8
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body4, %entry.do.end15_crit_edge
  %n_match_sets = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 9
  %5 = ptrtoint ptr %n_match_sets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_match_sets, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp311 = icmp sgt i32 %6, 0
  br i1 %cmp311, label %do.end15.for.body_crit_edge, label %do.end15.land.lhs.true_crit_edge

do.end15.land.lhs.true_crit_edge:                 ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

do.end15.for.body_crit_edge:                      ; preds = %do.end15
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end15.for.body_crit_edge
  %n_match_ssids.0313 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %do.end15.for.body_crit_edge ]
  %i.0312 = phi i32 [ %inc20, %for.body.for.body_crit_edge ], [ 0, %do.end15.for.body_crit_edge ]
  %ssid_len = getelementptr %struct.cfg80211_match_set, ptr %1, i32 %i.0312, i32 0, i32 1
  %7 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ssid_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp16.not = icmp ne i8 %8, 0
  %inc = zext i1 %cmp16.not to i32
  %spec.select = add i32 %n_match_ssids.0313, %inc
  %inc20 = add nuw nsw i32 %i.0312, 1
  %exitcond.not = icmp eq i32 %inc20, %6
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %phi.cmp = icmp eq i32 %spec.select, 0
  br i1 %phi.cmp, label %for.end.land.lhs.true_crit_edge, label %for.end.if.end34_crit_edge

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

for.end.land.lhs.true_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end.land.lhs.true_crit_edge, %do.end15.land.lhs.true_crit_edge
  %n_ssids = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 2
  %9 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_ssids, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %land.lhs.true.if.end34_crit_edge [
    i32 0, label %land.lhs.true.out.thread296_crit_edge
    i32 1, label %land.lhs.true26
  ]

land.lhs.true.out.thread296_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread296

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.lhs.true26:                                  ; preds = %land.lhs.true
  %12 = ptrtoint ptr %ssids1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ssids1, align 8
  %ssid_len29 = getelementptr inbounds %struct.cfg80211_ssid, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ssid_len29 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ssid_len29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp31 = icmp eq i8 %15, 0
  br i1 %cmp31, label %land.lhs.true26.out.thread296_crit_edge, label %land.lhs.true26.if.end34_crit_edge

land.lhs.true26.if.end34_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.lhs.true26.out.thread296_crit_edge:          ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread296

if.end34:                                         ; preds = %land.lhs.true26.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %for.end.if.end34_crit_edge
  %n_match_ssids.0.lcssa336 = phi i1 [ true, %land.lhs.true.if.end34_crit_edge ], [ true, %land.lhs.true26.if.end34_crit_edge ], [ false, %for.end.if.end34_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 552) #12
  %tobool36.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool36.not, label %if.end34.out.thread296_crit_edge, label %if.end38

if.end34.out.thread296_crit_edge:                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread296

if.end38:                                         ; preds = %if.end34
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %17 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %role_id, align 2
  %role_id39 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %role_id39 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %role_id39, align 1
  br i1 %n_match_ssids.0.lcssa336, label %for.cond42.preheader, label %for.cond78.preheader

for.cond78.preheader:                             ; preds = %if.end38
  %20 = ptrtoint ptr %n_match_sets to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_match_sets, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp80314 = icmp sgt i32 %21, 0
  br i1 %cmp80314, label %for.body82.lr.ph, label %for.cond78.preheader.for.end120_crit_edge

for.cond78.preheader.for.end120_crit_edge:        ; preds = %for.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end120

for.body82.lr.ph:                                 ; preds = %for.cond78.preheader
  %n_ssids90 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, ptr %call7.i.i, i32 0, i32 1
  br label %for.body82

for.cond42.preheader:                             ; preds = %if.end38
  %n_ssids43 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 2
  %22 = ptrtoint ptr %n_ssids43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_ssids43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp44327 = icmp sgt i32 %23, 0
  br i1 %cmp44327, label %for.body46.lr.ph, label %for.cond42.preheader.if.end196_crit_edge

for.cond42.preheader.if.end196_crit_edge:         ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196

for.body46.lr.ph:                                 ; preds = %for.cond42.preheader
  %n_ssids53 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, ptr %call7.i.i, i32 0, i32 1
  br label %for.body46

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %for.body46.lr.ph
  %i.1328 = phi i32 [ 0, %for.body46.lr.ph ], [ %inc76, %for.body46.for.body46_crit_edge ]
  %arrayidx47 = getelementptr %struct.cfg80211_ssid, ptr %3, i32 %i.1328
  %ssid_len48 = getelementptr %struct.cfg80211_ssid, ptr %3, i32 %i.1328, i32 1
  %24 = ptrtoint ptr %ssid_len48 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ssid_len48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool50.not = icmp ne i8 %25, 0
  %conv51 = zext i1 %tobool50.not to i8
  %26 = ptrtoint ptr %n_ssids53 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %n_ssids53, align 4
  %idxprom = zext i8 %27 to i32
  %arrayidx54 = getelementptr %struct.wl1271_cmd_sched_scan_ssid_list, ptr %call7.i.i, i32 0, i32 2, i32 %idxprom
  %28 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv51, ptr %arrayidx54, align 1
  %29 = ptrtoint ptr %ssid_len48 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ssid_len48, align 1
  %len = getelementptr %struct.wl1271_cmd_sched_scan_ssid_list, ptr %call7.i.i, i32 0, i32 2, i32 %idxprom, i32 1
  %31 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %len, align 2
  %ssid66 = getelementptr %struct.wl1271_cmd_sched_scan_ssid_list, ptr %call7.i.i, i32 0, i32 2, i32 %idxprom, i32 2
  %32 = load i8, ptr %ssid_len48, align 1
  %conv72 = zext i8 %32 to i32
  %33 = call ptr @memcpy(ptr %ssid66, ptr %arrayidx47, i32 %conv72)
  %34 = load i8, ptr %n_ssids53, align 4
  %inc74 = add i8 %34, 1
  store i8 %inc74, ptr %n_ssids53, align 4
  %inc76 = add nuw nsw i32 %i.1328, 1
  %exitcond334.not = icmp eq i32 %inc76, %23
  br i1 %exitcond334.not, label %for.body46.if.end196_crit_edge, label %for.body46.for.body46_crit_edge

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body46

for.body46.if.end196_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196

for.body82:                                       ; preds = %for.inc118.for.body82_crit_edge, %for.body82.lr.ph
  %i.2315 = phi i32 [ 0, %for.body82.lr.ph ], [ %inc119, %for.inc118.for.body82_crit_edge ]
  %arrayidx83 = getelementptr %struct.cfg80211_match_set, ptr %1, i32 %i.2315
  %ssid_len85 = getelementptr inbounds %struct.cfg80211_ssid, ptr %arrayidx83, i32 0, i32 1
  %35 = ptrtoint ptr %ssid_len85 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ssid_len85, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool86.not = icmp eq i8 %36, 0
  br i1 %tobool86.not, label %for.body82.for.inc118_crit_edge, label %if.end88

for.body82.for.inc118_crit_edge:                  ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc118

if.end88:                                         ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %n_ssids90 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %n_ssids90, align 4
  %idxprom91 = zext i8 %38 to i32
  %arrayidx92 = getelementptr %struct.wl1271_cmd_sched_scan_ssid_list, ptr %call7.i.i, i32 0, i32 2, i32 %idxprom91
  %39 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx92, align 1
  %40 = ptrtoint ptr %ssid_len85 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ssid_len85, align 4
  %len101 = getelementptr %struct.wl1271_cmd_sched_scan_ssid_list, ptr %call7.i.i, i32 0, i32 2, i32 %idxprom91, i32 1
  %42 = ptrtoint ptr %len101 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %len101, align 2
  %ssid106 = getelementptr %struct.wl1271_cmd_sched_scan_ssid_list, ptr %call7.i.i, i32 0, i32 2, i32 %idxprom91, i32 2
  %43 = load i8, ptr %ssid_len85, align 4
  %conv115 = zext i8 %43 to i32
  %44 = call ptr @memcpy(ptr %ssid106, ptr %arrayidx83, i32 %conv115)
  %45 = load i8, ptr %n_ssids90, align 4
  %inc117 = add i8 %45, 1
  store i8 %inc117, ptr %n_ssids90, align 4
  br label %for.inc118

for.inc118:                                       ; preds = %if.end88, %for.body82.for.inc118_crit_edge
  %inc119 = add nuw nsw i32 %i.2315, 1
  %exitcond331.not = icmp eq i32 %inc119, %21
  br i1 %exitcond331.not, label %for.inc118.for.end120_crit_edge, label %for.inc118.for.body82_crit_edge

for.inc118.for.body82_crit_edge:                  ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body82

for.inc118.for.end120_crit_edge:                  ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end120

for.end120:                                       ; preds = %for.inc118.for.end120_crit_edge, %for.cond78.preheader.for.end120_crit_edge
  %n_ssids121 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 2
  %46 = ptrtoint ptr %n_ssids121 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_ssids121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp122 = icmp sgt i32 %47, 1
  br i1 %cmp122, label %for.end120.for.body140.lr.ph_crit_edge, label %lor.lhs.false124

for.end120.for.body140.lr.ph_crit_edge:           ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body140.lr.ph

lor.lhs.false124:                                 ; preds = %for.end120
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp126 = icmp eq i32 %47, 1
  br i1 %cmp126, label %land.lhs.true128, label %lor.lhs.false124.if.end196_crit_edge

lor.lhs.false124.if.end196_crit_edge:             ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196

land.lhs.true128:                                 ; preds = %lor.lhs.false124
  %48 = ptrtoint ptr %ssids1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ssids1, align 8
  %ssid_len131 = getelementptr inbounds %struct.cfg80211_ssid, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %ssid_len131 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ssid_len131, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp133.not.not = icmp eq i8 %51, 0
  br i1 %cmp133.not.not, label %land.lhs.true128.if.end196_crit_edge, label %land.lhs.true128.for.body140.lr.ph_crit_edge

land.lhs.true128.for.body140.lr.ph_crit_edge:     ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body140.lr.ph

land.lhs.true128.if.end196_crit_edge:             ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196

for.body140.lr.ph:                                ; preds = %land.lhs.true128.for.body140.lr.ph_crit_edge, %for.end120.for.body140.lr.ph_crit_edge
  %52 = ptrtoint ptr %ssids1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ssids1, align 8
  %n_ssids148 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, ptr %call7.i.i, i32 0, i32 1
  br label %for.body140

for.body140:                                      ; preds = %for.inc192.for.body140_crit_edge, %for.body140.lr.ph
  %i.3323 = phi i32 [ 0, %for.body140.lr.ph ], [ %inc193, %for.inc192.for.body140_crit_edge ]
  %ssid_len143 = getelementptr %struct.cfg80211_ssid, ptr %53, i32 %i.3323, i32 1
  %54 = ptrtoint ptr %ssid_len143 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ssid_len143, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool144.not = icmp eq i8 %55, 0
  br i1 %tobool144.not, label %for.body140.for.inc192_crit_edge, label %for.cond147.preheader

for.body140.for.inc192_crit_edge:                 ; preds = %for.body140
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc192

for.cond147.preheader:                            ; preds = %for.body140
  %56 = ptrtoint ptr %n_ssids148 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %n_ssids148, align 4
  %conv149 = zext i8 %57 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp150318.not = icmp eq i8 %57, 0
  br i1 %cmp150318.not, label %for.cond147.preheader.for.end185_crit_edge, label %for.body152.lr.ph

for.cond147.preheader.for.end185_crit_edge:       ; preds = %for.cond147.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end185

for.body152.lr.ph:                                ; preds = %for.cond147.preheader
  %conv156 = zext i8 %55 to i32
  %arrayidx154 = getelementptr %struct.cfg80211_ssid, ptr %53, i32 %i.3323
  br label %for.body152

for.body152:                                      ; preds = %for.inc183.for.body152_crit_edge, %for.body152.lr.ph
  %j.0319 = phi i32 [ 0, %for.body152.lr.ph ], [ %inc184, %for.inc183.for.body152_crit_edge ]
  %len159 = getelementptr %struct.wl1271_cmd_sched_scan_ssid_list, ptr %call7.i.i, i32 0, i32 2, i32 %j.0319, i32 1
  %58 = ptrtoint ptr %len159 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %len159, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %59)
  %cmp161 = icmp eq i8 %55, %59
  br i1 %cmp161, label %land.lhs.true163, label %for.body152.for.inc183_crit_edge

for.body152.for.inc183_crit_edge:                 ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc183

land.lhs.true163:                                 ; preds = %for.body152
  %ssid170 = getelementptr %struct.wl1271_cmd_sched_scan_ssid_list, ptr %call7.i.i, i32 0, i32 2, i32 %j.0319, i32 2
  %bcmp = tail call i32 @bcmp(ptr %arrayidx154, ptr %ssid170, i32 %conv156) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool177.not = icmp eq i32 %bcmp, 0
  br i1 %tobool177.not, label %if.then178, label %land.lhs.true163.for.inc183_crit_edge

land.lhs.true163.for.inc183_crit_edge:            ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc183

if.then178:                                       ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx158.le = getelementptr %struct.wl1271_cmd_sched_scan_ssid_list, ptr %call7.i.i, i32 0, i32 2, i32 %j.0319
  %60 = ptrtoint ptr %arrayidx158.le to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %arrayidx158.le, align 1
  br label %for.end185

for.inc183:                                       ; preds = %land.lhs.true163.for.inc183_crit_edge, %for.body152.for.inc183_crit_edge
  %inc184 = add nuw nsw i32 %j.0319, 1
  %exitcond332.not = icmp eq i32 %inc184, %conv149
  br i1 %exitcond332.not, label %for.inc183.for.end185_crit_edge, label %for.inc183.for.body152_crit_edge

for.inc183.for.body152_crit_edge:                 ; preds = %for.inc183
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body152

for.inc183.for.end185_crit_edge:                  ; preds = %for.inc183
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end185

for.end185:                                       ; preds = %for.inc183.for.end185_crit_edge, %if.then178, %for.cond147.preheader.for.end185_crit_edge
  %j.0310 = phi i32 [ %j.0319, %if.then178 ], [ 0, %for.cond147.preheader.for.end185_crit_edge ], [ %conv149, %for.inc183.for.end185_crit_edge ]
  %61 = ptrtoint ptr %n_ssids148 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %n_ssids148, align 4
  %conv187 = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0310, i32 %conv187)
  %cmp188 = icmp eq i32 %j.0310, %conv187
  br i1 %cmp188, label %for.end185.out.thread296.sink.split_crit_edge, label %for.end185.for.inc192_crit_edge

for.end185.for.inc192_crit_edge:                  ; preds = %for.end185
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc192

for.end185.out.thread296.sink.split_crit_edge:    ; preds = %for.end185
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread296.sink.split

for.inc192:                                       ; preds = %for.end185.for.inc192_crit_edge, %for.body140.for.inc192_crit_edge
  %inc193 = add nuw nsw i32 %i.3323, 1
  %exitcond333.not = icmp eq i32 %inc193, %47
  br i1 %exitcond333.not, label %for.inc192.if.end196_crit_edge, label %for.inc192.for.body140_crit_edge

for.inc192.for.body140_crit_edge:                 ; preds = %for.inc192
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body140

for.inc192.if.end196_crit_edge:                   ; preds = %for.inc192
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196

if.end196:                                        ; preds = %for.inc192.if.end196_crit_edge, %land.lhs.true128.if.end196_crit_edge, %lor.lhs.false124.if.end196_crit_edge, %for.body46.if.end196_crit_edge, %for.cond42.preheader.if.end196_crit_edge
  %type.0 = phi i32 [ 2, %land.lhs.true128.if.end196_crit_edge ], [ 2, %lor.lhs.false124.if.end196_crit_edge ], [ 3, %for.cond42.preheader.if.end196_crit_edge ], [ 3, %for.body46.if.end196_crit_edge ], [ 2, %for.inc192.if.end196_crit_edge ]
  %call197 = tail call i32 @wl1271_cmd_send(ptr noundef %wl, i16 noundef zeroext 28, ptr noundef nonnull %call7.i.i, i32 noundef 552, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %cmp198 = icmp slt i32 %call197, 0
  br i1 %cmp198, label %do.end203, label %if.end196.out.thread296.sink.split_crit_edge

if.end196.out.thread296.sink.split_crit_edge:     ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread296.sink.split

do.end203:                                        ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #10
  %call205 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #11
  br label %out.thread296.sink.split

out.thread296.sink.split:                         ; preds = %do.end203, %if.end196.out.thread296.sink.split_crit_edge, %for.end185.out.thread296.sink.split_crit_edge
  %.ph = phi i32 [ %call197, %do.end203 ], [ %type.0, %if.end196.out.thread296.sink.split_crit_edge ], [ -22, %for.end185.out.thread296.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %out.thread296

out.thread296:                                    ; preds = %out.thread296.sink.split, %if.end34.out.thread296_crit_edge, %land.lhs.true26.out.thread296_crit_edge, %land.lhs.true.out.thread296_crit_edge
  %63 = phi i32 [ -12, %if.end34.out.thread296_crit_edge ], [ %10, %land.lhs.true.out.thread296_crit_edge ], [ 0, %land.lhs.true26.out.thread296_crit_edge ], [ %.ph, %out.thread296.sink.split ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_send(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlcore_scan_sched_scan_results(ptr nocapture noundef readonly %wl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body3, !prof !59

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_scan_sched_scan_results.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_scan_sched_scan_results, %if.then11)) #8
          to label %do.end13 [label %if.then11], !srcloc !60

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_scan_sched_scan_results.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.13) #8
  br label %do.end13

do.end13:                                         ; preds = %if.then11, %do.body3, %entry.do.end13_crit_edge
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_sched_scan_results(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sched_scan_results(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wlcore_started_vifs_iter(ptr nocapture noundef %data, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %vif, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.wl12xx_vif_to_data.exit_crit_edge, !prof !65

entry.wl12xx_vif_to_data.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wl12xx_vif_to_data.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 495, i32 noundef 9, ptr noundef null) #8
  br label %wl12xx_vif_to_data.exit

wl12xx_vif_to_data.exit:                          ; preds = %do.end.i, %entry.wl12xx_vif_to_data.exit_crit_edge
  %bss_type = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 4
  %0 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bss_type, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %1, label %wl12xx_vif_to_data.exit.if.end8_crit_edge [
    i8 2, label %sw.bb
    i8 3, label %sw.epilog
  ]

wl12xx_vif_to_data.exit.if.end8_crit_edge:        ; preds = %wl12xx_vif_to_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

sw.bb:                                            ; preds = %wl12xx_vif_to_data.exit
  %flags = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.not = icmp eq i32 %5, 0
  br i1 %tobool.not.not, label %sw.bb.if.end8_crit_edge, label %sw.bb.if.then7_crit_edge

sw.bb.if.then7_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

sw.bb.if.end8_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

sw.epilog:                                        ; preds = %wl12xx_vif_to_data.exit
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %6 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_priv.i, align 8
  %active_sta_count = getelementptr inbounds %struct.wl1271, ptr %7, i32 0, i32 110
  %8 = ptrtoint ptr %active_sta_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %active_sta_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %sw.epilog.if.then7_crit_edge, label %sw.epilog.if.end8_crit_edge

sw.epilog.if.end8_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

sw.epilog.if.then7_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.then7:                                         ; preds = %sw.epilog.if.then7_crit_edge, %sw.bb.if.then7_crit_edge
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %data, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %sw.epilog.if.end8_crit_edge, %sw.bb.if.end8_crit_edge, %wl12xx_vif_to_data.exit.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !47, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wlcore/scan.c", i32 33, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wl1271_scan_complete_work.__UNIQUE_ID_ddebug349, !1, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wlcore/scan.c", i32 68, i32 3}
!8 = !{ptr @wl1271_scan_complete_work._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @wl1271_scan_complete_work._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ti/wlcore/scan.c", i32 320, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @wlcore_set_scan_chan_params.__UNIQUE_ID_ddebug352, !11, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ti/wlcore/scan.c", i32 322, i32 2}
!16 = !{ptr @wlcore_set_scan_chan_params.__UNIQUE_ID_ddebug353, !15, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ti/wlcore/scan.c", i32 324, i32 2}
!19 = !{ptr @wlcore_set_scan_chan_params.__UNIQUE_ID_ddebug354, !18, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!20 = !{ptr @__ksymtab_wlcore_set_scan_chan_params, !21, !"__ksymtab_wlcore_set_scan_chan_params", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ti/wlcore/scan.c", i32 330, i32 1}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ti/wlcore/scan.c", i32 380, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @wlcore_scan_sched_scan_ssid_list.__UNIQUE_ID_ddebug355, !23, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ti/wlcore/scan.c", i32 461, i32 3}
!28 = !{ptr @wlcore_scan_sched_scan_ssid_list._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @wlcore_scan_sched_scan_ssid_list._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_wlcore_scan_sched_scan_ssid_list, !31, !"__ksymtab_wlcore_scan_sched_scan_ssid_list", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ti/wlcore/scan.c", i32 472, i32 1}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ti/wlcore/scan.c", i32 476, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @wlcore_scan_sched_scan_results.__UNIQUE_ID_ddebug356, !33, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!36 = !{ptr @__ksymtab_wlcore_scan_sched_scan_results, !37, !"__ksymtab_wlcore_scan_sched_scan_results", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ti/wlcore/scan.c", i32 480, i32 1}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ti/wlcore/scan.c", i32 223, i32 5}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @wlcore_scan_get_channels.__UNIQUE_ID_ddebug350, !39, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ti/wlcore/scan.c", i32 227, i32 4}
!44 = !{ptr @wlcore_scan_get_channels.__UNIQUE_ID_ddebug351, !43, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!45 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ti/wlcore/wlcore_i.h", i32 495, i32 2}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2148970404, i64 2148970409, i64 2148970422, i64 2148970466, i64 2148970500, i64 2148970521}
!61 = !{i64 2148488008}
!62 = !{i64 972831, i64 972856, i64 972878, i64 972894, i64 972906, i64 972926, i64 972950, i64 972966, i64 972978}
!63 = !{i64 2148488196}
!64 = !{i8 0, i8 2}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{i64 2157562938, i64 2157563440, i64 2157562975, i64 2157563031, i64 2157563065, i64 2157563089, i64 2157563130, i64 2157563151, i64 2157563179, i64 2157563213}
