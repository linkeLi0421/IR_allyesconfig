; ModuleID = '/llk/IR_all_yes/net/mac80211/ht.c_pt.bc'
source_filename = "../net/mac80211/ht.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ieee80211_request_smps\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_request_smps\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_request_smps\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_request_smps:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_request_smps\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_request_smps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.160, %struct.anon.194, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.126, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.126 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
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
%struct.ieee80211_if_ibss = type { %struct.timer_list, %struct.work_struct, i32, i32, i8, i8, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, ptr, %struct.cfg80211_chan_def, i32, ptr, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.spinlock, %struct.list_head, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
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
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.tid_ampdu_tx = type { %struct.callback_head, %struct.timer_list, %struct.timer_list, %struct.sk_buff_head, ptr, i32, i32, i16, i8, i8, i8, i16, i16, i16, i8, i8, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
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
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.161 }
%union.anon.161 = type { %struct.anon.167, [16 x i8] }
%struct.anon.167 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.anon.174 = type { i8, %union.anon.175 }
%union.anon.175 = type <{ %struct.anon.180, [17 x i8] }>
%struct.anon.180 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.anon.182 = type <{ i8, i16, i16 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.122, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.122 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@ieee80211_apply_htcap_overrides.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/mac80211/ht.c\00", [46 x i8] zeroinitializer }, align 32
@ieee80211_ht_cap_ie_to_sta_ht_cap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: delba from %pM (%s) tid %d reason code %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"initiator\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"recipient\00", [22 x i8] zeroinitializer }, align 32
@ieee80211_request_smps.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ieee80211_request_smps = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_request_smps = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_request_smps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_request_smps to i32), ptr @__kstrtab_ieee80211_request_smps, ptr @__kstrtabns_ieee80211_request_smps }, section "___ksymtab_gpl+ieee80211_request_smps", align 4
@rcu_dereference_protected_tid_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/mac80211/sta_info.h\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@ieee80211_tx_skb_tid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mac80211/ieee80211_i.h\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@switch.table.ieee80211_ht_cap_ie_to_sta_ht_cap = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 3, i32 2, i32 1], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.12 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.13 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 65, i32 3 }
@___asan_gen_.24 = private constant [21 x i8] c"../net/mac80211/ht.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 467, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [27 x i8] c"../net/mac80211/sta_info.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 755, i32 9 }
@___asan_gen_.36 = private unnamed_addr constant [30 x i8] c"../net/mac80211/ieee80211_i.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 2199, i32 17 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 695, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 723, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [47 x i8] c"switch.table.ieee80211_ht_cap_ie_to_sta_ht_cap\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_ieee80211_request_smps, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @switch.table.ieee80211_ht_cap_ie_to_sta_ht_cap], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_ht_cap_ie_to_sta_ht_cap to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_apply_htcap_overrides(ptr nocapture noundef readonly %sdata, ptr nocapture noundef %ht_cap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 1
  %0 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ht_supported, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %land.end [
    i32 2, label %sw.bb
    i32 1, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ht_capa1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 0, i32 24
  %ht_capa_mask3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 0, i32 50
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %u5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %ht_capa6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 7
  %ht_capa_mask8 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u5, i32 0, i32 19
  br label %sw.epilog

land.end:                                         ; preds = %if.end
  %.b160 = load i1, ptr @ieee80211_apply_htcap_overrides.__already_done, align 1
  br i1 %.b160, label %land.end.cleanup_crit_edge, label %if.then14, !prof !39

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_apply_htcap_overrides.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 65, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %ht_capa_mask.0 = phi ptr [ %ht_capa_mask8, %sw.bb4 ], [ %ht_capa_mask3, %sw.bb ]
  %ht_capa.0 = phi ptr [ %ht_capa6, %sw.bb4 ], [ %ht_capa1, %sw.bb ]
  %mcs = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %ht_capa.0, i32 0, i32 2
  %mcs44 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %ht_capa_mask.0, i32 0, i32 2
  %mcs46 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4
  %5 = ptrtoint ptr %mcs44 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mcs44, align 1
  %neg = xor i8 %6, -1
  %7 = ptrtoint ptr %mcs46 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mcs46, align 1
  %and = and i8 %8, %neg
  store i8 %and, ptr %mcs46, align 1
  %9 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mcs, align 1
  %and54158 = and i8 %10, %6
  %or159 = or i8 %and54158, %and
  store i8 %or159, ptr %mcs46, align 1
  %arrayidx.1 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_capa_mask.0, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1, align 1
  %neg.1 = xor i8 %12, -1
  %arrayidx48.1 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx48.1, align 1
  %and.1 = and i8 %14, %neg.1
  store i8 %and.1, ptr %arrayidx48.1, align 1
  %arrayidx52.1 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_capa.0, i32 0, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx52.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx52.1, align 1
  %and54158.1 = and i8 %16, %12
  %or159.1 = or i8 %and54158.1, %and.1
  store i8 %or159.1, ptr %arrayidx48.1, align 1
  %arrayidx.2 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_capa_mask.0, i32 0, i32 2, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2, align 1
  %neg.2 = xor i8 %18, -1
  %arrayidx48.2 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx48.2, align 1
  %and.2 = and i8 %20, %neg.2
  store i8 %and.2, ptr %arrayidx48.2, align 1
  %arrayidx52.2 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_capa.0, i32 0, i32 2, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx52.2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx52.2, align 1
  %and54158.2 = and i8 %22, %18
  %or159.2 = or i8 %and54158.2, %and.2
  store i8 %or159.2, ptr %arrayidx48.2, align 1
  %arrayidx.3 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_capa_mask.0, i32 0, i32 2, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.3, align 1
  %neg.3 = xor i8 %24, -1
  %arrayidx48.3 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx48.3, align 1
  %and.3 = and i8 %26, %neg.3
  store i8 %and.3, ptr %arrayidx48.3, align 1
  %arrayidx52.3 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_capa.0, i32 0, i32 2, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx52.3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx52.3, align 1
  %and54158.3 = and i8 %28, %24
  %or159.3 = or i8 %and54158.3, %and.3
  store i8 %or159.3, ptr %arrayidx48.3, align 1
  %arrayidx.4 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_capa_mask.0, i32 0, i32 2, i32 0, i32 4
  %29 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.4, align 1
  %neg.4 = xor i8 %30, -1
  %arrayidx48.4 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4, i32 0, i32 4
  %31 = ptrtoint ptr %arrayidx48.4 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx48.4, align 1
  %and.4 = and i8 %32, %neg.4
  store i8 %and.4, ptr %arrayidx48.4, align 1
  %arrayidx52.4 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_capa.0, i32 0, i32 2, i32 0, i32 4
  %33 = ptrtoint ptr %arrayidx52.4 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx52.4, align 1
  %and54158.4 = and i8 %34, %30
  %or159.4 = or i8 %and54158.4, %and.4
  store i8 %or159.4, ptr %arrayidx48.4, align 1
  %arrayidx.5 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_capa_mask.0, i32 0, i32 2, i32 0, i32 5
  %35 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.5, align 1
  %neg.5 = xor i8 %36, -1
  %arrayidx48.5 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4, i32 0, i32 5
  %37 = ptrtoint ptr %arrayidx48.5 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx48.5, align 1
  %and.5 = and i8 %38, %neg.5
  store i8 %and.5, ptr %arrayidx48.5, align 1
  %arrayidx52.5 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_capa.0, i32 0, i32 2, i32 0, i32 5
  %39 = ptrtoint ptr %arrayidx52.5 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx52.5, align 1
  %and54158.5 = and i8 %40, %36
  %or159.5 = or i8 %and54158.5, %and.5
  store i8 %or159.5, ptr %arrayidx48.5, align 1
  %arrayidx.6 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_capa_mask.0, i32 0, i32 2, i32 0, i32 6
  %41 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.6, align 1
  %neg.6 = xor i8 %42, -1
  %arrayidx48.6 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4, i32 0, i32 6
  %43 = ptrtoint ptr %arrayidx48.6 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx48.6, align 1
  %and.6 = and i8 %44, %neg.6
  store i8 %and.6, ptr %arrayidx48.6, align 1
  %arrayidx52.6 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_capa.0, i32 0, i32 2, i32 0, i32 6
  %45 = ptrtoint ptr %arrayidx52.6 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx52.6, align 1
  %and54158.6 = and i8 %46, %42
  %or159.6 = or i8 %and54158.6, %and.6
  store i8 %or159.6, ptr %arrayidx48.6, align 1
  %arrayidx.7 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_capa_mask.0, i32 0, i32 2, i32 0, i32 7
  %47 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.7, align 1
  %neg.7 = xor i8 %48, -1
  %arrayidx48.7 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4, i32 0, i32 7
  %49 = ptrtoint ptr %arrayidx48.7 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx48.7, align 1
  %and.7 = and i8 %50, %neg.7
  store i8 %and.7, ptr %arrayidx48.7, align 1
  %arrayidx52.7 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_capa.0, i32 0, i32 2, i32 0, i32 7
  %51 = ptrtoint ptr %arrayidx52.7 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx52.7, align 1
  %and54158.7 = and i8 %52, %48
  %or159.7 = or i8 %and54158.7, %and.7
  store i8 %or159.7, ptr %arrayidx48.7, align 1
  %arrayidx.8 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_capa_mask.0, i32 0, i32 2, i32 0, i32 8
  %53 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.8, align 1
  %neg.8 = xor i8 %54, -1
  %arrayidx48.8 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4, i32 0, i32 8
  %55 = ptrtoint ptr %arrayidx48.8 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx48.8, align 1
  %and.8 = and i8 %56, %neg.8
  store i8 %and.8, ptr %arrayidx48.8, align 1
  %arrayidx52.8 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_capa.0, i32 0, i32 2, i32 0, i32 8
  %57 = ptrtoint ptr %arrayidx52.8 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx52.8, align 1
  %and54158.8 = and i8 %58, %54
  %or159.8 = or i8 %and54158.8, %and.8
  store i8 %or159.8, ptr %arrayidx48.8, align 1
  %arrayidx.9 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_capa_mask.0, i32 0, i32 2, i32 0, i32 9
  %59 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.9, align 1
  %neg.9 = xor i8 %60, -1
  %arrayidx48.9 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4, i32 0, i32 9
  %61 = ptrtoint ptr %arrayidx48.9 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx48.9, align 1
  %and.9 = and i8 %62, %neg.9
  store i8 %and.9, ptr %arrayidx48.9, align 1
  %arrayidx52.9 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_capa.0, i32 0, i32 2, i32 0, i32 9
  %63 = ptrtoint ptr %arrayidx52.9 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx52.9, align 1
  %and54158.9 = and i8 %64, %60
  %or159.9 = or i8 %and54158.9, %and.9
  store i8 %or159.9, ptr %arrayidx48.9, align 1
  %65 = ptrtoint ptr %ht_capa_mask.0 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %ht_capa_mask.0, align 1
  %and15.i = and i16 %66, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and15.i)
  %tobool.not.i = icmp eq i16 %and15.i, 0
  br i1 %tobool.not.i, label %sw.epilog.__check_htcap_disable.exit_crit_edge, label %if.then.i

sw.epilog.__check_htcap_disable.exit_crit_edge:   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %__check_htcap_disable.exit

if.then.i:                                        ; preds = %sw.epilog
  %67 = ptrtoint ptr %ht_capa.0 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %ht_capa.0, align 1
  %and516.i = and i16 %68, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and516.i)
  %tobool6.not.i = icmp eq i16 %and516.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then.i.__check_htcap_disable.exit_crit_edge

