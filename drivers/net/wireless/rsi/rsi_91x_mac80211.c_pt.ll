; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/rsi/rsi_91x_mac80211.c_pt.bc'
source_filename = "../drivers/net/wireless/rsi/rsi_91x_mac80211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rsi_mac80211_detach\22, \22a\22\09"
module asm "\09.weak\09__crc_rsi_mac80211_detach\09\09\09\09"
module asm "\09.long\09__crc_rsi_mac80211_detach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rsi_mac80211_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22rsi_mac80211_detach\22\09\09\09\09\09"
module asm "__kstrtabns_rsi_mac80211_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rsi_config_wowlan\22, \22a\22\09"
module asm "\09.weak\09__crc_rsi_config_wowlan\09\09\09\09"
module asm "\09.long\09__crc_rsi_config_wowlan\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rsi_config_wowlan:\09\09\09\09\09"
module asm "\09.asciz \09\22rsi_config_wowlan\22\09\09\09\09\09"
module asm "__kstrtabns_rsi_config_wowlan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.rsi_common = type <{ ptr, [3 x %struct.vif_priv], ptr, i8, %struct.version_info, i8, %struct.rsi_thread, [6 x %struct.sk_buff_head], %struct.completion, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i8, i16, [2 x i8], [2 x i32], [2 x %struct.rsi_rate_config], i8, [3 x i8], %struct.transmit_q_stats, %struct.security_info, [4 x %struct.wmm_qinfo], [4 x %struct.ieee80211_tx_queue_params], [6 x i8], [2 x i8], i32, i8, i8, i8, i8, ptr, i8, i8, [20 x i16], i8, i8, i32, i8, [3 x i8], %struct.cqm_info, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.mutex, i8, i8, i8, i8, i16, i8, i8, i16, [2 x i8], [33 x %struct.rsi_sta], i32, i32, ptr, i8, [3 x i8], %struct.timer_list, ptr, i8, i8, [2 x i8], ptr, ptr, %struct.rsi_bgscan_params, %struct.rsi_9116_features, i8, i8, [2 x i8] }>
%struct.vif_priv = type { i8, i8, i16, i32 }
%struct.version_info = type { i16, i16, i8, i8, %union.anon.133 }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type { [8 x i8] }
%struct.rsi_thread = type { ptr, %struct.completion, ptr, %struct.rsi_event, %struct.atomic_t }
%struct.rsi_event = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rsi_rate_config = type { i32, i16, i8 }
%struct.transmit_q_stats = type { [6 x i32], [6 x i32] }
%struct.security_info = type { i32, i32 }
%struct.wmm_qinfo = type { i32, i32, i32, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.cqm_info = type { i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rsi_sta = type { ptr, i16, [16 x i16], [16 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rsi_bgscan_params = type { i16, i16, i16, i8, i8, i16, i16 }
%struct.rsi_9116_features = type { i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.rsi_hw = type { ptr, i32, ptr, [3 x ptr], [4 x %struct.ieee80211_tx_queue_params], [6 x %struct.ieee80211_supported_band], ptr, i8, i32, i16, i32, %struct.rsi_ps_info, %struct.spinlock, i32, ptr, i8, ptr, %struct.timer_list, i8, i32, %struct.eepromrw_info, i32, i8, [2 x i8], ptr, ptr, ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.rsi_ps_info = type <{ i8, i8, i8, i8, i8, i8, i16, i32, i16, i32, i16, i32 }>
%struct.eepromrw_info = type { i32, i32, i8, i16, [480 x i8] }
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
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.cfg80211_wowlan = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.128, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.128 = type { i64, i64, i8 }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.rsi_host_intf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_scan_request = type { %struct.ieee80211_scan_ies, %struct.cfg80211_scan_request }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }

@rsi_rates = dso_local global { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 20, i16 2, i16 0 }, %struct.ieee80211_rate { i32 0, i16 55, i16 4, i16 0 }, %struct.ieee80211_rate { i32 0, i16 110, i16 6, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 139, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 143, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 138, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 142, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 137, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 141, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 136, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 140, i16 0 }], [48 x i8] zeroinitializer }, align 32
@rsi_mcsrates = dso_local constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263], [16 x i8] zeroinitializer }, align 32
@__kstrtab_rsi_mac80211_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_rsi_mac80211_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_rsi_mac80211_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rsi_mac80211_detach to i32), ptr @__kstrtab_rsi_mac80211_detach, ptr @__kstrtabns_rsi_mac80211_detach }, section "___ksymtab_gpl+rsi_mac80211_detach", align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"##### No MAC #####\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Remain on channel expired\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Config WoWLAN to device\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/rsi/rsi_91x_mac80211.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WoW triggers not enabled\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:No valid WoW triggers\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.rsi_config_wowlan = private unnamed_addr constant [18 x i8] c"rsi_config_wowlan\00", align 1
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Cannot configure WoWLAN (Station not connected)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TRIGGERS %x\0A\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_rsi_config_wowlan = external dso_local constant [0 x i8], align 1
@__kstrtabns_rsi_config_wowlan = external dso_local constant [0 x i8], align 1
@__ksymtab_rsi_config_wowlan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rsi_config_wowlan to i32), ptr @__kstrtab_rsi_config_wowlan, ptr @__kstrtabns_rsi_config_wowlan }, section "___ksymtab+rsi_config_wowlan", align 4
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Performing mac80211 attach\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.rsi_mac80211_attach = private unnamed_addr constant [20 x i8] c"rsi_mac80211_attach\00", align 1
@mac80211_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @rsi_mac80211_tx, ptr @rsi_mac80211_start, ptr @rsi_mac80211_stop, ptr @rsi_mac80211_suspend, ptr @rsi_mac80211_resume, ptr null, ptr @rsi_mac80211_add_interface, ptr null, ptr @rsi_mac80211_remove_interface, ptr @rsi_mac80211_config, ptr @rsi_mac80211_bss_info_changed, ptr null, ptr null, ptr null, ptr @rsi_mac80211_conf_filter, ptr null, ptr null, ptr @rsi_mac80211_set_key, ptr null, ptr null, ptr null, ptr @rsi_mac80211_hw_scan_start, ptr @rsi_mac80211_cancel_hw_scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsi_mac80211_set_rts_threshold, ptr @rsi_mac80211_sta_add, ptr @rsi_mac80211_sta_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsi_mac80211_conf_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsi_mac80211_ampdu_action, ptr null, ptr @rsi_mac80211_rfkill_poll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsi_mac80211_set_antenna, ptr @rsi_mac80211_get_antenna, ptr @rsi_mac80211_roc, ptr @rsi_mac80211_cancel_roc, ptr null, ptr null, ptr null, ptr @rsi_mac80211_set_rate_mask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: ieee80211 hw alloc failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AARF\00", [27 x i8] zeroinitializer }, align 32
@rsi_max_ap_stas = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 32, i32 0, i32 0, i32 0, i32 4, i32 32, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 1, i32 4, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Max Stations Allowed = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rsi_wowlan_support = internal constant { %struct.wiphy_wowlan_support, [36 x i8] } { %struct.wiphy_wowlan_support { i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@rsi_iface_combinations = internal constant { [1 x %struct.ieee80211_iface_combination], [44 x i8] } { [1 x %struct.ieee80211_iface_combination] [%struct.ieee80211_iface_combination { ptr @rsi_iface_limits, i32 1, i16 3, i8 3, i8 0, i8 0, i8 0, i32 0 }], [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CQM: Notifying event: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Switched to channel - %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Mapping wowlan triggers\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"===> Interface UP <===\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"===> Interface DOWN <===\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: mac80211 suspend\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.rsi_mac80211_suspend = private unnamed_addr constant [21 x i8] c"rsi_mac80211_suspend\00", align 1
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to configure WoWLAN\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: mac80211 resume\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.rsi_mac80211_resume = private unnamed_addr constant [20 x i8] c"rsi_mac80211_resume\00", align 1
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Interface type %d not supported\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.rsi_mac80211_add_interface = private unnamed_addr constant [27 x i8] c"rsi_mac80211_add_interface\00", align 1
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Reject: Max VAPs reached\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set VAP capabilities\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Remove Interface Called\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Opmode error : %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Configuring Power\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.rsi_mac80211_config = private unnamed_addr constant [20 x i8] c"rsi_mac80211_config\00", align 1
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RTS threshold\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Sending vap updates....\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Set channel: %d MHz type: %d channel_no %d\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.rsi_channel_change = private unnamed_addr constant [19 x i8] c"rsi_channel_change\00", align 1
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"blk data q %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unblk data q %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: No virtual interface found\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.rsi_config_power = private unnamed_addr constant [17 x i8] c"rsi_config_power\00", align 1
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Set tx power: %d dBM\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Changed Association status: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.rsi_mac80211_bss_info_changed = private unnamed_addr constant [30 x i8] c"rsi_mac80211_bss_info_changed\00", align 1
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Configuring UAPSD\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RSSI threshold & hysteresis are: %d %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Changed Beacon interval: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"===> BEACON ENABLED <===\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"===> BEACON DISABLED <===\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: RSI set_key\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.rsi_mac80211_set_key = private unnamed_addr constant [21 x i8] c"rsi_mac80211_set_key\00", align 1
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: RSI del key\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Cipher 0x%x key_type: %d key_len: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.rsi_hal_key_config = private unnamed_addr constant [19 x i8] c"rsi_hal_key_config\00", align 1
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"***** Hardware scan start *****\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Background scan started...\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"***** Hardware scan stop *****\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Back ground scan cancelled\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Station Add: %pM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Reject: Max Stations exists\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Station exists\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Some problem reaching here...\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.rsi_mac80211_sta_add = private unnamed_addr constant [21 x i8] c"rsi_mac80211_sta_add\00", align 1
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"New Station\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Indicate bss status to device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Station Remove: %pM\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: No station found\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.rsi_mac80211_sta_remove = private unnamed_addr constant [24 x i8] c"rsi_mac80211_sta_remove\00", align 1
@.str.54 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: Conf queue %d, aifs: %d, cwmin: %d cwmax: %d, txop: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.rsi_mac80211_conf_tx = private unnamed_addr constant [21 x i8] c"rsi_mac80211_conf_tx\00", align 1
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No station mapped\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: AMPDU action tid=%d ssn=0x%x, buf_size=%d sta_id=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.rsi_mac80211_ampdu_action = private unnamed_addr constant [26 x i8] c"rsi_mac80211_ampdu_action\00", align 1
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Unknown AMPDU action\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid antenna selection (tx: %d, rx:%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Use 0 for int_ant, 1 for ext_ant\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Antenna map Tx %x Rx %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.rsi_mac80211_set_antenna = private unnamed_addr constant [25 x i8] c"rsi_mac80211_set_antenna\00", align 1
@.str.61 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(%s) Antenna path configured successfully\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UFL\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"INT\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: Failed.\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"***** Remain on channel *****\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: channel: %d duration: %dms\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.rsi_mac80211_roc = private unnamed_addr constant [17 x i8] c"rsi_mac80211_roc\00", align 1
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stop on-going ROC\0A\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to set band\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set the channel\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Ready on channel :%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cancel remain on channel\0A\00", [38 x i8] zeroinitializer }, align 32
@rsi_2ghz_channels = internal constant { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@rsi_5ghz_channels = internal constant { [24 x %struct.ieee80211_channel], [320 x i8] } { [24 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 1, i32 5180, i16 0, i16 36, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5200, i16 0, i16 40, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5220, i16 0, i16 44, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5240, i16 0, i16 48, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5260, i16 0, i16 52, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5280, i16 0, i16 56, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5300, i16 0, i16 60, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5320, i16 0, i16 64, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5500, i16 0, i16 100, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5520, i16 0, i16 104, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5540, i16 0, i16 108, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5560, i16 0, i16 112, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5580, i16 0, i16 116, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5600, i16 0, i16 120, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5620, i16 0, i16 124, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5640, i16 0, i16 128, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5660, i16 0, i16 132, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5680, i16 0, i16 136, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5700, i16 0, i16 140, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5745, i16 0, i16 149, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5765, i16 0, i16 153, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5785, i16 0, i16 157, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5805, i16 0, i16 161, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5825, i16 0, i16 165, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [320 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"country = %s dfs_region = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RSI region code = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@rsi_iface_limits = internal constant { [3 x %struct.ieee80211_iface_limit], [20 x i8] } { [3 x %struct.ieee80211_iface_limit] [%struct.ieee80211_iface_limit { i16 1, i16 4 }, %struct.ieee80211_iface_limit { i16 1, i16 776 }, %struct.ieee80211_iface_limit { i16 1, i16 1024 }], [20 x i8] zeroinitializer }, align 32
@switch.table.rsi_reg_notify = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 0, i32 1, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.rsi_mac80211_remove_interface = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 3, i32 2, i32 3], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.78 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.91 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.92 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.93 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@___asan_gen_.97 = private unnamed_addr constant [10 x i8] c"rsi_rates\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 106, i32 23 }
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"rsi_mcsrates\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 121, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 345, i32 21 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1751, i32 21 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1869, i32 21 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1876, i32 6 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1877, i32 21 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1884, i32 21 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1889, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1893, i32 21 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2005, i32 21 }
@___asan_gen_.130 = private unnamed_addr constant [13 x i8] c"mac80211_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1962, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2009, i32 21 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2036, i32 31 }
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"rsi_max_ap_stas\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 126, i32 18 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 2074, i32 20 }
@___asan_gen_.145 = private unnamed_addr constant [19 x i8] c"rsi_wowlan_support\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1832, i32 42 }
@___asan_gen_.148 = private unnamed_addr constant [23 x i8] c"rsi_iface_combinations\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 160, i32 49 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1290, i32 21 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 772, i32 21 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1847, i32 21 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 396, i32 20 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 422, i32 20 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1919, i32 21 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1922, i32 21 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1939, i32 21 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 475, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 494, i32 21 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 505, i32 21 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 538, i32 21 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 549, i32 21 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 680, i32 22 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 718, i32 22 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 721, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 587, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 606, i32 23 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 619, i32 23 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 641, i32 21 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 646, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 799, i32 22 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 822, i32 24 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 834, i32 22 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 840, i32 22 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 860, i32 23 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 863, i32 23 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1061, i32 21 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1065, i32 21 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 975, i32 20 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 242, i32 21 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 266, i32 23 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 282, i32 21 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 290, i32 22 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1414, i32 21 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1426, i32 22 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1439, i32 24 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1451, i32 5 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1464, i32 23 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1467, i32 23 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1529, i32 21 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1559, i32 22 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 912, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1123, i32 22 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1131, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1192, i32 21 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1600, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1603, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1607, i32 21 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1617, i32 21 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1618, i32 12 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1618, i32 20 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1627, i32 20 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1771, i32 21 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1774, i32 21 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1778, i32 22 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1786, i32 21 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1793, i32 21 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1800, i32 21 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1815, i32 21 }
@___asan_gen_.331 = private unnamed_addr constant [18 x i8] c"rsi_2ghz_channels\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 24, i32 39 }
@___asan_gen_.334 = private unnamed_addr constant [18 x i8] c"rsi_5ghz_channels\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 55, i32 39 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1685, i32 21 }
@___asan_gen_.340 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1701, i32 21 }
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"rsi_iface_limits\00", align 1
@___asan_gen_.344 = private constant [47 x i8] c"../drivers/net/wireless/rsi/rsi_91x_mac80211.c\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 143, i32 43 }
@___asan_gen_.346 = private unnamed_addr constant [28 x i8] c"switch.table.rsi_reg_notify\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [43 x i8] c"switch.table.rsi_mac80211_remove_interface\00", align 1
@llvm.compiler.used = appending global [87 x ptr] [ptr @__ksymtab_rsi_config_wowlan, ptr @__ksymtab_rsi_mac80211_detach, ptr @rsi_rates, ptr @rsi_mcsrates, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mac80211_ops, ptr @.str.9, ptr @.str.10, ptr @rsi_max_ap_stas, ptr @.str.11, ptr @rsi_wowlan_support, ptr @rsi_iface_combinations, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @rsi_2ghz_channels, ptr @rsi_5ghz_channels, ptr @.str.72, ptr @.str.73, ptr @rsi_iface_limits, ptr @switch.table.rsi_reg_notify, ptr @switch.table.rsi_mac80211_remove_interface], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_mcsrates to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac80211_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_max_ap_stas to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_wowlan_support to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_iface_combinations to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_2ghz_channels to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_5ghz_channels to i32), i32 1344, i32 1664, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_iface_limits to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rsi_reg_notify to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rsi_mac80211_remove_interface to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rsi_is_cipher_wep(ptr nocapture noundef readonly %common) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gtk_cipher = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 23, i32 1
  %0 = ptrtoint ptr %gtk_cipher to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gtk_cipher, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.else_crit_edge [
    i32 1027077, label %entry.land.lhs.true_crit_edge
    i32 1027073, label %entry.land.lhs.true_crit_edge7
  ]

entry.land.lhs.true_crit_edge7:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge7
  %secinfo = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 23
  %3 = ptrtoint ptr %secinfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %secinfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %return

return:                                           ; preds = %if.else, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ false, %if.else ], [ true, %land.lhs.true.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsi_mac80211_detach(ptr noundef %adapter) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ieee80211_stop_queues(ptr noundef nonnull %1) #9
  tail call void @ieee80211_unregister_hw(ptr noundef nonnull %1) #9
  tail call void @ieee80211_free_hw(ptr noundef nonnull %1) #9
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %hw1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.rsi_hw, ptr %adapter, i32 0, i32 5, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %4) #9
  %arrayidx.1 = getelementptr %struct.rsi_hw, ptr %adapter, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kfree(ptr noundef %6) #9
  %arrayidx.2 = getelementptr %struct.rsi_hw, ptr %adapter, i32 0, i32 5, i32 2
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.2, align 4
  tail call void @kfree(ptr noundef %8) #9
  %arrayidx.3 = getelementptr %struct.rsi_hw, ptr %adapter, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.3, align 4
  tail call void @kfree(ptr noundef %10) #9
  %arrayidx.4 = getelementptr %struct.rsi_hw, ptr %adapter, i32 0, i32 5, i32 4
  %11 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.4, align 4
  tail call void @kfree(ptr noundef %12) #9
  %arrayidx.5 = getelementptr %struct.rsi_hw, ptr %adapter, i32 0, i32 5, i32 5
  %13 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.5, align 4
  tail call void @kfree(ptr noundef %14) #9
  tail call void @rsi_remove_dbgfs(ptr noundef %adapter) #9
  %dfsentry = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 14
  %15 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dfsentry, align 4
  tail call void @kfree(ptr noundef %16) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_remove_dbgfs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsi_indicate_tx_status(ptr nocapture noundef readonly %adapter, ptr noundef %skb, i32 noundef %status) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %hw = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool1.not = icmp eq i32 %status, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cb.i, align 8
  %or = or i32 %3, 512
  store i32 %or, ptr %cb.i, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %internal_hdr_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %5 = ptrtoint ptr %internal_hdr_size to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %internal_hdr_size, align 4
  %conv = zext i8 %6 to i32
  %call4 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv) #9
  %7 = call ptr @memset(ptr %4, i32 0, i32 40)
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %9, ptr noundef %skb) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @rsi_get_connected_channel(ptr noundef readonly %vif) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vif, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %chandef = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 32
  %0 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chandef, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_value, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %3, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsi_indicate_pkt_to_os(ptr nocapture noundef %common, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %hw1 = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %iface_down = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 31
  %4 = ptrtoint ptr %iface_down to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iface_down, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sc_nvifs = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %sc_nvifs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sc_nvifs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %channel2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %11 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %channel2.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 2
  %call3.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %16) #12
  %17 = call ptr @memset(ptr %cb.i, i32 0, i32 48)
  %sub.i = sub i8 0, %10
  %signal.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %18 = ptrtoint ptr %signal.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %sub.i, ptr %signal.i, align 2
  %band.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 13
  %19 = ptrtoint ptr %band.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %band.i, align 1
  %band7.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %21 = ptrtoint ptr %band7.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %band7.i, align 4
  %22 = and i16 %12, 255
  %conv8.i = zext i16 %22 to i32
  %conv10.i = zext i8 %20 to i32
  %call.i.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv8.i, i32 noundef %conv10.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call.i.i)
  %23 = icmp ult i32 %call.i.i, 1000
  br i1 %23, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %div.i.i = udiv i32 %call.i.i, 1000
  %conv12.i = trunc i32 %div.i.i to i16
  %freq13.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %24 = ptrtoint ptr %freq13.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i = load i16, ptr %freq13.i, align 4
  %bf.shl.i = shl i16 %conv12.i, 3
  %bf.clear.i = and i16 %bf.load.i, 7
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  store i16 %bf.set.i, ptr %freq13.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %14, align 2
  %27 = and i16 %26, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.i.not.i = icmp eq i16 %27, 0
  br i1 %cmp.i.not.i, label %if.end.i.if.end33.i_crit_edge, label %if.then16.i

if.end.i.if.end33.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then16.i:                                      ; preds = %if.end.i
  %gtk_cipher.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 23, i32 1
  %28 = ptrtoint ptr %gtk_cipher.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gtk_cipher.i.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %29, label %if.then16.i.if.else.i_crit_edge [
    i32 1027077, label %if.then16.i.land.lhs.true.i.i_crit_edge
    i32 1027073, label %if.then16.i.land.lhs.true.i.i_crit_edge12
  ]

if.then16.i.land.lhs.true.i.i_crit_edge12:        ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

if.then16.i.land.lhs.true.i.i_crit_edge:          ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

if.then16.i.if.else.i_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i.i:                                ; preds = %if.then16.i.land.lhs.true.i.i_crit_edge, %if.then16.i.land.lhs.true.i.i_crit_edge12
  %secinfo.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 23
  %31 = ptrtoint ptr %secinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %secinfo.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i, label %if.then18.i, label %land.lhs.true.i.i.if.else.i_crit_edge

land.lhs.true.i.i.if.else.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then18.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 4
  %conv21.i = and i32 %call3.i, 255
  %35 = call ptr @memmove(ptr %add.ptr.i, ptr %34, i32 %conv21.i)
  %call22.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #9
  br label %if.end28.i

if.else.i:                                        ; preds = %land.lhs.true.i.i.if.else.i_crit_edge, %if.then16.i.if.else.i_crit_edge
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %37, i32 8
  %conv26.i = and i32 %call3.i, 255
  %38 = call ptr @memmove(ptr %add.ptr24.i, ptr %37, i32 %conv26.i)
  %call27.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #9
  %flag.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %39 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flag.i, align 8
  %or.i = or i32 %40, 8
  store i32 %or.i, ptr %flag.i, align 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else.i, %if.then18.i
  %flag29.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %41 = ptrtoint ptr %flag29.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flag29.i, align 8
  %or32.i = or i32 %42, 18
  store i32 %or32.i, ptr %flag29.i, align 8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end28.i, %if.end.i.if.end33.i_crit_edge
  %arrayidx.i = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 0
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %tobool35.not.i = icmp eq ptr %44, null
  br i1 %tobool35.not.i, label %if.end33.i.for.inc.i_crit_edge, label %if.end37.i

if.end33.i.for.inc.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end37.i:                                       ; preds = %if.end33.i
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp38.i = icmp eq i32 %46, 2
  br i1 %cmp38.i, label %if.end37.i.for.end.i_crit_edge, label %if.end37.i.for.inc.i_crit_edge

if.end37.i.for.inc.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end37.i.for.end.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end37.i.for.inc.i_crit_edge, %if.end33.i.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool35.not.1.i = icmp eq ptr %48, null
  br i1 %tobool35.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end37.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.end37.1.i:                                     ; preds = %for.inc.i
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp38.1.i = icmp eq i32 %50, 2
  br i1 %cmp38.1.i, label %if.end37.1.i.for.end.i_crit_edge, label %if.end37.1.i.for.inc.1.i_crit_edge

if.end37.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end37.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.end37.1.i.for.end.i_crit_edge:                 ; preds = %if.end37.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.1.i:                                      ; preds = %if.end37.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 2
  %51 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool35.not.2.i = icmp eq ptr %52, null
  br i1 %tobool35.not.2.i, label %for.inc.1.i.rsi_fill_rx_status.exit_crit_edge, label %if.end37.2.i

for.inc.1.i.rsi_fill_rx_status.exit_crit_edge:    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsi_fill_rx_status.exit

if.end37.2.i:                                     ; preds = %for.inc.1.i
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp38.2.i = icmp eq i32 %54, 2
  br i1 %cmp38.2.i, label %if.end37.2.i.for.end.i_crit_edge, label %if.end37.2.i.rsi_fill_rx_status.exit_crit_edge

if.end37.2.i.rsi_fill_rx_status.exit_crit_edge:   ; preds = %if.end37.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsi_fill_rx_status.exit

if.end37.2.i.for.end.i_crit_edge:                 ; preds = %if.end37.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %if.end37.2.i.for.end.i_crit_edge, %if.end37.1.i.for.end.i_crit_edge, %if.end37.i.for.end.i_crit_edge
  %.lcssa.i = phi ptr [ %44, %if.end37.i.for.end.i_crit_edge ], [ %48, %if.end37.1.i.for.end.i_crit_edge ], [ %52, %if.end37.2.i.for.end.i_crit_edge ]
  %assoc.i = getelementptr inbounds %struct.ieee80211_vif, ptr %.lcssa.i, i32 0, i32 1, i32 10
  %55 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %assoc.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool45.not.i = icmp eq i8 %56, 0
  br i1 %tobool45.not.i, label %for.end.i.rsi_fill_rx_status.exit_crit_edge, label %land.lhs.true.i

for.end.i.rsi_fill_rx_status.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsi_fill_rx_status.exit

land.lhs.true.i:                                  ; preds = %for.end.i
  %bss_conf.i = getelementptr inbounds %struct.ieee80211_vif, ptr %.lcssa.i, i32 0, i32 1
  %57 = ptrtoint ptr %bss_conf.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bss_conf.i, align 8
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %58, ptr noundef dereferenceable(6) %addr2.i, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool49.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool49.not.i, label %if.then50.i, label %land.lhs.true.i.rsi_fill_rx_status.exit_crit_edge

land.lhs.true.i.rsi_fill_rx_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsi_fill_rx_status.exit

if.then50.i:                                      ; preds = %land.lhs.true.i
  %59 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %14, align 2
  %61 = and i16 %60, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %61)
  %cmp.i1.i = icmp eq i16 %61, -32768
  br i1 %cmp.i1.i, label %if.then53.i, label %if.then50.i.rsi_fill_rx_status.exit_crit_edge

if.then50.i.rsi_fill_rx_status.exit_crit_edge:    ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsi_fill_rx_status.exit

if.then53.i:                                      ; preds = %if.then50.i
  %62 = ptrtoint ptr %signal.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %signal.i, align 2
  %cqm_info.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 42
  %64 = ptrtoint ptr %cqm_info.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %cqm_info.i.i, align 4
  %rssi_thold.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 42, i32 1
  %66 = ptrtoint ptr %rssi_thold.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rssi_thold.i.i, align 4
  %rssi_hyst.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 42, i32 2
  %68 = ptrtoint ptr %rssi_hyst.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rssi_hyst.i.i, align 4
  %conv.i.i = sext i8 %63 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %conv.i.i)
  %cmp.i2.i = icmp sgt i32 %67, %conv.i.i
  br i1 %cmp.i2.i, label %land.lhs.true.i3.i, label %if.then53.i.if.else.i4.i_crit_edge

