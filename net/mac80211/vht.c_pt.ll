; ModuleID = '/llk/IR_all_yes/net/mac80211/vht.c_pt.bc'
source_filename = "../net/mac80211/vht.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ieee80211_update_mu_groups\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_update_mu_groups\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_update_mu_groups\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_update_mu_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_update_mu_groups\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_update_mu_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.160, %struct.anon.194, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.126, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.126 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.127 }
%union.anon.127 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.list_head = type { ptr, ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.160 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.anon.194 = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
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
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.148, [17 x i16], %struct.anon.149, %struct.anon.150, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, ptr, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.148 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.149 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.150 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.sta_opmode_info = type { i32, i32, i32, i8 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.161 }
%union.anon.161 = type { %struct.anon.167, [16 x i8] }
%struct.anon.167 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.125, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.possible_net_t = type { ptr }
%struct.anon.125 = type { i64, i64, i8 }

@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: Ignoring VHT IE from %pM due to invalid rx_mcs_map\0A\00", [40 x i8] zeroinitializer }, align 32
@ieee80211_chan_width_to_rx_bw.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/mac80211/vht.c\00", [45 x i8] zeroinitializer }, align 32
@ieee80211_update_mu_groups.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ieee80211_update_mu_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_update_mu_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_update_mu_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_update_mu_groups to i32), ptr @__kstrtab_ieee80211_update_mu_groups, ptr @__kstrtabns_ieee80211_update_mu_groups }, section "___ksymtab_gpl+ieee80211_update_mu_groups", align 4
@switch.table.ieee80211_sta_cur_vht_bw = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 1, i32 2, i32 3, i32 3], [40 x i8] zeroinitializer }, align 32
@switch.table.ieee80211_sta_cur_vht_bw.2 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 1, i32 2, i32 3, i32 3], [40 x i8] zeroinitializer }, align 32
@switch.table.ieee80211_chan_width_to_rx_bw = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 1, i32 2, i32 3, i32 3], [40 x i8] zeroinitializer }, align 32
@switch.table.ieee80211_get_vht_mask_from_cap = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 255, i16 511, i16 1023], [26 x i8] zeroinitializer }, align 32
@switch.table.ieee80211_get_vht_mask_from_cap.3 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 255, i16 511, i16 1023], [26 x i8] zeroinitializer }, align 32
@switch.table.ieee80211_get_vht_mask_from_cap.4 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 255, i16 511, i16 1023], [26 x i8] zeroinitializer }, align 32
@switch.table.ieee80211_get_vht_mask_from_cap.5 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 255, i16 511, i16 1023], [26 x i8] zeroinitializer }, align 32
@switch.table.ieee80211_get_vht_mask_from_cap.6 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 255, i16 511, i16 1023], [26 x i8] zeroinitializer }, align 32
@switch.table.ieee80211_get_vht_mask_from_cap.7 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 255, i16 511, i16 1023], [26 x i8] zeroinitializer }, align 32
@switch.table.ieee80211_get_vht_mask_from_cap.8 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 255, i16 511, i16 1023], [26 x i8] zeroinitializer }, align 32
@switch.table.ieee80211_get_vht_mask_from_cap.9 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 255, i16 511, i16 1023], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 289, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [22 x i8] c"../net/mac80211/vht.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 449, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [38 x i8] c"switch.table.ieee80211_sta_cur_vht_bw\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [40 x i8] c"switch.table.ieee80211_sta_cur_vht_bw.2\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [43 x i8] c"switch.table.ieee80211_chan_width_to_rx_bw\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [45 x i8] c"switch.table.ieee80211_get_vht_mask_from_cap\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [47 x i8] c"switch.table.ieee80211_get_vht_mask_from_cap.3\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [47 x i8] c"switch.table.ieee80211_get_vht_mask_from_cap.4\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [47 x i8] c"switch.table.ieee80211_get_vht_mask_from_cap.5\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [47 x i8] c"switch.table.ieee80211_get_vht_mask_from_cap.6\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [47 x i8] c"switch.table.ieee80211_get_vht_mask_from_cap.7\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [47 x i8] c"switch.table.ieee80211_get_vht_mask_from_cap.8\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [47 x i8] c"switch.table.ieee80211_get_vht_mask_from_cap.9\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_ieee80211_update_mu_groups, ptr @.str, ptr @.str.1, ptr @switch.table.ieee80211_sta_cur_vht_bw, ptr @switch.table.ieee80211_sta_cur_vht_bw.2, ptr @switch.table.ieee80211_chan_width_to_rx_bw, ptr @switch.table.ieee80211_get_vht_mask_from_cap, ptr @switch.table.ieee80211_get_vht_mask_from_cap.3, ptr @switch.table.ieee80211_get_vht_mask_from_cap.4, ptr @switch.table.ieee80211_get_vht_mask_from_cap.5, ptr @switch.table.ieee80211_get_vht_mask_from_cap.6, ptr @switch.table.ieee80211_get_vht_mask_from_cap.7, ptr @switch.table.ieee80211_get_vht_mask_from_cap.8, ptr @switch.table.ieee80211_get_vht_mask_from_cap.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_sta_cur_vht_bw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_sta_cur_vht_bw.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_chan_width_to_rx_bw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_get_vht_mask_from_cap to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_get_vht_mask_from_cap.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_get_vht_mask_from_cap.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_get_vht_mask_from_cap.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_get_vht_mask_from_cap.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_get_vht_mask_from_cap.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_get_vht_mask_from_cap.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_get_vht_mask_from_cap.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_apply_vhtcap_overrides(ptr noundef readonly %sdata, ptr nocapture noundef %vht_cap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vht_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vht_cap, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %vht_capa_mask.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 0, i32 88
  %4 = ptrtoint ptr %vht_capa_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vht_capa_mask.i, align 8
  %and.i = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end2.__check_vhtcap_disable.exit_crit_edge, label %land.lhs.true.i

if.end2.__check_vhtcap_disable.exit_crit_edge:    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %__check_vhtcap_disable.exit

land.lhs.true.i:                                  ; preds = %if.end2
  %vht_capa.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 0, i32 76
  %6 = ptrtoint ptr %vht_capa.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vht_capa.i, align 4
  %and3.i = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.then.i, label %land.lhs.true.i.__check_vhtcap_disable.exit_crit_edge

land.lhs.true.i.__check_vhtcap_disable.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__check_vhtcap_disable.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %cap.i = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %vht_cap, i32 0, i32 1
  %8 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cap.i, align 4
  %and5.i = and i32 %9, -17
  store i32 %and5.i, ptr %cap.i, align 4
  br label %__check_vhtcap_disable.exit

__check_vhtcap_disable.exit:                      ; preds = %if.then.i, %land.lhs.true.i.__check_vhtcap_disable.exit_crit_edge, %if.end2.__check_vhtcap_disable.exit_crit_edge
  %10 = ptrtoint ptr %vht_capa_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vht_capa_mask.i, align 8
  %and.i208 = and i32 %11, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i208)
  %tobool.not.i209 = icmp eq i32 %and.i208, 0
  br i1 %tobool.not.i209, label %__check_vhtcap_disable.exit.__check_vhtcap_disable.exit217_crit_edge, label %land.lhs.true.i213

__check_vhtcap_disable.exit.__check_vhtcap_disable.exit217_crit_edge: ; preds = %__check_vhtcap_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__check_vhtcap_disable.exit217

land.lhs.true.i213:                               ; preds = %__check_vhtcap_disable.exit
  %vht_capa.i210 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 0, i32 76
  %12 = ptrtoint ptr %vht_capa.i210 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vht_capa.i210, align 4
  %and3.i211 = and i32 %13, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i211)
  %tobool4.not.i212 = icmp eq i32 %and3.i211, 0
  br i1 %tobool4.not.i212, label %if.then.i216, label %land.lhs.true.i213.__check_vhtcap_disable.exit217_crit_edge

land.lhs.true.i213.__check_vhtcap_disable.exit217_crit_edge: ; preds = %land.lhs.true.i213
  call void @__sanitizer_cov_trace_pc() #11
  br label %__check_vhtcap_disable.exit217

if.then.i216:                                     ; preds = %land.lhs.true.i213
  call void @__sanitizer_cov_trace_pc() #11
  %cap.i214 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %vht_cap, i32 0, i32 1
  %14 = ptrtoint ptr %cap.i214 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cap.i214, align 4
  %and5.i215 = and i32 %15, -33
  store i32 %and5.i215, ptr %cap.i214, align 4
  br label %__check_vhtcap_disable.exit217

__check_vhtcap_disable.exit217:                   ; preds = %if.then.i216, %land.lhs.true.i213.__check_vhtcap_disable.exit217_crit_edge, %__check_vhtcap_disable.exit.__check_vhtcap_disable.exit217_crit_edge
  %16 = ptrtoint ptr %vht_capa_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vht_capa_mask.i, align 8
  %and.i219 = and i32 %17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i219)
  %tobool.not.i220 = icmp eq i32 %and.i219, 0
  br i1 %tobool.not.i220, label %__check_vhtcap_disable.exit217.__check_vhtcap_disable.exit228_crit_edge, label %land.lhs.true.i224

__check_vhtcap_disable.exit217.__check_vhtcap_disable.exit228_crit_edge: ; preds = %__check_vhtcap_disable.exit217
  call void @__sanitizer_cov_trace_pc() #11
  br label %__check_vhtcap_disable.exit228

land.lhs.true.i224:                               ; preds = %__check_vhtcap_disable.exit217
  %vht_capa.i221 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 0, i32 76
  %18 = ptrtoint ptr %vht_capa.i221 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vht_capa.i221, align 4
  %and3.i222 = and i32 %19, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i222)
  %tobool4.not.i223 = icmp eq i32 %and3.i222, 0
  br i1 %tobool4.not.i223, label %if.then.i227, label %land.lhs.true.i224.__check_vhtcap_disable.exit228thread-pre-split_crit_edge

land.lhs.true.i224.__check_vhtcap_disable.exit228thread-pre-split_crit_edge: ; preds = %land.lhs.true.i224
  call void @__sanitizer_cov_trace_pc() #11
  br label %__check_vhtcap_disable.exit228thread-pre-split

if.then.i227:                                     ; preds = %land.lhs.true.i224
  call void @__sanitizer_cov_trace_pc() #11
  %cap.i225 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %vht_cap, i32 0, i32 1
  %20 = ptrtoint ptr %cap.i225 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cap.i225, align 4
  %and5.i226 = and i32 %21, -65
  store i32 %and5.i226, ptr %cap.i225, align 4
  br label %__check_vhtcap_disable.exit228thread-pre-split

__check_vhtcap_disable.exit228thread-pre-split:   ; preds = %if.then.i227, %land.lhs.true.i224.__check_vhtcap_disable.exit228thread-pre-split_crit_edge
  %22 = ptrtoint ptr %vht_capa_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %vht_capa_mask.i, align 8
  br label %__check_vhtcap_disable.exit228