if.then.i.__check_htcap_disable.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__check_htcap_disable.exit

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %ht_cap, align 2
  %and10.i = and i16 %70, -3
  store i16 %and10.i, ptr %ht_cap, align 2
  br label %__check_htcap_disable.exit

__check_htcap_disable.exit:                       ; preds = %if.then7.i, %if.then.i.__check_htcap_disable.exit_crit_edge, %sw.epilog.__check_htcap_disable.exit_crit_edge
  %71 = ptrtoint ptr %ht_capa_mask.0 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %ht_capa_mask.0, align 1
  %and15.i161 = and i16 %72, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and15.i161)
  %tobool.not.i162 = icmp eq i16 %and15.i161, 0
  br i1 %tobool.not.i162, label %__check_htcap_disable.exit.__check_htcap_disable.exit168_crit_edge, label %if.then.i165

__check_htcap_disable.exit.__check_htcap_disable.exit168_crit_edge: ; preds = %__check_htcap_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__check_htcap_disable.exit168

if.then.i165:                                     ; preds = %__check_htcap_disable.exit
  %73 = ptrtoint ptr %ht_capa.0 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %ht_capa.0, align 1
  %and516.i163 = and i16 %74, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and516.i163)
  %tobool6.not.i164 = icmp eq i16 %and516.i163, 0
  br i1 %tobool6.not.i164, label %if.then7.i167, label %if.then.i165.__check_htcap_disable.exit168_crit_edge

if.then.i165.__check_htcap_disable.exit168_crit_edge: ; preds = %if.then.i165
  call void @__sanitizer_cov_trace_pc() #10
  br label %__check_htcap_disable.exit168

if.then7.i167:                                    ; preds = %if.then.i165
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ht_cap, align 2
  %and10.i166 = and i16 %76, -65
  store i16 %and10.i166, ptr %ht_cap, align 2
  br label %__check_htcap_disable.exit168

__check_htcap_disable.exit168:                    ; preds = %if.then7.i167, %if.then.i165.__check_htcap_disable.exit168_crit_edge, %__check_htcap_disable.exit.__check_htcap_disable.exit168_crit_edge
  %77 = ptrtoint ptr %ht_capa_mask.0 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %ht_capa_mask.0, align 1
  %and15.i169 = and i16 %78, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and15.i169)
  %tobool.not.i170 = icmp eq i16 %and15.i169, 0
  br i1 %tobool.not.i170, label %__check_htcap_disable.exit168.__check_htcap_disable.exit176_crit_edge, label %if.then.i173

__check_htcap_disable.exit168.__check_htcap_disable.exit176_crit_edge: ; preds = %__check_htcap_disable.exit168
  call void @__sanitizer_cov_trace_pc() #10
  br label %__check_htcap_disable.exit176

if.then.i173:                                     ; preds = %__check_htcap_disable.exit168
  %79 = ptrtoint ptr %ht_capa.0 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %ht_capa.0, align 1
  %and516.i171 = and i16 %80, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and516.i171)
  %tobool6.not.i172 = icmp eq i16 %and516.i171, 0
  br i1 %tobool6.not.i172, label %if.then7.i175, label %if.then.i173.__check_htcap_disable.exit176_crit_edge