if.then53.i.if.else.i4.i_crit_edge:               ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i4.i

land.lhs.true.i3.i:                               ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp5.i.i = icmp eq i8 %65, 0
  %conv4.i.i = sext i8 %65 to i32
  %sub.i.i = sub i32 %conv4.i.i, %69
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv.i.i)
  %cmp9.i.i = icmp ugt i32 %sub.i.i, %conv.i.i
  %or.cond.i.i = select i1 %cmp5.i.i, i1 true, i1 %cmp9.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i3.i.if.end25.i.i_crit_edge, label %land.lhs.true.i3.i.if.else.i4.i_crit_edge

land.lhs.true.i3.i.if.else.i4.i_crit_edge:        ; preds = %land.lhs.true.i3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i4.i

land.lhs.true.i3.i.if.end25.i.i_crit_edge:        ; preds = %land.lhs.true.i3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i.i

if.else.i4.i:                                     ; preds = %land.lhs.true.i3.i.if.else.i4.i_crit_edge, %if.then53.i.if.else.i4.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %conv.i.i)
  %cmp12.i.i = icmp slt i32 %67, %conv.i.i
  br i1 %cmp12.i.i, label %land.lhs.true14.i.i, label %if.else.i4.i.rsi_fill_rx_status.exit_crit_edge

if.else.i4.i.rsi_fill_rx_status.exit_crit_edge:   ; preds = %if.else.i4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsi_fill_rx_status.exit

land.lhs.true14.i.i:                              ; preds = %if.else.i4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp16.i.i = icmp eq i8 %65, 0
  %conv15.i.i = sext i8 %65 to i32
  %add.i.i = add i32 %69, %conv15.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i.i)
  %cmp21.i.i = icmp ult i32 %add.i.i, %conv.i.i
  %or.cond1.i.i = select i1 %cmp16.i.i, i1 true, i1 %cmp21.i.i
  br i1 %or.cond1.i.i, label %land.lhs.true14.i.i.if.end25.i.i_crit_edge, label %land.lhs.true14.i.i.rsi_fill_rx_status.exit_crit_edge

land.lhs.true14.i.i.rsi_fill_rx_status.exit_crit_edge: ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsi_fill_rx_status.exit

land.lhs.true14.i.i.if.end25.i.i_crit_edge:       ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %land.lhs.true14.i.i.if.end25.i.i_crit_edge, %land.lhs.true.i3.i.if.end25.i.i_crit_edge
  %event.0.i.i = phi i32 [ 0, %land.lhs.true.i3.i.if.end25.i.i_crit_edge ], [ 1, %land.lhs.true14.i.i.if.end25.i.i_crit_edge ]
  %70 = ptrtoint ptr %cqm_info.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %63, ptr %cqm_info.i.i, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef %event.0.i.i) #9
  tail call void @ieee80211_cqm_rssi_notify(ptr noundef nonnull %.lcssa.i, i32 noundef %event.0.i.i, i32 noundef %conv.i.i, i32 noundef 3264) #9
  br label %rsi_fill_rx_status.exit

rsi_fill_rx_status.exit:                          ; preds = %if.end25.i.i, %land.lhs.true14.i.i.rsi_fill_rx_status.exit_crit_edge, %if.else.i4.i.rsi_fill_rx_status.exit_crit_edge, %if.then50.i.rsi_fill_rx_status.exit_crit_edge, %land.lhs.true.i.rsi_fill_rx_status.exit_crit_edge, %for.end.i.rsi_fill_rx_status.exit_crit_edge, %if.end37.2.i.rsi_fill_rx_status.exit_crit_edge, %for.inc.1.i.rsi_fill_rx_status.exit_crit_edge
  tail call void @ieee80211_rx_irqsafe(ptr noundef %3, ptr noundef %skb) #9
  br label %cleanup

cleanup:                                          ; preds = %rsi_fill_rx_status.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsi_roc_timeout(ptr noundef %t) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -3124
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.1) #9
  %mutex = getelementptr i8, ptr %t, i32 -2560
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %hw = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_remain_on_channel_expired(ptr noundef %3) #9
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %t, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @del_timer(ptr noundef %t) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @rsi_resume_conn_channel(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_remain_on_channel_expired(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsi_resume_conn_channel(ptr nocapture noundef readonly %common) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %arrayidx = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %5, label %if.end.for.inc_crit_edge [
    i32 3, label %if.end.if.then4_crit_edge
    i32 9, label %if.end.if.then4_crit_edge43
    i32 2, label %if.end.land.lhs.true_crit_edge
    i32 8, label %if.end.land.lhs.true_crit_edge44
  ]

if.end.land.lhs.true_crit_edge44:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.if.then4_crit_edge43:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then4:                                         ; preds = %if.end.2.if.then4_crit_edge, %if.end.2.if.then4_crit_edge47, %if.end.1.if.then4_crit_edge, %if.end.1.if.then4_crit_edge45, %if.end.if.then4_crit_edge, %if.end.if.then4_crit_edge43
  %.lcssa = phi ptr [ %3, %if.end.if.then4_crit_edge ], [ %3, %if.end.if.then4_crit_edge43 ], [ %22, %if.end.1.if.then4_crit_edge ], [ %22, %if.end.1.if.then4_crit_edge45 ], [ %29, %if.end.2.if.then4_crit_edge ], [ %29, %if.end.2.if.then4_crit_edge47 ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %iface_down.i = getelementptr inbounds %struct.rsi_common, ptr %8, i32 0, i32 31
  %9 = ptrtoint ptr %iface_down.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %iface_down.i, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.not = icmp eq i8 %10, 0
  br i1 %tobool.not.i.not, label %if.end3.i, label %if.then4.for.end_crit_edge

if.then4.for.end_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end3.i:                                        ; preds = %if.then4
  %chandef.i = getelementptr inbounds %struct.ieee80211_vif, ptr %.lcssa, i32 0, i32 1, i32 32
  %11 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chandef.i, align 4
  %tobool4.not.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i, label %if.end3.i.for.end_crit_edge, label %if.end6.i

if.end3.i.for.end_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @rsi_band_check(ptr noundef %8, ptr noundef nonnull %12) #9
  %call7.i = tail call i32 @rsi_set_channel(ptr noundef %8, ptr noundef nonnull %12) #9
  br label %for.end.sink.split

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge44
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %3, i32 0, i32 1, i32 10
  %13 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %assoc, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not = icmp eq i8 %14, 0
  br i1 %tobool11.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.then12_crit_edge

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then12:                                        ; preds = %land.lhs.true.2.if.then12_crit_edge, %land.lhs.true.1.if.then12_crit_edge, %land.lhs.true.if.then12_crit_edge
  %.lcssa41 = phi ptr [ %3, %land.lhs.true.if.then12_crit_edge ], [ %22, %land.lhs.true.1.if.then12_crit_edge ], [ %29, %land.lhs.true.2.if.then12_crit_edge ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %iface_down.i26 = getelementptr inbounds %struct.rsi_common, ptr %16, i32 0, i32 31
  %17 = ptrtoint ptr %iface_down.i26 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %iface_down.i26, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i27.not = icmp eq i8 %18, 0
  br i1 %tobool.not.i27.not, label %if.end3.i32, label %if.then12.for.end_crit_edge

if.then12.for.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end3.i32:                                      ; preds = %if.then12
  %chandef.i30 = getelementptr inbounds %struct.ieee80211_vif, ptr %.lcssa41, i32 0, i32 1, i32 32
  %19 = ptrtoint ptr %chandef.i30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chandef.i30, align 4
  %tobool4.not.i31 = icmp eq ptr %20, null
  br i1 %tobool4.not.i31, label %if.end3.i32.for.end_crit_edge, label %if.end6.i37

if.end3.i32.for.end_crit_edge:                    ; preds = %if.end3.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end6.i37:                                      ; preds = %if.end3.i32
  call void @__sanitizer_cov_trace_pc() #11
  %call.i33 = tail call i32 @rsi_band_check(ptr noundef %16, ptr noundef nonnull %20) #9
  %call7.i34 = tail call i32 @rsi_set_channel(ptr noundef %16, ptr noundef nonnull %20) #9
  br label %for.end.sink.split

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %22, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %24, label %if.end.1.for.inc.1_crit_edge [
    i32 3, label %if.end.1.if.then4_crit_edge
    i32 9, label %if.end.1.if.then4_crit_edge45
    i32 2, label %if.end.1.land.lhs.true.1_crit_edge
    i32 8, label %if.end.1.land.lhs.true.1_crit_edge46
  ]

if.end.1.land.lhs.true.1_crit_edge46:             ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.1

if.end.1.land.lhs.true.1_crit_edge:               ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.1

if.end.1.if.then4_crit_edge45:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.end.1.if.then4_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %if.end.1.land.lhs.true.1_crit_edge, %if.end.1.land.lhs.true.1_crit_edge46
  %assoc.1 = getelementptr inbounds %struct.ieee80211_vif, ptr %22, i32 0, i32 1, i32 10
  %26 = ptrtoint ptr %assoc.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %assoc.1, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool11.not.1 = icmp eq i8 %27, 0
  br i1 %tobool11.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.if.then12_crit_edge

land.lhs.true.1.if.then12_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %29, null
  br i1 %tobool.not.2, label %for.inc.1.for.end_crit_edge, label %if.end.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.2:                                         ; preds = %for.inc.1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %31, label %if.end.2.for.end_crit_edge [
    i32 3, label %if.end.2.if.then4_crit_edge
    i32 9, label %if.end.2.if.then4_crit_edge47
    i32 2, label %if.end.2.land.lhs.true.2_crit_edge
    i32 8, label %if.end.2.land.lhs.true.2_crit_edge48
  ]

if.end.2.land.lhs.true.2_crit_edge48:             ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.2

if.end.2.land.lhs.true.2_crit_edge:               ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.2

if.end.2.if.then4_crit_edge47:                    ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.end.2.if.then4_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.end.2.for.end_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true.2:                                  ; preds = %if.end.2.land.lhs.true.2_crit_edge, %if.end.2.land.lhs.true.2_crit_edge48
  %assoc.2 = getelementptr inbounds %struct.ieee80211_vif, ptr %29, i32 0, i32 1, i32 10
  %33 = ptrtoint ptr %assoc.2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %assoc.2, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool11.not.2 = icmp eq i8 %34, 0
  br i1 %tobool11.not.2, label %land.lhs.true.2.for.end_crit_edge, label %land.lhs.true.2.if.then12_crit_edge

land.lhs.true.2.if.then12_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

land.lhs.true.2.for.end_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.sink.split:                               ; preds = %if.end6.i37, %if.end6.i
  %.sink = phi ptr [ %20, %if.end6.i37 ], [ %12, %if.end6.i ]
  %hw_value.i35 = getelementptr inbounds %struct.ieee80211_channel, ptr %.sink, i32 0, i32 3
  %35 = ptrtoint ptr %hw_value.i35 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %hw_value.i35, align 2
  %conv.i36 = zext i16 %36 to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef %conv.i36) #9
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %land.lhs.true.2.for.end_crit_edge, %if.end.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %if.end3.i32.for.end_crit_edge, %if.then12.for.end_crit_edge, %if.end3.i.for.end_crit_edge, %if.then4.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_config_wowlan(ptr noundef %adapter, ptr noundef readonly %wowlan) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.2) #9
  %vifs = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 3
  %2 = ptrtoint ptr %vifs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vifs, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %wowlan, null
  br i1 %tobool3.not, label %do.end, label %if.end28, !prof !214

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1876, i32 noundef 9, ptr noundef null) #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %wow_flags = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 60
  %4 = ptrtoint ptr %wow_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wow_flags, align 2
  %6 = or i8 %5, 1
  store i8 %6, ptr %wow_flags, align 2
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.14) #9
  %7 = ptrtoint ptr %wowlan to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wowlan, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  %spec.select.i = select i1 %tobool.not.i, i16 0, i16 2
  %magic_pkt.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 2
  %9 = ptrtoint ptr %magic_pkt.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %magic_pkt.i, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not.i = icmp eq i8 %10, 0
  %11 = or i16 %spec.select.i, 16
  %wow_triggers.1.i = select i1 %tobool2.not.i, i16 %spec.select.i, i16 %11
  %disconnect.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 1
  %12 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %disconnect.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not.i = icmp eq i8 %13, 0
  %14 = or i16 %wow_triggers.1.i, 32
  %wow_triggers.2.i = select i1 %tobool8.not.i, i16 %wow_triggers.1.i, i16 %14
  %gtk_rekey_failure.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 3
  %15 = ptrtoint ptr %gtk_rekey_failure.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %gtk_rekey_failure.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool14.not.i = icmp eq i8 %16, 0
  br i1 %tobool14.not.i, label %lor.lhs.false.i, label %if.end28.rsi_wow_map_triggers.exit.thread_crit_edge