__check_vhtcap_disable.exit228:                   ; preds = %__check_vhtcap_disable.exit228thread-pre-split, %__check_vhtcap_disable.exit217.__check_vhtcap_disable.exit228_crit_edge
  %23 = phi i32 [ %.pr, %__check_vhtcap_disable.exit228thread-pre-split ], [ %17, %__check_vhtcap_disable.exit217.__check_vhtcap_disable.exit228_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %tobool.not.i231 = icmp sgt i32 %23, -1
  br i1 %tobool.not.i231, label %__check_vhtcap_disable.exit228.__check_vhtcap_disable.exit239_crit_edge, label %land.lhs.true.i235

__check_vhtcap_disable.exit228.__check_vhtcap_disable.exit239_crit_edge: ; preds = %__check_vhtcap_disable.exit228
  call void @__sanitizer_cov_trace_pc() #11
  br label %__check_vhtcap_disable.exit239

land.lhs.true.i235:                               ; preds = %__check_vhtcap_disable.exit228
  %vht_capa.i232 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 0, i32 76
  %24 = ptrtoint ptr %vht_capa.i232 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vht_capa.i232, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %tobool4.not.i234 = icmp sgt i32 %25, -1
  br i1 %tobool4.not.i234, label %if.then.i238, label %land.lhs.true.i235.__check_vhtcap_disable.exit239_crit_edge

land.lhs.true.i235.__check_vhtcap_disable.exit239_crit_edge: ; preds = %land.lhs.true.i235
  call void @__sanitizer_cov_trace_pc() #11
  br label %__check_vhtcap_disable.exit239

if.then.i238:                                     ; preds = %land.lhs.true.i235
  call void @__sanitizer_cov_trace_pc() #11
  %cap.i236 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %vht_cap, i32 0, i32 1
  %26 = ptrtoint ptr %cap.i236 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cap.i236, align 4
  %and5.i237 = and i32 %27, -129
  store i32 %and5.i237, ptr %cap.i236, align 4
  br label %__check_vhtcap_disable.exit239

__check_vhtcap_disable.exit239:                   ; preds = %if.then.i238, %land.lhs.true.i235.__check_vhtcap_disable.exit239_crit_edge, %__check_vhtcap_disable.exit228.__check_vhtcap_disable.exit239_crit_edge
  %28 = ptrtoint ptr %vht_capa_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vht_capa_mask.i, align 8
  %and.i241 = and i32 %29, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i241)
  %tobool.not.i242 = icmp eq i32 %and.i241, 0
  br i1 %tobool.not.i242, label %__check_vhtcap_disable.exit239.__check_vhtcap_disable.exit250_crit_edge, label %land.lhs.true.i246

__check_vhtcap_disable.exit239.__check_vhtcap_disable.exit250_crit_edge: ; preds = %__check_vhtcap_disable.exit239
  call void @__sanitizer_cov_trace_pc() #11
  br label %__check_vhtcap_disable.exit250

land.lhs.true.i246:                               ; preds = %__check_vhtcap_disable.exit239
  %vht_capa.i243 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 0, i32 76
  %30 = ptrtoint ptr %vht_capa.i243 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vht_capa.i243, align 4
  %and3.i244 = and i32 %31, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i244)
  %tobool4.not.i245 = icmp eq i32 %and3.i244, 0
  br i1 %tobool4.not.i245, label %if.then.i249, label %land.lhs.true.i246.__check_vhtcap_disable.exit250_crit_edge

land.lhs.true.i246.__check_vhtcap_disable.exit250_crit_edge: ; preds = %land.lhs.true.i246
  call void @__sanitizer_cov_trace_pc() #11
  br label %__check_vhtcap_disable.exit250

if.then.i249:                                     ; preds = %land.lhs.true.i246
  call void @__sanitizer_cov_trace_pc() #11
  %cap.i247 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %vht_cap, i32 0, i32 1
  %32 = ptrtoint ptr %cap.i247 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cap.i247, align 4
  %and5.i248 = and i32 %33, -2049
  store i32 %and5.i248, ptr %cap.i247, align 4
  br label %__check_vhtcap_disable.exit250

__check_vhtcap_disable.exit250:                   ; preds = %if.then.i249, %land.lhs.true.i246.__check_vhtcap_disable.exit250_crit_edge, %__check_vhtcap_disable.exit239.__check_vhtcap_disable.exit250_crit_edge
  %34 = ptrtoint ptr %vht_capa_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vht_capa_mask.i, align 8
  %and.i252 = and i32 %35, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i252)
  %tobool.not.i253 = icmp eq i32 %and.i252, 0
  br i1 %tobool.not.i253, label %__check_vhtcap_disable.exit250.__check_vhtcap_disable.exit261_crit_edge, label %land.lhs.true.i257

__check_vhtcap_disable.exit250.__check_vhtcap_disable.exit261_crit_edge: ; preds = %__check_vhtcap_disable.exit250
  call void @__sanitizer_cov_trace_pc() #11
  br label %__check_vhtcap_disable.exit261

land.lhs.true.i257:                               ; preds = %__check_vhtcap_disable.exit250
  %vht_capa.i254 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 0, i32 76
  %36 = ptrtoint ptr %vht_capa.i254 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vht_capa.i254, align 4
  %and3.i255 = and i32 %37, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i255)
  %tobool4.not.i256 = icmp eq i32 %and3.i255, 0
  br i1 %tobool4.not.i256, label %if.then.i260, label %land.lhs.true.i257.__check_vhtcap_disable.exit261_crit_edge

land.lhs.true.i257.__check_vhtcap_disable.exit261_crit_edge: ; preds = %land.lhs.true.i257
  call void @__sanitizer_cov_trace_pc() #11
  br label %__check_vhtcap_disable.exit261

if.then.i260:                                     ; preds = %land.lhs.true.i257
  call void @__sanitizer_cov_trace_pc() #11
  %cap.i258 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %vht_cap, i32 0, i32 1
  %38 = ptrtoint ptr %cap.i258 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cap.i258, align 4
  %and5.i259 = and i32 %39, -4097
  store i32 %and5.i259, ptr %cap.i258, align 4
  br label %__check_vhtcap_disable.exit261

__check_vhtcap_disable.exit261:                   ; preds = %if.then.i260, %land.lhs.true.i257.__check_vhtcap_disable.exit261_crit_edge, %__check_vhtcap_disable.exit250.__check_vhtcap_disable.exit261_crit_edge
  %40 = ptrtoint ptr %vht_capa_mask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vht_capa_mask.i, align 8
  %and.i263 = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i263)
  %tobool.not.i264 = icmp eq i32 %and.i263, 0
  br i1 %tobool.not.i264, label %__check_vhtcap_disable.exit261.__check_vhtcap_disable.exit272_crit_edge, label %land.lhs.true.i268

__check_vhtcap_disable.exit261.__check_vhtcap_disable.exit272_crit_edge: ; preds = %__check_vhtcap_disable.exit261
  call void @__sanitizer_cov_trace_pc() #11
  br label %__check_vhtcap_disable.exit272

land.lhs.true.i268:                               ; preds = %__check_vhtcap_disable.exit261
  %vht_capa.i265 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 0, i32 76
  %42 = ptrtoint ptr %vht_capa.i265 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vht_capa.i265, align 4
  %and3.i266 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i266)
  %tobool4.not.i267 = icmp eq i32 %and3.i266, 0
  br i1 %tobool4.not.i267, label %if.then.i271, label %land.lhs.true.i268.__check_vhtcap_disable.exit272_crit_edge

land.lhs.true.i268.__check_vhtcap_disable.exit272_crit_edge: ; preds = %land.lhs.true.i268
  call void @__sanitizer_cov_trace_pc() #11
  br label %__check_vhtcap_disable.exit272

if.then.i271:                                     ; preds = %land.lhs.true.i268
  call void @__sanitizer_cov_trace_pc() #11
  %cap.i269 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %vht_cap, i32 0, i32 1
  %44 = ptrtoint ptr %cap.i269 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cap.i269, align 4
  %and5.i270 = and i32 %45, -268435457
  store i32 %and5.i270, ptr %cap.i269, align 4
  br label %__check_vhtcap_disable.exit272

__check_vhtcap_disable.exit272:                   ; preds = %if.then.i271, %land.lhs.true.i268.__check_vhtcap_disable.exit272_crit_edge, %__check_vhtcap_disable.exit261.__check_vhtcap_disable.exit272_crit_edge
  %46 = ptrtoint ptr %vht_capa_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vht_capa_mask.i, align 8
  %and.i274 = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i274)
  %tobool.not.i275 = icmp eq i32 %and.i274, 0
  br i1 %tobool.not.i275, label %__check_vhtcap_disable.exit272.__check_vhtcap_disable.exit283_crit_edge, label %land.lhs.true.i279

__check_vhtcap_disable.exit272.__check_vhtcap_disable.exit283_crit_edge: ; preds = %__check_vhtcap_disable.exit272
  call void @__sanitizer_cov_trace_pc() #11
  br label %__check_vhtcap_disable.exit283

land.lhs.true.i279:                               ; preds = %__check_vhtcap_disable.exit272
  %vht_capa.i276 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 0, i32 76
  %48 = ptrtoint ptr %vht_capa.i276 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vht_capa.i276, align 4
  %and3.i277 = and i32 %49, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i277)
  %tobool4.not.i278 = icmp eq i32 %and3.i277, 0
  br i1 %tobool4.not.i278, label %if.then.i282, label %land.lhs.true.i279.__check_vhtcap_disable.exit283_crit_edge

land.lhs.true.i279.__check_vhtcap_disable.exit283_crit_edge: ; preds = %land.lhs.true.i279
  call void @__sanitizer_cov_trace_pc() #11
  br label %__check_vhtcap_disable.exit283

if.then.i282:                                     ; preds = %land.lhs.true.i279
  call void @__sanitizer_cov_trace_pc() #11
  %cap.i280 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %vht_cap, i32 0, i32 1
  %50 = ptrtoint ptr %cap.i280 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cap.i280, align 4
  %and5.i281 = and i32 %51, -536870913
  store i32 %and5.i281, ptr %cap.i280, align 4
  br label %__check_vhtcap_disable.exit283

__check_vhtcap_disable.exit283:                   ; preds = %if.then.i282, %land.lhs.true.i279.__check_vhtcap_disable.exit283_crit_edge, %__check_vhtcap_disable.exit272.__check_vhtcap_disable.exit283_crit_edge
  %52 = ptrtoint ptr %vht_capa_mask.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vht_capa_mask.i, align 8
  %and = and i32 %53, 32771
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %__check_vhtcap_disable.exit283.if.end17_crit_edge, label %if.then4

__check_vhtcap_disable.exit283.if.end17_crit_edge: ; preds = %__check_vhtcap_disable.exit283
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then4:                                         ; preds = %__check_vhtcap_disable.exit283
  %vht_capa = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 0, i32 76
  %54 = ptrtoint ptr %vht_capa to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vht_capa, align 4
  %56 = and i32 %55, 32771
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %shr = lshr exact i32 %57, 23
  %cap8 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %vht_cap, i32 0, i32 1
  %58 = ptrtoint ptr %cap8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cap8, align 4
  %and9 = lshr i32 %59, 23
  %shr10 = and i32 %and9, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr10)
  %cmp11 = icmp ult i32 %shr, %shr10
  br i1 %cmp11, label %if.then12, label %if.then4.if.end17_crit_edge