if.then.i173.__check_htcap_disable.exit176_crit_edge: ; preds = %if.then.i173
  call void @__sanitizer_cov_trace_pc() #10
  br label %__check_htcap_disable.exit176

if.then7.i175:                                    ; preds = %if.then.i173
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %ht_cap, align 2
  %and10.i174 = and i16 %82, -33
  store i16 %and10.i174, ptr %ht_cap, align 2
  br label %__check_htcap_disable.exit176

__check_htcap_disable.exit176:                    ; preds = %if.then7.i175, %if.then.i173.__check_htcap_disable.exit176_crit_edge, %__check_htcap_disable.exit168.__check_htcap_disable.exit176_crit_edge
  %83 = ptrtoint ptr %ht_capa_mask.0 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %ht_capa_mask.0, align 1
  %and15.i177 = and i16 %84, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and15.i177)
  %tobool.not.i178 = icmp eq i16 %and15.i177, 0
  br i1 %tobool.not.i178, label %__check_htcap_disable.exit176.__check_htcap_disable.exit184_crit_edge, label %if.then.i181

__check_htcap_disable.exit176.__check_htcap_disable.exit184_crit_edge: ; preds = %__check_htcap_disable.exit176
  call void @__sanitizer_cov_trace_pc() #10
  br label %__check_htcap_disable.exit184

if.then.i181:                                     ; preds = %__check_htcap_disable.exit176
  %85 = ptrtoint ptr %ht_capa.0 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %ht_capa.0, align 1
  %and516.i179 = and i16 %86, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and516.i179)
  %tobool6.not.i180 = icmp eq i16 %and516.i179, 0
  br i1 %tobool6.not.i180, label %if.then7.i183, label %if.then.i181.__check_htcap_disable.exit184_crit_edge

if.then.i181.__check_htcap_disable.exit184_crit_edge: ; preds = %if.then.i181
  call void @__sanitizer_cov_trace_pc() #10
  br label %__check_htcap_disable.exit184

if.then7.i183:                                    ; preds = %if.then.i181
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %ht_cap, align 2
  %and10.i182 = and i16 %88, -2049
  store i16 %and10.i182, ptr %ht_cap, align 2
  br label %__check_htcap_disable.exit184

__check_htcap_disable.exit184:                    ; preds = %if.then7.i183, %if.then.i181.__check_htcap_disable.exit184_crit_edge, %__check_htcap_disable.exit176.__check_htcap_disable.exit184_crit_edge
  %89 = ptrtoint ptr %ht_capa_mask.0 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %ht_capa_mask.0, align 1
  %and15.i185 = and i16 %90, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and15.i185)
  %tobool.not.i186 = icmp eq i16 %and15.i185, 0
  br i1 %tobool.not.i186, label %__check_htcap_disable.exit184.__check_htcap_disable.exit192_crit_edge, label %if.then.i189

__check_htcap_disable.exit184.__check_htcap_disable.exit192_crit_edge: ; preds = %__check_htcap_disable.exit184
  call void @__sanitizer_cov_trace_pc() #10
  br label %__check_htcap_disable.exit192

if.then.i189:                                     ; preds = %__check_htcap_disable.exit184
  %91 = ptrtoint ptr %ht_capa.0 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %ht_capa.0, align 1
  %and516.i187 = and i16 %92, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and516.i187)
  %tobool6.not.i188 = icmp eq i16 %and516.i187, 0
  br i1 %tobool6.not.i188, label %if.then7.i191, label %if.then.i189.__check_htcap_disable.exit192_crit_edge

if.then.i189.__check_htcap_disable.exit192_crit_edge: ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #10
  br label %__check_htcap_disable.exit192

if.then7.i191:                                    ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %ht_cap, align 2
  %and10.i190 = and i16 %94, -2
  store i16 %and10.i190, ptr %ht_cap, align 2
  br label %__check_htcap_disable.exit192

__check_htcap_disable.exit192:                    ; preds = %if.then7.i191, %if.then.i189.__check_htcap_disable.exit192_crit_edge, %__check_htcap_disable.exit184.__check_htcap_disable.exit192_crit_edge
  %95 = ptrtoint ptr %ht_capa_mask.0 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %ht_capa_mask.0, align 1
  %and12.i = and i16 %96, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and12.i)
  %tobool.not.i193 = icmp eq i16 %and12.i, 0
  br i1 %tobool.not.i193, label %__check_htcap_disable.exit192.__check_htcap_enable.exit_crit_edge, label %land.lhs.true.i

__check_htcap_disable.exit192.__check_htcap_enable.exit_crit_edge: ; preds = %__check_htcap_disable.exit192
  call void @__sanitizer_cov_trace_pc() #10
  br label %__check_htcap_enable.exit

land.lhs.true.i:                                  ; preds = %__check_htcap_disable.exit192
  %97 = ptrtoint ptr %ht_capa.0 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %ht_capa.0, align 1
  %and513.i = and i16 %98, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and513.i)
  %tobool6.not.i194 = icmp eq i16 %and513.i, 0
  br i1 %tobool6.not.i194, label %land.lhs.true.i.__check_htcap_enable.exitthread-pre-split_crit_edge, label %if.then.i195

land.lhs.true.i.__check_htcap_enable.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__check_htcap_enable.exitthread-pre-split

if.then.i195:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %ht_cap, align 2
  %or14.i = or i16 %100, 16384
  store i16 %or14.i, ptr %ht_cap, align 2
  br label %__check_htcap_enable.exitthread-pre-split

__check_htcap_enable.exitthread-pre-split:        ; preds = %if.then.i195, %land.lhs.true.i.__check_htcap_enable.exitthread-pre-split_crit_edge
  %101 = ptrtoint ptr %ht_capa_mask.0 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %.pr = load i16, ptr %ht_capa_mask.0, align 1
  br label %__check_htcap_enable.exit

__check_htcap_enable.exit:                        ; preds = %__check_htcap_enable.exitthread-pre-split, %__check_htcap_disable.exit192.__check_htcap_enable.exit_crit_edge
  %102 = phi i16 [ %.pr, %__check_htcap_enable.exitthread-pre-split ], [ %96, %__check_htcap_disable.exit192.__check_htcap_enable.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %102)
  %tobool.not.i197 = icmp sgt i16 %102, -1
  br i1 %tobool.not.i197, label %__check_htcap_enable.exit.__check_htcap_enable.exit203_crit_edge, label %land.lhs.true.i200

__check_htcap_enable.exit.__check_htcap_enable.exit203_crit_edge: ; preds = %__check_htcap_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__check_htcap_enable.exit203

land.lhs.true.i200:                               ; preds = %__check_htcap_enable.exit
  %103 = ptrtoint ptr %ht_capa.0 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %104 = load i16, ptr %ht_capa.0, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %104)
  %tobool6.not.i199 = icmp sgt i16 %104, -1
  br i1 %tobool6.not.i199, label %land.lhs.true.i200.__check_htcap_enable.exit203_crit_edge, label %if.then.i202

land.lhs.true.i200.__check_htcap_enable.exit203_crit_edge: ; preds = %land.lhs.true.i200
  call void @__sanitizer_cov_trace_pc() #10
  br label %__check_htcap_enable.exit203

if.then.i202:                                     ; preds = %land.lhs.true.i200
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %ht_cap, align 2
  %or14.i201 = or i16 %106, 128
  store i16 %or14.i201, ptr %ht_cap, align 2
  br label %__check_htcap_enable.exit203