if.end28.rsi_wow_map_triggers.exit.thread_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsi_wow_map_triggers.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end28
  %eap_identity_req.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 4
  %17 = ptrtoint ptr %eap_identity_req.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %eap_identity_req.i, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool16.not.i = icmp eq i8 %18, 0
  br i1 %tobool16.not.i, label %lor.lhs.false18.i, label %lor.lhs.false.i.rsi_wow_map_triggers.exit.thread_crit_edge

lor.lhs.false.i.rsi_wow_map_triggers.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsi_wow_map_triggers.exit.thread

lor.lhs.false18.i:                                ; preds = %lor.lhs.false.i
  %four_way_handshake.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 5
  %19 = ptrtoint ptr %four_way_handshake.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %four_way_handshake.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool19.not.i = icmp eq i8 %20, 0
  br i1 %tobool19.not.i, label %rsi_wow_map_triggers.exit, label %lor.lhs.false18.i.rsi_wow_map_triggers.exit.thread_crit_edge

lor.lhs.false18.i.rsi_wow_map_triggers.exit.thread_crit_edge: ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsi_wow_map_triggers.exit.thread

rsi_wow_map_triggers.exit.thread:                 ; preds = %lor.lhs.false18.i.rsi_wow_map_triggers.exit.thread_crit_edge, %lor.lhs.false.i.rsi_wow_map_triggers.exit.thread_crit_edge, %if.end28.rsi_wow_map_triggers.exit.thread_crit_edge
  %21 = or i16 %wow_triggers.2.i, 8
  br label %if.end32

rsi_wow_map_triggers.exit:                        ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wow_triggers.2.i)
  %tobool30.not = icmp eq i16 %wow_triggers.2.i, 0
  br i1 %tobool30.not, label %if.then31, label %rsi_wow_map_triggers.exit.if.end32_crit_edge

rsi_wow_map_triggers.exit.if.end32_crit_edge:     ; preds = %rsi_wow_map_triggers.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then31:                                        ; preds = %rsi_wow_map_triggers.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.rsi_config_wowlan) #9
  br label %cleanup

if.end32:                                         ; preds = %rsi_wow_map_triggers.exit.if.end32_crit_edge, %rsi_wow_map_triggers.exit.thread
  %wow_triggers.3.i69 = phi i16 [ %21, %rsi_wow_map_triggers.exit.thread ], [ %wow_triggers.2.i, %rsi_wow_map_triggers.exit.if.end32_crit_edge ]
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %3, i32 0, i32 1, i32 10
  %22 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %assoc, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool33.not = icmp eq i8 %23, 0
  br i1 %tobool33.not, label %if.then34, label %if.end39

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #9
  %24 = ptrtoint ptr %wow_flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %wow_flags, align 2
  %26 = or i8 %25, 2
  store i8 %26, ptr %wow_flags, align 2
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  %conv40 = zext i16 %wow_triggers.3.i69 to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %conv40) #9
  %coex_mode = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 45
  %27 = ptrtoint ptr %coex_mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %coex_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp = icmp ugt i8 %28, 1
  br i1 %cmp, label %if.then43, label %if.end39.if.end46_crit_edge

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %vifs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vifs, align 4
  tail call void @rsi_disable_ps(ptr noundef %adapter, ptr noundef %30) #9
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end39.if.end46_crit_edge
  %call47 = tail call i32 @rsi_send_wowlan_request(ptr noundef %1, i16 noundef zeroext %wow_triggers.3.i69, i16 noundef zeroext 1) #9
  %call48 = tail call i32 @rsi_send_vap_dynamic_update(ptr noundef %1) #9
  %call49 = tail call i32 @rsi_send_rx_filter_frame(ptr noundef %1, i16 noundef zeroext 18) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then34, %if.then31, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end46 ], [ 0, %if.then34 ], [ -22, %if.then31 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_disable_ps(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_send_wowlan_request(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_send_vap_dynamic_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_send_rx_filter_frame(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_mac80211_attach(ptr nocapture noundef %common) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.rsi_mac80211_attach) #9
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 1308, ptr noundef nonnull @mac80211_ops, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.rsi_mac80211_attach) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %wiphy1 = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy1, align 8
  %device = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 56, i32 1
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %parent.i.i, align 8
  %priv2 = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %priv2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %priv2, align 8
  %hw3 = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %hw3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %hw3, align 4
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %or.i.i127 = or i32 %10, 1425
  store i32 %or.i.i127, ptr %flags.i, align 4
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 11
  %11 = ptrtoint ptr %queues to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 12, ptr %queues, align 4
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 84, ptr %extra_tx_headroom, align 4
  %max_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 14
  %13 = ptrtoint ptr %max_rates to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %max_rates, align 1
  %max_rate_tries = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 16
  %14 = ptrtoint ptr %max_rate_tries to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %max_rate_tries, align 1
  %uapsd_queues = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 25
  %15 = ptrtoint ptr %uapsd_queues to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 15, ptr %uapsd_queues, align 8
  %uapsd_max_sp_len = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 26
  %16 = ptrtoint ptr %uapsd_max_sp_len to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %uapsd_max_sp_len, align 1
  %max_tx_aggregation_subframes = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 18
  %17 = ptrtoint ptr %max_tx_aggregation_subframes to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 8, ptr %max_tx_aggregation_subframes, align 2
  %max_rx_aggregation_subframes = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 17
  %18 = ptrtoint ptr %max_rx_aggregation_subframes to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 8, ptr %max_rx_aggregation_subframes, align 4
  %rate_control_algorithm = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %rate_control_algorithm to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.10, ptr %rate_control_algorithm, align 4
  %mac_addr = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 26
  %20 = load ptr, ptr %wiphy1, align 8
  %perm_addr.i = getelementptr inbounds %struct.wiphy, ptr %20, i32 0, i32 1
  %21 = call ptr @memcpy(ptr %perm_addr.i, ptr %mac_addr, i32 6)
  %22 = load ptr, ptr %wiphy1, align 8
  %addr_mask5 = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %addr_mask5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %addr_mask5, align 4
  %add.ptr1.i = getelementptr %struct.wiphy, ptr %22, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 3, ptr %add.ptr1.i, align 2
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 9
  %25 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1804, ptr %interface_modes, align 4
  %signal_type = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 16
  %26 = ptrtoint ptr %signal_type to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %signal_type, align 8
  %retry_short = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 33
  %27 = ptrtoint ptr %retry_short to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 7, ptr %retry_short, align 4
  %retry_long = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 34
  %28 = ptrtoint ptr %retry_long to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %retry_long, align 1
  %frag_threshold = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 35
  %29 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2352, ptr %frag_threshold, align 16
  %rts_threshold = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 36
  %30 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2353, ptr %rts_threshold, align 4
  %flags = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 11
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %flags, align 32
  %available_antennas_rx = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 45
  %32 = ptrtoint ptr %available_antennas_rx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %available_antennas_rx, align 16
  %available_antennas_tx = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 44
  %33 = ptrtoint ptr %available_antennas_tx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %available_antennas_tx, align 4
  %call.i129 = tail call ptr @kmemdup(ptr noundef nonnull @rsi_2ghz_channels, i32 noundef 784, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call.i129, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %arrayidx.i = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 0
  %band8.i = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 0, i32 2
  %34 = ptrtoint ptr %band8.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %band8.i, align 4
  %n_channels9.i = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 0, i32 3
  %35 = ptrtoint ptr %n_channels9.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 14, ptr %n_channels9.i, align 4
  %bitrates10.i = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 0, i32 1
  %36 = ptrtoint ptr %bitrates10.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @rsi_rates, ptr %bitrates10.i, align 4
  %n_bitrates11.i = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 0, i32 4
  %37 = ptrtoint ptr %n_bitrates11.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 12, ptr %n_bitrates11.i, align 4
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i129, ptr %arrayidx.i, align 4
  %ht_cap.i = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 0, i32 5
  %39 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 0, i32 5, i32 3
  %40 = call ptr @memset(ptr %39, i32 0, i32 18)
  %ht_supported.i = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %ht_supported.i, align 2
  %42 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 98, ptr %ht_cap.i, align 4
  %ampdu_factor.i = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 0, i32 5, i32 2
  %43 = ptrtoint ptr %ampdu_factor.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %ampdu_factor.i, align 1
  %mcs.i = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 0, i32 5, i32 4
  %44 = ptrtoint ptr %mcs.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %mcs.i, align 1
  %tx_params.i = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 0, i32 5, i32 4, i32 2
  %45 = ptrtoint ptr %tx_params.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %tx_params.i, align 1
  %bands = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 53
  %46 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx.i, ptr %bands, align 16
  %num_supp_bands = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 14
  %47 = ptrtoint ptr %num_supp_bands to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %num_supp_bands, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp = icmp ugt i8 %48, 1
  br i1 %cmp, label %if.then14, label %if.end11.if.end23_crit_edge

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then14:                                        ; preds = %if.end11
  %call4.i = tail call ptr @kmemdup(ptr noundef nonnull @rsi_5ghz_channels, i32 noundef 1344, i32 noundef 3264) #9
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.then14.cleanup_crit_edge, label %if.end18

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i130 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 1
  %band8.i131 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 1, i32 2
  %49 = ptrtoint ptr %band8.i131 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %band8.i131, align 4
  %n_channels9.i132 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 1, i32 3
  %50 = ptrtoint ptr %n_channels9.i132 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 24, ptr %n_channels9.i132, align 4
  %bitrates10.i133 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 1, i32 1
  %51 = ptrtoint ptr %bitrates10.i133 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 4), ptr %bitrates10.i133, align 4
  %n_bitrates11.i134 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 1, i32 4
  %52 = ptrtoint ptr %n_bitrates11.i134 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 8, ptr %n_bitrates11.i134, align 4
  %53 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call4.i, ptr %arrayidx.i130, align 4
  %ht_cap.i135 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 1, i32 5
  %54 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 1, i32 5, i32 3
  %55 = call ptr @memset(ptr %54, i32 0, i32 18)
  %ht_supported.i136 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 1, i32 5, i32 1
  %56 = ptrtoint ptr %ht_supported.i136 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %ht_supported.i136, align 2
  %57 = ptrtoint ptr %ht_cap.i135 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 98, ptr %ht_cap.i135, align 4
  %ampdu_factor.i137 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 1, i32 5, i32 2
  %58 = ptrtoint ptr %ampdu_factor.i137 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %ampdu_factor.i137, align 1
  %mcs.i139 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 1, i32 5, i32 4
  %59 = ptrtoint ptr %mcs.i139 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -1, ptr %mcs.i139, align 1
  %tx_params.i140 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 5, i32 1, i32 5, i32 4, i32 2
  %60 = ptrtoint ptr %tx_params.i140 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %tx_params.i140, align 1
  %arrayidx22 = getelementptr %struct.wiphy, ptr %3, i32 0, i32 53, i32 1
  %61 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %arrayidx.i130, ptr %arrayidx22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end18, %if.end11.if.end23_crit_edge
  %oper_mode = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 47
  %62 = ptrtoint ptr %oper_mode to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %oper_mode, align 4
  %conv24 = zext i16 %63 to i32
  %sub = add nsw i32 %conv24, -1
  %arrayidx25 = getelementptr [16 x i32], ptr @rsi_max_ap_stas, i32 0, i32 %sub
  %64 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx25, align 4
  %conv26 = trunc i32 %65 to i16
  %max_ap_assoc_sta = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 69
  %66 = ptrtoint ptr %max_ap_assoc_sta to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv26, ptr %max_ap_assoc_sta, align 4
  %conv28 = and i32 %65, 65535
  %max_stations = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 69
  %67 = ptrtoint ptr %max_stations to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv28, ptr %max_stations, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %conv28) #9
  %sta_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 8
  %68 = ptrtoint ptr %sta_data_size to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 56, ptr %sta_data_size, align 8
  %max_scan_ssids = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 18
  %69 = ptrtoint ptr %max_scan_ssids to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 16, ptr %max_scan_ssids, align 32
  %max_scan_ie_len = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 22
  %70 = ptrtoint ptr %max_scan_ie_len to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 256, ptr %max_scan_ie_len, align 4
  %features = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 13
  %71 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %features, align 8
  %or32 = or i32 %72, 4
  store i32 %or32, ptr %features, align 8
  %reg_notifier = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 54
  %73 = ptrtoint ptr %reg_notifier to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @rsi_reg_notify, ptr %reg_notifier, align 8
  %wowlan = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 40
  %74 = ptrtoint ptr %wowlan to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @rsi_wowlan_support, ptr %wowlan, align 32
  %arrayidx.i144 = getelementptr %struct.wiphy, ptr %3, i32 0, i32 14, i32 1
  %75 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i144, align 1
  %77 = or i8 %76, 32
  store i8 %77, ptr %arrayidx.i144, align 1
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 3424256, ptr %flags, align 32
  %max_remain_on_channel_duration = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 42
  %79 = ptrtoint ptr %max_remain_on_channel_duration to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 10000, ptr %max_remain_on_channel_duration, align 8
  %max_listen_interval = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 12
  %80 = ptrtoint ptr %max_listen_interval to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 10, ptr %max_listen_interval, align 2
  %iface_combinations = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 5
  %81 = ptrtoint ptr %iface_combinations to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @rsi_iface_combinations, ptr %iface_combinations, align 16
  %n_iface_combinations = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 6
  %82 = ptrtoint ptr %n_iface_combinations to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %n_iface_combinations, align 4
  %coex_mode = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 45
  %83 = ptrtoint ptr %coex_mode to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %coex_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %84)
  %cmp38 = icmp ugt i8 %84, 1
  br i1 %cmp38, label %if.then40, label %if.end23.if.end43_crit_edge