if.then4.if.end17_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then12:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %and14 = and i32 %59, -58720257
  %or = or i32 %and14, %57
  %60 = ptrtoint ptr %cap8 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or, ptr %cap8, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.then4.if.end17_crit_edge, %__check_vhtcap_disable.exit283.if.end17_crit_edge
  %supp_mcs = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 0, i32 92
  %61 = ptrtoint ptr %supp_mcs to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %supp_mcs, align 4
  %63 = tail call i16 @llvm.bswap.i16(i16 %62)
  %supp_mcs22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 0, i32 80
  %64 = ptrtoint ptr %supp_mcs22 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %supp_mcs22, align 4
  %conv = zext i16 %63 to i32
  %66 = and i16 %65, %62
  %67 = tail call i16 @llvm.bswap.i16(i16 %66)
  %vht_mcs = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %vht_cap, i32 0, i32 2
  %68 = ptrtoint ptr %vht_mcs to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %vht_mcs, align 4
  %70 = tail call i16 @llvm.bswap.i16(i16 %69)
  %tx_mcs_map = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 0, i32 96
  %71 = ptrtoint ptr %tx_mcs_map to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %tx_mcs_map, align 4
  %73 = tail call i16 @llvm.bswap.i16(i16 %72)
  %tx_mcs_map34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 0, i32 84
  %74 = ptrtoint ptr %tx_mcs_map34 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %tx_mcs_map34, align 4
  %conv35 = zext i16 %73 to i32
  %76 = and i16 %75, %72
  %77 = tail call i16 @llvm.bswap.i16(i16 %76)
  %tx_mcs_map40 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %vht_cap, i32 0, i32 2, i32 2
  %78 = ptrtoint ptr %tx_mcs_map40 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %tx_mcs_map40, align 4
  %80 = tail call i16 @llvm.bswap.i16(i16 %79)
  %conv48 = zext i16 %67 to i32
  %conv90 = zext i16 %77 to i32
  br label %for.body

for.body:                                         ; preds = %if.end129.for.body_crit_edge, %if.end17
  %i.0286 = phi i32 [ 0, %if.end17 ], [ %inc, %if.end129.for.body_crit_edge ]
  %txmcs_cap.0285 = phi i16 [ %80, %if.end17 ], [ %txmcs_cap.1, %if.end129.for.body_crit_edge ]
  %rxmcs_cap.0284 = phi i16 [ %70, %if.end17 ], [ %rxmcs_cap.1, %if.end129.for.body_crit_edge ]
  %mul = shl nuw i32 %i.0286, 1
  %81 = shl i32 3, %mul
  %82 = and i32 %81, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool59.not = icmp eq i32 %82, 0
  br i1 %tobool59.not, label %for.body.if.end84_crit_edge, label %land.lhs.true

for.body.if.end84_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

land.lhs.true:                                    ; preds = %for.body
  %shr50 = lshr i32 %conv48, %mul
  %83 = trunc i32 %shr50 to i8
  %conv52 = and i8 %83, 3
  %conv53 = zext i16 %rxmcs_cap.0284 to i32
  %shr55 = lshr i32 %conv53, %mul
  %conv57 = and i32 %shr55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv57)
  %cmp61.not = icmp ne i32 %conv57, 3
  %conv64 = zext i8 %conv52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv57, i32 %conv64)
  %cmp66 = icmp ugt i32 %conv57, %conv64
  %or.cond = select i1 %cmp61.not, i1 %cmp66, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv52)
  %cmp69 = icmp eq i8 %conv52, 3
  %or.cond204 = select i1 %or.cond, i1 true, i1 %cmp69
  br i1 %or.cond204, label %if.then71, label %land.lhs.true.if.end84_crit_edge

land.lhs.true.if.end84_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then71:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %84 = trunc i32 %81 to i16
  %85 = xor i16 %84, -1
  %conv76 = and i16 %rxmcs_cap.0284, %85
  %86 = and i16 %67, %84
  %conv83 = or i16 %86, %conv76
  br label %if.end84

if.end84:                                         ; preds = %if.then71, %land.lhs.true.if.end84_crit_edge, %for.body.if.end84_crit_edge
  %rxmcs_cap.1 = phi i16 [ %conv83, %if.then71 ], [ %rxmcs_cap.0284, %for.body.if.end84_crit_edge ], [ %rxmcs_cap.0284, %land.lhs.true.if.end84_crit_edge ]
  %87 = and i32 %81, %conv35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool101.not = icmp eq i32 %87, 0
  br i1 %tobool101.not, label %if.end84.if.end129_crit_edge, label %land.lhs.true102

if.end84.if.end129_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

land.lhs.true102:                                 ; preds = %if.end84
  %shr92 = lshr i32 %conv90, %mul
  %88 = trunc i32 %shr92 to i8
  %conv94 = and i8 %88, 3
  %conv95 = zext i16 %txmcs_cap.0285 to i32
  %shr97 = lshr i32 %conv95, %mul
  %conv99 = and i32 %shr97, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv99)
  %cmp104.not = icmp ne i32 %conv99, 3
  %conv107 = zext i8 %conv94 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv99, i32 %conv107)
  %cmp109 = icmp ugt i32 %conv99, %conv107
  %or.cond205 = select i1 %cmp104.not, i1 %cmp109, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv94)
  %cmp113 = icmp eq i8 %conv94, 3
  %or.cond206 = select i1 %or.cond205, i1 true, i1 %cmp113
  br i1 %or.cond206, label %if.then115, label %land.lhs.true102.if.end129_crit_edge

land.lhs.true102.if.end129_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then115:                                       ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #11
  %89 = trunc i32 %81 to i16
  %90 = xor i16 %89, -1
  %conv121 = and i16 %txmcs_cap.0285, %90
  %91 = and i16 %77, %89
  %conv128 = or i16 %91, %conv121
  br label %if.end129

if.end129:                                        ; preds = %if.then115, %land.lhs.true102.if.end129_crit_edge, %if.end84.if.end129_crit_edge
  %txmcs_cap.1 = phi i16 [ %conv128, %if.then115 ], [ %txmcs_cap.0285, %if.end84.if.end129_crit_edge ], [ %txmcs_cap.0285, %land.lhs.true102.if.end129_crit_edge ]
  %inc = add nuw nsw i32 %i.0286, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end129.for.body_crit_edge

if.end129.for.body_crit_edge:                     ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  %92 = tail call i16 @llvm.bswap.i16(i16 %rxmcs_cap.1)
  %93 = ptrtoint ptr %vht_mcs to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %vht_mcs, align 4
  %94 = tail call i16 @llvm.bswap.i16(i16 %txmcs_cap.1)
  %95 = ptrtoint ptr %tx_mcs_map40 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %tx_mcs_map40, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_vht_cap_ie_to_sta_vht_cap(ptr noundef %sdata, ptr nocapture noundef readonly %sband, ptr noundef readonly %vht_cap_ie, ptr noundef %sta) local_unnamed_addr #3 align 64 {
entry:
  %own_cap = alloca %struct.ieee80211_sta_vht_cap, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vht_cap2 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %own_cap) #9
  %0 = call ptr @memset(ptr %vht_cap2, i32 0, i32 16)
  %ht_supported = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 3, i32 1
  %1 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ht_supported, align 2, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %tobool4.not = icmp eq ptr %vht_cap_ie, null
  %or.cond334 = or i1 %tobool4.not, %tobool.not
  br i1 %or.cond334, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %vht_cap5 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 6
  %3 = ptrtoint ptr %vht_cap5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vht_cap5, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not = icmp eq i8 %4, 0
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 3
  %5 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp338.not = icmp eq i32 %6, 0
  br i1 %cmp338.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %7 = ptrtoint ptr %sband to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sband, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0339, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0339 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %flags = getelementptr %struct.ieee80211_channel, ptr %8, i32 %i.0339, i32 4
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end14, label %for.cond

if.end14:                                         ; preds = %for.body
  %11 = ptrtoint ptr %vht_cap2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %vht_cap2, align 4
  %12 = call ptr @memcpy(ptr %own_cap, ptr %vht_cap5, i32 16)
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %13 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp17 = icmp eq i32 %14, 2
  br i1 %cmp17, label %land.lhs.true, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end14
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %15 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_flags.i, align 4
  %17 = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool18.not = icmp eq i32 %17, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @ieee80211_apply_vhtcap_overrides(ptr noundef %sdata, ptr noundef nonnull %own_cap)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %land.lhs.true.if.end20_crit_edge, %if.end14.if.end20_crit_edge
  %18 = ptrtoint ptr %vht_cap_ie to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %vht_cap_ie, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %cap = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 5, i32 1
  %and22 = and i32 %20, 1071644688
  %and23 = and i32 %20, 3
  %cap24 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %own_cap, i32 0, i32 1
  %21 = ptrtoint ptr %cap24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cap24, align 4
  %and25 = and i32 %22, 3
  %23 = tail call i32 @llvm.umin.i32(i32 %and23, i32 %and25)
  %or = or i32 %23, %and22
  %24 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or, ptr %cap, align 4
  %and29 = and i32 %22, 12
  %25 = zext i32 %and29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and29, label %if.end20.sw.epilog_crit_edge [
    i32 4, label %if.end20.sw.epilog.sink.split_crit_edge
    i32 8, label %sw.bb33
  ]

if.end20.sw.epilog.sink.split_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb33, %if.end20.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 12, %sw.bb33 ], [ %and29, %if.end20.sw.epilog.sink.split_crit_edge ]
  %and34 = and i32 %20, %.sink
  %or36 = or i32 %or, %and34
  %26 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or36, ptr %cap, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end20.sw.epilog_crit_edge
  %and38 = and i32 %20, 96
  %and39 = and i32 %and38, %22
  %27 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cap, align 4
  %and43 = and i32 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %and46 = and i32 %20, 460800
  %or48 = select i1 %tobool44.not, i32 0, i32 %and46
  %or41 = or i32 %or48, %and39
  %storemerge = or i32 %or41, %28
  %and51 = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %and54 = and i32 %20, 61440
  %or56 = select i1 %tobool52.not, i32 0, i32 %and54
  %storemerge337 = or i32 %storemerge, %or56
  %29 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %storemerge337, ptr %cap, align 4
  %and59 = and i32 %22, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %sw.epilog.if.end65_crit_edge, label %if.then61

sw.epilog.if.end65_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then61:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %and62 = and i32 %20, 1048576
  %30 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cap, align 4
  %or64 = or i32 %31, %and62
  store i32 %or64, ptr %cap, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %sw.epilog.if.end65_crit_edge
  %and67 = and i32 %22, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end65.if.end73_crit_edge, label %if.then69

if.end65.if.end73_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %and70 = and i32 %20, 524288
  %32 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cap, align 4
  %or72 = or i32 %33, %and70
  store i32 %or72, ptr %cap, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %if.end65.if.end73_crit_edge
  %and75 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end73.if.end81_crit_edge, label %if.then77

if.end73.if.end81_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %and78 = and i32 %20, 1792
  %34 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cap, align 4
  %or80 = or i32 %35, %and78
  store i32 %or80, ptr %cap, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.end73.if.end81_crit_edge
  %and83 = and i32 %22, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end81.if.end89_crit_edge, label %if.then85