__check_htcap_enable.exit203:                     ; preds = %if.then.i202, %land.lhs.true.i200.__check_htcap_enable.exit203_crit_edge, %__check_htcap_enable.exit.__check_htcap_enable.exit203_crit_edge
  %107 = ptrtoint ptr %ht_capa_mask.0 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %ht_capa_mask.0, align 1
  %109 = and i16 %108, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool62.not = icmp eq i16 %109, 0
  br i1 %tobool62.not, label %__check_htcap_enable.exit203.if.end70_crit_edge, label %if.then63

__check_htcap_enable.exit203.if.end70_crit_edge:  ; preds = %__check_htcap_enable.exit203
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then63:                                        ; preds = %__check_htcap_enable.exit203
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %ht_capa.0 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 2)
  %111 = load i16, ptr %ht_capa.0, align 1
  %112 = shl i16 %111, 8
  %113 = and i16 %112, 768
  %114 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %ht_cap, align 2
  %or68157 = or i16 %113, %115
  store i16 %or68157, ptr %ht_cap, align 2
  br label %if.end70

if.end70:                                         ; preds = %if.then63, %__check_htcap_enable.exit203.if.end70_crit_edge
  %ampdu_params_info = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %ht_capa_mask.0, i32 0, i32 1
  %116 = ptrtoint ptr %ampdu_params_info to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %ampdu_params_info, align 1
  %118 = and i8 %117, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool73.not = icmp eq i8 %118, 0
  br i1 %tobool73.not, label %if.end70.if.end86_crit_edge, label %if.then74

if.end70.if.end86_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then74:                                        ; preds = %if.end70
  %ampdu_params_info75 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %ht_capa.0, i32 0, i32 1
  %119 = ptrtoint ptr %ampdu_params_info75 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %ampdu_params_info75, align 1
  %121 = and i8 %120, 3
  %ampdu_factor = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 2
  %122 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %ampdu_factor, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %121, i8 %123)
  %cmp81 = icmp ult i8 %121, %123
  br i1 %cmp81, label %if.then83, label %if.then74.if.end86_crit_edge

if.then74.if.end86_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then83:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  %124 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %121, ptr %ampdu_factor, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.then74.if.end86_crit_edge, %if.end70.if.end86_crit_edge
  %125 = ptrtoint ptr %ampdu_params_info to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %ampdu_params_info, align 1
  %127 = and i8 %126, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool90.not = icmp eq i8 %127, 0
  br i1 %tobool90.not, label %if.end86.cleanup_crit_edge, label %if.then91

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then91:                                        ; preds = %if.end86
  %ampdu_params_info93 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %ht_capa.0, i32 0, i32 1
  %128 = ptrtoint ptr %ampdu_params_info93 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %ampdu_params_info93, align 1
  %130 = lshr i8 %129, 2
  %131 = and i8 %130, 7
  %ampdu_density = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 3
  %132 = ptrtoint ptr %ampdu_density to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %ampdu_density, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %131, i8 %133)
  %cmp99 = icmp ugt i8 %131, %133
  br i1 %cmp99, label %if.then101, label %if.then91.cleanup_crit_edge

if.then91.cleanup_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then101:                                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  %134 = ptrtoint ptr %ampdu_density to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %131, ptr %ampdu_density, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then101, %if.then91.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %if.then14, %land.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ieee80211_ht_cap_ie_to_sta_ht_cap(ptr nocapture noundef readonly %sdata, ptr nocapture noundef readonly %sband, ptr noundef readonly %ht_cap_ie, ptr nocapture noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  %ht_cap = alloca %struct.ieee80211_sta_ht_cap, align 2
  %own_cap = alloca %struct.ieee80211_sta_ht_cap, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %ht_cap) #8
  %0 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4
  %4 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4, i32 0, i32 4
  %5 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4, i32 1
  %6 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4, i32 2
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %own_cap) #8
  %7 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %own_cap, i32 0, i32 4
  %8 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %own_cap, i32 0, i32 4, i32 0, i32 4
  %9 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %own_cap, i32 0, i32 4, i32 2
  %10 = call ptr @memset(ptr %ht_cap, i32 0, i32 22)
  %tobool.not = icmp eq ptr %ht_cap_ie, null
  br i1 %tobool.not, label %entry.apply_crit_edge, label %lor.lhs.false

entry.apply_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %apply

lor.lhs.false:                                    ; preds = %entry
  %ht_supported = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ht_supported, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %lor.lhs.false.apply_crit_edge, label %if.end

lor.lhs.false.apply_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %apply

if.end:                                           ; preds = %lor.lhs.false
  %ht_cap1 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 5
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %0, align 2
  %14 = call ptr @memcpy(ptr %own_cap, ptr %ht_cap1, i32 22)
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %15 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vif, align 8
  %.off = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @ieee80211_apply_htcap_overrides(ptr noundef %sdata, ptr noundef nonnull %own_cap)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %17 = ptrtoint ptr %ht_cap_ie to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %ht_cap_ie, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %20 = ptrtoint ptr %own_cap to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %own_cap, align 2
  %22 = or i16 %21, -4212
  %and254 = and i16 %22, %19
  %23 = and i16 %21, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool17.not = icmp eq i16 %23, 0
  %24 = and i16 %and254, -769
  %spec.select = select i1 %tobool17.not, i16 %24, i16 %and254
  %25 = and i16 %21, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool27.not = icmp eq i16 %25, 0
  %26 = and i16 %spec.select, -129
  %spec.select261 = select i1 %tobool27.not, i16 %26, i16 %spec.select
  %27 = ptrtoint ptr %ht_cap to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %spec.select261, ptr %ht_cap, align 2
  %ampdu_params_info = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %ht_cap_ie, i32 0, i32 1
  %28 = ptrtoint ptr %ampdu_params_info to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ampdu_params_info, align 1
  %and35 = and i8 %29, 3
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %and35, ptr %1, align 1
  %31 = lshr i8 %29, 2
  %32 = and i8 %31, 7
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %2, align 2
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %9, align 1
  %mcs40 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %ht_cap_ie, i32 0, i32 2
  %tx_params41 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %ht_cap_ie, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %tx_params41 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tx_params41, align 1
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %6, align 1
  %conv44 = zext i8 %35 to i32
  %and45 = and i32 %conv44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end10.apply_crit_edge, label %if.end48

if.end10.apply_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %apply