if.end23.if.end43_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then40:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags, align 32
  %or42 = or i32 %86, 16
  store i32 %or42, ptr %flags, align 32
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end23.if.end43_crit_edge
  %call44 = tail call i32 @ieee80211_register_hw(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = tail call i32 @rsi_init_dbgfs(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end43.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call48, %if.end47 ], [ -12, %if.then ], [ %call44, %if.end43.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.then14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_reg_notify(ptr noundef %wiphy, ptr noundef %request) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wiphy_to_ieee80211_hw(ptr noundef %wiphy) #9
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %alpha2 = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 4
  %dfs_region = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 5
  %4 = ptrtoint ptr %dfs_region to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dfs_region, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.72, ptr noundef %alpha2, i32 noundef %5) #9
  %num_supp_bands = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %num_supp_bands to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_supp_bands, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp ugt i8 %7, 1
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp344 = icmp sgt i32 %11, 0
  br i1 %cmp344, label %if.then.for.body_crit_edge, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %flags = getelementptr %struct.ieee80211_channel, ptr %13, i32 %i.045, i32 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %16 = and i32 %15, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %.not = icmp eq i32 %16, 8
  br i1 %.not, label %if.then10, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %15, 2
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.045, 1
  %18 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_channels, align 4
  %cmp3 = icmp slt i32 %inc, %19
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc.if.end13_crit_edge

for.inc.if.end13_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end13:                                         ; preds = %for.inc.if.end13_crit_edge, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %20 = ptrtoint ptr %dfs_region to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dfs_region, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %switch.lookup, label %if.end13.rsi_map_region_code.exit_crit_edge

if.end13.rsi_map_region_code.exit_crit_edge:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsi_map_region_code.exit

switch.lookup:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.rsi_reg_notify, i32 0, i32 %21
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %rsi_map_region_code.exit

rsi_map_region_code.exit:                         ; preds = %switch.lookup, %if.end13.rsi_map_region_code.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 3, %if.end13.rsi_map_region_code.exit_crit_edge ]
  %conv16 = trunc i32 %retval.0.i to i8
  %dfs_region17 = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 22
  %24 = ptrtoint ptr %dfs_region17 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv16, ptr %dfs_region17, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.73, i32 noundef %retval.0.i) #9
  %25 = ptrtoint ptr %alpha2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %alpha2, align 4
  %country = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 23
  %27 = ptrtoint ptr %country to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %country, align 1
  %arrayidx24 = getelementptr %struct.regulatory_request, ptr %request, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx24, align 1
  %arrayidx26 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 23, i32 1
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx26, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_init_dbgfs(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_cqm_rssi_notify(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_band_check(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_set_channel(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_mac80211_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %control, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %8 = and i16 %7, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20480, i16 %8)
  %cmp.i = icmp eq i16 %8, -20480
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mac_ops_resumed = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 83
  %9 = ptrtoint ptr %mac_ops_resumed to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %mac_ops_resumed, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @rsi_core_xmit(ptr noundef %3, ptr noundef %skb) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_mac80211_start(ptr nocapture noundef readonly %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.15) #9
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %hibernate_resume = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %hibernate_resume to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hibernate_resume, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reinit_hw = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 59
  %6 = ptrtoint ptr %reinit_hw to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %reinit_hw, align 1
  %host_intf_ops = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 25
  %7 = ptrtoint ptr %host_intf_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host_intf_ops, align 4
  %reinit_device = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %reinit_device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reinit_device, align 4
  %call = tail call i32 %10(ptr noundef %1) #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %wlan_init_completion = getelementptr inbounds %struct.rsi_common, ptr %12, i32 0, i32 8
  tail call void @wait_for_completion(ptr noundef %wlan_init_completion) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %iface_down = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 31
  %13 = ptrtoint ptr %iface_down to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %iface_down, align 2
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %14 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy, align 8
  tail call void @wiphy_rfkill_start_polling(ptr noundef %15) #9
  %call3 = tail call i32 @rsi_send_rx_filter_frame(ptr noundef %3, i16 noundef zeroext 0) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_mac80211_stop(ptr nocapture noundef readonly %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.16) #9
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %iface_down = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %iface_down to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %iface_down, align 2
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %rfkill.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 82
  %7 = ptrtoint ptr %rfkill.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rfkill.i, align 8
  tail call void @rfkill_pause_polling(ptr noundef %8) #9
  %call = tail call i32 @rsi_send_rx_filter_frame(ptr noundef %3, i16 noundef zeroext -1) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_mac80211_suspend(ptr nocapture noundef readonly %hw, ptr noundef %wowlan) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.rsi_mac80211_suspend) #9
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %call = tail call i32 @rsi_config_wowlan(ptr noundef %1, ptr noundef %wowlan)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.18) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_mac80211_resume(ptr nocapture noundef readonly %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %wow_flags = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 60
  %4 = ptrtoint ptr %wow_flags to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %wow_flags, align 2
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.rsi_mac80211_resume) #9
  %hibernate_resume = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 58
  %5 = ptrtoint ptr %hibernate_resume to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hibernate_resume, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mac_ops_resumed = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 83
  %7 = ptrtoint ptr %mac_ops_resumed to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %mac_ops_resumed, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %call = tail call i32 @rsi_send_wowlan_request(ptr noundef %3, i16 noundef zeroext 0, i16 noundef zeroext 0) #9
  %call2 = tail call i32 @rsi_send_rx_filter_frame(ptr noundef %3, i16 noundef zeroext 14) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_mac80211_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %driver_flags = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 10
  %4 = ptrtoint ptr %driver_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_flags, align 8
  %or = or i32 %5, 4
  store i32 %or, ptr %driver_flags, align 8
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %6 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vif, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %7, label %if.then [
    i32 2, label %entry.if.end12_crit_edge
    i32 3, label %sw.bb1.i
    i32 10, label %entry.if.then11_crit_edge
    i32 8, label %entry.if.then11_crit_edge117
    i32 9, label %sw.bb4.i
  ]

entry.if.then11_crit_edge117:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

entry.if.then11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.rsi_mac80211_add_interface, i32 noundef %7) #9
  br label %cleanup

if.then11:                                        ; preds = %sw.bb4.i, %entry.if.then11_crit_edge, %entry.if.then11_crit_edge117
  %retval.0.i.ph.ph = phi i32 [ 2, %sw.bb4.i ], [ 3, %entry.if.then11_crit_edge ], [ 3, %entry.if.then11_crit_edge117 ]
  %p2p_enabled = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 71
  %9 = ptrtoint ptr %p2p_enabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %p2p_enabled, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %sw.bb1.i, %entry.if.end12_crit_edge
  %retval.0.i.ph108 = phi i32 [ %retval.0.i.ph.ph, %if.then11 ], [ 1, %entry.if.end12_crit_edge ], [ 0, %sw.bb1.i ]
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %arrayidx = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end12.if.end27_crit_edge, label %lor.lhs.false14

if.end12.if.end27_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

lor.lhs.false14:                                  ; preds = %if.end12
  %addr18 = getelementptr inbounds %struct.ieee80211_vif, ptr %11, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr, ptr noundef dereferenceable(6) %addr18, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool21.not = icmp eq i32 %bcmp, 0
  br i1 %tobool21.not, label %lor.lhs.false14.if.end27_crit_edge, label %for.inc

lor.lhs.false14.if.end27_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

for.inc:                                          ; preds = %lor.lhs.false14
  %arrayidx.1 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %13, null
  br i1 %tobool.not.1, label %for.inc.if.end27_crit_edge, label %lor.lhs.false14.1

for.inc.if.end27_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

lor.lhs.false14.1:                                ; preds = %for.inc
  %addr18.1 = getelementptr inbounds %struct.ieee80211_vif, ptr %13, i32 0, i32 2
  %bcmp.1 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr, ptr noundef dereferenceable(6) %addr18.1, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %tobool21.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %tobool21.not.1, label %lor.lhs.false14.1.if.end27_crit_edge, label %for.inc.1

lor.lhs.false14.1.if.end27_crit_edge:             ; preds = %lor.lhs.false14.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

for.inc.1:                                        ; preds = %lor.lhs.false14.1
  %arrayidx.2 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %15, null
  br i1 %tobool.not.2, label %for.inc.1.if.end27_crit_edge, label %lor.lhs.false14.2

for.inc.1.if.end27_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

lor.lhs.false14.2:                                ; preds = %for.inc.1
  %addr18.2 = getelementptr inbounds %struct.ieee80211_vif, ptr %15, i32 0, i32 2
  %bcmp.2 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr, ptr noundef dereferenceable(6) %addr18.2, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2)
  %tobool21.not.2 = icmp eq i32 %bcmp.2, 0
  br i1 %tobool21.not.2, label %lor.lhs.false14.2.if.end27_crit_edge, label %for.inc.2

lor.lhs.false14.2.if.end27_crit_edge:             ; preds = %lor.lhs.false14.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

for.inc.2:                                        ; preds = %lor.lhs.false14.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false14.2.if.end27_crit_edge, %for.inc.1.if.end27_crit_edge, %lor.lhs.false14.1.if.end27_crit_edge, %for.inc.if.end27_crit_edge, %lor.lhs.false14.if.end27_crit_edge, %if.end12.if.end27_crit_edge
  %i.0113.lcssa = phi i32 [ 0, %lor.lhs.false14.if.end27_crit_edge ], [ 0, %if.end12.if.end27_crit_edge ], [ 1, %for.inc.if.end27_crit_edge ], [ 1, %lor.lhs.false14.1.if.end27_crit_edge ], [ 2, %for.inc.1.if.end27_crit_edge ], [ 2, %lor.lhs.false14.2.if.end27_crit_edge ]
  %vap_id = getelementptr inbounds %struct.vif_priv, ptr %drv_priv, i32 0, i32 3
  %16 = ptrtoint ptr %vap_id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.0113.lcssa, ptr %vap_id, align 4
  %arrayidx29 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 %i.0113.lcssa
  %17 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %vif, ptr %arrayidx29, align 4
  %sc_nvifs = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %sc_nvifs to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sc_nvifs, align 4
  %inc30 = add i8 %19, 1
  store i8 %inc30, ptr %sc_nvifs, align 4
  %20 = load i32, ptr %vap_id, align 4
  %conv = trunc i32 %20 to i8
  %call35 = tail call i32 @rsi_set_vap_capabilities(ptr noundef %3, i32 noundef %retval.0.i.ph108, ptr noundef %addr, i8 noundef zeroext %conv, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end39:                                         ; preds = %if.end27
  %21 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vif, align 8
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %22, label %if.end39.cleanup_crit_edge [
    i32 3, label %if.end39.if.then47_crit_edge
    i32 9, label %if.end39.if.then47_crit_edge118
  ]

if.end39.if.then47_crit_edge118:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

if.end39.if.then47_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %if.end39.if.then47_crit_edge, %if.end39.if.then47_crit_edge118
  %call48 = tail call i32 @rsi_send_rx_filter_frame(ptr noundef %3, i16 noundef zeroext 16) #9
  %max_stations = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 69
  %24 = ptrtoint ptr %max_stations to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_stations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp50114 = icmp sgt i32 %25, 0
  br i1 %cmp50114, label %if.then47.for.body52_crit_edge, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47.for.body52_crit_edge:                   ; preds = %if.then47
  br label %for.body52

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %if.then47.for.body52_crit_edge
  %i.1115 = phi i32 [ %inc55, %for.body52.for.body52_crit_edge ], [ 0, %if.then47.for.body52_crit_edge ]
  %arrayidx53 = getelementptr %struct.rsi_common, ptr %3, i32 0, i32 67, i32 %i.1115
  %26 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx53, align 4
  %inc55 = add nuw nsw i32 %i.1115, 1
  %27 = ptrtoint ptr %max_stations to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_stations, align 4
  %cmp50 = icmp slt i32 %inc55, %28
  br i1 %cmp50, label %for.body52.for.body52_crit_edge, label %for.body52.cleanup_crit_edge

for.body52.cleanup_crit_edge:                     ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body52

cleanup:                                          ; preds = %for.body52.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.then37, %for.inc.2, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ -95, %for.inc.2 ], [ -22, %if.then37 ], [ 0, %if.then47.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ 0, %for.body52.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_mac80211_remove_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.23) #9
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %sc_nvifs = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %sc_nvifs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sc_nvifs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vif, align 8
  %switch.tableidx = add i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 9
  br i1 %8, label %switch.hole_check, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 451, %switch.maskindex
  %9 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %switch.lobit.not = icmp eq i16 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then6_crit_edge, label %switch.lookup

switch.hole_check.if.then6_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.rsi_mac80211_remove_interface, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %arrayidx = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp ne ptr %12, null
  %cmp15 = icmp eq ptr %12, %vif
  %or.cond = and i1 %tobool.not, %cmp15
  br i1 %or.cond, label %if.then17, label %switch.lookup.for.inc_crit_edge

switch.lookup.for.inc_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then6:                                         ; preds = %switch.hole_check.if.then6_crit_edge, %if.end.if.then6_crit_edge
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.24, i32 noundef -1) #9
  br label %cleanup

if.then17:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 @rsi_set_vap_capabilities(ptr noundef %3, i32 noundef %switch.load, ptr noundef %addr, i8 noundef zeroext 0, i8 noundef zeroext 2) #9
  %13 = ptrtoint ptr %sc_nvifs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sc_nvifs, align 4
  %dec = add i8 %14, -1
  store i8 %dec, ptr %sc_nvifs, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %switch.lookup.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp ne ptr %17, null
  %cmp15.1 = icmp eq ptr %17, %vif
  %or.cond.1 = and i1 %tobool.not.1, %cmp15.1
  br i1 %or.cond.1, label %if.then17.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then17.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %call19.1 = tail call i32 @rsi_set_vap_capabilities(ptr noundef %3, i32 noundef %switch.load, ptr noundef %addr, i8 noundef zeroext 1, i8 noundef zeroext 2) #9
  %18 = ptrtoint ptr %sc_nvifs to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sc_nvifs, align 4
  %dec.1 = add i8 %19, -1
  store i8 %dec.1, ptr %sc_nvifs, align 4
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then17.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp ne ptr %22, null
  %cmp15.2 = icmp eq ptr %22, %vif
  %or.cond.2 = and i1 %tobool.not.2, %cmp15.2
  br i1 %or.cond.2, label %if.then17.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %call19.2 = tail call i32 @rsi_set_vap_capabilities(ptr noundef %3, i32 noundef %switch.load, ptr noundef %addr, i8 noundef zeroext 2, i8 noundef zeroext 2) #9
  %23 = ptrtoint ptr %sc_nvifs to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sc_nvifs, align 4
  %dec.2 = add i8 %24, -1
  store i8 %dec.2, ptr %sc_nvifs, align 4
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx.2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then17.2, %for.inc.1.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_mac80211_config(ptr nocapture noundef readonly %hw, i32 noundef %changed) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %and = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %8 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chandef.i, align 4
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hw_value.i, align 2
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %center_freq.i, align 4
  %flags.i = getelementptr inbounds %struct.ieee80211_channel, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %conv.i = zext i16 %11 to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.rsi_channel_change, i32 noundef %13, i32 noundef %15, i32 noundef %conv.i) #9
  %arrayidx.i = getelementptr %struct.rsi_hw, ptr %5, i32 0, i32 3, i32 0
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then.for.inc.i_crit_edge, label %if.end.i

if.then.for.inc.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %if.then
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp3.i = icmp eq i32 %19, 2
  br i1 %cmp3.i, label %if.then5.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.end.i
  %assoc6.i = getelementptr inbounds %struct.ieee80211_vif, ptr %17, i32 0, i32 1, i32 10
  %20 = ptrtoint ptr %assoc6.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %assoc6.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool7.not.i = icmp eq i8 %21, 0
  br i1 %tobool7.not.i, label %if.then5.i.for.inc.i_crit_edge, label %if.then5.i.if.then12.i_crit_edge

if.then5.i.if.then12.i_crit_edge:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.i

if.then5.i.for.inc.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %if.then.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.rsi_hw, ptr %5, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %23, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp3.1.i = icmp eq i32 %25, 2
  br i1 %cmp3.1.i, label %if.then5.1.i, label %if.end.1.i.for.inc.1.i_crit_edge

if.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.then5.1.i:                                     ; preds = %if.end.1.i
  %assoc6.1.i = getelementptr inbounds %struct.ieee80211_vif, ptr %23, i32 0, i32 1, i32 10
  %26 = ptrtoint ptr %assoc6.1.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %assoc6.1.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool7.not.1.i = icmp eq i8 %27, 0
  br i1 %tobool7.not.1.i, label %if.then5.1.i.for.inc.1.i_crit_edge, label %if.then5.1.i.if.then12.i_crit_edge

if.then5.1.i.if.then12.i_crit_edge:               ; preds = %if.then5.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.i

if.then5.1.i.for.inc.1.i_crit_edge:               ; preds = %if.then5.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then5.1.i.for.inc.1.i_crit_edge, %if.end.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.rsi_hw, ptr %5, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %29, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.if.end26.i_crit_edge, label %if.end.2.i

for.inc.1.i.if.end26.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp3.2.i = icmp eq i32 %31, 2
  br i1 %cmp3.2.i, label %if.then5.2.i, label %if.end.2.i.if.end26.i_crit_edge

if.end.2.i.if.end26.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then5.2.i:                                     ; preds = %if.end.2.i
  %assoc6.2.i = getelementptr inbounds %struct.ieee80211_vif, ptr %29, i32 0, i32 1, i32 10
  %32 = ptrtoint ptr %assoc6.2.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %assoc6.2.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool7.not.2.i = icmp eq i8 %33, 0
  br i1 %tobool7.not.2.i, label %if.then5.2.i.if.end26.i_crit_edge, label %if.then5.2.i.if.then12.i_crit_edge

if.then5.2.i.if.then12.i_crit_edge:               ; preds = %if.then5.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.i

if.then5.2.i.if.end26.i_crit_edge:                ; preds = %if.then5.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then12.i:                                      ; preds = %if.then5.2.i.if.then12.i_crit_edge, %if.then5.1.i.if.then12.i_crit_edge, %if.then5.i.if.then12.i_crit_edge
  %.lcssa.i = phi ptr [ %17, %if.then5.i.if.then12.i_crit_edge ], [ %23, %if.then5.1.i.if.then12.i_crit_edge ], [ %29, %if.then5.2.i.if.then12.i_crit_edge ]
  %hw_data_qs_blocked.i = getelementptr inbounds %struct.rsi_common, ptr %7, i32 0, i32 43
  %34 = ptrtoint ptr %hw_data_qs_blocked.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hw_data_qs_blocked.i, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool13.not.i = icmp eq i8 %35, 0
  br i1 %tobool13.not.i, label %if.end.i.i, label %if.then12.i.if.end26.i_crit_edge