if.end81.if.end89_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %and86 = and i32 %20, 128
  %36 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cap, align 4
  %or88 = or i32 %37, %and86
  store i32 %or88, ptr %cap, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %if.end81.if.end89_crit_edge
  %vht_mcs = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 5, i32 2
  %supp_mcs = getelementptr inbounds %struct.ieee80211_vht_cap, ptr %vht_cap_ie, i32 0, i32 1
  %38 = ptrtoint ptr %supp_mcs to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %supp_mcs, align 1
  %40 = ptrtoint ptr %vht_mcs to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %39, ptr %vht_mcs, align 4
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %41 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %local, align 4
  %arrayidx.i.i = getelementptr %struct.ieee80211_hw, ptr %42, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.i.i, align 4
  %45 = and i32 %44, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.not = icmp eq i32 %45, 0
  br i1 %tobool.i.not, label %if.else, label %if.then91

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %and92 = and i32 %20, -1073741824
  %46 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cap, align 4
  %or94 = or i32 %47, %and92
  store i32 %or94, ptr %cap, align 4
  br label %if.end98

if.else:                                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %tx_highest = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 5, i32 2, i32 3
  %48 = ptrtoint ptr %tx_highest to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %tx_highest, align 2
  %50 = and i16 %49, -33
  store i16 %50, ptr %tx_highest, align 2
  br label %if.end98

if.end98:                                         ; preds = %if.else, %if.then91
  %vht_mcs103 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %own_cap, i32 0, i32 2
  %51 = ptrtoint ptr %vht_mcs103 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vht_mcs103, align 4
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %conv104 = zext i16 %53 to i32
  %tx_mcs_map = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %own_cap, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %tx_mcs_map to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %tx_mcs_map, align 4
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %conv108 = zext i16 %56 to i32
  %tx_mcs_map121 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 5, i32 2, i32 2
  %57 = ptrtoint ptr %vht_mcs to i32
  call void @__asan_load2_noabort(i32 %57)
  %vht_mcs.promoted = load i16, ptr %vht_mcs, align 4
  %58 = ptrtoint ptr %tx_mcs_map121 to i32
  call void @__asan_load2_noabort(i32 %58)
  %tx_mcs_map121.promoted = load i16, ptr %tx_mcs_map121, align 4
  br label %for.body102

for.body102:                                      ; preds = %for.body102.for.body102_crit_edge, %if.end98
  %i.1341 = phi i32 [ 0, %if.end98 ], [ %inc200, %for.body102.for.body102_crit_edge ]
  %59 = phi i16 [ %vht_mcs.promoted, %if.end98 ], [ %or177331, %for.body102.for.body102_crit_edge ]
  %60 = phi i16 [ %tx_mcs_map121.promoted, %if.end98 ], [ %or197332, %for.body102.for.body102_crit_edge ]
  %mul = shl nuw nsw i32 %i.1341, 1
  %shr = lshr i32 %conv104, %mul
  %61 = trunc i32 %shr to i16
  %conv106 = and i16 %61, 3
  %shr110 = lshr i32 %conv108, %mul
  %62 = trunc i32 %shr110 to i16
  %conv112 = and i16 %62, 3
  %63 = tail call i16 @llvm.bswap.i16(i16 %59)
  %conv115 = zext i16 %63 to i32
  %shr117 = lshr i32 %conv115, %mul
  %64 = trunc i32 %shr117 to i16
  %conv119 = and i16 %64, 3
  %65 = tail call i16 @llvm.bswap.i16(i16 %60)
  %conv122 = zext i16 %65 to i32
  %shr124 = lshr i32 %conv122, %mul
  %66 = trunc i32 %shr124 to i16
  %conv126 = and i16 %66, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv126)
  %cmp128.not = icmp eq i16 %conv126, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv106)
  %cmp132 = icmp eq i16 %conv106, 3
  %or.cond335 = select i1 %cmp128.not, i1 true, i1 %cmp132
  %67 = tail call i16 @llvm.umin.i16(i16 %conv106, i16 %conv126)
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv119)
  %cmp145.not = icmp eq i16 %conv119, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv112)
  %cmp149 = icmp eq i16 %conv112, 3
  %or.cond336 = select i1 %cmp145.not, i1 true, i1 %cmp149
  %68 = tail call i16 @llvm.umin.i16(i16 %conv112, i16 %conv119)
  %shl = shl nuw nsw i32 3, %mul
  %conv162 = trunc i32 %shl to i16
  %69 = xor i16 %conv162, -1
  %70 = tail call i16 @llvm.bswap.i16(i16 %69)
  %conv168 = and i16 %59, %70
  %71 = zext i16 %68 to i32
  %conv169 = select i1 %or.cond336, i32 3, i32 %71
  %shl171 = shl nuw nsw i32 %conv169, %mul
  %conv172 = trunc i32 %shl171 to i16
  %72 = tail call i16 @llvm.bswap.i16(i16 %conv172)
  %or177331 = or i16 %72, %conv168
  %conv188 = and i16 %60, %70
  %73 = zext i16 %67 to i32
  %conv189 = select i1 %or.cond335, i32 3, i32 %73
  %shl191 = shl nuw nsw i32 %conv189, %mul
  %conv192 = trunc i32 %shl191 to i16
  %74 = tail call i16 @llvm.bswap.i16(i16 %conv192)
  %or197332 = or i16 %74, %conv188
  %inc200 = add nuw nsw i32 %i.1341, 1
  %exitcond342.not = icmp eq i32 %inc200, 8
  br i1 %exitcond342.not, label %for.end201, label %for.body102.for.body102_crit_edge

for.body102.for.body102_crit_edge:                ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body102

for.end201:                                       ; preds = %for.body102
  %75 = ptrtoint ptr %vht_mcs to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %or177331, ptr %vht_mcs, align 4
  %76 = ptrtoint ptr %tx_mcs_map121 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %or197332, ptr %tx_mcs_map121, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %or177331)
  %cmp205 = icmp eq i16 %or177331, -1
  br i1 %cmp205, label %if.then207, label %if.end210

if.then207:                                       ; preds = %for.end201
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %vht_cap2 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %vht_cap2, align 4
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 4
  tail call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %addr) #9
  br label %cleanup

if.end210:                                        ; preds = %for.end201
  %78 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cap, align 4
  %and212 = and i32 %79, 12
  %80 = zext i32 %and212 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %and212, label %sw.default214 [
    i32 4, label %if.end210.sw.bb213_crit_edge
    i32 8, label %if.end210.sw.bb213_crit_edge343
  ]

if.end210.sw.bb213_crit_edge343:                  ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb213

if.end210.sw.bb213_crit_edge:                     ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb213

sw.bb213:                                         ; preds = %if.end210.sw.bb213_crit_edge, %if.end210.sw.bb213_crit_edge343
  %cur_max_bandwidth = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 41
  %81 = ptrtoint ptr %cur_max_bandwidth to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 3, ptr %cur_max_bandwidth, align 4
  br label %sw.epilog228

sw.default214:                                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #11
  %cur_max_bandwidth215 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 41
  %tx_highest217 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 5, i32 2, i32 3
  %82 = ptrtoint ptr %tx_highest217 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %tx_highest217, align 2
  %84 = and i16 %83, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool220.not = icmp eq i16 %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %20)
  %tobool224.not = icmp ult i32 %20, 1073741824
  %or.cond = select i1 %tobool220.not, i1 true, i1 %tobool224.not
  %spec.store.select = select i1 %or.cond, i32 2, i32 3
  %85 = ptrtoint ptr %cur_max_bandwidth215 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %spec.store.select, ptr %cur_max_bandwidth215, align 4
  br label %sw.epilog228

sw.epilog228:                                     ; preds = %sw.default214, %sw.bb213
  %call229 = tail call i32 @ieee80211_sta_cur_vht_bw(ptr noundef %sta)
  %bandwidth = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 14
  %86 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call229, ptr %bandwidth, align 8
  %87 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cap, align 4
  %and232 = and i32 %88, 3
  %89 = zext i32 %and232 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %and232, label %sw.default239 [
    i32 2, label %sw.bb233
    i32 1, label %sw.bb235
  ]

sw.bb233:                                         ; preds = %sw.epilog228
  call void @__sanitizer_cov_trace_pc() #11
  %max_amsdu_len = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 21
  %90 = ptrtoint ptr %max_amsdu_len to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 11454, ptr %max_amsdu_len, align 8
  br label %cleanup

sw.bb235:                                         ; preds = %sw.epilog228
  call void @__sanitizer_cov_trace_pc() #11
  %max_amsdu_len237 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 21
  %91 = ptrtoint ptr %max_amsdu_len237 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 7991, ptr %max_amsdu_len237, align 8
  br label %cleanup

sw.default239:                                    ; preds = %sw.epilog228
  call void @__sanitizer_cov_trace_pc() #11
  %max_amsdu_len241 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 21
  %92 = ptrtoint ptr %max_amsdu_len241 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 3895, ptr %max_amsdu_len241, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.default239, %sw.bb235, %sw.bb233, %if.then207, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %own_cap) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_info(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_sta_cur_vht_bw(ptr noundef %sta) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  %width = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59, i32 1, i32 32, i32 1
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %he_cap4.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6
  %4 = ptrtoint ptr %he_cap4.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %he_cap4.i, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end22.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %phy_cap_info.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 1, i32 1
  %6 = ptrtoint ptr %phy_cap_info.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %phy_cap_info.i, align 1
  %chandef.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59, i32 1, i32 32
  %8 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chandef.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %if.then5.i, label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = lshr i8 %7, 1
  %.lobit59.i = and i8 %12, 1
  %13 = zext i8 %.lobit59.i to i32
  br label %ieee80211_sta_cap_rx_bw.exit

if.end.i:                                         ; preds = %if.then.i
  %conv8.i = zext i8 %7 to i32
  %14 = and i32 %conv8.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %if.else15.i, label %if.end.i.ieee80211_sta_cap_rx_bw.exit_crit_edge

if.end.i.ieee80211_sta_cap_rx_bw.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_sta_cap_rx_bw.exit

if.else15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %and17.i = lshr i32 %conv8.i, 1
  %16 = and i32 %and17.i, 2
  br label %ieee80211_sta_cap_rx_bw.exit

if.end22.i:                                       ; preds = %entry
  %vht_cap2.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 5
  %17 = ptrtoint ptr %vht_cap2.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vht_cap2.i, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool23.not.i = icmp eq i8 %18, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.end29.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %ht_cap.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 3
  %19 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ht_cap.i, align 8
  %21 = lshr i16 %20, 1
  %.lobit.i = and i16 %21, 1
  %22 = zext i16 %.lobit.i to i32
  br label %ieee80211_sta_cap_rx_bw.exit

if.end29.i:                                       ; preds = %if.end22.i
  %cap30.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 5, i32 1
  %23 = ptrtoint ptr %cap30.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cap30.i, align 4
  %and31.i = and i32 %24, 12
  %25 = zext i32 %and31.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %and31.i, label %if.end38.i [
    i32 4, label %if.end29.i.ieee80211_sta_cap_rx_bw.exit_crit_edge
    i32 8, label %if.end29.i.ieee80211_sta_cap_rx_bw.exit_crit_edge60
  ]

if.end29.i.ieee80211_sta_cap_rx_bw.exit_crit_edge60: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_sta_cap_rx_bw.exit

if.end29.i.ieee80211_sta_cap_rx_bw.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_sta_cap_rx_bw.exit

if.end38.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %24)
  %tobool41.not.i = icmp ult i32 %24, 1073741824
  %.58.i = select i1 %tobool41.not.i, i32 2, i32 3
  br label %ieee80211_sta_cap_rx_bw.exit