if.end48:                                         ; preds = %if.end10
  %and50 = and i32 %conv44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %and54 = lshr i32 %conv44, 2
  %39 = and i32 %and54, 3
  %add = add nuw nsw i32 %39, 1
  %max_tx_streams.0 = select i1 %tobool51.not, i32 4, i32 %add
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end48
  %i.0262 = phi i32 [ 0, %if.end48 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [10 x i8], ptr %7, i32 0, i32 %i.0262
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx, align 1
  %arrayidx63 = getelementptr [10 x i8], ptr %mcs40, i32 0, i32 %i.0262
  %42 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx63, align 1
  %and65257 = and i8 %43, %41
  %arrayidx69 = getelementptr [10 x i8], ptr %3, i32 0, i32 %i.0262
  %44 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %and65257, ptr %arrayidx69, align 1
  %inc = add nuw nsw i32 %i.0262, 1
  %exitcond.not = icmp eq i32 %inc, %max_tx_streams.0
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %and71 = and i32 %conv44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %for.end.if.end94_crit_edge, label %for.body77.preheader

for.end.if.end94_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

for.body77.preheader:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx80 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %own_cap, i32 0, i32 4, i32 0, i32 4
  %45 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx80, align 1
  %arrayidx84 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_cap_ie, i32 0, i32 2, i32 0, i32 4
  %47 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx84, align 1
  %and86256 = and i8 %48, %46
  %arrayidx90 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4, i32 0, i32 4
  %49 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %and86256, ptr %arrayidx90, align 1
  %arrayidx80.1 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %own_cap, i32 0, i32 4, i32 0, i32 5
  %50 = ptrtoint ptr %arrayidx80.1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx80.1, align 2
  %arrayidx84.1 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_cap_ie, i32 0, i32 2, i32 0, i32 5
  %52 = ptrtoint ptr %arrayidx84.1 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx84.1, align 1
  %and86256.1 = and i8 %53, %51
  %arrayidx90.1 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4, i32 0, i32 5
  %54 = ptrtoint ptr %arrayidx90.1 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %and86256.1, ptr %arrayidx90.1, align 2
  %arrayidx80.2 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %own_cap, i32 0, i32 4, i32 0, i32 6
  %55 = ptrtoint ptr %arrayidx80.2 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx80.2, align 1
  %arrayidx84.2 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_cap_ie, i32 0, i32 2, i32 0, i32 6
  %57 = ptrtoint ptr %arrayidx84.2 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx84.2, align 1
  %and86256.2 = and i8 %58, %56
  %arrayidx90.2 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4, i32 0, i32 6
  %59 = ptrtoint ptr %arrayidx90.2 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %and86256.2, ptr %arrayidx90.2, align 1
  %arrayidx80.3 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %own_cap, i32 0, i32 4, i32 0, i32 7
  %60 = ptrtoint ptr %arrayidx80.3 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx80.3, align 2
  %arrayidx84.3 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_cap_ie, i32 0, i32 2, i32 0, i32 7
  %62 = ptrtoint ptr %arrayidx84.3 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx84.3, align 1
  %and86256.3 = and i8 %63, %61
  %arrayidx90.3 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4, i32 0, i32 7
  %64 = ptrtoint ptr %arrayidx90.3 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %and86256.3, ptr %arrayidx90.3, align 2
  %arrayidx80.4 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %own_cap, i32 0, i32 4, i32 0, i32 8
  %65 = ptrtoint ptr %arrayidx80.4 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx80.4, align 1
  %arrayidx84.4 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_cap_ie, i32 0, i32 2, i32 0, i32 8
  %67 = ptrtoint ptr %arrayidx84.4 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx84.4, align 1
  %and86256.4 = and i8 %68, %66
  %arrayidx90.4 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4, i32 0, i32 8
  %69 = ptrtoint ptr %arrayidx90.4 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %and86256.4, ptr %arrayidx90.4, align 1
  %arrayidx80.5 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %own_cap, i32 0, i32 4, i32 0, i32 9
  %70 = ptrtoint ptr %arrayidx80.5 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx80.5, align 2
  %arrayidx84.5 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_cap_ie, i32 0, i32 2, i32 0, i32 9
  %72 = ptrtoint ptr %arrayidx84.5 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx84.5, align 1
  %and86256.5 = and i8 %73, %71
  %arrayidx90.5 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap, i32 0, i32 4, i32 0, i32 9
  %74 = ptrtoint ptr %arrayidx90.5 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %and86256.5, ptr %arrayidx90.5, align 2
  br label %if.end94

if.end94:                                         ; preds = %for.body77.preheader, %for.end.if.end94_crit_edge
  %75 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %8, align 1
  %arrayidx101 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_cap_ie, i32 0, i32 2, i32 0, i32 4
  %77 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx101, align 1
  %and103255 = and i8 %76, 1
  %79 = and i8 %and103255, %78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool105.not = icmp eq i8 %79, 0
  br i1 %tobool105.not, label %if.end94.if.end113_crit_edge, label %if.then106

if.end94.if.end113_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then106:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %4, align 1
  %82 = or i8 %81, 1
  store i8 %82, ptr %4, align 1
  br label %if.end113

if.end113:                                        ; preds = %if.then106, %if.end94.if.end113_crit_edge
  %rx_highest = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %ht_cap_ie, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %rx_highest to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %rx_highest, align 1
  %85 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 %84, ptr %5, align 1
  %86 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %ht_cap, align 2
  %88 = and i16 %87, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool120.not = icmp eq i16 %88, 0
  %max_amsdu_len125 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 21
  %. = select i1 %tobool120.not, i16 3839, i16 7935
  %89 = ptrtoint ptr %max_amsdu_len125 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %., ptr %max_amsdu_len125, align 8
  br label %apply

apply:                                            ; preds = %if.end113, %if.end10.apply_crit_edge, %lor.lhs.false.apply_crit_edge, %entry.apply_crit_edge
  %ht_cap128 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 3
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(22) %ht_cap128, ptr noundef nonnull dereferenceable(22) %ht_cap, i32 22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool129 = icmp ne i32 %bcmp, 0
  %90 = call ptr @memcpy(ptr %ht_cap128, ptr %ht_cap, i32 22)
  %width = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 1
  %91 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %width, align 4
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %92, label %land.end [
    i32 0, label %apply.sw.epilog_crit_edge
    i32 1, label %apply.sw.epilog_crit_edge265
    i32 2, label %apply.sw.bb169_crit_edge
    i32 3, label %apply.sw.bb169_crit_edge266
    i32 4, label %apply.sw.bb169_crit_edge267
    i32 5, label %apply.sw.bb169_crit_edge268
  ]

apply.sw.bb169_crit_edge268:                      ; preds = %apply
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb169

apply.sw.bb169_crit_edge267:                      ; preds = %apply
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb169

apply.sw.bb169_crit_edge266:                      ; preds = %apply
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb169

apply.sw.bb169_crit_edge:                         ; preds = %apply
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb169

apply.sw.epilog_crit_edge265:                     ; preds = %apply
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

apply.sw.epilog_crit_edge:                        ; preds = %apply
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.end:                                         ; preds = %apply
  %.b253 = load i1, ptr @ieee80211_ht_cap_ie_to_sta_ht_cap.__already_done, align 1
  br i1 %.b253, label %land.end.sw.epilog_crit_edge, label %if.then139, !prof !39

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then139:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_ht_cap_ie_to_sta_ht_cap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef null) #8
  br label %sw.epilog

sw.bb169:                                         ; preds = %apply.sw.bb169_crit_edge, %apply.sw.bb169_crit_edge266, %apply.sw.bb169_crit_edge267, %apply.sw.bb169_crit_edge268
  %94 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %ht_cap, align 2
  %96 = lshr i16 %95, 1
  %.lobit = and i16 %96, 1
  %97 = zext i16 %.lobit to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb169, %if.then139, %land.end.sw.epilog_crit_edge, %apply.sw.epilog_crit_edge, %apply.sw.epilog_crit_edge265
  %bw.0 = phi i32 [ %97, %sw.bb169 ], [ 0, %land.end.sw.epilog_crit_edge ], [ 0, %if.then139 ], [ 0, %apply.sw.epilog_crit_edge ], [ 0, %apply.sw.epilog_crit_edge265 ]
  %bandwidth = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 14
  %98 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %bw.0, ptr %bandwidth, align 8
  %99 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %ht_cap, align 2
  %101 = lshr i16 %100, 1
  %.lobit251 = and i16 %101, 1
  %102 = zext i16 %.lobit251 to i32
  %cur_max_bandwidth = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 41
  %103 = ptrtoint ptr %cur_max_bandwidth to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %cur_max_bandwidth, align 4
  %sdata180 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %104 = ptrtoint ptr %sdata180 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sdata180, align 4
  %vif181 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %105, i32 0, i32 59
  %106 = ptrtoint ptr %vif181 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %vif181, align 8
  %.off259 = add i32 %107, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off259)
  %switch260 = icmp ult i32 %.off259, 2
  br i1 %switch260, label %if.then191, label %if.else208