if.then12.i.if.end26.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.end.i.i:                                       ; preds = %if.then12.i
  %chandef.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %.lcssa.i, i32 0, i32 1, i32 32
  %36 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chandef.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %37, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.rsi_get_connected_channel.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.rsi_get_connected_channel.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsi_get_connected_channel.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw_value.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hw_value.i.i, align 2
  br label %rsi_get_connected_channel.exit.i

rsi_get_connected_channel.exit.i:                 ; preds = %if.end3.i.i, %if.end.i.i.rsi_get_connected_channel.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %39, %if.end3.i.i ], [ 0, %if.end.i.i.rsi_get_connected_channel.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i.i, i16 %11)
  %cmp16.not.i = icmp eq i16 %retval.0.i.i, %11
  br i1 %cmp16.not.i, label %rsi_get_connected_channel.exit.i.if.end26.i_crit_edge, label %if.then18.i

rsi_get_connected_channel.exit.i.if.end26.i_crit_edge: ; preds = %rsi_get_connected_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then18.i:                                      ; preds = %rsi_get_connected_channel.exit.i
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef %conv.i) #9
  %call20.i = tail call i32 @rsi_send_block_unblock_frame(ptr noundef %7, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.then18.i.if.end26.i_crit_edge

if.then18.i.if.end26.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then22.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %hw_data_qs_blocked.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %hw_data_qs_blocked.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then22.i, %if.then18.i.if.end26.i_crit_edge, %rsi_get_connected_channel.exit.i.if.end26.i_crit_edge, %if.then12.i.if.end26.i_crit_edge, %if.then5.2.i.if.end26.i_crit_edge, %if.end.2.i.if.end26.i_crit_edge, %for.inc.1.i.if.end26.i_crit_edge
  %41 = phi ptr [ %.lcssa.i, %if.then12.i.if.end26.i_crit_edge ], [ %.lcssa.i, %rsi_get_connected_channel.exit.i.if.end26.i_crit_edge ], [ %.lcssa.i, %if.then22.i ], [ %.lcssa.i, %if.then18.i.if.end26.i_crit_edge ], [ %29, %if.then5.2.i.if.end26.i_crit_edge ], [ %29, %if.end.2.i.if.end26.i_crit_edge ], [ null, %for.inc.1.i.if.end26.i_crit_edge ]
  %cmp91.i = phi i1 [ true, %if.then12.i.if.end26.i_crit_edge ], [ true, %rsi_get_connected_channel.exit.i.if.end26.i_crit_edge ], [ true, %if.then22.i ], [ true, %if.then18.i.if.end26.i_crit_edge ], [ false, %if.then5.2.i.if.end26.i_crit_edge ], [ false, %if.end.2.i.if.end26.i_crit_edge ], [ false, %for.inc.1.i.if.end26.i_crit_edge ]
  %call27.i = tail call i32 @rsi_band_check(ptr noundef %7, ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.then29.i, label %if.end26.i.if.end32.i_crit_edge

if.end26.i.if.end32.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %5, align 4
  %call31.i = tail call i32 @rsi_set_channel(ptr noundef %43, ptr noundef %9) #9
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.end26.i.if.end32.i_crit_edge
  %status.0.i = phi i32 [ %call27.i, %if.end26.i.if.end32.i_crit_edge ], [ %call31.i, %if.then29.i ]
  br i1 %cmp91.i, label %if.then34.i, label %if.end32.i.if.end_crit_edge

if.end32.i.if.end_crit_edge:                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then34.i:                                      ; preds = %if.end32.i
  %hw_data_qs_blocked35.i = getelementptr inbounds %struct.rsi_common, ptr %7, i32 0, i32 43
  %44 = ptrtoint ptr %hw_data_qs_blocked35.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %hw_data_qs_blocked35.i, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool36.not.i = icmp eq i8 %45, 0
  br i1 %tobool36.not.i, label %if.then34.i.if.end_crit_edge, label %land.lhs.true38.i

if.then34.i.if.end_crit_edge:                     ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true38.i:                                ; preds = %if.then34.i
  %tobool.not.i78.i = icmp eq ptr %41, null
  br i1 %tobool.not.i78.i, label %land.lhs.true38.i.rsi_get_connected_channel.exit85.i_crit_edge, label %if.end.i81.i

land.lhs.true38.i.rsi_get_connected_channel.exit85.i_crit_edge: ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsi_get_connected_channel.exit85.i

if.end.i81.i:                                     ; preds = %land.lhs.true38.i
  %chandef.i79.i = getelementptr inbounds %struct.ieee80211_vif, ptr %41, i32 0, i32 1, i32 32
  %46 = ptrtoint ptr %chandef.i79.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chandef.i79.i, align 4
  %tobool1.not.i80.i = icmp eq ptr %47, null
  br i1 %tobool1.not.i80.i, label %if.end.i81.i.rsi_get_connected_channel.exit85.i_crit_edge, label %if.end3.i83.i

if.end.i81.i.rsi_get_connected_channel.exit85.i_crit_edge: ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsi_get_connected_channel.exit85.i

if.end3.i83.i:                                    ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw_value.i82.i = getelementptr inbounds %struct.ieee80211_channel, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %hw_value.i82.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %hw_value.i82.i, align 2
  br label %rsi_get_connected_channel.exit85.i

rsi_get_connected_channel.exit85.i:               ; preds = %if.end3.i83.i, %if.end.i81.i.rsi_get_connected_channel.exit85.i_crit_edge, %land.lhs.true38.i.rsi_get_connected_channel.exit85.i_crit_edge
  %retval.0.i84.i = phi i16 [ %49, %if.end3.i83.i ], [ 0, %land.lhs.true38.i.rsi_get_connected_channel.exit85.i_crit_edge ], [ 0, %if.end.i81.i.rsi_get_connected_channel.exit85.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i84.i, i16 %11)
  %cmp42.i = icmp eq i16 %retval.0.i84.i, %11
  br i1 %cmp42.i, label %if.then44.i, label %rsi_get_connected_channel.exit85.i.if.end_crit_edge

rsi_get_connected_channel.exit85.i.if.end_crit_edge: ; preds = %rsi_get_connected_channel.exit85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then44.i:                                      ; preds = %rsi_get_connected_channel.exit85.i
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.30, i32 noundef %conv.i) #9
  %call46.i = tail call i32 @rsi_send_block_unblock_frame(ptr noundef %7, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.then48.i, label %if.then44.i.if.end_crit_edge

if.then44.i.if.end_crit_edge:                     ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then48.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %hw_data_qs_blocked35.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %hw_data_qs_blocked35.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then48.i, %if.then44.i.if.end_crit_edge, %rsi_get_connected_channel.exit85.i.if.end_crit_edge, %if.then34.i.if.end_crit_edge, %if.end32.i.if.end_crit_edge, %entry.if.end_crit_edge
  %status.0 = phi i32 [ -95, %entry.if.end_crit_edge ], [ %status.0.i, %if.end32.i.if.end_crit_edge ], [ %status.0.i, %if.then34.i.if.end_crit_edge ], [ %status.0.i, %rsi_get_connected_channel.exit85.i.if.end_crit_edge ], [ %status.0.i, %if.then44.i.if.end_crit_edge ], [ %status.0.i, %if.then48.i ]
  %and3 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.end
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.rsi_mac80211_config) #9
  %51 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %sc_nvifs.i = getelementptr inbounds %struct.rsi_hw, ptr %52, i32 0, i32 7
  %55 = ptrtoint ptr %sc_nvifs.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %sc_nvifs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp.i = icmp eq i8 %56, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i88

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.rsi_config_power) #9
  br label %if.end7

if.end.i88:                                       ; preds = %if.then5
  %power_level.i = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 1
  %57 = ptrtoint ptr %power_level.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %power_level.i, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.rsi_config_power, i32 noundef %58) #9
  %59 = ptrtoint ptr %power_level.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %power_level.i, align 4
  %tx_power.i = getelementptr inbounds %struct.rsi_common, ptr %54, i32 0, i32 54
  %61 = ptrtoint ptr %tx_power.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_power.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp5.i = icmp eq i32 %60, %62
  br i1 %cmp5.i, label %if.end.i88.if.end7_crit_edge, label %if.end8.i

if.end.i88.if.end7_crit_edge:                     ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end8.i:                                        ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %tx_power.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %60, ptr %tx_power.i, align 4
  %call.i = tail call i32 @rsi_send_radio_params_update(ptr noundef %54) #9
  br label %if.end7

if.end7:                                          ; preds = %if.end8.i, %if.end.i88.if.end7_crit_edge, %if.then.i, %if.end.if.end7_crit_edge
  %status.1 = phi i32 [ %status.0, %if.end.if.end7_crit_edge ], [ -22, %if.then.i ], [ %call.i, %if.end8.i ], [ 0, %if.end.i88.if.end7_crit_edge ]
  %and8 = and i32 %changed, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end48_crit_edge, label %land.lhs.true

if.end7.if.end48_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end7
  %mac_ops_resumed = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 83
  %64 = ptrtoint ptr %mac_ops_resumed to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %mac_ops_resumed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool10.not = icmp eq i8 %65, 0
  br i1 %tobool10.not, label %for.body.preheader, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

for.body.preheader:                               ; preds = %land.lhs.true
  %arrayidx = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 0
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %67, null
  br i1 %tobool12.not, label %for.body.preheader.for.inc_crit_edge, label %if.end14

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end14:                                         ; preds = %for.body.preheader
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 8
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %69, label %if.end14.for.inc_crit_edge [
    i32 3, label %if.end14.if.end48_crit_edge
    i32 9, label %if.end14.if.end48_crit_edge95
    i32 2, label %if.end14.if.then29_crit_edge
    i32 8, label %if.end14.if.then29_crit_edge96
  ]

if.end14.if.then29_crit_edge96:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

if.end14.if.then29_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

if.end14.if.end48_crit_edge95:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end14.if.end48_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then29:                                        ; preds = %if.end14.if.then29_crit_edge, %if.end14.if.then29_crit_edge96
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %if.end14.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %sta_vif.1 = phi ptr [ %67, %if.then29 ], [ null, %for.body.preheader.for.inc_crit_edge ], [ null, %if.end14.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 1
  %71 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.1, align 4
  %tobool12.not.1 = icmp eq ptr %72, null
  br i1 %tobool12.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end14.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end14.1:                                       ; preds = %for.inc
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %74, label %if.end14.1.for.inc.1_crit_edge [
    i32 3, label %if.end14.1.if.end48_crit_edge
    i32 9, label %if.end14.1.if.end48_crit_edge97
    i32 2, label %if.end14.1.land.lhs.true25.1_crit_edge
    i32 8, label %if.end14.1.land.lhs.true25.1_crit_edge98
  ]

if.end14.1.land.lhs.true25.1_crit_edge98:         ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true25.1

if.end14.1.land.lhs.true25.1_crit_edge:           ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true25.1

if.end14.1.if.end48_crit_edge97:                  ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end14.1.if.end48_crit_edge:                    ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end14.1.for.inc.1_crit_edge:                   ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

land.lhs.true25.1:                                ; preds = %if.end14.1.land.lhs.true25.1_crit_edge, %if.end14.1.land.lhs.true25.1_crit_edge98
  %tobool26.not.1 = icmp eq ptr %sta_vif.1, null
  br i1 %tobool26.not.1, label %land.lhs.true25.1.if.then29.1_crit_edge, label %lor.lhs.false27.1

land.lhs.true25.1.if.then29.1_crit_edge:          ; preds = %land.lhs.true25.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.1

lor.lhs.false27.1:                                ; preds = %land.lhs.true25.1
  %assoc.1 = getelementptr inbounds %struct.ieee80211_vif, ptr %72, i32 0, i32 1, i32 10
  %76 = ptrtoint ptr %assoc.1 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %assoc.1, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool28.not.1 = icmp eq i8 %77, 0
  br i1 %tobool28.not.1, label %lor.lhs.false27.1.for.inc.1_crit_edge, label %lor.lhs.false27.1.if.then29.1_crit_edge

lor.lhs.false27.1.if.then29.1_crit_edge:          ; preds = %lor.lhs.false27.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.1

lor.lhs.false27.1.for.inc.1_crit_edge:            ; preds = %lor.lhs.false27.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then29.1:                                      ; preds = %lor.lhs.false27.1.if.then29.1_crit_edge, %land.lhs.true25.1.if.then29.1_crit_edge
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then29.1, %lor.lhs.false27.1.for.inc.1_crit_edge, %if.end14.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %sta_vif.1.1 = phi ptr [ %72, %if.then29.1 ], [ %sta_vif.1, %lor.lhs.false27.1.for.inc.1_crit_edge ], [ %sta_vif.1, %for.inc.for.inc.1_crit_edge ], [ %sta_vif.1, %if.end14.1.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 2
  %78 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.2, align 4
  %tobool12.not.2 = icmp eq ptr %79, null
  br i1 %tobool12.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end14.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.end14.2:                                       ; preds = %for.inc.1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 8
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %81, label %if.end14.2.for.inc.2_crit_edge [
    i32 3, label %if.end14.2.if.end48_crit_edge
    i32 9, label %if.end14.2.if.end48_crit_edge99
    i32 2, label %if.end14.2.land.lhs.true25.2_crit_edge
    i32 8, label %if.end14.2.land.lhs.true25.2_crit_edge100
  ]

if.end14.2.land.lhs.true25.2_crit_edge100:        ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true25.2

if.end14.2.land.lhs.true25.2_crit_edge:           ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true25.2

if.end14.2.if.end48_crit_edge99:                  ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end14.2.if.end48_crit_edge:                    ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end14.2.for.inc.2_crit_edge:                   ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

land.lhs.true25.2:                                ; preds = %if.end14.2.land.lhs.true25.2_crit_edge, %if.end14.2.land.lhs.true25.2_crit_edge100
  %tobool26.not.2 = icmp eq ptr %sta_vif.1.1, null
  br i1 %tobool26.not.2, label %land.lhs.true25.2.if.then29.2_crit_edge, label %lor.lhs.false27.2

land.lhs.true25.2.if.then29.2_crit_edge:          ; preds = %land.lhs.true25.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.2

lor.lhs.false27.2:                                ; preds = %land.lhs.true25.2
  %assoc.2 = getelementptr inbounds %struct.ieee80211_vif, ptr %79, i32 0, i32 1, i32 10
  %83 = ptrtoint ptr %assoc.2 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %assoc.2, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool28.not.2 = icmp eq i8 %84, 0
  br i1 %tobool28.not.2, label %lor.lhs.false27.2.do.body35_crit_edge, label %lor.lhs.false27.2.if.then29.2_crit_edge

lor.lhs.false27.2.if.then29.2_crit_edge:          ; preds = %lor.lhs.false27.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.2

lor.lhs.false27.2.do.body35_crit_edge:            ; preds = %lor.lhs.false27.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body35

if.then29.2:                                      ; preds = %lor.lhs.false27.2.if.then29.2_crit_edge, %land.lhs.true25.2.if.then29.2_crit_edge
  br label %do.body35

for.inc.2:                                        ; preds = %if.end14.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %tobool33.not = icmp eq ptr %sta_vif.1.1, null
  br i1 %tobool33.not, label %for.inc.2.if.end48_crit_edge, label %for.inc.2.do.body35_crit_edge

for.inc.2.do.body35_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body35

for.inc.2.if.end48_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.body35:                                        ; preds = %for.inc.2.do.body35_crit_edge, %if.then29.2, %lor.lhs.false27.2.do.body35_crit_edge
  %sta_vif.1.294 = phi ptr [ %sta_vif.1.1, %for.inc.2.do.body35_crit_edge ], [ %sta_vif.1.1, %lor.lhs.false27.2.do.body35_crit_edge ], [ %79, %if.then29.2 ]
  %ps_lock = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 12
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ps_lock) #9
  %85 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hw, align 4
  %and42 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rsi_enable_ps(ptr noundef %1, ptr noundef nonnull %sta_vif.1.294) #9
  br label %if.end45

if.else:                                          ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rsi_disable_ps(ptr noundef %1, ptr noundef nonnull %sta_vif.1.294) #9
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then44
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ps_lock, i32 noundef %call38) #9
  br label %if.end48

if.end48:                                         ; preds = %if.end45, %for.inc.2.if.end48_crit_edge, %if.end14.2.if.end48_crit_edge, %if.end14.2.if.end48_crit_edge99, %if.end14.1.if.end48_crit_edge, %if.end14.1.if.end48_crit_edge97, %if.end14.if.end48_crit_edge, %if.end14.if.end48_crit_edge95, %land.lhs.true.if.end48_crit_edge, %if.end7.if.end48_crit_edge
  %and49 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end58_crit_edge, label %if.then51

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then51:                                        ; preds = %if.end48
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.26) #9
  %rts_threshold = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 16
  %87 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %rts_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2354, i16 %88)
  %cmp53 = icmp ult i16 %88, 2354
  br i1 %cmp53, label %if.then55, label %if.then51.if.end58_crit_edge