ieee80211_sta_cap_rx_bw.exit:                     ; preds = %if.end38.i, %if.end29.i.ieee80211_sta_cap_rx_bw.exit_crit_edge, %if.end29.i.ieee80211_sta_cap_rx_bw.exit_crit_edge60, %if.then24.i, %if.else15.i, %if.end.i.ieee80211_sta_cap_rx_bw.exit_crit_edge, %if.then5.i
  %retval.1.i = phi i32 [ %22, %if.then24.i ], [ %13, %if.then5.i ], [ 3, %if.end.i.ieee80211_sta_cap_rx_bw.exit_crit_edge ], [ %16, %if.else15.i ], [ 3, %if.end29.i.ieee80211_sta_cap_rx_bw.exit_crit_edge ], [ 3, %if.end29.i.ieee80211_sta_cap_rx_bw.exit_crit_edge60 ], [ %.58.i, %if.end38.i ]
  %cur_max_bandwidth = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 41
  %26 = ptrtoint ptr %cur_max_bandwidth to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cur_max_bandwidth, align 4
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %28 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %_flags.i, align 4
  %30 = and i32 %29, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %ieee80211_sta_cap_rx_bw.exit.if.else_crit_edge, label %land.lhs.true

ieee80211_sta_cap_rx_bw.exit.if.else_crit_edge:   ; preds = %ieee80211_sta_cap_rx_bw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %ieee80211_sta_cap_rx_bw.exit
  %31 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %_flags.i, align 4
  %33 = and i32 %32, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool4.not = icmp eq i32 %33, 0
  br i1 %tobool4.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true5

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %34 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %_flags.i, align 4
  %36 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool7.not = icmp eq i32 %36, 0
  br i1 %tobool7.not, label %land.lhs.true5.if.else_crit_edge, label %land.lhs.true8

land.lhs.true5.if.else_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %tdls_chandef = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 46
  %37 = ptrtoint ptr %tdls_chandef to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tdls_chandef, align 8
  %tobool9.not = icmp eq ptr %38, null
  br i1 %tobool9.not, label %land.lhs.true8.if.else_crit_edge, label %if.then

land.lhs.true8.if.else_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true8
  %width11 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 46, i32 1
  %39 = ptrtoint ptr %width11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %width11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %40)
  %41 = icmp ult i32 %40, 6
  br i1 %41, label %switch.lookup, label %land.end.i

land.end.i:                                       ; preds = %if.then
  %.b38.i = load i1, ptr @ieee80211_chan_width_to_rx_bw.__already_done, align 1
  br i1 %.b38.i, label %land.end.i.if.end_crit_edge, label %if.then.i48, !prof !19

land.end.i.if.end_crit_edge:                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i48:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_chan_width_to_rx_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 449, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.else:                                          ; preds = %land.lhs.true8.if.else_crit_edge, %land.lhs.true5.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %ieee80211_sta_cap_rx_bw.exit.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %42 = icmp ult i32 %3, 6
  br i1 %42, label %switch.lookup57, label %land.end.i53

land.end.i53:                                     ; preds = %if.else
  %.b38.i52 = load i1, ptr @ieee80211_chan_width_to_rx_bw.__already_done, align 1
  br i1 %.b38.i52, label %land.end.i53.if.end_crit_edge, label %if.then.i54, !prof !19

land.end.i53.if.end_crit_edge:                    ; preds = %land.end.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i54:                                      ; preds = %land.end.i53
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_chan_width_to_rx_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 449, i32 noundef 9, ptr noundef null) #9
  br label %if.end

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.ieee80211_sta_cur_vht_bw, i32 0, i32 %40
  %43 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end

switch.lookup57:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep58 = getelementptr inbounds [6 x i32], ptr @switch.table.ieee80211_sta_cur_vht_bw.2, i32 0, i32 %3
  %44 = ptrtoint ptr %switch.gep58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load59 = load i32, ptr %switch.gep58, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup57, %switch.lookup, %if.then.i54, %land.end.i53.if.end_crit_edge, %if.then.i48, %land.end.i.if.end_crit_edge
  %retval.0.i55.sink = phi i32 [ 0, %if.then.i48 ], [ 0, %land.end.i.if.end_crit_edge ], [ 0, %if.then.i54 ], [ 0, %land.end.i53.if.end_crit_edge ], [ %switch.load, %switch.lookup ], [ %switch.load59, %switch.lookup57 ]
  %45 = tail call i32 @llvm.umin.i32(i32 %retval.1.i, i32 %27)
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 %retval.0.i55.sink)
  ret i32 %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee80211_sta_cap_rx_bw(ptr nocapture noundef readonly %sta) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %he_cap4 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6
  %0 = ptrtoint ptr %he_cap4 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %he_cap4, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end22, label %if.then

if.then:                                          ; preds = %entry
  %phy_cap_info = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 1, i32 1
  %2 = ptrtoint ptr %phy_cap_info to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %phy_cap_info, align 1
  %sdata = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %4 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdata, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 59, i32 1, i32 32
  %6 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chandef, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %10 = lshr i8 %3, 1
  %.lobit59 = and i8 %10, 1
  %11 = zext i8 %.lobit59 to i32
  br label %cleanup44

if.end:                                           ; preds = %if.then
  %conv8 = zext i8 %3 to i32
  %12 = and i32 %conv8, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %if.else15, label %if.end.cleanup44_crit_edge

if.end.cleanup44_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

if.else15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and17 = lshr i32 %conv8, 1
  %14 = and i32 %and17, 2
  br label %cleanup44

if.end22:                                         ; preds = %entry
  %vht_cap2 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 5
  %15 = ptrtoint ptr %vht_cap2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vht_cap2, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool23.not = icmp eq i8 %16, 0
  br i1 %tobool23.not, label %if.then24, label %if.end29

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %ht_cap = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 3
  %17 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ht_cap, align 8
  %19 = lshr i16 %18, 1
  %.lobit = and i16 %19, 1
  %20 = zext i16 %.lobit to i32
  br label %cleanup44

if.end29:                                         ; preds = %if.end22
  %cap30 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 5, i32 1
  %21 = ptrtoint ptr %cap30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cap30, align 4
  %and31 = and i32 %22, 12
  %23 = zext i32 %and31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %and31, label %if.end38 [
    i32 4, label %if.end29.cleanup44_crit_edge
    i32 8, label %if.end29.cleanup44_crit_edge60
  ]

if.end29.cleanup44_crit_edge60:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

if.end29.cleanup44_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

if.end38:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %22)
  %tobool41.not = icmp ult i32 %22, 1073741824
  %.58 = select i1 %tobool41.not, i32 2, i32 3
  br label %cleanup44

cleanup44:                                        ; preds = %if.end38, %if.end29.cleanup44_crit_edge, %if.end29.cleanup44_crit_edge60, %if.then24, %if.else15, %if.end.cleanup44_crit_edge, %if.then5
  %retval.1 = phi i32 [ %20, %if.then24 ], [ %11, %if.then5 ], [ 3, %if.end.cleanup44_crit_edge ], [ %14, %if.else15 ], [ 3, %if.end29.cleanup44_crit_edge ], [ 3, %if.end29.cleanup44_crit_edge60 ], [ %.58, %if.end38 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee80211_sta_cap_chan_bw(ptr nocapture noundef readonly %sta) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vht_cap2 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 5
  %0 = ptrtoint ptr %vht_cap2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vht_cap2, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %ht_supported = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 3, i32 1
  %2 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ht_supported, align 2, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %ht_cap = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 3
  %4 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ht_cap, align 8
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool8.not = icmp eq i16 %6, 0
  %cond = select i1 %tobool8.not, i32 1, i32 2
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cap10 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 5, i32 1
  %7 = ptrtoint ptr %cap10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cap10, align 4
  %and11 = and i32 %8, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and11)
  %switch.selectcmp = icmp eq i32 %and11, 8
  %switch.select = select i1 %switch.selectcmp, i32 4, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and11)
  %switch.selectcmp24 = icmp eq i32 %and11, 4
  %switch.select25 = select i1 %switch.selectcmp24, i32 5, i32 %switch.select
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ 0, %if.then.cleanup_crit_edge ], [ %switch.select25, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee80211_sta_rx_bw_to_chan_width(ptr nocapture noundef readonly %sta) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bandwidth = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 14
  %0 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bandwidth, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %entry.cleanup_crit_edge
    i32 2, label %sw.bb6
    i32 3, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ht_supported = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 3, i32 1
  %3 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ht_supported, align 2, !range !18
  %5 = zext i8 %4 to i32
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cap = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 5, i32 1
  %6 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cap, align 4
  %and = and i32 %7, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp = icmp eq i32 %and, 4
  %.13 = select i1 %cmp, i32 5, i32 4
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.default ], [ 3, %sw.bb6 ], [ %5, %sw.bb ], [ 2, %entry.cleanup_crit_edge ], [ %.13, %sw.bb7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_chan_width_to_rx_bw(i32 noundef %width) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %width)
  %0 = icmp ult i32 %width, 6
  br i1 %0, label %switch.lookup, label %land.end

land.end:                                         ; preds = %entry
  %.b38 = load i1, ptr @ieee80211_chan_width_to_rx_bw.__already_done, align 1
  br i1 %.b38, label %land.end.return_crit_edge, label %if.then, !prof !19

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_chan_width_to_rx_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 449, i32 noundef 9, ptr noundef null) #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.ieee80211_chan_width_to_rx_bw, i32 0, i32 %width
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %if.then, %land.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %land.end.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_set_rx_nss(ptr nocapture noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_nss2 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 13
  %0 = ptrtoint ptr %rx_nss2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_nss2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup161_crit_edge

entry.cleanup161_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup161

if.end:                                           ; preds = %entry
  %he_cap = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6
  %2 = ptrtoint ptr %he_cap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %he_cap, align 8, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.end.if.end54_crit_edge, label %if.then5

if.end.if.end54_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then5:                                         ; preds = %if.end
  %he_mcs_nss_supp = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 2
  %rx_mcs_1609 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 2, i32 2
  %4 = ptrtoint ptr %rx_mcs_1609 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %rx_mcs_1609, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = ptrtoint ptr %he_mcs_nss_supp to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %he_mcs_nss_supp, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv = zext i16 %6 to i32
  %shr.mask = and i32 %conv, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %shr.mask)
  %cmp14.not = icmp eq i32 %shr.mask, 49152
  br i1 %cmp14.not, label %for.inc, label %if.then5.for.end.split.loop.exit_crit_edge

if.then5.for.end.split.loop.exit_crit_edge:       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.split.loop.exit

for.inc:                                          ; preds = %if.then5
  %10 = and i32 %conv, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %10)
  %cmp14.not.1 = icmp eq i32 %10, 12288
  br i1 %cmp14.not.1, label %for.inc.1, label %for.inc.for.end.split.loop.exit_crit_edge

for.inc.for.end.split.loop.exit_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.split.loop.exit

for.inc.1:                                        ; preds = %for.inc
  %11 = and i32 %conv, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %11)
  %cmp14.not.2 = icmp eq i32 %11, 3072
  br i1 %cmp14.not.2, label %for.inc.2, label %for.inc.1.for.end.split.loop.exit_crit_edge