if.then191:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %108 = lshr i16 %100, 2
  %109 = and i16 %108, 3
  %110 = zext i16 %109 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ieee80211_ht_cap_ie_to_sta_ht_cap, i32 0, i32 %110
  %111 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %111)
  %switch.load = load i32, ptr %switch.gep, align 4
  %smps_mode201 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 15
  %112 = ptrtoint ptr %smps_mode201 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %smps_mode201, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load, i32 %113)
  %cmp202.not = icmp ne i32 %switch.load, %113
  %spec.select258 = select i1 %cmp202.not, i1 true, i1 %tobool129
  %114 = ptrtoint ptr %smps_mode201 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %switch.load, ptr %smps_mode201, align 4
  br label %if.end211

if.else208:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %smps_mode210 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 15
  %115 = ptrtoint ptr %smps_mode210 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %smps_mode210, align 4
  br label %if.end211

if.end211:                                        ; preds = %if.else208, %if.then191
  %changed.1.off0 = phi i1 [ %spec.select258, %if.then191 ], [ %tobool129, %if.else208 ]
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %own_cap) #8
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %ht_cap) #8
  ret i1 %changed.1.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_tear_down_BA_sessions(ptr noundef %sta, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ampdu_mlme = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %ampdu_mlme, i32 noundef 0) #8
  %0 = add i32 %reason, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %0)
  %1 = icmp ult i32 %0, -2
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %1) #8
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %1) #8
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext 2, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %1) #8
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %1) #8
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext 4, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %1) #8
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext 5, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %1) #8
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext 6, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %1) #8
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext 7, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %1) #8
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext 8, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %1) #8
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext 9, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %1) #8
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext 10, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %1) #8
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext 11, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %1) #8
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext 12, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %1) #8
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext 13, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %1) #8
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext 14, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %1) #8
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext 15, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %1) #8
  %call = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 0, i32 noundef %reason) #8
  %call.1 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 1, i32 noundef %reason) #8
  %call.2 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 2, i32 noundef %reason) #8
  %call.3 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 3, i32 noundef %reason) #8
  %call.4 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 4, i32 noundef %reason) #8
  %call.5 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 5, i32 noundef %reason) #8
  %call.6 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 6, i32 noundef %reason) #8
  %call.7 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 7, i32 noundef %reason) #8
  %call.8 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 8, i32 noundef %reason) #8
  %call.9 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 9, i32 noundef %reason) #8
  %call.10 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 10, i32 noundef %reason) #8
  %call.11 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 11, i32 noundef %reason) #8
  %call.12 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 12, i32 noundef %reason) #8
  %call.13 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 13, i32 noundef %reason) #8
  %call.14 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 14, i32 noundef %reason) #8
  %call.15 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 15, i32 noundef %reason) #8
  tail call void @mutex_unlock(ptr noundef %ampdu_mlme) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reason)
  %cmp15 = icmp eq i32 %reason, 3
  br i1 %cmp15, label %if.then, label %entry.if.end36_crit_edge

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then:                                          ; preds = %entry
  %work = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 8
  %call18 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #8
  tail call void @mutex_lock_nested(ptr noundef %ampdu_mlme, i32 noundef 0) #8
  %dep_map.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 13, i32 0, i32 0, i32 4
  %dep_map1.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 0, i32 5
  br label %for.body24

for.body24:                                       ; preds = %cleanup.for.body24_crit_edge, %if.then
  %i.261 = phi i32 [ 0, %if.then ], [ %inc32, %cleanup.for.body24_crit_edge ]
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body24.rcu_dereference_protected_tid_tx.exit_crit_edge

for.body24.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

lor.lhs.false.i:                                  ; preds = %for.body24
  %call.i12.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map1.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool3.not.i = icmp eq i32 %call.i12.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge

lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @rcu_dereference_protected_tid_tx.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge, label %if.then.i

land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_dereference_protected_tid_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 757, ptr noundef nonnull @.str.5) #8
  br label %rcu_dereference_protected_tid_tx.exit

rcu_dereference_protected_tid_tx.exit:            ; preds = %if.then.i, %land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %for.body24.rcu_dereference_protected_tid_tx.exit_crit_edge
  %arrayidx.i = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 39, i32 9, i32 %i.261
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %rcu_dereference_protected_tid_tx.exit.cleanup_crit_edge, label %if.end

rcu_dereference_protected_tid_tx.exit.cleanup_crit_edge: ; preds = %rcu_dereference_protected_tid_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %rcu_dereference_protected_tid_tx.exit
  %state = getelementptr inbounds %struct.tid_ampdu_tx, ptr %3, i32 0, i32 5
  %call27 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end.cleanup_crit_edge, label %if.then29

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_stop_tx_ba_cb(ptr noundef %sta, i32 noundef %i.261, ptr noundef nonnull %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end.cleanup_crit_edge, %rcu_dereference_protected_tid_tx.exit.cleanup_crit_edge
  %inc32 = add nuw nsw i32 %i.261, 1
  %exitcond.not = icmp eq i32 %inc32, 16
  br i1 %exitcond.not, label %for.end33, label %cleanup.for.body24_crit_edge

cleanup.for.body24_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24

for.end33:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %ampdu_mlme) #8
  br label %if.end36