if.then51.if.end58_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then55:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.rsi_mac80211_config) #9
  %call56 = tail call i32 @rsi_send_vap_dynamic_update(ptr noundef %3) #9
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.then51.if.end58_crit_edge, %if.end48.if.end58_crit_edge
  %status.2 = phi i32 [ %call56, %if.then55 ], [ %status.1, %if.then51.if.end58_crit_edge ], [ %status.1, %if.end48.if.end58_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %status.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_mac80211_bss_info_changed(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr nocapture noundef readonly %bss_conf, i32 noundef %changed) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %and = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then:                                          ; preds = %entry
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 10
  %4 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %assoc, align 1, !range !213
  %6 = zext i8 %5 to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.rsi_mac80211_bss_info_changed, i32 noundef %6) #9
  %7 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %assoc, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @rsi_send_rx_filter_frame(ptr noundef %3, i16 noundef zeroext 14) #9
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %9 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %assoc, align 1, !range !213
  %11 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bss_conf, align 8
  %qos = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 36
  %13 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %qos, align 4, !range !213
  %aid = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 13
  %15 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %aid, align 2
  %assoc_capability = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 20
  %17 = ptrtoint ptr %assoc_capability to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %assoc_capability, align 4
  tail call void @rsi_inform_bss_status(ptr noundef %3, i32 noundef 1, i8 noundef zeroext %10, ptr noundef %12, i8 noundef zeroext %14, i16 noundef zeroext %16, ptr noundef null, i16 noundef zeroext 0, i16 noundef zeroext %18, ptr noundef %vif) #9
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 18
  %19 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dtim_period, align 8
  %conv13 = zext i8 %20 to i32
  %dtim_interval_duration = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 11, i32 9
  %21 = ptrtoint ptr %dtim_interval_duration to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %conv13, ptr %dtim_interval_duration, align 2
  %listen_interval = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 3
  %22 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %listen_interval, align 4
  %conv14 = zext i16 %23 to i32
  %listen_interval16 = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 11, i32 7
  %24 = ptrtoint ptr %listen_interval16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv14, ptr %listen_interval16, align 4
  %assoc17 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %25 = ptrtoint ptr %assoc17 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %assoc17, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool18.not = icmp eq i8 %26, 0
  %uapsd_bitmap23 = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 50
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end
  %27 = ptrtoint ptr %uapsd_bitmap23 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %uapsd_bitmap23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool20.not = icmp eq i8 %28, 0
  br i1 %tobool20.not, label %if.then19.if.end25_crit_edge, label %if.then21

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.34) #9
  tail call void @rsi_conf_uapsd(ptr noundef %1, ptr noundef %vif) #9
  br label %if.end25

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %uapsd_bitmap23 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %uapsd_bitmap23, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then21, %if.then19.if.end25_crit_edge, %entry.if.end25_crit_edge
  %and26 = and i32 %changed, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end35_crit_edge, label %if.then28

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %cqm_info = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 42
  %30 = ptrtoint ptr %cqm_info to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %cqm_info, align 4
  %cqm_rssi_thold = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 28
  %31 = ptrtoint ptr %cqm_rssi_thold to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cqm_rssi_thold, align 4
  %rssi_thold = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 42, i32 1
  %33 = ptrtoint ptr %rssi_thold to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %rssi_thold, align 4
  %cqm_rssi_hyst = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 29
  %34 = ptrtoint ptr %cqm_rssi_hyst to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cqm_rssi_hyst, align 8
  %rssi_hyst = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 42, i32 2
  %36 = ptrtoint ptr %rssi_hyst to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %rssi_hyst, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.35, i32 noundef %32, i32 noundef %35) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %if.end25.if.end35_crit_edge
  %and36 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end61_crit_edge, label %if.then38

if.end35.if.end61_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then38:                                        ; preds = %if.end35
  %beacon_int = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 19
  %37 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %beacon_int, align 2
  %conv39 = zext i16 %38 to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.rsi_mac80211_bss_info_changed, i32 noundef %conv39) #9
  %beacon_interval = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 62
  %39 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %beacon_interval, align 4
  %beacon_int41 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %41 = ptrtoint ptr %beacon_int41 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %beacon_int41, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %42)
  %cmp.not = icmp eq i16 %40, %42
  br i1 %cmp.not, label %if.then38.if.end54_crit_edge, label %if.then44

if.then38.if.end54_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then44:                                        ; preds = %if.then38
  %43 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %beacon_interval, align 4
  %44 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp47 = icmp eq i32 %45, 3
  br i1 %cmp47, label %if.then49, label %if.then44.if.end54_crit_edge

if.then44.if.end54_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then49:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %vap_id = getelementptr inbounds %struct.vif_priv, ptr %drv_priv, i32 0, i32 3
  %46 = ptrtoint ptr %vap_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vap_id, align 4
  %conv51 = trunc i32 %47 to i8
  %call52 = tail call i32 @rsi_set_vap_capabilities(ptr noundef %3, i32 noundef 0, ptr noundef %addr, i8 noundef zeroext %conv51, i8 noundef zeroext 3) #9
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %if.then44.if.end54_crit_edge, %if.then38.if.end54_crit_edge
  %48 = ptrtoint ptr %beacon_int41 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %beacon_int41, align 2
  %conv56 = zext i16 %49 to i32
  %num_bcns_per_lis_int = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 11, i32 8
  %50 = ptrtoint ptr %num_bcns_per_lis_int to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %num_bcns_per_lis_int, align 4
  %conv58 = zext i16 %51 to i32
  %mul = mul nuw i32 %conv58, %conv56
  %listen_interval60 = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 11, i32 7
  %52 = ptrtoint ptr %listen_interval60 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul, ptr %listen_interval60, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.end54, %if.end35.if.end61_crit_edge
  %and62 = and i32 %changed, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.if.end76_crit_edge, label %land.lhs.true

if.end61.if.end76_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

land.lhs.true:                                    ; preds = %if.end61
  %53 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vif, align 8
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %54, label %land.lhs.true.if.end76_crit_edge [
    i32 3, label %land.lhs.true.if.then70_crit_edge
    i32 9, label %land.lhs.true.if.then70_crit_edge123
  ]

land.lhs.true.if.then70_crit_edge123:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then70

land.lhs.true.if.then70_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then70

land.lhs.true.if.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then70:                                        ; preds = %land.lhs.true.if.then70_crit_edge, %land.lhs.true.if.then70_crit_edge123
  %enable_beacon = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 17
  %56 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %enable_beacon, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool71.not = icmp eq i8 %57, 0
  %.str.38..str.37 = select i1 %tobool71.not, ptr @.str.38, ptr @.str.37
  %not.tobool71.not = xor i1 %tobool71.not, true
  %. = zext i1 %not.tobool71.not to i8
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull %.str.38..str.37) #9
  %beacon_enabled = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 64
  %58 = ptrtoint ptr %beacon_enabled to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %., ptr %beacon_enabled, align 1
  br label %if.end76

if.end76:                                         ; preds = %if.then70, %land.lhs.true.if.end76_crit_edge, %if.end61.if.end76_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rsi_mac80211_conf_filter(ptr nocapture noundef readnone %hw, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total_flags, align 4
  %and = and i32 %1, 274
  store i32 %and, ptr %total_flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_mac80211_set_key(ptr nocapture noundef readonly %hw, i32 noundef %cmd, ptr noundef %vif, ptr noundef %sta, ptr noundef %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %secinfo2 = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 23
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc i32 @rsi_hal_key_config(ptr noundef %hw, ptr noundef %vif, ptr noundef %key, ptr noundef %sta)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 8
  %7 = and i16 %6, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not = icmp eq i16 %7, 0
  %cipher6 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %8 = ptrtoint ptr %cipher6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cipher6, align 8
  %gtk_cipher = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 23, i32 1
  %gtk_cipher.sink = select i1 %tobool4.not, ptr %gtk_cipher, ptr %secinfo2
  %10 = ptrtoint ptr %gtk_cipher.sink to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %gtk_cipher.sink, align 4
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %11 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %keyidx, align 1
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %13 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %hw_key_idx, align 2
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags, align 8
  %16 = or i16 %15, 2
  store i16 %16, ptr %flags, align 8
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.rsi_mac80211_set_key) #9
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.rsi_mac80211_set_key) #9
  %17 = call ptr @memset(ptr %key, i32 0, i32 24)
  %call12 = tail call fastcc i32 @rsi_hal_key_config(ptr noundef %hw, ptr noundef %vif, ptr noundef %key, ptr noundef %sta)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb11, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb.cleanup_crit_edge ], [ %call12, %sw.bb11 ], [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_mac80211_hw_scan_start(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %hw_req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.42) #9
  %mac_ops_resumed = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %mac_ops_resumed to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %mac_ops_resumed, align 1
  %fsm_state = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 28
  %5 = ptrtoint ptr %fsm_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fsm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %6)
  %cmp.not = icmp eq i32 %6, 9
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %wow_flags = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 60
  %7 = ptrtoint ptr %wow_flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wow_flags, align 2
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %n_channels = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2 = icmp eq i32 %11, 0
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %bgscan_en = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 82
  %12 = ptrtoint ptr %bgscan_en to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bgscan_en, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %14 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %assoc, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not = icmp eq i8 %15, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %hwscan = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 79
  %16 = ptrtoint ptr %hwscan to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %req, ptr %hwscan, align 4
  %call = tail call i32 @rsi_send_bgscan_params(ptr noundef %3, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then13:                                        ; preds = %if.end11
  %call14 = tail call i32 @rsi_send_bgscan_probe_req(ptr noundef %3, ptr noundef %vif) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.then13.if.end19_crit_edge

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.43) #9
  %17 = ptrtoint ptr %bgscan_en to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %bgscan_en, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then13.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -16, %if.end5.cleanup_crit_edge ], [ 1, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_mac80211_cancel_hw_scan(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #1 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #9
  %4 = call ptr @memset(ptr %info, i32 255, i32 16)
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.44) #9
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %bgscan_en = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 82
  %5 = ptrtoint ptr %bgscan_en to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bgscan_en, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %call = tail call i32 @rsi_send_bgscan_params(ptr noundef %3, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %bgscan_en to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %bgscan_en, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %aborted = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %aborted to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %aborted, align 2
  %hw5 = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw5, align 4
  call void @ieee80211_scan_completed(ptr noundef %10, ptr noundef nonnull %info) #9
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.45) #9
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %hwscan = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 79
  %11 = ptrtoint ptr %hwscan to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %hwscan, align 4
  call void @mutex_unlock(ptr noundef %mutex) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_mac80211_set_rts_threshold(ptr nocapture noundef readonly %hw, i32 noundef %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %conv = trunc i32 %value to i16
  %rts_threshold = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %rts_threshold, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_mac80211_sta_add(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %sta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.46, ptr noundef %addr) #9
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %5, label %entry.if.end93_crit_edge [
    i32 3, label %entry.if.then_crit_edge
    i32 9, label %entry.if.then_crit_edge235
  ]

entry.if.then_crit_edge235:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.end93_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge235
  %num_stations = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 68
  %7 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_stations, align 4
  %max_stations = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 69
  %9 = ptrtoint ptr %max_stations to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_stations, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp4.not = icmp slt i32 %8, %10
  br i1 %cmp4.not, label %for.cond.preheader, label %if.then5

for.cond.preheader:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7215 = icmp sgt i32 %10, 0
  br i1 %cmp7215, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.47) #9
  br label %unlock

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %conv218 = phi i32 [ %conv, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %free_index.0217 = phi i32 [ %free_index.1, %for.inc.for.body_crit_edge ], [ -1, %for.cond.preheader.for.body_crit_edge ]
  %cnt.0216 = phi i8 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rsi_common, ptr %3, i32 0, i32 67, i32 %conv218
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.then10, label %if.end16

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free_index.0217)
  %cmp11 = icmp slt i32 %free_index.0217, 0
  %spec.select = select i1 %cmp11, i32 %conv218, i32 %free_index.0217
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %addr18 = getelementptr inbounds %struct.ieee80211_sta, ptr %12, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr18, ptr noundef dereferenceable(6) %addr, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool22.not = icmp eq i32 %bcmp, 0
  br i1 %tobool22.not, label %if.then23, label %if.end16.for.inc_crit_edge

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.48) #9
  br label %for.end

for.inc:                                          ; preds = %if.end16.for.inc_crit_edge, %if.then10
  %free_index.1 = phi i32 [ %free_index.0217, %if.end16.for.inc_crit_edge ], [ %spec.select, %if.then10 ]
  %inc = add i8 %cnt.0216, 1
  %conv = zext i8 %inc to i32
  %cmp7 = icmp sgt i32 %10, %conv
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then23, %for.cond.preheader.for.end_crit_edge
  %free_index.0214 = phi i32 [ %free_index.0217, %if.then23 ], [ -1, %for.cond.preheader.for.end_crit_edge ], [ %free_index.1, %for.inc.for.end_crit_edge ]
  %cmp7211 = phi i1 [ true, %if.then23 ], [ false, %for.cond.preheader.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ]
  %sta_idx.0 = phi i32 [ %conv218, %if.then23 ], [ -1, %for.cond.preheader.for.end_crit_edge ], [ -1, %for.inc.for.end_crit_edge ]
  %cmp7.not = xor i1 %cmp7211, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %free_index.0214)
  %cmp28 = icmp sgt i32 %free_index.0214, -1
  %or.cond = select i1 %cmp7.not, i1 %cmp28, i1 false
  %sta_idx.1 = select i1 %or.cond, i32 %free_index.0214, i32 %sta_idx.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sta_idx.1)
  %cmp33 = icmp slt i32 %sta_idx.1, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.rsi_mac80211_sta_add) #9
  br label %unlock

if.end36:                                         ; preds = %for.end
  %arrayidx38 = getelementptr %struct.rsi_common, ptr %3, i32 0, i32 67, i32 %sta_idx.1
  %13 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sta, ptr %arrayidx38, align 4
  %conv40 = trunc i32 %sta_idx.1 to i16
  %sta_id = getelementptr %struct.rsi_common, ptr %3, i32 0, i32 67, i32 %sta_idx.1, i32 1
  %14 = ptrtoint ptr %sta_id to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv40, ptr %sta_id, align 4
  %15 = mul i32 %sta_idx.1, 56
  %16 = add i32 %15, 1298
  %uglygep = getelementptr i8, ptr %3, i32 %16
  %17 = call ptr @memset(ptr %uglygep, i32 0, i32 16)
  %18 = add i32 %15, 1266
  %uglygep226 = getelementptr i8, ptr %3, i32 %18
  %19 = call ptr @memset(ptr %uglygep226, i32 0, i32 32)
  br i1 %cmp7211, label %if.end36.cleanup.thread_crit_edge, label %if.then62

if.end36.cleanup.thread_crit_edge:                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.then62:                                        ; preds = %if.end36
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.50) #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.51) #9
  %wme = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 10
  %20 = ptrtoint ptr %wme to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %wme, align 4, !range !213
  %aid = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 2
  %22 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %aid, align 2
  tail call void @rsi_inform_bss_status(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 1, ptr noundef %addr, i8 noundef zeroext %21, i16 noundef zeroext %23, ptr noundef %sta, i16 noundef zeroext %conv40, i16 noundef zeroext 0, ptr noundef %vif) #9
  %key = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 70
  %24 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %key, align 4
  %tobool68.not = icmp eq ptr %25, null
  br i1 %tobool68.not, label %if.then62.if.end87_crit_edge, label %if.then69

if.then62.if.end87_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then69:                                        ; preds = %if.then62
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cipher, align 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %27, label %if.then69.if.end87_crit_edge [
    i32 1027077, label %if.then69.if.then78_crit_edge
    i32 1027073, label %if.then69.if.then78_crit_edge236
  ]

if.then69.if.then78_crit_edge236:                 ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then78

if.then69.if.then78_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then78

if.then69.if.end87_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then78:                                        ; preds = %if.then69.if.then78_crit_edge, %if.then69.if.then78_crit_edge236
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %key80 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %25, i32 0, i32 8
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %25, i32 0, i32 7
  %31 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %keylen, align 2
  %conv82 = zext i8 %32 to i16
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %25, i32 0, i32 5
  %33 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %keyidx, align 1
  %call85 = tail call i32 @rsi_hal_load_key(ptr noundef %30, ptr noundef %key80, i16 noundef zeroext %conv82, i8 noundef zeroext 1, i8 noundef zeroext %34, i32 noundef %27, i16 noundef signext %conv40, ptr noundef %vif) #9
  br label %if.end87

if.end87:                                         ; preds = %if.then78, %if.then69.if.end87_crit_edge, %if.then62.if.end87_crit_edge
  %35 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_stations, align 4
  %inc89 = add i32 %36, 1
  store i32 %inc89, ptr %num_stations, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end87, %if.end36.cleanup.thread_crit_edge
  %37 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %vif, align 8
  br label %if.end93

if.end93:                                         ; preds = %cleanup.thread, %entry.if.end93_crit_edge
  %38 = phi i32 [ %.pr, %cleanup.thread ], [ %5, %entry.if.end93_crit_edge ]
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %38, label %if.end93.unlock_crit_edge [
    i32 2, label %if.end93.if.then101_crit_edge
    i32 8, label %if.end93.if.then101_crit_edge237
  ]

if.end93.if.then101_crit_edge237:                 ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then101

if.end93.if.then101_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then101

if.end93.unlock_crit_edge:                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then101:                                       ; preds = %if.end93.if.then101_crit_edge, %if.end93.if.then101_crit_edge237
  %band = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 13
  %40 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %band, align 1
  %idxprom102 = zext i8 %41 to i32
  %arrayidx103 = getelementptr [6 x i32], ptr %sta, i32 0, i32 %idxprom102
  %42 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx103, align 4
  %arrayidx106 = getelementptr %struct.rsi_common, ptr %3, i32 0, i32 18, i32 %idxprom102
  %44 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx106, align 4
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ht_supported, align 2, !range !213
  %vif_info = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 1
  %47 = ptrtoint ptr %vif_info to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %vif_info, align 4
  %48 = load i8, ptr %ht_supported, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool111.not = icmp eq i8 %48, 0
  br i1 %tobool111.not, label %if.then101.unlock_crit_edge, label %if.then112

if.then101.unlock_crit_edge:                      ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then112:                                       ; preds = %if.then101
  %ht_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %bitrate_mask = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 18
  %49 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sta, align 4
  %51 = ptrtoint ptr %bitrate_mask to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %bitrate_mask, align 4
  %52 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %ht_cap, align 4
  %54 = and i16 %53, 96
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %if.then112.if.end129_crit_edge, label %if.then126

if.then112.if.end129_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then126:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  %sgi = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 1, i32 0, i32 1
  %56 = ptrtoint ptr %sgi to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %sgi, align 1
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %if.then112.if.end129_crit_edge
  %call130 = tail call i32 @ieee80211_start_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 0, i16 noundef zeroext 0) #9
  br label %unlock