for.inc.1.for.end.split.loop.exit_crit_edge:      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.split.loop.exit

for.inc.2:                                        ; preds = %for.inc.1
  %12 = and i32 %conv, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %12)
  %cmp14.not.3 = icmp eq i32 %12, 768
  br i1 %cmp14.not.3, label %for.inc.3, label %for.inc.2.for.end.split.loop.exit_crit_edge

for.inc.2.for.end.split.loop.exit_crit_edge:      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.split.loop.exit

for.inc.3:                                        ; preds = %for.inc.2
  %13 = and i32 %conv, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %13)
  %cmp14.not.4 = icmp eq i32 %13, 192
  br i1 %cmp14.not.4, label %for.inc.4, label %for.inc.3.for.end.split.loop.exit_crit_edge

for.inc.3.for.end.split.loop.exit_crit_edge:      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.split.loop.exit

for.inc.4:                                        ; preds = %for.inc.3
  %14 = and i32 %conv, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %14)
  %cmp14.not.5 = icmp eq i32 %14, 48
  br i1 %cmp14.not.5, label %for.inc.5, label %for.inc.4.for.end.split.loop.exit_crit_edge

for.inc.4.for.end.split.loop.exit_crit_edge:      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.split.loop.exit

for.inc.5:                                        ; preds = %for.inc.4
  %15 = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %15)
  %cmp14.not.6 = icmp eq i32 %15, 12
  br i1 %cmp14.not.6, label %for.inc.6, label %for.inc.5.for.end.split.loop.exit_crit_edge

for.inc.5.for.end.split.loop.exit_crit_edge:      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.split.loop.exit

for.inc.6:                                        ; preds = %for.inc.5
  %conv12.7 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv12.7)
  %cmp14.not.7 = icmp eq i32 %conv12.7, 3
  br i1 %cmp14.not.7, label %for.inc.6.for.end_crit_edge, label %for.inc.6.for.end.split.loop.exit_crit_edge

for.inc.6.for.end.split.loop.exit_crit_edge:      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.split.loop.exit

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.split.loop.exit:                          ; preds = %for.inc.6.for.end.split.loop.exit_crit_edge, %for.inc.5.for.end.split.loop.exit_crit_edge, %for.inc.4.for.end.split.loop.exit_crit_edge, %for.inc.3.for.end.split.loop.exit_crit_edge, %for.inc.2.for.end.split.loop.exit_crit_edge, %for.inc.1.for.end.split.loop.exit_crit_edge, %for.inc.for.end.split.loop.exit_crit_edge, %if.then5.for.end.split.loop.exit_crit_edge
  %i.0209.lcssa = phi i8 [ 8, %if.then5.for.end.split.loop.exit_crit_edge ], [ 7, %for.inc.for.end.split.loop.exit_crit_edge ], [ 6, %for.inc.1.for.end.split.loop.exit_crit_edge ], [ 5, %for.inc.2.for.end.split.loop.exit_crit_edge ], [ 4, %for.inc.3.for.end.split.loop.exit_crit_edge ], [ 3, %for.inc.4.for.end.split.loop.exit_crit_edge ], [ 2, %for.inc.5.for.end.split.loop.exit_crit_edge ], [ 1, %for.inc.6.for.end.split.loop.exit_crit_edge ]
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %for.inc.6.for.end_crit_edge
  %rx_mcs_160.2 = phi i8 [ %i.0209.lcssa, %for.end.split.loop.exit ], [ 0, %for.inc.6.for.end_crit_edge ]
  %conv23 = zext i16 %9 to i32
  %shr25.mask = and i32 %conv23, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %shr25.mask)
  %cmp29.not = icmp eq i32 %shr25.mask, 49152
  br i1 %cmp29.not, label %for.inc38, label %for.end.for.end40.split.loop.exit_crit_edge

for.end.for.end40.split.loop.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40.split.loop.exit

for.inc38:                                        ; preds = %for.end
  %16 = and i32 %conv23, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %16)
  %cmp29.not.1 = icmp eq i32 %16, 12288
  br i1 %cmp29.not.1, label %for.inc38.1, label %for.inc38.for.end40.split.loop.exit_crit_edge

for.inc38.for.end40.split.loop.exit_crit_edge:    ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40.split.loop.exit

for.inc38.1:                                      ; preds = %for.inc38
  %17 = and i32 %conv23, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %17)
  %cmp29.not.2 = icmp eq i32 %17, 3072
  br i1 %cmp29.not.2, label %for.inc38.2, label %for.inc38.1.for.end40.split.loop.exit_crit_edge

for.inc38.1.for.end40.split.loop.exit_crit_edge:  ; preds = %for.inc38.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40.split.loop.exit

for.inc38.2:                                      ; preds = %for.inc38.1
  %18 = and i32 %conv23, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %18)
  %cmp29.not.3 = icmp eq i32 %18, 768
  br i1 %cmp29.not.3, label %for.inc38.3, label %for.inc38.2.for.end40.split.loop.exit_crit_edge

for.inc38.2.for.end40.split.loop.exit_crit_edge:  ; preds = %for.inc38.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40.split.loop.exit

for.inc38.3:                                      ; preds = %for.inc38.2
  %19 = and i32 %conv23, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %19)
  %cmp29.not.4 = icmp eq i32 %19, 192
  br i1 %cmp29.not.4, label %for.inc38.4, label %for.inc38.3.for.end40.split.loop.exit_crit_edge

for.inc38.3.for.end40.split.loop.exit_crit_edge:  ; preds = %for.inc38.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40.split.loop.exit

for.inc38.4:                                      ; preds = %for.inc38.3
  %20 = and i32 %conv23, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %20)
  %cmp29.not.5 = icmp eq i32 %20, 48
  br i1 %cmp29.not.5, label %for.inc38.5, label %for.inc38.4.for.end40.split.loop.exit_crit_edge

for.inc38.4.for.end40.split.loop.exit_crit_edge:  ; preds = %for.inc38.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40.split.loop.exit

for.inc38.5:                                      ; preds = %for.inc38.4
  %21 = and i32 %conv23, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %21)
  %cmp29.not.6 = icmp eq i32 %21, 12
  br i1 %cmp29.not.6, label %for.inc38.6, label %for.inc38.5.for.end40.split.loop.exit_crit_edge

for.inc38.5.for.end40.split.loop.exit_crit_edge:  ; preds = %for.inc38.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40.split.loop.exit

for.inc38.6:                                      ; preds = %for.inc38.5
  %conv27.7 = and i32 %conv23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv27.7)
  %cmp29.not.7 = icmp eq i32 %conv27.7, 3
  br i1 %cmp29.not.7, label %for.inc38.6.for.end40_crit_edge, label %for.inc38.6.for.end40.split.loop.exit_crit_edge

for.inc38.6.for.end40.split.loop.exit_crit_edge:  ; preds = %for.inc38.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40.split.loop.exit

for.inc38.6.for.end40_crit_edge:                  ; preds = %for.inc38.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40

for.end40.split.loop.exit:                        ; preds = %for.inc38.6.for.end40.split.loop.exit_crit_edge, %for.inc38.5.for.end40.split.loop.exit_crit_edge, %for.inc38.4.for.end40.split.loop.exit_crit_edge, %for.inc38.3.for.end40.split.loop.exit_crit_edge, %for.inc38.2.for.end40.split.loop.exit_crit_edge, %for.inc38.1.for.end40.split.loop.exit_crit_edge, %for.inc38.for.end40.split.loop.exit_crit_edge, %for.end.for.end40.split.loop.exit_crit_edge
  %i.1212.lcssa = phi i8 [ 8, %for.end.for.end40.split.loop.exit_crit_edge ], [ 7, %for.inc38.for.end40.split.loop.exit_crit_edge ], [ 6, %for.inc38.1.for.end40.split.loop.exit_crit_edge ], [ 5, %for.inc38.2.for.end40.split.loop.exit_crit_edge ], [ 4, %for.inc38.3.for.end40.split.loop.exit_crit_edge ], [ 3, %for.inc38.4.for.end40.split.loop.exit_crit_edge ], [ 2, %for.inc38.5.for.end40.split.loop.exit_crit_edge ], [ 1, %for.inc38.6.for.end40.split.loop.exit_crit_edge ]
  br label %for.end40

for.end40:                                        ; preds = %for.end40.split.loop.exit, %for.inc38.6.for.end40_crit_edge
  %rx_mcs_80.2 = phi i8 [ %i.1212.lcssa, %for.end40.split.loop.exit ], [ 0, %for.inc38.6.for.end40_crit_edge ]
  %phy_cap_info = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 1, i32 1
  %22 = ptrtoint ptr %phy_cap_info to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %phy_cap_info, align 1
  %24 = and i8 %23, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool43.not = icmp eq i8 %24, 0
  %25 = tail call i8 @llvm.umin.i8(i8 %rx_mcs_80.2, i8 %rx_mcs_160.2)
  %he_rx_nss.0 = select i1 %tobool43.not, i8 %rx_mcs_80.2, i8 %25
  br label %if.end54

if.end54:                                         ; preds = %for.end40, %if.end.if.end54_crit_edge
  %he_rx_nss.1 = phi i8 [ %he_rx_nss.0, %for.end40 ], [ 0, %if.end.if.end54_crit_edge ]
  %ht_supported = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 3, i32 1
  %26 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ht_supported, align 2, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool56.not = icmp eq i8 %27, 0
  br i1 %tobool56.not, label %if.end54.if.end91_crit_edge, label %if.then57

if.end54.if.end91_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %mcs = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 3, i32 4
  %28 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mcs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool61.not = icmp ne i8 %29, 0
  %spec.select = zext i1 %tobool61.not to i8
  %arrayidx68 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 48, i32 3, i32 4, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool69.not = icmp eq i8 %31, 0
  %inc71 = select i1 %tobool61.not, i8 2, i8 1
  %ht_rx_nss.1 = select i1 %tobool69.not, i8 %spec.select, i8 %inc71
  %arrayidx77 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 48, i32 3, i32 4, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool78.not = icmp ne i8 %33, 0
  %inc80 = zext i1 %tobool78.not to i8
  %ht_rx_nss.2 = add nuw nsw i8 %ht_rx_nss.1, %inc80
  %arrayidx86 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 48, i32 3, i32 4, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx86, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool87.not = icmp ne i8 %35, 0
  %inc89 = zext i1 %tobool87.not to i8
  %spec.select206 = add nuw nsw i8 %ht_rx_nss.2, %inc89
  br label %if.end91

if.end91:                                         ; preds = %if.then57, %if.end54.if.end91_crit_edge
  %ht_rx_nss.3 = phi i8 [ 0, %if.end54.if.end91_crit_edge ], [ %spec.select206, %if.then57 ]
  %vht_cap = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 5
  %36 = ptrtoint ptr %vht_cap to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %vht_cap, align 8, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool93.not = icmp eq i8 %37, 0
  br i1 %tobool93.not, label %if.end91.if.end122_crit_edge, label %if.then94

if.end91.if.end122_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.then94:                                        ; preds = %if.end91
  %vht_mcs = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 5, i32 2
  %38 = ptrtoint ptr %vht_mcs to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vht_mcs, align 8
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %conv104 = zext i16 %40 to i32
  %shr106.mask = and i32 %conv104, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %shr106.mask)
  %cmp110.not = icmp eq i32 %shr106.mask, 49152
  br i1 %cmp110.not, label %for.inc119, label %if.then94.if.end122.loopexit.split.loop.exit213_crit_edge