if.end36:                                         ; preds = %for.end33, %entry.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @___ieee80211_stop_rx_ba_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ieee80211_stop_tx_ba_session(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_tx_ba_cb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_ba_session_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2072
  %_flags.i = getelementptr i8, ptr %work, i32 -1804
  %0 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %_flags.i, align 4
  %2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %ampdu_mlme = getelementptr i8, ptr %work, i32 -192
  tail call void @mutex_lock_nested(ptr noundef %ampdu_mlme, i32 noundef 0) #8
  %tid_rx_timer_expired = getelementptr i8, ptr %work, i32 -20
  %tid_rx_stop_requested = getelementptr i8, ptr %work, i32 -16
  %tid_rx_manage_offl = getelementptr i8, ptr %work, i32 -12
  %lock = getelementptr i8, ptr %work, i32 -1920
  %tid_start_tx = getelementptr i8, ptr %work, i32 108
  %tobool.not.not = xor i1 %tobool.not, true
  %tid_tx36 = getelementptr i8, ptr %work, i32 44
  %dep_map.i = getelementptr i8, ptr %work, i32 -1904
  %dep_map1.i = getelementptr i8, ptr %work, i32 -128
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %tid.0118 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef %tid.0118, ptr noundef %tid_rx_timer_expired) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %tid.0118 to i16
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %add.ptr, i16 noundef zeroext %conv, i16 noundef zeroext 0, i16 noundef zeroext 39, i1 noundef zeroext true) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %call6 = tail call i32 @_test_and_clear_bit(i32 noundef %tid.0118, ptr noundef %tid_rx_stop_requested) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv9 = trunc i32 %tid.0118 to i16
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %add.ptr, i16 noundef zeroext %conv9, i16 noundef zeroext 0, i16 noundef zeroext 1, i1 noundef zeroext true) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  br i1 %tobool.not, label %land.lhs.true, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end10
  %call14 = tail call i32 @_test_and_clear_bit(i32 noundef %tid.0118, ptr noundef %tid_rx_manage_offl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end18_crit_edge, label %if.then16

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %conv17 = trunc i32 %tid.0118 to i16
  tail call void @___ieee80211_start_rx_ba_session(ptr noundef %add.ptr, i8 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext %conv17, i16 noundef zeroext 64, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef null) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %land.lhs.true.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  %add = add nuw nsw i32 %tid.0118, 16
  %call22 = tail call i32 @_test_and_clear_bit(i32 noundef %add, ptr noundef %tid_rx_manage_offl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end18.if.end26_crit_edge, label %if.then24

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %conv25 = trunc i32 %tid.0118 to i16
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %add.ptr, i16 noundef zeroext %conv25, i16 noundef zeroext 0, i16 noundef zeroext 0, i1 noundef zeroext false) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end18.if.end26_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %arrayidx = getelementptr [16 x ptr], ptr %tid_start_tx, i32 0, i32 %tid.0118
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool30.not = icmp eq ptr %4, null
  %or.cond = select i1 %tobool.not.not, i1 true, i1 %tobool30.not
  br i1 %or.cond, label %if.end42, label %if.then31

if.then31:                                        ; preds = %if.end26
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx37 = getelementptr [16 x ptr], ptr %tid_tx36, i32 0, i32 %tid.0118
  %6 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq ptr %7, null
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %4) #8
  br label %if.end40

if.else:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_assign_tid_tx(ptr noundef %add.ptr, i32 noundef %tid.0118, ptr noundef nonnull %4) #8
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then39
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  tail call void @ieee80211_tx_ba_session_handle_start(ptr noundef %add.ptr, i32 noundef %tid.0118) #8
  br label %for.inc

if.end42:                                         ; preds = %if.end26
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end42.rcu_dereference_protected_tid_tx.exit_crit_edge

if.end42.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

lor.lhs.false.i:                                  ; preds = %if.end42
  %call.i12.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map1.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool3.not.i = icmp eq i32 %call.i12.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge

lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @rcu_dereference_protected_tid_tx.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge, label %if.then.i

land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_dereference_protected_tid_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 757, ptr noundef nonnull @.str.5) #8
  br label %rcu_dereference_protected_tid_tx.exit

rcu_dereference_protected_tid_tx.exit:            ; preds = %if.then.i, %land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %if.end42.rcu_dereference_protected_tid_tx.exit_crit_edge
  %arrayidx.i = getelementptr %struct.sta_info, ptr %add.ptr, i32 0, i32 39, i32 9, i32 %tid.0118
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool45.not = icmp eq ptr %9, null
  br i1 %tobool45.not, label %rcu_dereference_protected_tid_tx.exit.for.inc_crit_edge, label %if.end47

rcu_dereference_protected_tid_tx.exit.for.inc_crit_edge: ; preds = %rcu_dereference_protected_tid_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end47:                                         ; preds = %rcu_dereference_protected_tid_tx.exit
  br i1 %tobool.not, label %land.lhs.true49, label %if.end47.if.end53_crit_edge

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.lhs.true49:                                  ; preds = %if.end47
  %state = getelementptr inbounds %struct.tid_ampdu_tx, ptr %9, i32 0, i32 5
  %call50 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true49.if.end53_crit_edge, label %if.then52

land.lhs.true49.if.end53_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then52:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_start_tx_ba_cb(ptr noundef %add.ptr, i32 noundef %tid.0118, ptr noundef nonnull %9) #8
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %land.lhs.true49.if.end53_crit_edge, %if.end47.if.end53_crit_edge
  %state54 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %9, i32 0, i32 5
  %call55 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %state54) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end53.if.end60_crit_edge, label %if.then57

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %conv58 = trunc i32 %tid.0118 to i16
  %call59 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %add.ptr, i16 noundef zeroext %conv58, i32 noundef 1) #8
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end53.if.end60_crit_edge
  %call62 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %state54) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end60.for.inc_crit_edge, label %if.then64

if.end60.for.inc_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_stop_tx_ba_cb(ptr noundef %add.ptr, i32 noundef %tid.0118, ptr noundef nonnull %9) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then64, %if.end60.for.inc_crit_edge, %rcu_dereference_protected_tid_tx.exit.for.inc_crit_edge, %if.end40
  %inc = add nuw nsw i32 %tid.0118, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %ampdu_mlme) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @___ieee80211_start_rx_ba_session(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_assign_tid_tx(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_ba_session_handle_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_start_tx_ba_cb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_send_delba(ptr noundef %sdata, ptr nocapture noundef readonly %da, i16 noundef zeroext %tid, i16 noundef zeroext %initiator, i16 noundef zeroext %reason_code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extra_tx_headroom, align 4
  %add = add i32 %3, 50
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extra_tx_headroom, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 %5
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 24) #8
  %10 = call ptr @memset(ptr %call.i, i32 0, i32 24)
  %da5 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %da5, ptr %da, i32 6)
  %sa = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i, i32 0, i32 3
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %12 = call ptr @memcpy(ptr %sa, ptr %addr, i32 6)
  %13 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vif, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %14, label %if.end.if.end41_crit_edge [
    i32 3, label %if.end.if.then16_crit_edge
    i32 4, label %if.end.if.then16_crit_edge88
    i32 7, label %if.end.if.then16_crit_edge89
    i32 2, label %if.then24
    i32 1, label %if.then33
  ]

if.end.if.then16_crit_edge89:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.end.if.then16_crit_edge88:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then16:                                        ; preds = %if.end.if.then16_crit_edge, %if.end.if.then16_crit_edge88, %if.end.if.then16_crit_edge89
  %bssid = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i, i32 0, i32 4
  %16 = call ptr @memcpy(ptr %bssid, ptr %addr, i32 6)
  br label %if.end41

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %bssid25 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i, i32 0, i32 4
  %bssid27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 25
  %17 = call ptr @memcpy(ptr %bssid25, ptr %bssid27, i32 6)
  br label %if.end41

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %bssid34 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i, i32 0, i32 4
  %u36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %bssid37 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u36, i32 0, i32 10
  %18 = call ptr @memcpy(ptr %bssid34, ptr %bssid37, i32 6)
  br label %if.end41

if.end41:                                         ; preds = %if.then33, %if.then24, %if.then16, %if.end.if.end41_crit_edge
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -12288, ptr %call.i, align 2
  %call42 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 6) #8
  %u43 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %u43 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %u43, align 2
  %u45 = getelementptr inbounds %struct.anon.174, ptr %u43, i32 0, i32 1
  %21 = ptrtoint ptr %u45 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %u45, align 1
  %shl = shl i16 %initiator, 11
  %shl48 = shl i16 %tid, 12
  %or87 = or i16 %shl, %shl48
  %22 = lshr exact i16 %or87, 8
  %params55 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %23 = ptrtoint ptr %params55 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %params55, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %reason_code)
  %reason_code58 = getelementptr inbounds %struct.anon.182, ptr %u45, i32 0, i32 2
  %25 = ptrtoint ptr %reason_code58 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %reason_code58, align 1
  tail call fastcc void @ieee80211_tx_skb(ptr noundef %sdata, ptr noundef nonnull %call.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_tx_skb(ptr noundef %sdata, ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !40
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %chanctx_conf1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %4 = ptrtoint ptr %chanctx_conf1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %chanctx_conf1.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end8.i_crit_edge

rcu_read_lock.exit.i.do.end8.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @ieee80211_tx_skb_tid.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_tx_skb_tid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 2199, ptr noundef nonnull @.str.7) #8
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %rcu_read_lock.exit.i.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %5, null
  br i1 %tobool10.not.i, label %do.end23.i, label %if.end39.i, !prof !41

do.end23.i:                                       ; preds = %do.end8.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2200, i32 noundef 9, ptr noundef null) #8
  %call.i1 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i1, label %do.end23.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i3