unlock:                                           ; preds = %if.end129, %if.then101.unlock_crit_edge, %if.end93.unlock_crit_edge, %if.then35, %if.then5
  %status.2 = phi i32 [ 0, %if.end129 ], [ 0, %if.then101.unlock_crit_edge ], [ 0, %if.end93.unlock_crit_edge ], [ -95, %if.then5 ], [ -22, %if.then35 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %status.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_mac80211_sta_remove(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %sta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.52, ptr noundef %addr) #9
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %5, label %entry.if.end43_crit_edge [
    i32 3, label %entry.if.then_crit_edge
    i32 9, label %entry.if.then_crit_edge140
  ]

entry.if.then_crit_edge140:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge140
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.51) #9
  %max_stations = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 69
  %7 = ptrtoint ptr %max_stations to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_stations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4119 = icmp sgt i32 %8, 0
  br i1 %cmp4119, label %if.then.for.body_crit_edge, label %if.then.for.end36_crit_edge

if.then.for.end36_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end36

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.inc34.for.body_crit_edge, %if.then.for.body_crit_edge
  %conv122 = phi i32 [ %conv, %for.inc34.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %sta_idx.0120 = phi i8 [ %inc35, %for.inc34.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rsi_common, ptr %3, i32 0, i32 67, i32 %conv122
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.for.inc34_crit_edge, label %if.end

for.body.for.inc34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc34

if.end:                                           ; preds = %for.body
  %addr9 = getelementptr inbounds %struct.ieee80211_sta, ptr %10, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr9, ptr noundef dereferenceable(6) %addr, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool13.not = icmp eq i32 %bcmp, 0
  br i1 %tobool13.not, label %if.then14, label %if.end.for.inc34_crit_edge

if.end.for.inc34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc34

if.then14:                                        ; preds = %if.end
  %wme = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 10
  %11 = ptrtoint ptr %wme to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %wme, align 4, !range !213
  %aid = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 2
  %13 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %aid, align 2
  %conv19 = zext i8 %sta_idx.0120 to i16
  tail call void @rsi_inform_bss_status(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 0, ptr noundef %addr, i8 noundef zeroext %12, i16 noundef zeroext %14, ptr noundef %sta, i16 noundef zeroext %conv19, i16 noundef zeroext 0, ptr noundef %vif) #9
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx, align 4
  %sta_id = getelementptr %struct.rsi_common, ptr %3, i32 0, i32 67, i32 %conv122, i32 1
  %16 = ptrtoint ptr %sta_id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %sta_id, align 4
  %17 = mul nuw nsw i32 %conv122, 56
  %18 = add nuw nsw i32 %17, 1298
  %uglygep = getelementptr i8, ptr %3, i32 %18
  %19 = call ptr @memset(ptr %uglygep, i32 0, i32 16)
  %num_stations = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 68
  %20 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_stations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp28 = icmp sgt i32 %21, 0
  br i1 %cmp28, label %if.then30, label %if.then14.for.end36_crit_edge

if.then14.for.end36_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end36

if.then30:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add nsw i32 %21, -1
  %22 = ptrtoint ptr %num_stations to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %dec, ptr %num_stations, align 4
  br label %for.end36

for.inc34:                                        ; preds = %if.end.for.inc34_crit_edge, %for.body.for.inc34_crit_edge
  %inc35 = add i8 %sta_idx.0120, 1
  %conv = zext i8 %inc35 to i32
  %cmp4 = icmp sgt i32 %8, %conv
  br i1 %cmp4, label %for.inc34.for.body_crit_edge, label %for.inc34.for.end36_crit_edge

for.inc34.for.end36_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end36

for.inc34.for.body_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end36:                                        ; preds = %for.inc34.for.end36_crit_edge, %if.then30, %if.then14.for.end36_crit_edge, %if.then.for.end36_crit_edge
  %conv116 = phi i32 [ %conv122, %if.then14.for.end36_crit_edge ], [ %conv122, %if.then30 ], [ 0, %if.then.for.end36_crit_edge ], [ %conv, %for.inc34.for.end36_crit_edge ]
  %23 = ptrtoint ptr %max_stations to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_stations, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv116)
  %cmp39.not = icmp sgt i32 %24, %conv116
  br i1 %cmp39.not, label %for.end36.if.end43thread-pre-split_crit_edge, label %if.then41

for.end36.if.end43thread-pre-split_crit_edge:     ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43thread-pre-split

if.then41:                                        ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.rsi_mac80211_sta_remove) #9
  br label %if.end43thread-pre-split

if.end43thread-pre-split:                         ; preds = %if.then41, %for.end36.if.end43thread-pre-split_crit_edge
  %25 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %vif, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end43thread-pre-split, %entry.if.end43_crit_edge
  %26 = phi i32 [ %.pr, %if.end43thread-pre-split ], [ %5, %entry.if.end43_crit_edge ]
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %26, label %if.end43.if.end69_crit_edge [
    i32 2, label %if.end43.if.then51_crit_edge
    i32 8, label %if.end43.if.then51_crit_edge141
  ]

if.end43.if.then51_crit_edge141:                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51

if.end43.if.then51_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51

if.end43.if.end69_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then51:                                        ; preds = %if.end43.if.then51_crit_edge, %if.end43.if.then51_crit_edge141
  %28 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bss_conf, align 8
  %30 = call ptr @memcpy(ptr %29, ptr %addr, i32 6)
  %wme54 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 10
  %31 = ptrtoint ptr %wme54 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %wme54, align 4, !range !213
  %qos = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 36
  %33 = ptrtoint ptr %qos to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %qos, align 4
  %bitrate_mask = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 18
  %34 = ptrtoint ptr %bitrate_mask to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %bitrate_mask, align 4
  %arrayidx58 = getelementptr %struct.rsi_common, ptr %3, i32 0, i32 18, i32 1
  %35 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx58, align 4
  %vif_info = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 1
  %secinfo = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 23
  %36 = ptrtoint ptr %secinfo to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %secinfo, align 4
  %gtk_cipher = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 23, i32 1
  %37 = ptrtoint ptr %gtk_cipher to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %gtk_cipher, align 4
  %iface_down = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 31
  %38 = ptrtoint ptr %vif_info to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %vif_info, align 4
  %39 = ptrtoint ptr %iface_down to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %iface_down, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool65.not = icmp eq i8 %40, 0
  br i1 %tobool65.not, label %if.then66, label %if.then51.if.end69_crit_edge

if.then51.if.end69_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then66:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  %call67 = tail call i32 @rsi_send_rx_filter_frame(ptr noundef %3, i16 noundef zeroext 0) #9
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.then51.if.end69_crit_edge, %if.end43.if.end69_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_mac80211_conf_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i16 noundef zeroext %queue, ptr nocapture noundef readonly %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %queue)
  %cmp = icmp ugt i16 %queue, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i16 %queue to i32
  %aifs = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 3
  %4 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %aifs, align 2
  %conv4 = zext i8 %5 to i32
  %cw_min = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 1
  %6 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cw_min, align 2
  %conv5 = zext i16 %7 to i32
  %cw_max = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 2
  %8 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cw_max, align 2
  %conv6 = zext i16 %9 to i32
  %10 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %params, align 2
  %conv7 = zext i16 %11 to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.rsi_mac80211_conf_tx, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7) #9
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %switch.idx.cast = zext i16 %queue to i32
  %switch.offset = sub nsw i32 3, %switch.idx.cast
  %arrayidx = getelementptr %struct.rsi_common, ptr %3, i32 0, i32 25, i32 %switch.offset
  %12 = call ptr @memcpy(ptr %arrayidx, ptr %params, i32 14)
  %uapsd = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 5
  %13 = ptrtoint ptr %uapsd to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %uapsd, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %uapsd_bitmap17 = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 50
  %15 = ptrtoint ptr %uapsd_bitmap17 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %uapsd_bitmap17, align 4
  %17 = trunc i32 %switch.offset to i8
  %18 = xor i8 %17, -1
  %conv19 = and i8 %16, %18
  %conv15 = or i8 %16, %17
  %conv19.sink = select i1 %tobool.not, i8 %conv19, i8 %conv15
  store i8 %conv19.sink, ptr %uapsd_bitmap17, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_mac80211_ampdu_action(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef readonly %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %sta2 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 1
  %4 = ptrtoint ptr %sta2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sta2, align 4
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %params, align 4
  %tid4 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %8 = ptrtoint ptr %tid4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tid4, align 4
  %ssn5 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 3
  %buf_size6 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 4
  %10 = ptrtoint ptr %buf_size6 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %buf_size6, align 4
  %conv = trunc i16 %11 to i8
  %arrayidx = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %cmp9 = icmp eq ptr %13, %vif
  br i1 %cmp9, label %entry.if.end15_crit_edge, label %for.cond

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  %cmp9.1 = icmp eq ptr %15, %vif
  br i1 %cmp9.1, label %for.cond.if.end15_crit_edge, label %for.cond.1

for.cond.if.end15_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  %cmp9.2 = icmp eq ptr %17, %vif
  br i1 %cmp9.2, label %for.cond.1.if.end15_crit_edge, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.1.if.end15_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %for.cond.1.if.end15_crit_edge, %for.cond.if.end15_crit_edge, %entry.if.end15_crit_edge
  %conv7171.lcssa = phi i32 [ 0, %entry.if.end15_crit_edge ], [ 1, %for.cond.if.end15_crit_edge ], [ 2, %for.cond.1.if.end15_crit_edge ]
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %cmp16.not = icmp eq ptr %ssn5, null
  br i1 %cmp16.not, label %if.end15.if.end19_crit_edge, label %if.then18

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %ssn5 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ssn5, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15.if.end19_crit_edge
  %seq_no.0 = phi i16 [ %19, %if.then18 ], [ 0, %if.end15.if.end19_crit_edge ]
  %20 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vif, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %21, label %if.end19.if.end30_crit_edge [
    i32 3, label %if.end19.if.then25_crit_edge
    i32 9, label %if.end19.if.then25_crit_edge173
  ]

if.end19.if.then25_crit_edge173:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.end19.if.then25_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then25:                                        ; preds = %if.end19.if.then25_crit_edge, %if.end19.if.then25_crit_edge173
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 0, i32 1
  %call = tail call ptr @rsi_find_sta(ptr noundef %3, ptr noundef %addr) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.55) #9
  br label %unlock

if.end27:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %sta_id28 = getelementptr inbounds %struct.rsi_sta, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %sta_id28 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sta_id28, align 4
  %conv29 = trunc i16 %24 to i8
  br label %if.end30

if.end30:                                         ; preds = %if.end27, %if.end19.if.end30_crit_edge
  %rsta.0 = phi ptr [ %call, %if.end27 ], [ null, %if.end19.if.end30_crit_edge ]
  %sta_id.0 = phi i8 [ %conv29, %if.end27 ], [ 0, %if.end19.if.end30_crit_edge ]
  %conv31 = zext i16 %9 to i32
  %conv32 = zext i16 %seq_no.0 to i32
  %conv.mask = and i16 %11, 255
  %conv33 = zext i16 %conv.mask to i32
  %conv34 = zext i8 %sta_id.0 to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.rsi_mac80211_ampdu_action, i32 noundef %conv31, i32 noundef %conv32, i32 noundef %conv33, i32 noundef %conv34) #9
  %25 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb36
    i32 2, label %sw.bb38
    i32 3, label %if.end30.sw.bb63_crit_edge
    i32 4, label %if.end30.sw.bb63_crit_edge174
    i32 5, label %if.end30.sw.bb63_crit_edge175
    i32 6, label %sw.bb70
  ]

if.end30.sw.bb63_crit_edge175:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb63

if.end30.sw.bb63_crit_edge174:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb63

if.end30.sw.bb63_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb63

sw.bb:                                            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call i32 @rsi_send_aggregation_params_frame(ptr noundef %3, i16 noundef zeroext %9, i16 noundef zeroext %seq_no.0, i8 noundef zeroext %conv, i8 noundef zeroext 4, i8 noundef zeroext %sta_id.0) #9
  br label %unlock

sw.bb36:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = tail call i32 @rsi_send_aggregation_params_frame(ptr noundef %3, i16 noundef zeroext %9, i16 noundef zeroext 0, i8 noundef zeroext %conv, i8 noundef zeroext 5, i8 noundef zeroext %sta_id.0) #9
  br label %unlock

sw.bb38:                                          ; preds = %if.end30
  %26 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vif, align 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %27, label %sw.bb38.unlock_crit_edge [
    i32 2, label %sw.bb38.if.then46_crit_edge
    i32 8, label %sw.bb38.if.then46_crit_edge176
    i32 3, label %sw.bb38.if.then57_crit_edge
    i32 9, label %sw.bb38.if.then57_crit_edge177
  ]

sw.bb38.if.then57_crit_edge177:                   ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

sw.bb38.if.then57_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

sw.bb38.if.then46_crit_edge176:                   ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

sw.bb38.if.then46_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

sw.bb38.unlock_crit_edge:                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then46:                                        ; preds = %sw.bb38.if.then46_crit_edge, %sw.bb38.if.then46_crit_edge176
  %seq_start49 = getelementptr %struct.rsi_common, ptr %3, i32 0, i32 1, i32 %conv7171.lcssa, i32 2
  %29 = ptrtoint ptr %seq_start49 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %seq_no.0, ptr %seq_start49, align 2
  br label %unlock

if.then57:                                        ; preds = %sw.bb38.if.then57_crit_edge, %sw.bb38.if.then57_crit_edge177
  %arrayidx60 = getelementptr %struct.rsi_sta, ptr %rsta.0, i32 0, i32 2, i32 %conv31
  %30 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %seq_no.0, ptr %arrayidx60, align 2
  br label %unlock

sw.bb63:                                          ; preds = %if.end30.sw.bb63_crit_edge, %if.end30.sw.bb63_crit_edge174, %if.end30.sw.bb63_crit_edge175
  %call64 = tail call i32 @rsi_send_aggregation_params_frame(ptr noundef %3, i16 noundef zeroext %9, i16 noundef zeroext %seq_no.0, i8 noundef zeroext %conv, i8 noundef zeroext 3, i8 noundef zeroext %sta_id.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then66, label %sw.bb63.unlock_crit_edge

sw.bb63.unlock_crit_edge:                         ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then66:                                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  %addr67 = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 0, i32 1
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %addr67, i16 noundef zeroext %9) #9
  br label %unlock

sw.bb70:                                          ; preds = %if.end30
  %31 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vif, align 8
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %32, label %sw.bb70.if.end96_crit_edge [
    i32 2, label %sw.bb70.if.then78_crit_edge
    i32 8, label %sw.bb70.if.then78_crit_edge178
    i32 3, label %sw.bb70.if.then91_crit_edge
    i32 9, label %sw.bb70.if.then91_crit_edge179
  ]

sw.bb70.if.then91_crit_edge179:                   ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91

sw.bb70.if.then91_crit_edge:                      ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91

sw.bb70.if.then78_crit_edge178:                   ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then78

sw.bb70.if.then78_crit_edge:                      ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then78

sw.bb70.if.end96_crit_edge:                       ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.then78:                                        ; preds = %sw.bb70.if.then78_crit_edge, %sw.bb70.if.then78_crit_edge178
  %seq_start82 = getelementptr %struct.rsi_common, ptr %3, i32 0, i32 1, i32 %conv7171.lcssa, i32 2
  br label %if.end96.sink.split

if.then91:                                        ; preds = %sw.bb70.if.then91_crit_edge, %sw.bb70.if.then91_crit_edge179
  %arrayidx94 = getelementptr %struct.rsi_sta, ptr %rsta.0, i32 0, i32 2, i32 %conv31
  br label %if.end96.sink.split

if.end96.sink.split:                              ; preds = %if.then91, %if.then78
  %arrayidx94.sink = phi ptr [ %arrayidx94, %if.then91 ], [ %seq_start82, %if.then78 ]
  %34 = ptrtoint ptr %arrayidx94.sink to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx94.sink, align 2
  br label %if.end96

if.end96:                                         ; preds = %if.end96.sink.split, %sw.bb70.if.end96_crit_edge
  %seq_start.0 = phi i16 [ 0, %sw.bb70.if.end96_crit_edge ], [ %35, %if.end96.sink.split ]
  %call97 = tail call i32 @rsi_send_aggregation_params_frame(ptr noundef %3, i16 noundef zeroext %9, i16 noundef zeroext %seq_start.0, i8 noundef zeroext %conv, i8 noundef zeroext 2, i8 noundef zeroext %sta_id.0) #9
  br label %unlock

sw.default:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.rsi_mac80211_ampdu_action) #9
  br label %unlock

unlock:                                           ; preds = %sw.default, %if.end96, %if.then66, %sw.bb63.unlock_crit_edge, %if.then57, %if.then46, %sw.bb38.unlock_crit_edge, %sw.bb36, %sw.bb, %if.then26
  %status.0 = phi i32 [ -95, %sw.default ], [ %call97, %if.end96 ], [ %call64, %sw.bb63.unlock_crit_edge ], [ 0, %if.then66 ], [ %call37, %sw.bb36 ], [ %call35, %sw.bb ], [ 0, %if.then26 ], [ 1, %sw.bb38.unlock_crit_edge ], [ 1, %if.then57 ], [ 1, %if.then46 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %unlock, %for.cond.1.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %unlock ], [ -95, %for.cond.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_mac80211_rfkill_poll(ptr nocapture noundef readonly %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %fsm_state = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %fsm_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fsm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp.not = icmp ne i32 %5, 9
  %wiphy2 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy2, align 8
  tail call void @wiphy_rfkill_set_hw_state_reason(ptr noundef %7, i1 noundef zeroext %cmp.not, i32 noundef 1) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_mac80211_set_antenna(ptr nocapture noundef readonly %hw, i32 noundef %tx_ant, i32 noundef %rx_ant) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = or i32 %rx_ant, %tx_ant
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %.not = icmp ult i32 %4, 2
  br i1 %.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.58, i32 noundef %tx_ant, i32 noundef %rx_ant) #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.59) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.rsi_mac80211_set_antenna, i32 noundef %tx_ant, i32 noundef %rx_ant) #9
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_ant)
  %tobool.not = icmp eq i32 %tx_ant, 0
  %conv = select i1 %tobool.not, i8 2, i8 3
  %ant_in_use = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 55
  %5 = ptrtoint ptr %ant_in_use to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ant_in_use, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %conv)
  %cmp5.not = icmp eq i8 %6, %conv
  br i1 %cmp5.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then7:                                         ; preds = %if.end
  %call = tail call i32 @rsi_set_antenna(ptr noundef %3, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then7.if.end11_crit_edge, label %fail_set_antenna

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %if.then7.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %cond13 = select i1 %tobool.not, ptr @.str.63, ptr @.str.62
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.61, ptr noundef nonnull %cond13) #9
  %7 = ptrtoint ptr %ant_in_use to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %ant_in_use, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