if.then94.if.end122.loopexit.split.loop.exit213_crit_edge: ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.loopexit.split.loop.exit213

for.inc119:                                       ; preds = %if.then94
  %41 = and i32 %conv104, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %41)
  %cmp110.not.1 = icmp eq i32 %41, 12288
  br i1 %cmp110.not.1, label %for.inc119.1, label %for.inc119.if.end122.loopexit.split.loop.exit213_crit_edge

for.inc119.if.end122.loopexit.split.loop.exit213_crit_edge: ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.loopexit.split.loop.exit213

for.inc119.1:                                     ; preds = %for.inc119
  %42 = and i32 %conv104, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %42)
  %cmp110.not.2 = icmp eq i32 %42, 3072
  br i1 %cmp110.not.2, label %for.inc119.2, label %for.inc119.1.if.end122.loopexit.split.loop.exit213_crit_edge

for.inc119.1.if.end122.loopexit.split.loop.exit213_crit_edge: ; preds = %for.inc119.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.loopexit.split.loop.exit213

for.inc119.2:                                     ; preds = %for.inc119.1
  %43 = and i32 %conv104, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %43)
  %cmp110.not.3 = icmp eq i32 %43, 768
  br i1 %cmp110.not.3, label %for.inc119.3, label %for.inc119.2.if.end122.loopexit.split.loop.exit213_crit_edge

for.inc119.2.if.end122.loopexit.split.loop.exit213_crit_edge: ; preds = %for.inc119.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.loopexit.split.loop.exit213

for.inc119.3:                                     ; preds = %for.inc119.2
  %44 = and i32 %conv104, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %44)
  %cmp110.not.4 = icmp eq i32 %44, 192
  br i1 %cmp110.not.4, label %for.inc119.4, label %for.inc119.3.if.end122.loopexit.split.loop.exit213_crit_edge

for.inc119.3.if.end122.loopexit.split.loop.exit213_crit_edge: ; preds = %for.inc119.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.loopexit.split.loop.exit213

for.inc119.4:                                     ; preds = %for.inc119.3
  %45 = and i32 %conv104, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %45)
  %cmp110.not.5 = icmp eq i32 %45, 48
  br i1 %cmp110.not.5, label %for.inc119.5, label %for.inc119.4.if.end122.loopexit.split.loop.exit213_crit_edge

for.inc119.4.if.end122.loopexit.split.loop.exit213_crit_edge: ; preds = %for.inc119.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.loopexit.split.loop.exit213

for.inc119.5:                                     ; preds = %for.inc119.4
  %46 = and i32 %conv104, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %46)
  %cmp110.not.6 = icmp eq i32 %46, 12
  br i1 %cmp110.not.6, label %for.inc119.6, label %for.inc119.5.if.end122.loopexit.split.loop.exit213_crit_edge

for.inc119.5.if.end122.loopexit.split.loop.exit213_crit_edge: ; preds = %for.inc119.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.loopexit.split.loop.exit213

for.inc119.6:                                     ; preds = %for.inc119.5
  %conv108.7 = and i32 %conv104, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv108.7)
  %cmp110.not.7 = icmp eq i32 %conv108.7, 3
  br i1 %cmp110.not.7, label %for.inc119.6.if.end122_crit_edge, label %for.inc119.6.if.end122.loopexit.split.loop.exit213_crit_edge

for.inc119.6.if.end122.loopexit.split.loop.exit213_crit_edge: ; preds = %for.inc119.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.loopexit.split.loop.exit213

for.inc119.6.if.end122_crit_edge:                 ; preds = %for.inc119.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.end122.loopexit.split.loop.exit213:            ; preds = %for.inc119.6.if.end122.loopexit.split.loop.exit213_crit_edge, %for.inc119.5.if.end122.loopexit.split.loop.exit213_crit_edge, %for.inc119.4.if.end122.loopexit.split.loop.exit213_crit_edge, %for.inc119.3.if.end122.loopexit.split.loop.exit213_crit_edge, %for.inc119.2.if.end122.loopexit.split.loop.exit213_crit_edge, %for.inc119.1.if.end122.loopexit.split.loop.exit213_crit_edge, %for.inc119.if.end122.loopexit.split.loop.exit213_crit_edge, %if.then94.if.end122.loopexit.split.loop.exit213_crit_edge
  %i95.0215.lcssa = phi i8 [ 8, %if.then94.if.end122.loopexit.split.loop.exit213_crit_edge ], [ 7, %for.inc119.if.end122.loopexit.split.loop.exit213_crit_edge ], [ 6, %for.inc119.1.if.end122.loopexit.split.loop.exit213_crit_edge ], [ 5, %for.inc119.2.if.end122.loopexit.split.loop.exit213_crit_edge ], [ 4, %for.inc119.3.if.end122.loopexit.split.loop.exit213_crit_edge ], [ 3, %for.inc119.4.if.end122.loopexit.split.loop.exit213_crit_edge ], [ 2, %for.inc119.5.if.end122.loopexit.split.loop.exit213_crit_edge ], [ 1, %for.inc119.6.if.end122.loopexit.split.loop.exit213_crit_edge ]
  br label %if.end122

if.end122:                                        ; preds = %if.end122.loopexit.split.loop.exit213, %for.inc119.6.if.end122_crit_edge, %if.end91.if.end122_crit_edge
  %vht_rx_nss.3 = phi i8 [ 0, %if.end91.if.end122_crit_edge ], [ %i95.0215.lcssa, %if.end122.loopexit.split.loop.exit213 ], [ 0, %for.inc119.6.if.end122_crit_edge ]
  %47 = tail call i8 @llvm.umax.i8(i8 %vht_rx_nss.3, i8 %ht_rx_nss.3)
  %48 = tail call i8 @llvm.umax.i8(i8 %he_rx_nss.1, i8 %47)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp150 = icmp eq i8 %48, 0
  %cond157 = select i1 %cmp150, i8 1, i8 %48
  %49 = ptrtoint ptr %rx_nss2 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %cond157, ptr %rx_nss2, align 1
  br label %cleanup161

cleanup161:                                       ; preds = %if.end122, %entry.cleanup161_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ieee80211_vht_handle_opmode(ptr nocapture noundef readonly %sdata, ptr noundef %sta, i8 noundef zeroext %opmode, i32 %band) local_unnamed_addr #3 align 64 {
entry:
  %sta_opmode = alloca %struct.sta_opmode_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sta_opmode) #9
  %0 = call ptr @memset(ptr %sta_opmode, i32 0, i32 16)
  %conv = zext i8 %opmode to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = lshr i8 %opmode, 4
  %1 = and i8 %and2, 7
  %narrow = add nuw nsw i8 %1, 1
  %rx_nss = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 13
  %2 = ptrtoint ptr %rx_nss to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_nss, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %narrow)
  %cmp.not = icmp eq i8 %3, %narrow
  br i1 %cmp.not, label %if.end.if.end18_crit_edge, label %if.then12

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %rx_nss to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %narrow, ptr %rx_nss, align 1
  %rx_nss15 = getelementptr inbounds %struct.sta_opmode_info, ptr %sta_opmode, i32 0, i32 3
  %5 = ptrtoint ptr %rx_nss15 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %narrow, ptr %rx_nss15, align 4
  %6 = ptrtoint ptr %sta_opmode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sta_opmode, align 4
  %or17 = or i32 %7, 4
  store i32 %or17, ptr %sta_opmode, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end.if.end18_crit_edge
  %changed.0 = phi i32 [ 8, %if.then12 ], [ 0, %if.end.if.end18_crit_edge ]
  %and20 = and i32 %conv, 3
  %8 = zext i32 %and20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %and20, label %if.end18.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
    i32 2, label %sw.bb23
    i32 3, label %sw.bb31
  ]

sw.bb:                                            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %cur_max_bandwidth = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 41
  %9 = ptrtoint ptr %cur_max_bandwidth to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cur_max_bandwidth, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %cur_max_bandwidth22 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 41
  %10 = ptrtoint ptr %cur_max_bandwidth22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %cur_max_bandwidth22, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end18
  %and25 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %cur_max_bandwidth29 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 41
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %cur_max_bandwidth29 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %cur_max_bandwidth29, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %cur_max_bandwidth29 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %cur_max_bandwidth29, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %cur_max_bandwidth32 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 41
  %13 = ptrtoint ptr %cur_max_bandwidth32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %cur_max_bandwidth32, align 4
  br label %sw.epilog

if.end18.unreachabledefault:                      ; preds = %if.end18
  unreachable

sw.epilog:                                        ; preds = %sw.bb31, %if.else, %if.then27, %sw.bb21, %sw.bb
  %call = tail call i32 @ieee80211_sta_cur_vht_bw(ptr noundef %sta)
  %bandwidth = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 14
  %14 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bandwidth, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %15)
  %cmp34.not = icmp eq i32 %call, %15
  br i1 %cmp34.not, label %if.end43, label %if.then36

if.then36:                                        ; preds = %sw.epilog
  %16 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call, ptr %bandwidth, align 8
  %17 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %if.then36.if.end43.thread_crit_edge
    i32 2, label %sw.bb6.i
    i32 3, label %sw.bb7.i
  ]

if.then36.if.end43.thread_crit_edge:              ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.thread

sw.bb.i:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %ht_supported.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 3, i32 1
  %18 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ht_supported.i, align 2, !range !18
  %20 = zext i8 %19 to i32
  br label %if.end43.thread

sw.bb6.i:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.thread

sw.bb7.i:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %cap.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 5, i32 1
  %21 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cap.i, align 4
  %and.i = and i32 %22, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 4
  %.13.i = select i1 %cmp.i, i32 5, i32 4
  br label %if.end43.thread

sw.default.i:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.thread

if.end43.thread:                                  ; preds = %sw.default.i, %sw.bb7.i, %sw.bb6.i, %sw.bb.i, %if.then36.if.end43.thread_crit_edge
  %retval.0.i = phi i32 [ 1, %sw.default.i ], [ 3, %sw.bb6.i ], [ %20, %sw.bb.i ], [ 2, %if.then36.if.end43.thread_crit_edge ], [ %.13.i, %sw.bb7.i ]
  %bw = getelementptr inbounds %struct.sta_opmode_info, ptr %sta_opmode, i32 0, i32 2
  %23 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i, ptr %bw, align 4
  %or40 = or i32 %changed.0, 1
  %24 = ptrtoint ptr %sta_opmode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sta_opmode, align 4
  %or42 = or i32 %25, 1
  store i32 %or42, ptr %sta_opmode, align 4
  br label %if.then46

if.end43:                                         ; preds = %sw.epilog
  %26 = ptrtoint ptr %sta_opmode to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %sta_opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool45.not = icmp eq i32 %.pr, 0
  br i1 %tobool45.not, label %if.end43.cleanup_crit_edge, label %if.end43.if.then46_crit_edge