do.end23.i.rcu_read_unlock.exit_crit_edge:        ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i3:                                 ; preds = %do.end23.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i2 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i2, label %land.lhs.true.i3.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i3.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i3
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i3
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i4

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i4:                                       ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i4, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i3.rcu_read_unlock.exit_crit_edge, %do.end23.i.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !42
  %6 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %ieee80211_tx_skb_tid.exit

if.end39.i:                                       ; preds = %do.end8.i
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %sdata, ptr noundef %skb, i32 noundef 7, i32 noundef %13) #8
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i2.i, label %if.end39.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i5.i

if.end39.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i5.i:                               ; preds = %if.end39.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, %if.end39.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !42
  %14 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i.i.i9.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %ieee80211_tx_skb_tid.exit

ieee80211_tx_skb_tid.exit:                        ; preds = %rcu_read_unlock.exit.i, %rcu_read_unlock.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_process_delba(ptr noundef %sdata, ptr noundef %sta, ptr noundef %mgmt, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6
  %u1 = getelementptr inbounds %struct.anon.174, ptr %u, i32 0, i32 1
  %params2 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 0, i32 1
  %0 = ptrtoint ptr %params2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %params2, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = lshr i16 %2, 12
  %call = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp ne i32 %call, 0
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %sa = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 3
  %4 = and i16 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool10.not = icmp eq i16 %4, 0
  %cond = select i1 %tobool10.not, ptr @.str.3, ptr @.str.2
  %conv11 = zext i16 %3 to i32
  %reason_code = getelementptr inbounds %struct.anon.182, ptr %u1, i32 0, i32 2
  %5 = ptrtoint ptr %reason_code to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %reason_code, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv14 = zext i16 %7 to i32
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext %tobool, ptr noundef nonnull @.str.1, ptr noundef %name, ptr noundef %sa, ptr noundef nonnull %cond, i32 noundef %conv11, i32 noundef %conv14) #8
  br i1 %tobool10.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext %3, i16 noundef zeroext 1, i16 noundef zeroext 0, i1 noundef zeroext true) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 @__ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext %3, i32 noundef 2) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_dbg(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_stop_rx_ba_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ieee80211_stop_tx_ba_session(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee80211_smps_mode_to_smps_mode(i32 noundef %smps) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smps)
  %switch.selectcmp = icmp eq i32 %smps, 2
  %switch.select = zext i1 %switch.selectcmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smps)
  %switch.selectcmp3 = icmp eq i32 %smps, 3
  %switch.select4 = select i1 %switch.selectcmp3, i32 2, i32 %switch.select
  ret i32 %switch.select4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_send_smps_action(ptr noundef %sdata, i32 noundef %smps, ptr nocapture noundef readonly %da, ptr nocapture noundef readonly %bssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extra_tx_headroom, align 4
  %add = add i32 %3, 27
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extra_tx_headroom, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 %5
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 27) #8
  %da5 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call4, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %da5, ptr %da, i32 6)
  %sa = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call4, i32 0, i32 3
  %dev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr, align 64
  %15 = call ptr @memcpy(ptr %sa, ptr %14, i32 6)
  %bssid7 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call4, i32 0, i32 4
  %16 = call ptr @memcpy(ptr %bssid7, ptr %bssid, i32 6)
  %17 = ptrtoint ptr %call4 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -12288, ptr %call4, align 2
  %u = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call4, i32 0, i32 6
  %18 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 7, ptr %u, align 2
  %u10 = getelementptr inbounds %struct.anon.174, ptr %u, i32 0, i32 1
  %19 = ptrtoint ptr %u10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %u10, align 1
  %20 = zext i32 %smps to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %smps, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.end.do.end_crit_edge
    i32 4, label %if.end.do.end_crit_edge58
    i32 1, label %if.end.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb31
    i32 3, label %sw.bb35
  ]

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end.do.end_crit_edge58:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end.do.end_crit_edge58
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 519, i32 noundef 9, ptr noundef null) #8
  br label %sw.epilog.sink.split

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb35, %sw.bb31, %do.end, %if.end.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 3, %sw.bb35 ], [ 1, %sw.bb31 ], [ 0, %if.end.sw.epilog.sink.split_crit_edge ], [ 0, %do.end ]
  %smps_control38 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call4, i32 0, i32 6, i32 0, i32 1
  %21 = ptrtoint ptr %smps_control38 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink, ptr %smps_control38, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cb.i, align 8
  %or = or i32 %23, 1
  store i32 %or, ptr %cb.i, align 8
  tail call fastcc void @ieee80211_tx_skb(ptr noundef %sdata, ptr noundef nonnull %call.i.i)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_request_smps_mgd_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2968
  %mtx.i = getelementptr i8, ptr %work, i32 -2924
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #8
  %driver_smps_mode = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %driver_smps_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_smps_mode, align 4
  %call = tail call i32 @__ieee80211_request_smps_mgd(ptr noundef %add.ptr, i32 noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %mtx.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ieee80211_request_smps_mgd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_request_smps(ptr noundef %vif, i32 noundef %smps_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end37, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b51 = load i1, ptr @ieee80211_request_smps.__already_done, align 1
  br i1 %.b51, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !39

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_request_smps.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 558, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end37:                                         ; preds = %entry
  %driver_smps_mode = getelementptr i8, ptr %vif, i32 -1116
  %2 = ptrtoint ptr %driver_smps_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_smps_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %smps_mode)
  %cmp38 = icmp eq i32 %3, %smps_mode
  br i1 %cmp38, label %if.end37.cleanup_crit_edge, label %if.end40

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %driver_smps_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %smps_mode, ptr %driver_smps_mode, align 4
  %local = getelementptr i8, ptr %vif, i32 -2988
  %5 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %local, align 4
  %request_smps_work = getelementptr i8, ptr %vif, i32 -1112
  tail call void @ieee80211_queue_work(ptr noundef %6, ptr noundef %request_smps_work) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end37.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../net/mac80211/ht.c", i32 65, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../net/mac80211/ht.c", i32 252, i32 3}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/mac80211/ht.c", i32 467, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../net/mac80211/ht.c", i32 558, i32 6}
!11 = !{ptr @__ksymtab_ieee80211_request_smps, !12, !"__ksymtab_ieee80211_request_smps", i1 false, i1 false}
!12 = !{!"../net/mac80211/ht.c", i32 569, i32 1}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/mac80211/sta_info.h", i32 755, i32 9}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/mac80211/ieee80211_i.h", i32 2199, i32 17}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i8 0, i8 2}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 2149790041}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2149790307}