fail_set_antenna:                                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.rsi_mac80211_set_antenna) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %fail_set_antenna, %if.end11, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %fail_set_antenna ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_mac80211_get_antenna(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %tx_ant, ptr nocapture noundef writeonly %rx_ant) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %ant_in_use = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 55
  %4 = ptrtoint ptr %ant_in_use to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ant_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp eq i8 %5, 3
  %cond = zext i1 %cmp to i32
  %6 = ptrtoint ptr %tx_ant to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %tx_ant, align 4
  %7 = ptrtoint ptr %rx_ant to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rx_ant, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_mac80211_roc(ptr noundef %hw, ptr noundef %vif, ptr noundef %chan, i32 noundef %duration, i32 noundef %type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.65) #9
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %5 to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.rsi_mac80211_roc, i32 noundef %conv, i32 noundef %duration) #9
  %roc_timer = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 73
  %pprev.i.i = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 73, i32 0, i32 1
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.not, label %entry.if.else.i_crit_edge, label %if.then

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.67) #9
  %call3 = tail call i32 @del_timer(ptr noundef %roc_timer) #9
  br label %if.else.i

if.else.i:                                        ; preds = %if.then, %entry.if.else.i_crit_edge
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %duration) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, %call2.i
  %expires = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 73, i32 1
  %9 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %roc_timer) #9
  %call7 = tail call i32 @rsi_band_check(ptr noundef %3, ptr noundef %chan) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.68) #9
  br label %out

if.end10:                                         ; preds = %if.else.i
  %call11 = tail call i32 @rsi_set_channel(ptr noundef %3, ptr noundef %chan) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.69) #9
  br label %out

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %roc_vif = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 74
  %10 = ptrtoint ptr %roc_vif to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vif, ptr %roc_vif, align 4
  tail call void @ieee80211_ready_on_channel(ptr noundef %hw) #9
  %11 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hw_value, align 2
  %conv16 = zext i16 %12 to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.rsi_mac80211_roc, i32 noundef %conv16) #9
  br label %out

out:                                              ; preds = %if.end14, %if.then13, %if.then9
  %status.0 = phi i32 [ -22, %if.then9 ], [ -22, %if.then13 ], [ 0, %if.end14 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_mac80211_cancel_roc(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.71) #9
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %pprev.i.i = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 73, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %roc_timer = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 73
  %call4 = tail call i32 @del_timer(ptr noundef %roc_timer) #9
  tail call fastcc void @rsi_resume_conn_channel(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_mac80211_set_rate_mask(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readonly %mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %ht_mcs = getelementptr [6 x %struct.anon.131], ptr %mask, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %ht_mcs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ht_mcs, align 4
  %conv = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv, 12
  %or = or i32 %shl, %5
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %or) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp286 = icmp eq i32 %call.i, 1
  br i1 %cmp286, label %if.then, label %if.else295

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.cttz.i32(i32 %or, i1 true), !range !215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %iszero = icmp eq i32 %or, 0
  %sub = select i1 %iszero, i32 -1, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub)
  %cmp288 = icmp ult i32 %sub, 12
  %hw_value = getelementptr [12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 %sub, i32 2
  %sub292 = add nsw i32 %sub, -12
  %arrayidx293 = getelementptr [8 x i16], ptr @rsi_mcsrates, i32 0, i32 %sub292
  %.sink.in = select i1 %cmp288, ptr %hw_value, ptr %arrayidx293
  %9 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %9)
  %.sink = load i16, ptr %.sink.in, align 2
  %10 = getelementptr %struct.rsi_common, ptr %3, i32 0, i32 19, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %.sink, ptr %10, align 4
  br label %if.end297

if.else295:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.rsi_common, ptr %3, i32 0, i32 19, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %arrayidx, align 4
  br label %if.end297

if.end297:                                        ; preds = %if.else295, %if.then
  %.sink353 = phi i8 [ 0, %if.else295 ], [ 1, %if.then ]
  %fixed_enabled296 = getelementptr %struct.rsi_common, ptr %3, i32 0, i32 19, i32 0, i32 2
  %13 = ptrtoint ptr %fixed_enabled296 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink353, ptr %fixed_enabled296, align 2
  %arrayidx2.1 = getelementptr [6 x %struct.anon.131], ptr %mask, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.1, align 4
  %ht_mcs.1 = getelementptr [6 x %struct.anon.131], ptr %mask, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %ht_mcs.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ht_mcs.1, align 4
  %conv.1 = zext i8 %17 to i32
  %shl.1 = shl nuw nsw i32 %conv.1, 12
  %or.1 = or i32 %shl.1, %15
  %call.i.1 = tail call i32 @__sw_hweight32(i32 noundef %or.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.1)
  %cmp286.1 = icmp eq i32 %call.i.1, 1
  br i1 %cmp286.1, label %if.then.1, label %if.else295.1

if.else295.1:                                     ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.1 = getelementptr %struct.rsi_common, ptr %3, i32 0, i32 19, i32 1
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.1, ptr %arrayidx.1, align 4
  br label %if.end297.1

if.then.1:                                        ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #11
  %19 = tail call i32 @llvm.cttz.i32(i32 %or.1, i1 true), !range !215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.1)
  %iszero.1 = icmp eq i32 %or.1, 0
  %sub.1 = select i1 %iszero.1, i32 -1, i32 %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.1)
  %cmp288.1 = icmp ult i32 %sub.1, 12
  %hw_value.1 = getelementptr [12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 %sub.1, i32 2
  %sub292.1 = add nsw i32 %sub.1, -12
  %arrayidx293.1 = getelementptr [8 x i16], ptr @rsi_mcsrates, i32 0, i32 %sub292.1
  %.sink.in.1 = select i1 %cmp288.1, ptr %hw_value.1, ptr %arrayidx293.1
  %20 = ptrtoint ptr %.sink.in.1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %.sink.1 = load i16, ptr %.sink.in.1, align 2
  %21 = getelementptr %struct.rsi_common, ptr %3, i32 0, i32 19, i32 1, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %.sink.1, ptr %21, align 4
  br label %if.end297.1

if.end297.1:                                      ; preds = %if.then.1, %if.else295.1
  %.sink353.1 = phi i8 [ 0, %if.else295.1 ], [ 1, %if.then.1 ]
  %fixed_enabled296.1 = getelementptr %struct.rsi_common, ptr %3, i32 0, i32 19, i32 1, i32 2
  %23 = ptrtoint ptr %fixed_enabled296.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink353.1, ptr %fixed_enabled296.1, align 2
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_core_xmit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_rfkill_start_polling(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_pause_polling(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_set_vap_capabilities(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_enable_ps(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_send_block_unblock_frame(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_send_radio_params_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_inform_bss_status(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_conf_uapsd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsi_hal_key_config(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %key, ptr noundef %sta) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 8
  %4 = and i16 %3, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %. = select i1 %tobool.not, i8 2, i8 1
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %5 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cipher, align 8
  %conv1 = zext i8 %. to i32
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %7 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %keylen, align 2
  %conv2 = zext i8 %8 to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.rsi_hal_key_config, i32 noundef %6, i32 noundef %conv1, i32 noundef %conv2) #9
  %9 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vif, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %10, label %if.else18 [
    i32 3, label %entry.if.then7_crit_edge
    i32 9, label %entry.if.then7_crit_edge105
  ]

entry.if.then7_crit_edge105:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

entry.if.then7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %entry.if.then7_crit_edge, %entry.if.then7_crit_edge105
  %tobool8.not = icmp eq ptr %sta, null
  br i1 %tobool8.not, label %if.then7.if.end15_crit_edge, label %if.then9

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then9:                                         ; preds = %if.then7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %call = tail call ptr @rsi_find_sta(ptr noundef %13, ptr noundef %addr) #9
  %tobool11.not = icmp eq ptr %call, null
  br i1 %tobool11.not, label %if.then9.if.end15_crit_edge, label %if.then12

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %sta_id13 = getelementptr inbounds %struct.rsi_sta, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %sta_id13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sta_id13, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9.if.end15_crit_edge, %if.then7.if.end15_crit_edge
  %sta_id.0 = phi i16 [ %15, %if.then12 ], [ 0, %if.then9.if.end15_crit_edge ], [ 0, %if.then7.if.end15_crit_edge ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %key17 = getelementptr inbounds %struct.rsi_common, ptr %17, i32 0, i32 70
  %18 = ptrtoint ptr %key17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %key, ptr %key17, align 4
  br label %if.end38

if.else18:                                        ; preds = %entry
  %19 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cipher, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %20, label %if.else18.if.end38_crit_edge [
    i32 1027077, label %if.else18.if.then26_crit_edge
    i32 1027073, label %if.else18.if.then26_crit_edge106
  ]

if.else18.if.then26_crit_edge106:                 ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.else18.if.then26_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.else18.if.end38_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then26:                                        ; preds = %if.else18.if.then26_crit_edge, %if.else18.if.then26_crit_edge106
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %key28 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %24 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %keylen, align 2
  %conv31 = zext i8 %25 to i16
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %26 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %keyidx, align 1
  %call33 = tail call i32 @rsi_hal_load_key(ptr noundef %23, ptr noundef %key28, i16 noundef zeroext %conv31, i8 noundef zeroext 1, i8 noundef zeroext %27, i32 noundef %20, i16 noundef signext 0, ptr noundef %vif) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then26.if.end38_crit_edge, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26.if.end38_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.end38:                                         ; preds = %if.then26.if.end38_crit_edge, %if.else18.if.end38_crit_edge, %if.end15
  %sta_id.1 = phi i16 [ %sta_id.0, %if.end15 ], [ 0, %if.then26.if.end38_crit_edge ], [ 0, %if.else18.if.end38_crit_edge ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %key40 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %30 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %keylen, align 2
  %conv43 = zext i8 %31 to i16
  %keyidx44 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %32 = ptrtoint ptr %keyidx44 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %keyidx44, align 1
  %34 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cipher, align 8
  %call46 = tail call i32 @rsi_hal_load_key(ptr noundef %29, ptr noundef %key40, i16 noundef zeroext %conv43, i8 noundef zeroext %., i8 noundef zeroext %33, i32 noundef %35, i16 noundef signext %sta_id.1, ptr noundef %vif) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end49:                                         ; preds = %if.end38
  %36 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp51 = icmp eq i32 %37, 2
  br i1 %cmp51, label %land.lhs.true, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end49
  %38 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cipher, align 8
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %39, label %land.lhs.true.cleanup_crit_edge [
    i32 1027077, label %land.lhs.true.if.then60_crit_edge
    i32 1027073, label %land.lhs.true.if.then60_crit_edge107
  ]

land.lhs.true.if.then60_crit_edge107:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60

land.lhs.true.if.then60_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then60:                                        ; preds = %land.lhs.true.if.then60_crit_edge, %land.lhs.true.if.then60_crit_edge107
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call62 = tail call i32 @rsi_send_block_unblock_frame(ptr noundef %42, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then64, label %if.then60.cleanup_crit_edge

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then64:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %hw_data_qs_blocked = getelementptr inbounds %struct.rsi_common, ptr %44, i32 0, i32 43
  %45 = ptrtoint ptr %hw_data_qs_blocked to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %hw_data_qs_blocked, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.then60.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then26.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.then26.cleanup_crit_edge ], [ %call46, %if.end38.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then60.cleanup_crit_edge ], [ 0, %if.then64 ], [ 0, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsi_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_hal_load_key(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_send_bgscan_params(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_send_bgscan_probe_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_start_tx_ba_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_send_aggregation_params_frame(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_rfkill_set_hw_state_reason(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_set_antenna(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ready_on_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_to_ieee80211_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone willreturn }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202}
!llvm.module.flags = !{!204, !205, !206, !207, !208, !209, !210, !211}
!llvm.ident = !{!212}

!0 = !{ptr @rsi_rates, !1, !"rsi_rates", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 106, i32 23}
!2 = !{ptr @rsi_mcsrates, !3, !"rsi_mcsrates", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 121, i32 11}
!4 = !{ptr @__ksymtab_rsi_mac80211_detach, !5, !"__ksymtab_rsi_mac80211_detach", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 327, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 345, i32 21}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1751, i32 21}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1869, i32 21}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1876, i32 6}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1877, i32 21}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1884, i32 21}
!18 = !{ptr @__func__.rsi_config_wowlan, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1884, i32 51}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1889, i32 4}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1893, i32 21}
!24 = !{ptr @__ksymtab_rsi_config_wowlan, !25, !"__ksymtab_rsi_config_wowlan", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1911, i32 1}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 2005, i32 21}
!28 = !{ptr @__func__.rsi_mac80211_attach, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 2005, i32 57}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 2009, i32 21}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 2036, i32 31}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 2074, i32 20}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1290, i32 21}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 772, i32 21}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1847, i32 21}
!42 = !{ptr @mac80211_ops, !43, !"mac80211_ops", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1962, i32 35}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 396, i32 20}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 422, i32 20}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1919, i32 21}
!50 = !{ptr @__func__.rsi_mac80211_suspend, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1919, i32 47}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1922, i32 21}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1939, i32 21}
!56 = !{ptr @__func__.rsi_mac80211_resume, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1939, i32 46}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 475, i32 4}
!60 = !{ptr @__func__.rsi_mac80211_add_interface, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 475, i32 45}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 494, i32 21}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 505, i32 21}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 538, i32 21}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 549, i32 21}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 680, i32 22}
!72 = !{ptr @__func__.rsi_mac80211_config, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 680, i32 49}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 718, i32 22}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 721, i32 5}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 587, i32 3}
!80 = !{ptr @__func__.rsi_channel_change, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 588, i32 3}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 606, i32 23}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 619, i32 23}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 641, i32 21}
!88 = !{ptr @__func__.rsi_config_power, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 641, i32 57}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 646, i32 3}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 799, i32 22}
!94 = !{ptr @__func__.rsi_mac80211_bss_info_changed, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 800, i32 4}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 822, i32 24}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 834, i32 22}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 840, i32 22}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 860, i32 23}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 863, i32 23}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1061, i32 21}
!108 = !{ptr @__func__.rsi_mac80211_set_key, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1061, i32 42}
!110 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1065, i32 21}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 975, i32 20}
!114 = !{ptr @__func__.rsi_hal_key_config, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 976, i32 3}
!116 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 242, i32 21}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 266, i32 23}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 282, i32 21}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 290, i32 22}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1414, i32 21}
!126 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1426, i32 22}
!128 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1439, i32 24}
!130 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1451, i32 5}
!132 = !{ptr @__func__.rsi_mac80211_sta_add, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1452, i32 5}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1464, i32 23}
!136 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1467, i32 23}
!138 = !{ptr @.str.52, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1529, i32 21}
!140 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1559, i32 22}
!142 = !{ptr @__func__.rsi_mac80211_sta_remove, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1559, i32 48}
!144 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 912, i32 3}
!146 = !{ptr @__func__.rsi_mac80211_conf_tx, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 913, i32 3}
!148 = !{ptr @.str.55, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1123, i32 22}
!150 = !{ptr @.str.56, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1131, i32 3}
!152 = !{ptr @__func__.rsi_mac80211_ampdu_action, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1132, i32 3}
!154 = !{ptr @.str.57, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1192, i32 21}
!156 = !{ptr @.str.58, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1600, i32 4}
!158 = !{ptr @.str.59, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1603, i32 4}
!160 = !{ptr @.str.60, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1607, i32 21}
!162 = !{ptr @__func__.rsi_mac80211_set_antenna, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1608, i32 4}
!164 = !{ptr @.str.61, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1617, i32 21}
!166 = !{ptr @.str.62, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1618, i32 12}
!168 = !{ptr @.str.63, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1618, i32 20}
!170 = !{ptr @.str.64, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1627, i32 20}
!172 = !{ptr @.str.65, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1771, i32 21}
!174 = !{ptr @.str.66, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1774, i32 21}
!176 = !{ptr @__func__.rsi_mac80211_roc, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1775, i32 3}
!178 = !{ptr @.str.67, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1778, i32 22}
!180 = !{ptr @.str.68, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1786, i32 21}
!182 = !{ptr @.str.69, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1793, i32 21}
!184 = !{ptr @.str.70, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1800, i32 21}
!186 = !{ptr @.str.71, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1815, i32 21}
!188 = !{ptr @rsi_2ghz_channels, !189, !"rsi_2ghz_channels", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 24, i32 39}
!190 = !{ptr @rsi_5ghz_channels, !191, !"rsi_5ghz_channels", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 55, i32 39}
!192 = !{ptr @rsi_max_ap_stas, !193, !"rsi_max_ap_stas", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 126, i32 18}
!194 = !{ptr @.str.72, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1685, i32 21}
!196 = !{ptr @.str.73, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1701, i32 21}
!198 = !{ptr @rsi_wowlan_support, !199, !"rsi_wowlan_support", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 1832, i32 42}
!200 = !{ptr @rsi_iface_combinations, !201, !"rsi_iface_combinations", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 160, i32 49}
!202 = !{ptr @rsi_iface_limits, !203, !"rsi_iface_limits", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/rsi/rsi_91x_mac80211.c", i32 143, i32 43}
!204 = !{i32 1, !"wchar_size", i32 2}
!205 = !{i32 1, !"min_enum_size", i32 4}
!206 = !{i32 8, !"branch-target-enforcement", i32 0}
!207 = !{i32 8, !"sign-return-address", i32 0}
!208 = !{i32 8, !"sign-return-address-all", i32 0}
!209 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!210 = !{i32 7, !"uwtable", i32 1}
!211 = !{i32 7, !"frame-pointer", i32 2}
!212 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!213 = !{i8 0, i8 2}
!214 = !{!"branch_weights", i32 1, i32 2000}
!215 = !{i32 0, i32 33}