if.end43.if.then46_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then46:                                        ; preds = %if.end43.if.then46_crit_edge, %if.end43.thread
  %changed.174 = phi i32 [ %or40, %if.end43.thread ], [ %changed.0, %if.end43.if.then46_crit_edge ]
  %dev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 4
  call void @cfg80211_sta_opmode_change_notify(ptr noundef %28, ptr noundef %addr, ptr noundef nonnull %sta_opmode, i32 noundef 3264) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end43.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %changed.174, %if.then46 ], [ %changed.0, %if.end43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sta_opmode) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sta_opmode_change_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_process_mu_groups(ptr noundef %sdata, ptr nocapture noundef readonly %mgmt) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mu_mimo_owner = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 5
  %0 = ptrtoint ptr %mu_mimo_owner to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mu_mimo_owner, align 8, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %position = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 1
  %mu_group = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 33
  %position4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 33, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %position, ptr noundef dereferenceable(16) %position4, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool6.not = icmp eq i32 %bcmp, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %membership = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 0, i32 1
  %bcmp39 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %membership, ptr noundef dereferenceable(8) %mu_group, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp39)
  %tobool14.not = icmp eq i32 %bcmp39, 0
  br i1 %tobool14.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %membership22 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 0, i32 1
  %2 = ptrtoint ptr %membership22 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %membership22, align 1
  %4 = ptrtoint ptr %mu_group to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %mu_group, align 8
  %5 = call ptr @memcpy(ptr %position4, ptr %position, i32 16)
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %sdata, i32 noundef 8388608) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_bss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_update_mu_groups(ptr nocapture noundef %vif, ptr nocapture noundef readonly %membership, ptr nocapture noundef readonly %position) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mu_mimo_owner = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 5
  %0 = ptrtoint ptr %mu_mimo_owner to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mu_mimo_owner, align 8, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @ieee80211_update_mu_groups.__already_done, align 1
  br i1 %.b49, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !19

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_update_mu_groups.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 650, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end40:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mu_group = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 33
  %2 = ptrtoint ptr %membership to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %membership, align 1
  %4 = ptrtoint ptr %mu_group to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %mu_group, align 8
  %position43 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 33, i32 1
  %5 = call ptr @memcpy(ptr %position43, ptr %position, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_vht_handle_opmode(ptr noundef %sdata, ptr noundef %sta, i8 noundef zeroext %opmode, i32 noundef %band) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %arrayidx = getelementptr %struct.wiphy, ptr %3, i32 0, i32 53, i32 %band
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @__ieee80211_vht_handle_opmode(ptr noundef %sdata, ptr noundef %sta, i8 noundef zeroext %opmode, i32 undef)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ieee80211_recalc_min_chandef(ptr noundef %sdata) #9
  tail call void @rate_control_rate_update(ptr noundef %1, ptr noundef %5, ptr noundef %sta, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_min_chandef(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rate_control_rate_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @ieee80211_get_vht_mask_from_cap(i16 noundef zeroext %vht_cap, ptr nocapture noundef writeonly %vht_mask) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 @llvm.bswap.i16(i16 %vht_cap)
  %conv = zext i16 %0 to i32
  %conv1 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv1)
  %.not = icmp eq i32 %conv1, 3
  br i1 %.not, label %entry.for.inc_crit_edge, label %switch.lookup

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.ieee80211_get_vht_mask_from_cap, i32 0, i32 %conv1
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %1)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %for.inc

for.inc:                                          ; preds = %switch.lookup, %entry.for.inc_crit_edge
  %.sink = phi i16 [ %switch.load, %switch.lookup ], [ 0, %entry.for.inc_crit_edge ]
  %2 = ptrtoint ptr %vht_mask to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %.sink, ptr %vht_mask, align 2
  %shr.1 = lshr i32 %conv, 2
  %conv1.1 = and i32 %shr.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv1.1)
  %.not48 = icmp eq i32 %conv1.1, 3
  br i1 %.not48, label %for.inc.for.inc.1_crit_edge, label %switch.lookup27

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

switch.lookup27:                                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep28 = getelementptr inbounds [3 x i16], ptr @switch.table.ieee80211_get_vht_mask_from_cap.3, i32 0, i32 %conv1.1
  %3 = ptrtoint ptr %switch.gep28 to i32
  call void @__asan_load2_noabort(i32 %3)
  %switch.load29 = load i16, ptr %switch.gep28, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %switch.lookup27, %for.inc.for.inc.1_crit_edge
  %.sink20 = phi i16 [ %switch.load29, %switch.lookup27 ], [ 0, %for.inc.for.inc.1_crit_edge ]
  %arrayidx8.1 = getelementptr i16, ptr %vht_mask, i32 1
  %4 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %.sink20, ptr %arrayidx8.1, align 2
  %shr.2 = lshr i32 %conv, 4
  %conv1.2 = and i32 %shr.2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv1.2)
  %.not49 = icmp eq i32 %conv1.2, 3
  br i1 %.not49, label %for.inc.1.for.inc.2_crit_edge, label %switch.lookup30

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

switch.lookup30:                                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep31 = getelementptr inbounds [3 x i16], ptr @switch.table.ieee80211_get_vht_mask_from_cap.4, i32 0, i32 %conv1.2
  %5 = ptrtoint ptr %switch.gep31 to i32
  call void @__asan_load2_noabort(i32 %5)
  %switch.load32 = load i16, ptr %switch.gep31, align 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %switch.lookup30, %for.inc.1.for.inc.2_crit_edge
  %.sink21 = phi i16 [ %switch.load32, %switch.lookup30 ], [ 0, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx8.2 = getelementptr i16, ptr %vht_mask, i32 2
  %6 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %.sink21, ptr %arrayidx8.2, align 2
  %shr.3 = lshr i32 %conv, 6
  %conv1.3 = and i32 %shr.3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv1.3)
  %.not50 = icmp eq i32 %conv1.3, 3
  br i1 %.not50, label %for.inc.2.for.inc.3_crit_edge, label %switch.lookup33

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

switch.lookup33:                                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep34 = getelementptr inbounds [3 x i16], ptr @switch.table.ieee80211_get_vht_mask_from_cap.5, i32 0, i32 %conv1.3
  %7 = ptrtoint ptr %switch.gep34 to i32
  call void @__asan_load2_noabort(i32 %7)
  %switch.load35 = load i16, ptr %switch.gep34, align 2
  br label %for.inc.3

for.inc.3:                                        ; preds = %switch.lookup33, %for.inc.2.for.inc.3_crit_edge
  %.sink22 = phi i16 [ %switch.load35, %switch.lookup33 ], [ 0, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx8.3 = getelementptr i16, ptr %vht_mask, i32 3
  %8 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %.sink22, ptr %arrayidx8.3, align 2
  %shr.4 = lshr i32 %conv, 8
  %conv1.4 = and i32 %shr.4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv1.4)
  %.not51 = icmp eq i32 %conv1.4, 3
  br i1 %.not51, label %for.inc.3.for.inc.4_crit_edge, label %switch.lookup36

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

switch.lookup36:                                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep37 = getelementptr inbounds [3 x i16], ptr @switch.table.ieee80211_get_vht_mask_from_cap.6, i32 0, i32 %conv1.4
  %9 = ptrtoint ptr %switch.gep37 to i32
  call void @__asan_load2_noabort(i32 %9)
  %switch.load38 = load i16, ptr %switch.gep37, align 2
  br label %for.inc.4

for.inc.4:                                        ; preds = %switch.lookup36, %for.inc.3.for.inc.4_crit_edge
  %.sink23 = phi i16 [ %switch.load38, %switch.lookup36 ], [ 0, %for.inc.3.for.inc.4_crit_edge ]
  %arrayidx8.4 = getelementptr i16, ptr %vht_mask, i32 4
  %10 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %.sink23, ptr %arrayidx8.4, align 2
  %shr.5 = lshr i32 %conv, 10
  %conv1.5 = and i32 %shr.5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv1.5)
  %.not52 = icmp eq i32 %conv1.5, 3
  br i1 %.not52, label %for.inc.4.for.inc.5_crit_edge, label %switch.lookup39

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

switch.lookup39:                                  ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep40 = getelementptr inbounds [3 x i16], ptr @switch.table.ieee80211_get_vht_mask_from_cap.7, i32 0, i32 %conv1.5
  %11 = ptrtoint ptr %switch.gep40 to i32
  call void @__asan_load2_noabort(i32 %11)
  %switch.load41 = load i16, ptr %switch.gep40, align 2
  br label %for.inc.5

for.inc.5:                                        ; preds = %switch.lookup39, %for.inc.4.for.inc.5_crit_edge
  %.sink24 = phi i16 [ %switch.load41, %switch.lookup39 ], [ 0, %for.inc.4.for.inc.5_crit_edge ]
  %arrayidx8.5 = getelementptr i16, ptr %vht_mask, i32 5
  %12 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %.sink24, ptr %arrayidx8.5, align 2
  %shr.6 = lshr i32 %conv, 12
  %conv1.6 = and i32 %shr.6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv1.6)
  %.not53 = icmp eq i32 %conv1.6, 3
  br i1 %.not53, label %for.inc.5.for.inc.6_crit_edge, label %switch.lookup42

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

switch.lookup42:                                  ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep43 = getelementptr inbounds [3 x i16], ptr @switch.table.ieee80211_get_vht_mask_from_cap.8, i32 0, i32 %conv1.6
  %13 = ptrtoint ptr %switch.gep43 to i32
  call void @__asan_load2_noabort(i32 %13)
  %switch.load44 = load i16, ptr %switch.gep43, align 2
  br label %for.inc.6

for.inc.6:                                        ; preds = %switch.lookup42, %for.inc.5.for.inc.6_crit_edge
  %.sink25 = phi i16 [ %switch.load44, %switch.lookup42 ], [ 0, %for.inc.5.for.inc.6_crit_edge ]
  %arrayidx8.6 = getelementptr i16, ptr %vht_mask, i32 6
  %14 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %.sink25, ptr %arrayidx8.6, align 2
  %shr.7 = lshr i32 %conv, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.7)
  %.not54 = icmp eq i32 %shr.7, 3
  br i1 %.not54, label %for.inc.6.for.inc.7_crit_edge, label %switch.lookup45

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

switch.lookup45:                                  ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep46 = getelementptr inbounds [3 x i16], ptr @switch.table.ieee80211_get_vht_mask_from_cap.9, i32 0, i32 %shr.7
  %15 = ptrtoint ptr %switch.gep46 to i32
  call void @__asan_load2_noabort(i32 %15)
  %switch.load47 = load i16, ptr %switch.gep46, align 2
  br label %for.inc.7

for.inc.7:                                        ; preds = %switch.lookup45, %for.inc.6.for.inc.7_crit_edge
  %.sink26 = phi i16 [ %switch.load47, %switch.lookup45 ], [ 0, %for.inc.6.for.inc.7_crit_edge ]
  %arrayidx8.7 = getelementptr i16, ptr %vht_mask, i32 7
  %16 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %.sink26, ptr %arrayidx8.7, align 2
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/vht.c", i32 289, i32 3}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../net/mac80211/vht.c", i32 449, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../net/mac80211/vht.c", i32 650, i32 6}
!7 = !{ptr @__ksymtab_ieee80211_update_mu_groups, !8, !"__ksymtab_ieee80211_update_mu_groups", i1 false, i1 false}
!8 = !{!"../net/mac80211/vht.c", i32 656, i32 1}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i8 0, i8 2}
!19 = !{!"branch_weights", i32 2000, i32 1}
