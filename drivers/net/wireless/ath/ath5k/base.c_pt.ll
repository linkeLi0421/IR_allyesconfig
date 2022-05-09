; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath5k/base.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath5k/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.158 }
%union.anon.158 = type { %struct.anon.159 }
%struct.anon.159 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.160, %struct.trace_event, ptr, ptr, %union.anon.161, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.160 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.161 = type { ptr }
%union.anon.162 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.163 = type { %struct.bpf_raw_event_map }
%union.anon.164 = type { %struct.bpf_raw_event_map }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.91 }
%union.anon.91 = type { ptr }
%struct.ath5k_srev_name = type { ptr, i32, i32 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.ath_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.sk_buff = type { %union.anon.41, %union.anon.44, %union.anon.45, [48 x i8], %union.anon.46, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.48, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, ptr, %union.anon.43 }
%union.anon.43 = type { ptr }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.50, i32, i32, i32, i16, i16, %union.anon.52, i32, %union.anon.53, %union.anon.54, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.50 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.trace_event_raw_ath5k_rx = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_ath5k_tx = type { %struct.trace_entry, ptr, i32, i8, i32, [0 x i8] }
%struct.trace_event_raw_ath5k_tx_complete = type { %struct.trace_entry, ptr, i32, i8, i8, i8, i8, [0 x i8] }
%struct.ath5k_tx_status = type { i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath5k_hw = type { %struct.ath_common, ptr, ptr, i32, i16, ptr, %struct.mutex, ptr, [6 x %struct.ieee80211_supported_band], [314 x %struct.ieee80211_channel], [6 x [32 x %struct.ieee80211_rate]], [6 x [32 x i8]], i32, %struct.ath5k_dbg_info, ptr, ptr, i32, i32, [1 x i32], i32, i32, ptr, i16, i32, %struct.spinlock, i8, i8, [6 x i8], i32, i32, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, ptr, %struct.tasklet_struct, %struct.ath5k_led, %struct.list_head, %struct.spinlock, i32, [10 x %struct.ath5k_txq], %struct.tasklet_struct, %struct.ath5k_led, %struct.ath5k_rfkill, %struct.spinlock, %struct.tasklet_struct, %struct.list_head, [4 x ptr], i16, i16, i16, i32, i32, i32, i32, i32, ptr, i8, i8, %struct.ath5k_statistics, %struct.ath5k_ani_state, %struct.tasklet_struct, %struct.delayed_work, %struct.survey_info, i32, ptr, i8, i8, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, [3 x [3 x i32]], i8, i8, i8, %struct.ath5k_capabilities, [10 x %struct.ath5k_txq_info], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.ath5k_gain, [8 x i8], %struct.anon.137, %struct.ath5k_nfcal_hist, %struct.ewma_beacon_rssi, i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ath5k_dbg_info = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath5k_txq = type { i32, ptr, %struct.list_head, %struct.spinlock, i8, i32, i32, i8, i32 }
%struct.ath5k_led = type { [32 x i8], ptr, %struct.led_classdev }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath5k_rfkill = type { i16, i8, %struct.tasklet_struct }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.ath5k_statistics = type { [5 x i32], [5 x i32], i32, i32, i32, i32, i32, i32, [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath5k_ani_state = type { i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, %struct.ath_cycle_counters, i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.130, i32 }
%union.anon.130 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ath5k_capabilities = type { [1 x i32], %struct.anon.134, %struct.ath5k_eeprom_info, %struct.anon.136, i8, i8, i8 }
%struct.anon.134 = type { i16, i16, i16, i16 }
%struct.ath5k_eeprom_info = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x [11 x i16]], [3 x [4 x i16]], [3 x [4 x i16]], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i8], [3 x [4 x i8]], [3 x i8], [10 x %struct.ath5k_chan_pcal_info], [4 x %struct.ath5k_chan_pcal_info], [4 x %struct.ath5k_chan_pcal_info], [3 x i8], [10 x %struct.ath5k_rate_pcal_info], [4 x %struct.ath5k_rate_pcal_info], [4 x %struct.ath5k_rate_pcal_info], i8, [32 x i8], [256 x %struct.ath5k_edge_power], [3 x i16], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, [5 x [2 x i16]], [3 x [3 x i32]] }
%struct.ath5k_chan_pcal_info = type { i16, i16, i16, %union.anon.135, ptr }
%union.anon.135 = type { %struct.ath5k_chan_pcal_info_rf2413 }
%struct.ath5k_chan_pcal_info_rf2413 = type { [4 x i8], [4 x i8], [4 x [5 x i8]], [4 x [5 x i8]] }
%struct.ath5k_rate_pcal_info = type { i16, i16, i16, i16, i16 }
%struct.ath5k_edge_power = type { i16, i16, i8 }
%struct.anon.136 = type { i8 }
%struct.ath5k_txq_info = type { i32, i32, i16, i8, i16, i16, i32, i32, i32, i32 }
%struct.ath5k_gain = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.137 = type { [4 x [64 x i8]], [4 x [64 x i8]], [128 x i8], [32 x i16], i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i32 }
%struct.ath5k_nfcal_hist = type { i16, [8 x i16] }
%struct.ewma_beacon_rssi = type { i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.ath5k_buf = type { %struct.list_head, ptr, i32, ptr, i32, [4 x %struct.ieee80211_tx_rate] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.131, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.131 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.132] }
%struct.anon.132 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ath5k_vif_iter_data = type { ptr, [6 x i8], [6 x i8], i8, i8, i8, i32, i32 }
%struct.ath5k_vif = type { i8, i32, i32, ptr }
%struct.ath5k_desc = type { i32, i32, %union.anon.129 }
%union.anon.129 = type { %struct.ath5k_hw_5212_tx_desc }
%struct.ath5k_hw_5212_tx_desc = type { %struct.ath5k_hw_4w_tx_ctl, %struct.ath5k_hw_tx_status }
%struct.ath5k_hw_4w_tx_ctl = type { i32, i32, i32, i32 }
%struct.ath5k_hw_tx_status = type { i32, i32 }
%struct.page = type { i32, %union.anon.18, %union.anon.87, %struct.atomic_t, i32 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.87 = type { %struct.atomic_t }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_sta_rates = type { %struct.callback_head, [4 x %struct.anon.133] }
%struct.callback_head = type { ptr, ptr }
%struct.anon.133 = type { i8, i8, i8, i8, i16 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ath_bus_ops = type { i32, ptr, ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.ath5k_rx_status = type { i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.172 }
%union.anon.172 = type { %struct.anon.178, [16 x i8] }
%struct.anon.178 = type { i16, i16, [6 x i8], [0 x i8] }

@__tpstrtab_ath5k_rx = internal constant [9 x i8] c"ath5k_rx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ath5k_rx = dso_local global %struct.static_call_key { ptr @__traceiter_ath5k_rx }, align 4
@__tracepoint_ath5k_rx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ath5k_rx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ath5k_rx, ptr null, ptr @__traceiter_ath5k_rx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ath5k_rx = internal constant ptr @__tracepoint_ath5k_rx, section "__tracepoints_ptrs", align 4
@__tpstrtab_ath5k_tx = internal constant [9 x i8] c"ath5k_tx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ath5k_tx = dso_local global %struct.static_call_key { ptr @__traceiter_ath5k_tx }, align 4
@__tracepoint_ath5k_tx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ath5k_tx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ath5k_tx, ptr null, ptr @__traceiter_ath5k_tx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ath5k_tx = internal constant ptr @__tracepoint_ath5k_tx, section "__tracepoints_ptrs", align 4
@__tpstrtab_ath5k_tx_complete = internal constant [18 x i8] c"ath5k_tx_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ath5k_tx_complete = dso_local global %struct.static_call_key { ptr @__traceiter_ath5k_tx_complete }, align 4
@__tracepoint_ath5k_tx_complete = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ath5k_tx_complete, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ath5k_tx_complete, ptr null, ptr @__traceiter_ath5k_tx_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ath5k_tx_complete = internal constant ptr @__tracepoint_ath5k_tx_complete, section "__tracepoints_ptrs", align 4
@str__ath5k__trace_system_name = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ath5k\00", [26 x i8] zeroinitializer }, align 32
@trace_event_fields_ath5k_rx = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.45, %union.anon.158 { %struct.anon.159 { ptr @.str.46, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.47, %union.anon.158 { %struct.anon.159 { ptr @.str.48, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.158 { %struct.anon.159 { ptr @.str.50, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_ath5k_rx = internal global %struct.trace_event_class { ptr @str__ath5k__trace_system_name, ptr @trace_event_raw_event_ath5k_rx, ptr @perf_trace_ath5k_rx, ptr @trace_event_reg, ptr @trace_event_fields_ath5k_rx, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ath5k_rx, i64 24), ptr getelementptr (i8, ptr @event_class_ath5k_rx, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ath5k_rx = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ath5k_rx, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ath5k_rx = internal global { [43 x i8], [53 x i8] } { [43 x i8] c"\22[%p] RX skb=%lx\22, REC->priv, REC->skbaddr\00", [53 x i8] zeroinitializer }, align 32
@event_ath5k_rx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ath5k_rx, %union.anon.160 { ptr @__tracepoint_ath5k_rx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ath5k_rx }, ptr @print_fmt_ath5k_rx, ptr null, %union.anon.161 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ath5k_rx = internal global ptr @event_ath5k_rx, section "_ftrace_events", align 4
@trace_event_fields_ath5k_tx = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.45, %union.anon.158 { %struct.anon.159 { ptr @.str.46, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.47, %union.anon.158 { %struct.anon.159 { ptr @.str.48, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.158 { %struct.anon.159 { ptr @.str.53, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.158 { %struct.anon.159 { ptr @.str.50, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_ath5k_tx = internal global %struct.trace_event_class { ptr @str__ath5k__trace_system_name, ptr @trace_event_raw_event_ath5k_tx, ptr @perf_trace_ath5k_tx, ptr @trace_event_reg, ptr @trace_event_fields_ath5k_tx, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ath5k_tx, i64 24), ptr getelementptr (i8, ptr @event_class_ath5k_tx, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ath5k_tx = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ath5k_tx, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ath5k_tx = internal global { [59 x i8], [37 x i8] } { [59 x i8] c"\22[%p] TX skb=%lx q=%d\22, REC->priv, REC->skbaddr, REC->qnum\00", [37 x i8] zeroinitializer }, align 32
@event_ath5k_tx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ath5k_tx, %union.anon.160 { ptr @__tracepoint_ath5k_tx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ath5k_tx }, ptr @print_fmt_ath5k_tx, ptr null, %union.anon.161 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ath5k_tx = internal global ptr @event_ath5k_tx, section "_ftrace_events", align 4
@trace_event_fields_ath5k_tx_complete = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.45, %union.anon.158 { %struct.anon.159 { ptr @.str.46, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.47, %union.anon.158 { %struct.anon.159 { ptr @.str.48, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.158 { %struct.anon.159 { ptr @.str.53, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.158 { %struct.anon.159 { ptr @.str.55, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.56, %union.anon.158 { %struct.anon.159 { ptr @.str.57, i32 1, i32 1, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.158 { %struct.anon.159 { ptr @.str.58, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_ath5k_tx_complete = internal global %struct.trace_event_class { ptr @str__ath5k__trace_system_name, ptr @trace_event_raw_event_ath5k_tx_complete, ptr @perf_trace_ath5k_tx_complete, ptr @trace_event_reg, ptr @trace_event_fields_ath5k_tx_complete, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ath5k_tx_complete, i64 24), ptr getelementptr (i8, ptr @event_class_ath5k_tx_complete, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ath5k_tx_complete = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ath5k_tx_complete, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ath5k_tx_complete = internal global { [133 x i8], [59 x i8] } { [133 x i8] c"\22[%p] TX end skb=%lx q=%d stat=%x rssi=%d ant=%x\22, REC->priv, REC->skbaddr, REC->qnum, REC->ts_status, REC->ts_rssi, REC->ts_antenna\00", [59 x i8] zeroinitializer }, align 32
@event_ath5k_tx_complete = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ath5k_tx_complete, %union.anon.160 { ptr @__tracepoint_ath5k_tx_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ath5k_tx_complete }, ptr @print_fmt_ath5k_tx_complete, ptr null, %union.anon.161 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ath5k_tx_complete = internal global ptr @event_ath5k_tx_complete, section "_ftrace_events", align 4
@__bpf_trace_tp_map_ath5k_rx = internal global %union.anon.162 { %struct.bpf_raw_event_map { ptr @__tracepoint_ath5k_rx, ptr @__bpf_trace_ath5k_rx, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ath5k_tx = internal global %union.anon.163 { %struct.bpf_raw_event_map { ptr @__tracepoint_ath5k_tx, ptr @__bpf_trace_ath5k_tx, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ath5k_tx_complete = internal global %union.anon.164 { %struct.bpf_raw_event_map { ptr @__tracepoint_ath5k_tx_complete, ptr @__bpf_trace_ath5k_tx_complete, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__param_str_nohwcrypt = internal constant [16 x i8] c"ath5k.nohwcrypt\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ath5k_modparam_nohwcrypt = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nohwcrypt = internal constant %struct.kernel_param { ptr @__param_str_nohwcrypt, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.91 { ptr @ath5k_modparam_nohwcrypt } }, section "__param", align 4
@__UNIQUE_ID_nohwcrypttype388 = internal constant [30 x i8] c"ath5k.parmtype=nohwcrypt:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nohwcrypt389 = internal constant [50 x i8] c"ath5k.parm=nohwcrypt:Disable hardware encryption.\00", section ".modinfo", align 1
@__param_str_fastchanswitch = internal constant [21 x i8] c"ath5k.fastchanswitch\00", align 1
@modparam_fastchanswitch = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_fastchanswitch = internal constant %struct.kernel_param { ptr @__param_str_fastchanswitch, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.91 { ptr @modparam_fastchanswitch } }, section "__param", align 4
@__UNIQUE_ID_fastchanswitchtype390 = internal constant [35 x i8] c"ath5k.parmtype=fastchanswitch:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_fastchanswitch391 = internal constant [82 x i8] c"ath5k.parm=fastchanswitch:Enable fast channel switching for AR2413/AR5413 radios.\00", section ".modinfo", align 1
@__param_str_no_hw_rfkill_switch = internal constant [26 x i8] c"ath5k.no_hw_rfkill_switch\00", align 1
@ath5k_modparam_no_hw_rfkill_switch = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_no_hw_rfkill_switch = internal constant %struct.kernel_param { ptr @__param_str_no_hw_rfkill_switch, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.91 { ptr @ath5k_modparam_no_hw_rfkill_switch } }, section "__param", align 4
@__UNIQUE_ID_no_hw_rfkill_switchtype392 = internal constant [40 x i8] c"ath5k.parmtype=no_hw_rfkill_switch:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_no_hw_rfkill_switch393 = internal constant [67 x i8] c"ath5k.parm=no_hw_rfkill_switch:Ignore the GPIO RFKill switch state\00", section ".modinfo", align 1
@__UNIQUE_ID_author394 = internal constant [24 x i8] c"ath5k.author=Jiri Slaby\00", section ".modinfo", align 1
@__UNIQUE_ID_author395 = internal constant [29 x i8] c"ath5k.author=Nick Kossifidis\00", section ".modinfo", align 1
@__UNIQUE_ID_description396 = internal constant [80 x i8] c"ath5k.description=Support for 5xxx series of Atheros 802.11 wireless LAN cards.\00", section ".modinfo", align 1
@__UNIQUE_ID_file397 = internal constant [48 x i8] c"ath5k.file=drivers/net/wireless/ath/ath5k/ath5k\00", section ".modinfo", align 1
@__UNIQUE_ID_license398 = internal constant [27 x i8] c"ath5k.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xxxxx\00", [26 x i8] zeroinitializer }, align 32
@srev_names = internal constant { [34 x %struct.ath5k_srev_name], [104 x i8] } { [34 x %struct.ath5k_srev_name] [%struct.ath5k_srev_name { ptr @.str.60, i32 0, i32 0 }, %struct.ath5k_srev_name { ptr @.str.61, i32 0, i32 16 }, %struct.ath5k_srev_name { ptr @.str.62, i32 0, i32 32 }, %struct.ath5k_srev_name { ptr @.str.63, i32 0, i32 48 }, %struct.ath5k_srev_name { ptr @.str.64, i32 0, i32 64 }, %struct.ath5k_srev_name { ptr @.str.65, i32 0, i32 80 }, %struct.ath5k_srev_name { ptr @.str.66, i32 0, i32 85 }, %struct.ath5k_srev_name { ptr @.str.67, i32 0, i32 89 }, %struct.ath5k_srev_name { ptr @.str.68, i32 0, i32 120 }, %struct.ath5k_srev_name { ptr @.str.69, i32 0, i32 112 }, %struct.ath5k_srev_name { ptr @.str.70, i32 0, i32 144 }, %struct.ath5k_srev_name { ptr @.str.71, i32 0, i32 164 }, %struct.ath5k_srev_name { ptr @.str.72, i32 0, i32 160 }, %struct.ath5k_srev_name { ptr @.str.73, i32 0, i32 176 }, %struct.ath5k_srev_name { ptr @.str.74, i32 0, i32 192 }, %struct.ath5k_srev_name { ptr @.str.75, i32 0, i32 202 }, %struct.ath5k_srev_name { ptr @.str.76, i32 0, i32 224 }, %struct.ath5k_srev_name { ptr @.str.77, i32 0, i32 240 }, %struct.ath5k_srev_name { ptr @.str, i32 0, i32 65535 }, %struct.ath5k_srev_name { ptr @.str.78, i32 1, i32 0 }, %struct.ath5k_srev_name { ptr @.str.79, i32 1, i32 16 }, %struct.ath5k_srev_name { ptr @.str.80, i32 1, i32 21 }, %struct.ath5k_srev_name { ptr @.str.81, i32 1, i32 32 }, %struct.ath5k_srev_name { ptr @.str.82, i32 1, i32 48 }, %struct.ath5k_srev_name { ptr @.str.83, i32 1, i32 53 }, %struct.ath5k_srev_name { ptr @.str.84, i32 1, i32 54 }, %struct.ath5k_srev_name { ptr @.str.85, i32 1, i32 64 }, %struct.ath5k_srev_name { ptr @.str.86, i32 1, i32 69 }, %struct.ath5k_srev_name { ptr @.str.87, i32 1, i32 70 }, %struct.ath5k_srev_name { ptr @.str.68, i32 1, i32 80 }, %struct.ath5k_srev_name { ptr @.str.71, i32 1, i32 96 }, %struct.ath5k_srev_name { ptr @.str.70, i32 1, i32 160 }, %struct.ath5k_srev_name { ptr @.str.88, i32 1, i32 192 }, %struct.ath5k_srev_name { ptr @.str, i32 1, i32 65535 }], [104 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(%s:%d): channel set, resetting (%u -> %u MHz)\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.ath5k_chan_set = private unnamed_addr constant [15 x i8] c"ath5k_chan_set\00", align 1
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath5k/base.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(%s:%d): mode setup opmode %d (%s)\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.ath5k_update_bssid_mask_and_opmode = private unnamed_addr constant [35 x i8] c"ath5k_update_bssid_mask_and_opmode\00", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(%s:%d): RX filter 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"tx hdrlen not %%4: not enough headroom to pad\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"no further txbuf available, dropping packet\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"intval %u is too low, min 15\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(%s:%d): need to wait for HW TSF sync\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.ath5k_beacon_update_timers = private unnamed_addr constant [27 x i8] c"ath5k_beacon_update_timers\00", align 1
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(%s:%d): reconfigured timers based on HW TSF\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(%s:%d): reset HW TSF and timers\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(%s:%d): updated timers based on beacon TSF\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"(%s:%d): bc_tsf %llx hw_tsf %llx bc_tu %u hw_tu %u nexttbtt %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(%s:%d): intval %u %s %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AR5K_BEACON_ENA\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"AR5K_BEACON_RESET_TSF\00", [42 x i8] zeroinitializer }, align 32
@if_comb = internal constant { %struct.ieee80211_iface_combination, [44 x i8] } { %struct.ieee80211_iface_combination { ptr @if_limits, i32 1, i16 2048, i8 2, i8 0, i8 0, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@ath5k_init_ah.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ah->lock\00", [22 x i8] zeroinitializer }, align 32
@ath5k_init_ah.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ah->rxbuflock\00", [17 x i8] zeroinitializer }, align 32
@ath5k_init_ah.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ah->txbuflock\00", [17 x i8] zeroinitializer }, align 32
@ath5k_init_ah.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ah->block\00", [21 x i8] zeroinitializer }, align 32
@ath5k_init_ah.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ah->irqlock\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ath\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"request_irq failed\0A\00", [44 x i8] zeroinitializer }, align 32
@ath5k_common_ops = internal constant { %struct.ath_ops, [32 x i8] } { %struct.ath_ops { ptr @ath5k_ioread32, ptr null, ptr @ath5k_iowrite32, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ath5k_init_ah.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&common->cc_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Atheros AR%s chip found (MAC: 0x%x, PHY: 0x%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RF%s 2GHz radio found (0x%x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RF%s 5GHz radio found (0x%x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RF%s multiband radio found (0x%x)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(%s:%d): mode %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.ath5k_start = private unnamed_addr constant [12 x i8] c"ath5k_start\00", align 1
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(%s:%d): putting device to sleep\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.ath5k_stop = private unnamed_addr constant [11 x i8] c"ath5k_stop\00", align 1
@_ath5k_printk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 3243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%sath5k: %s: %pV\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"_ath5k_printk\00", [18 x i8] zeroinitializer }, align 32
@_ath5k_printk._entry_ptr = internal global ptr @_ath5k_printk._entry, section ".printk_index", align 4
@_ath5k_printk._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 3245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%sath5k: %pV\00", [19 x i8] zeroinitializer }, align 32
@_ath5k_printk._entry_ptr.44 = internal global ptr @_ath5k_printk._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"struct ath5k_hw *\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"priv\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"skbaddr\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__data_loc u8[]\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"frame\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"[%p] RX skb=%lx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qnum\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%p] TX skb=%lx q=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ts_status\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s8\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ts_rssi\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ts_antenna\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[%p] TX end skb=%lx q=%d stat=%x rssi=%d ant=%x\0A\00", [47 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5210\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5311\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5311A\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5311B\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5211\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5212\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5213\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5213A\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2413\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2414\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5424\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5413\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5414\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2415\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5416\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5418\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2425\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2417\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5110\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5111\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5111A\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2111\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5112\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5112A\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5112B\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2112\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2112A\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2112B\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5133\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/ath5k/trace.h\00", [57 x i8] zeroinitializer }, align 32
@trace_ath5k_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.90 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.92 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@ath5k_merge_ratetbl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.94 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(%s:%d): skb %p [data %p len %u] skbaddr %llx\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.ath5k_beacon_setup = private unnamed_addr constant [19 x i8] c"ath5k_beacon_setup\00", align 1
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"beacon DMA mapping failed\0A\00", [37 x i8] zeroinitializer }, align 32
@ieee80211_get_tx_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"(%s:%d): beacon queueprops tqi_aifs:%d tqi_cw_min:%d tqi_cw_max:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.ath5k_beaconq_config = private unnamed_addr constant [21 x i8] c"ath5k_beaconq_config\00", align 1
@.str.98 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: unable to update parameters for beacon hardware queue!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(%s:%d): in beacon_send\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.ath5k_beacon_send = private unnamed_addr constant [18 x i8] c"ath5k_beacon_send\00", align 1
@.str.100 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(%s:%d): missed %u consecutive beacons\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(%s:%d): stuck beacon time (%u missed)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(%s:%d): stuck beacon, resetting\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(%s:%d): resume beacon xmit after %u misses\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(%s:%d): tsf %llx tsftu %x intval %u slot %u vif %p\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"beacon queue %u didn't start/stop ?\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bf=%p bf_skb=%p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(%s:%d): TXDP[%u] = %llx (%p)\0A\00", [33 x i8] zeroinitializer }, align 32
@if_limits = internal constant { [2 x %struct.ieee80211_iface_limit], [24 x i8] } { [2 x %struct.ieee80211_iface_limit] [%struct.ieee80211_iface_limit { i16 2048, i16 4 }, %struct.ieee80211_iface_limit { i16 4, i16 136 }], [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(%s:%d): status 0x%x/0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.ath5k_intr = private unnamed_addr constant [11 x i8] c"ath5k_intr\00", align 1
@.str.109 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(%s:%d): fatal int, resetting\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(%s:%d): rx overrun, resetting\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"too many interrupts, giving up for now\0A\00", [56 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(%s:%d): invalid %u\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.ath5k_stop_locked = private unnamed_addr constant [18 x i8] c"ath5k_stop_locked\00", align 1
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(%s:%d): resetting\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.ath5k_reset = private unnamed_addr constant [12 x i8] c"ath5k_reset\00", align 1
@.str.114 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(%s:%d): DMA didn't stop, falling back to normal reset\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't reset hardware (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't start recv logic\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(%s:%d): cachelsz %u rx_bufsize %u\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.ath5k_rx_start = private unnamed_addr constant [15 x i8] c"ath5k_rx_start\00", align 1
@.str.118 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: could not setup RX desc\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.ath5k_rxbuf_setup = private unnamed_addr constant [18 x i8] c"ath5k_rxbuf_setup\00", align 1
@.str.119 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't alloc skbuff of size %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: DMA mapping failed\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.ath5k_rx_skb_alloc = private unnamed_addr constant [19 x i8] c"ath5k_rx_skb_alloc\00", align 1
@.str.122 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't allocate descriptors\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't setup a beacon xmit queue\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't setup cab queue\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't setup xmit queue\0A\00", [40 x i8] zeroinitializer }, align 32
@ath5k_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.126 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&ah->reset_work)\00", [61 x i8] zeroinitializer }, align 32
@ath5k_init.__key.127 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.128 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&ah->calib_work)\00", [61 x i8] zeroinitializer }, align 32
@ath5k_init.__key.129 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.130 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&ah->tx_complete_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@ath5k_init.__key.131 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.132 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&ah->tx_complete_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to read address from EEPROM\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"can't initialize regulatory system\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't register ieee80211 hw\0A\00", [35 x i8] zeroinitializer }, align 32
@ath5k_rates = internal constant { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 27, i16 0 }, %struct.ieee80211_rate { i32 1, i16 20, i16 26, i16 30 }, %struct.ieee80211_rate { i32 1, i16 55, i16 25, i16 29 }, %struct.ieee80211_rate { i32 1, i16 110, i16 24, i16 28 }, %struct.ieee80211_rate { i32 96, i16 60, i16 11, i16 0 }, %struct.ieee80211_rate { i32 96, i16 90, i16 15, i16 0 }, %struct.ieee80211_rate { i32 96, i16 120, i16 10, i16 0 }, %struct.ieee80211_rate { i32 96, i16 180, i16 14, i16 0 }, %struct.ieee80211_rate { i32 96, i16 240, i16 9, i16 0 }, %struct.ieee80211_rate { i32 96, i16 360, i16 13, i16 0 }, %struct.ieee80211_rate { i32 96, i16 480, i16 8, i16 0 }, %struct.ieee80211_rate { i32 96, i16 540, i16 12, i16 0 }], [48 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(%s:%d): DMA map: %p (%zu) -> %llx\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.ath5k_desc_alloc = private unnamed_addr constant [17 x i8] c"ath5k_desc_alloc\00", align 1
@.str.138 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't allocate bufptr\0A\00", [41 x i8] zeroinitializer }, align 32
@__const.ath5k_beaconq_setup.qi = private unnamed_addr constant { i32, i32, i16, i8, [1 x i8], i16, i16, i32, i32, i32, i32 } { i32 0, i32 0, i16 8, i8 2, [1 x i8] zeroinitializer, i16 15, i16 1023, i32 0, i32 0, i32 0, i32 0 }, align 4
@ath5k_txq_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&txq->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"empty rx buf pool\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error in processing rx descriptor\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hw_rix out of bounds: %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid hw_rix: %x\0A\00", [44 x i8] zeroinitializer }, align 32
@trace_ath5k_rx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.144 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"(%s:%d): beacon %llx mactime %llx (diff %lld) tsf now %llx\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.ath5k_check_ibss_tsf = private unnamed_addr constant [21 x i8] c"ath5k_check_ibss_tsf\00", align 1
@.str.145 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(%s:%d): fixing mactime from %llx to %llx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(%s:%d): fixed beacon timers after beacon receive\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error %d while processing queue %u\0A\00", [60 x i8] zeroinitializer }, align 32
@trace_ath5k_tx_complete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.148 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(%s:%d): SWBA nexttbtt: %x hw_tu: %x TSF: %llx\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.ath5k_tasklet_beacon = private unnamed_addr constant [21 x i8] c"ath5k_tasklet_beacon\00", align 1
@.str.149 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(%s:%d): running full calibration\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.ath5k_calibrate_work = private unnamed_addr constant [21 x i8] c"ath5k_calibrate_work\00", align 1
@.str.150 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(%s:%d): got new rfgain, resetting\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(%s:%d): channel %u/%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"calibration of channel %u failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(%s:%d): TX queue stuck %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.ath5k_tx_complete_poll_work = private unnamed_addr constant [28 x i8] c"ath5k_tx_complete_poll_work\00", align 1
@.str.154 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(%s:%d): TX queues stuck, resetting\0A\00", [59 x i8] zeroinitializer }, align 32
@switch.table.ath5k_chan_set = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\00\00\00\00\00\01\02", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.155 = internal global [5 x i64] [i64 3, i64 16, i64 20480, i64 32768, i64 36864]
@__sancov_gen_cov_switch_values.156 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 8, i64 23, i64 31]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@___asan_gen_.164 = private unnamed_addr constant [30 x i8] c"str__ath5k__trace_system_name\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 36, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant [28 x i8] c"trace_event_fields_ath5k_rx\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_ath5k_rx\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [19 x i8] c"print_fmt_ath5k_rx\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [15 x i8] c"event_ath5k_rx\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [28 x i8] c"trace_event_fields_ath5k_tx\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_ath5k_tx\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [19 x i8] c"print_fmt_ath5k_tx\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [15 x i8] c"event_ath5k_tx\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [37 x i8] c"trace_event_fields_ath5k_tx_complete\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_ath5k_tx_complete\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [28 x i8] c"print_fmt_ath5k_tx_complete\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [24 x i8] c"event_ath5k_tx_complete\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [25 x i8] c"ath5k_modparam_nohwcrypt\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 75, i32 6 }
@___asan_gen_.206 = private unnamed_addr constant [24 x i8] c"modparam_fastchanswitch\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 79, i32 13 }
@___asan_gen_.209 = private unnamed_addr constant [35 x i8] c"ath5k_modparam_no_hw_rfkill_switch\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 83, i32 13 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 213, i32 21 }
@___asan_gen_.215 = private unnamed_addr constant [11 x i8] c"srev_names\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 100, i32 37 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 448, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 464, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 551, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 571, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1671, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1682, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2101, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2140, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2165, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2168, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2171, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2174, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2178, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [8 x i8] c"if_comb\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2566, i32 49 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2620, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2621, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2622, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2623, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2624, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2627, i32 54 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2629, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"ath5k_common_ops\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 243, i32 29 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2648, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2669, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2681, i32 5 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2689, i32 5 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2695, i32 5 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2776, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2880, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 3242, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 3245, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 21, i32 1 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 65, i32 1 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 110, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 111, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 112, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 113, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 114, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 115, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 116, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 117, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 118, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 119, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 120, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 121, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 122, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 123, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 124, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 125, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 126, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 127, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 130, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 131, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 132, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 133, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 134, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 135, i32 4 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 136, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 137, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 138, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 139, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 143, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant [44 x i8] c"../drivers/net/wireless/ath/ath5k/./trace.h\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 39, i32 1 }
@___asan_gen_.498 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 108, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 326, i32 6 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1866, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1871, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 2737, i32 6 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1114, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1120, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1981, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1992, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1995, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1998, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2005, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2018, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2036, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2050, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2058, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant [10 x i8] c"if_limits\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2557, i32 43 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2332, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2344, i32 4 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2366, i32 5 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2436, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2735, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2909, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2942, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2952, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2958, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1213, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 661, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 610, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 620, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 3053, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 3065, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 3071, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 3083, i32 4 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 3122, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 3123, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 3124, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 3128, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 3139, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 3145, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant [12 x i8] c"ath5k_rates\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 151, i32 36 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 919, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 925, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1060, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1597, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1614, i32 4 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 580, i32 6 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 585, i32 6 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1302, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1321, i32 4 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1342, i32 4 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 1798, i32 5 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2240, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2461, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2469, i32 4 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2477, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2482, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2525, i32 6 }
@___asan_gen_.692 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.693 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath5k/base.c\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 2541, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant [28 x i8] c"switch.table.ath5k_chan_set\00", align 1
@llvm.compiler.used = appending global [209 x ptr] [ptr @__UNIQUE_ID_author394, ptr @__UNIQUE_ID_author395, ptr @__UNIQUE_ID_description396, ptr @__UNIQUE_ID_fastchanswitch391, ptr @__UNIQUE_ID_fastchanswitchtype390, ptr @__UNIQUE_ID_file397, ptr @__UNIQUE_ID_license398, ptr @__UNIQUE_ID_no_hw_rfkill_switch393, ptr @__UNIQUE_ID_no_hw_rfkill_switchtype392, ptr @__UNIQUE_ID_nohwcrypt389, ptr @__UNIQUE_ID_nohwcrypttype388, ptr @__bpf_trace_tp_map_ath5k_rx, ptr @__bpf_trace_tp_map_ath5k_tx, ptr @__bpf_trace_tp_map_ath5k_tx_complete, ptr @__event_ath5k_rx, ptr @__event_ath5k_tx, ptr @__event_ath5k_tx_complete, ptr @__param_fastchanswitch, ptr @__param_no_hw_rfkill_switch, ptr @__param_nohwcrypt, ptr @__tracepoint_ath5k_rx, ptr @__tracepoint_ath5k_tx, ptr @__tracepoint_ath5k_tx_complete, ptr @__tracepoint_ptr_ath5k_rx, ptr @__tracepoint_ptr_ath5k_tx, ptr @__tracepoint_ptr_ath5k_tx_complete, ptr @_ath5k_printk._entry, ptr @_ath5k_printk._entry.42, ptr @_ath5k_printk._entry_ptr, ptr @_ath5k_printk._entry_ptr.44, ptr @event_ath5k_rx, ptr @event_ath5k_tx, ptr @event_ath5k_tx_complete, ptr @event_class_ath5k_rx, ptr @event_class_ath5k_tx, ptr @event_class_ath5k_tx_complete, ptr @str__ath5k__trace_system_name, ptr @trace_event_fields_ath5k_rx, ptr @trace_event_type_funcs_ath5k_rx, ptr @print_fmt_ath5k_rx, ptr @trace_event_fields_ath5k_tx, ptr @trace_event_type_funcs_ath5k_tx, ptr @print_fmt_ath5k_tx, ptr @trace_event_fields_ath5k_tx_complete, ptr @trace_event_type_funcs_ath5k_tx_complete, ptr @print_fmt_ath5k_tx_complete, ptr @ath5k_modparam_nohwcrypt, ptr @modparam_fastchanswitch, ptr @ath5k_modparam_no_hw_rfkill_switch, ptr @.str, ptr @srev_names, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @if_comb, ptr @ath5k_init_ah.__key, ptr @.str.20, ptr @ath5k_init_ah.__key.21, ptr @.str.22, ptr @ath5k_init_ah.__key.23, ptr @.str.24, ptr @ath5k_init_ah.__key.25, ptr @.str.26, ptr @ath5k_init_ah.__key.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @ath5k_common_ops, ptr @ath5k_init_ah.__key.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @if_limits, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @ath5k_init.__key, ptr @.str.126, ptr @ath5k_init.__key.127, ptr @.str.128, ptr @ath5k_init.__key.129, ptr @.str.130, ptr @ath5k_init.__key.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @ath5k_rates, ptr @.str.137, ptr @.str.138, ptr @ath5k_txq_setup.__key, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @switch.table.ath5k_chan_set], section "llvm.metadata"
@0 = internal global [178 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__ath5k__trace_system_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ath5k_rx to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ath5k_rx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ath5k_rx to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ath5k_rx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ath5k_tx to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ath5k_tx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ath5k_tx to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ath5k_tx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ath5k_tx_complete to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ath5k_tx_complete to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ath5k_tx_complete to i32), i32 133, i32 192, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ath5k_tx_complete to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_modparam_nohwcrypt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_fastchanswitch to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_modparam_no_hw_rfkill_switch to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srev_names to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_comb to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_init_ah.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_init_ah.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_init_ah.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_init_ah.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_init_ah.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_common_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_init_ah.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ath5k_printk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ath5k_printk._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_limits to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_init.__key.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_init.__key.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_init.__key.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_txq_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath5k_chan_set to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ath5k_rx(ptr nocapture readnone %__data, ptr noundef %priv, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath5k_rx, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %priv, ptr noundef %skb) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ath5k_tx(ptr nocapture readnone %__data, ptr noundef %priv, ptr noundef %skb, ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath5k_tx, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %priv, ptr noundef %skb, ptr noundef %q) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ath5k_tx_complete(ptr nocapture readnone %__data, ptr noundef %priv, ptr noundef %skb, ptr noundef %q, ptr noundef %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath5k_tx_complete, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %priv, ptr noundef %skb, ptr noundef %q, ptr noundef %ts) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ath5k_rx(ptr noundef %__data, ptr noundef %priv, ptr noundef %skb) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !399

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !400

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i, align 4
  %add = add i32 %4, 20
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %shl.i = shl i32 %4, 16
  %or.i = or i32 %shl.i, 20
  %__data_loc_frame = getelementptr inbounds %struct.trace_event_raw_ath5k_rx, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %__data_loc_frame to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_frame, align 4
  %priv6 = getelementptr inbounds %struct.trace_event_raw_ath5k_rx, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %priv6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %priv, ptr %priv6, align 4
  %7 = ptrtoint ptr %skb to i32
  %skbaddr = getelementptr inbounds %struct.trace_event_raw_ath5k_rx, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %skbaddr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %skbaddr, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %13 = call ptr @memcpy(ptr %add.ptr, ptr %10, i32 %12)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ath5k_rx(ptr noundef %__data, ptr noundef %priv, ptr noundef %skb) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !401
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !401
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %shl.i = shl i32 %3, 16
  %or.i = or i32 %shl.i, 20
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %14 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %15, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %3, 31
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #14
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !389) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_frame = getelementptr inbounds %struct.trace_event_raw_ath5k_rx, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %__data_loc_frame to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_frame, align 4
  %priv17 = getelementptr inbounds %struct.trace_event_raw_ath5k_rx, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %priv17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %priv, ptr %priv17, align 4
  %31 = ptrtoint ptr %skb to i32
  %skbaddr = getelementptr inbounds %struct.trace_event_raw_ath5k_rx, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %skbaddr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %skbaddr, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 20
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  %37 = call ptr @memcpy(ptr %add.ptr, ptr %34, i32 %36)
  %38 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rctx, align 4
  %40 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %39, ptr noundef %__data, i64 noundef 1, ptr noundef %41, ptr noundef %13, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ath5k_tx(ptr noundef %__data, ptr noundef %priv, ptr noundef %skb, ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !399

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !400

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i, align 4
  %add = add i32 %4, 24
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %shl.i = shl i32 %4, 16
  %or.i = or i32 %shl.i, 24
  %__data_loc_frame = getelementptr inbounds %struct.trace_event_raw_ath5k_tx, ptr %call3, i32 0, i32 4
  %5 = ptrtoint ptr %__data_loc_frame to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_frame, align 4
  %priv6 = getelementptr inbounds %struct.trace_event_raw_ath5k_tx, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %priv6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %priv, ptr %priv6, align 4
  %7 = ptrtoint ptr %skb to i32
  %skbaddr = getelementptr inbounds %struct.trace_event_raw_ath5k_tx, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %skbaddr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %skbaddr, align 4
  %9 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %q, align 4
  %conv = trunc i32 %10 to i8
  %qnum7 = getelementptr inbounds %struct.trace_event_raw_ath5k_tx, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %qnum7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %qnum7, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 24
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  %16 = call ptr @memcpy(ptr %add.ptr, ptr %13, i32 %15)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ath5k_tx(ptr noundef %__data, ptr noundef %priv, ptr noundef %skb, ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !401
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !401
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %shl.i = shl i32 %3, 16
  %or.i = or i32 %shl.i, 24
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %14 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %15, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %3, 35
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #14
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !389) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_frame = getelementptr inbounds %struct.trace_event_raw_ath5k_tx, ptr %call13, i32 0, i32 4
  %29 = ptrtoint ptr %__data_loc_frame to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_frame, align 4
  %priv17 = getelementptr inbounds %struct.trace_event_raw_ath5k_tx, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %priv17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %priv, ptr %priv17, align 4
  %31 = ptrtoint ptr %skb to i32
  %skbaddr = getelementptr inbounds %struct.trace_event_raw_ath5k_tx, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %skbaddr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %skbaddr, align 4
  %33 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %q, align 4
  %conv = trunc i32 %34 to i8
  %qnum18 = getelementptr inbounds %struct.trace_event_raw_ath5k_tx, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %qnum18 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv, ptr %qnum18, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 24
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 4
  %40 = call ptr @memcpy(ptr %add.ptr, ptr %37, i32 %39)
  %41 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rctx, align 4
  %43 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %42, ptr noundef %__data, i64 noundef 1, ptr noundef %44, ptr noundef %13, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ath5k_tx_complete(ptr noundef %__data, ptr noundef %priv, ptr noundef %skb, ptr nocapture noundef readonly %q, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !399

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !400

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %priv6 = getelementptr inbounds %struct.trace_event_raw_ath5k_tx_complete, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %priv6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %priv, ptr %priv6, align 4
  %4 = ptrtoint ptr %skb to i32
  %skbaddr = getelementptr inbounds %struct.trace_event_raw_ath5k_tx_complete, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %skbaddr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %skbaddr, align 4
  %6 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q, align 4
  %conv = trunc i32 %7 to i8
  %qnum7 = getelementptr inbounds %struct.trace_event_raw_ath5k_tx_complete, ptr %call3, i32 0, i32 3
  %8 = ptrtoint ptr %qnum7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %qnum7, align 4
  %ts_status = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 2
  %9 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ts_status, align 2
  %ts_status8 = getelementptr inbounds %struct.trace_event_raw_ath5k_tx_complete, ptr %call3, i32 0, i32 4
  %11 = ptrtoint ptr %ts_status8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %ts_status8, align 1
  %ts_rssi = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 5
  %12 = ptrtoint ptr %ts_rssi to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ts_rssi, align 1
  %ts_rssi9 = getelementptr inbounds %struct.trace_event_raw_ath5k_tx_complete, ptr %call3, i32 0, i32 5
  %14 = ptrtoint ptr %ts_rssi9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %ts_rssi9, align 2
  %ts_antenna = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 8
  %15 = ptrtoint ptr %ts_antenna to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ts_antenna, align 2
  %ts_antenna10 = getelementptr inbounds %struct.trace_event_raw_ath5k_tx_complete, ptr %call3, i32 0, i32 6
  %17 = ptrtoint ptr %ts_antenna10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %ts_antenna10, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ath5k_tx_complete(ptr noundef %__data, ptr noundef %priv, ptr noundef %skb, ptr nocapture noundef readonly %q, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !401
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !401
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !389) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %priv17 = getelementptr inbounds %struct.trace_event_raw_ath5k_tx_complete, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %priv17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %priv, ptr %priv17, align 4
  %28 = ptrtoint ptr %skb to i32
  %skbaddr = getelementptr inbounds %struct.trace_event_raw_ath5k_tx_complete, ptr %call13, i32 0, i32 2
  %29 = ptrtoint ptr %skbaddr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %skbaddr, align 4
  %30 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %q, align 4
  %conv = trunc i32 %31 to i8
  %qnum18 = getelementptr inbounds %struct.trace_event_raw_ath5k_tx_complete, ptr %call13, i32 0, i32 3
  %32 = ptrtoint ptr %qnum18 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv, ptr %qnum18, align 4
  %ts_status = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 2
  %33 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ts_status, align 2
  %ts_status19 = getelementptr inbounds %struct.trace_event_raw_ath5k_tx_complete, ptr %call13, i32 0, i32 4
  %35 = ptrtoint ptr %ts_status19 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %ts_status19, align 1
  %ts_rssi = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 5
  %36 = ptrtoint ptr %ts_rssi to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ts_rssi, align 1
  %ts_rssi20 = getelementptr inbounds %struct.trace_event_raw_ath5k_tx_complete, ptr %call13, i32 0, i32 5
  %38 = ptrtoint ptr %ts_rssi20 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %ts_rssi20, align 2
  %ts_antenna = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 8
  %39 = ptrtoint ptr %ts_antenna to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ts_antenna, align 2
  %ts_antenna21 = getelementptr inbounds %struct.trace_event_raw_ath5k_tx_complete, ptr %call13, i32 0, i32 6
  %41 = ptrtoint ptr %ts_antenna21 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %ts_antenna21, align 1
  %42 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rctx, align 4
  %44 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %43, ptr noundef %__data, i64 noundef 1, ptr noundef %45, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ath5k_rx(ptr noundef %__data, ptr noundef %priv, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %priv to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %skb to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ath5k_tx(ptr noundef %__data, ptr noundef %priv, ptr noundef %skb, ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %priv to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %skb to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %q to i32
  %conv8 = zext i32 %2 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ath5k_tx_complete(ptr noundef %__data, ptr noundef %priv, ptr noundef %skb, ptr noundef %q, ptr noundef %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %priv to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %skb to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %q to i32
  %conv8 = zext i32 %2 to i64
  %3 = ptrtoint ptr %ts to i32
  %conv12 = zext i32 %3 to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath5k_chip_name(i32 noundef %type, i16 noundef zeroext %val) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %val to i32
  %and = and i32 %conv, 240
  %and9 = and i32 %conv, 255
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.027 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %name.026 = phi ptr [ @.str, %entry ], [ %name.2, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [34 x %struct.ath5k_srev_name], ptr @srev_names, i32 0, i32 %i.027
  %sr_type = getelementptr [34 x %struct.ath5k_srev_name], ptr @srev_names, i32 0, i32 %i.027, i32 1
  %0 = ptrtoint ptr %sr_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sr_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %type)
  %cmp1.not = icmp eq i32 %1, %type
  br i1 %cmp1.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %sr_val = getelementptr [34 x %struct.ath5k_srev_name], ptr @srev_names, i32 0, i32 %i.027, i32 2
  %2 = ptrtoint ptr %sr_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sr_val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %3)
  %cmp3 = icmp eq i32 %and, %3
  br i1 %cmp3, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %name.1 = phi ptr [ %5, %if.then5 ], [ %name.026, %if.end.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and9, i32 %3)
  %cmp12 = icmp eq i32 %and9, %3
  br i1 %cmp12, label %if.then14, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  br label %for.end

for.inc:                                          ; preds = %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %name.2 = phi ptr [ %name.026, %for.body.for.inc_crit_edge ], [ %name.1, %if.end7.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, 34
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then14
  %name.3 = phi ptr [ %7, %if.then14 ], [ %name.2, %for.inc.for.end_crit_edge ]
  ret ptr %name.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_chan_set(ptr noundef %ah, ptr nocapture noundef readonly %chandef) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %land.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.rhs:                                         ; preds = %entry
  %call = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.rhs.do.end_crit_edge, label %if.then, !prof !399

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %curchan = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 21
  %2 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curchan, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %center_freq, align 4
  %6 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chandef, align 4
  %center_freq4 = getelementptr inbounds %struct.ieee80211_channel, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %center_freq4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %center_freq4, align 4
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ath5k_chan_set, i32 noundef 450, i32 noundef %5, i32 noundef %9)
  br label %do.end

do.end:                                           ; preds = %if.then, %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %12 = icmp ult i32 %11, 8
  br i1 %12, label %switch.hole_check, label %do.end.do.end19_crit_edge

do.end.do.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

do.end19:                                         ; preds = %switch.hole_check.do.end19_crit_edge, %do.end.do.end19_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 464, i32 noundef 9, ptr noundef null) #14
  br label %return

switch.hole_check:                                ; preds = %do.end
  %switch.maskindex = trunc i32 %11 to i8
  %switch.shifted = lshr i8 -61, %switch.maskindex
  %13 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.lobit.not = icmp eq i8 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end19_crit_edge, label %switch.lookup

switch.hole_check.do.end19_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.ath5k_chan_set, i32 0, i32 %11
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %14)
  %switch.load = load i8, ptr %switch.gep, align 1
  %ah_bwmode8 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %15 = ptrtoint ptr %ah_bwmode8 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %switch.load, ptr %ah_bwmode8, align 1
  %16 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chandef, align 4
  %call33 = tail call fastcc i32 @ath5k_reset(ptr noundef %ah, ptr noundef %17, i1 noundef zeroext true)
  br label %return

return:                                           ; preds = %switch.lookup, %do.end19
  %retval.0 = phi i32 [ -22, %do.end19 ], [ %call33, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_ath5k_printk(ptr noundef readonly %ah, ptr noundef %level, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #14
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #14
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !401
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %tobool.not = icmp eq ptr %ah, null
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %land.lhs.true

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %hw = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 7
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.do.end7_crit_edge, label %do.end

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.end:                                           ; preds = %land.lhs.true
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.wiphy_name.exit_crit_edge

do.end.wiphy_name.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %do.end.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %do.end.wiphy_name.exit_crit_edge ]
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %level, ptr noundef %retval.0.i.i, ptr noundef nonnull %vaf) #17
  br label %if.end

do.end7:                                          ; preds = %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %level, ptr noundef nonnull %vaf) #17
  br label %if.end

if.end:                                           ; preds = %do.end7, %wiphy_name.exit
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath5k_reset(ptr noundef %ah, ptr noundef %chan, i1 noundef zeroext %skip_pcu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %chan, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = load i8, ptr @modparam_fastchanswitch, align 1, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1 = icmp ne i8 %0, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %1 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool1, %land.rhs ]
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.end.do.end_crit_edge, label %land.rhs5

land.end.do.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.rhs5:                                        ; preds = %land.end
  %call6 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.rhs5.do.end_crit_edge, label %if.then, !prof !399

land.rhs5.do.end_crit_edge:                       ; preds = %land.rhs5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.rhs5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.113, ptr noundef nonnull @__func__.ath5k_reset, i32 noundef 2909)
  br label %do.end

do.end:                                           ; preds = %if.then, %land.rhs5.do.end_crit_edge, %land.end.do.end_crit_edge
  %status = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 18
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %or.i = or i32 %5, 16
  store i32 %or.i, ptr %status, align 4
  %call11 = tail call i32 @ath5k_hw_set_imr(ptr noundef %ah, i32 noundef 0) #14
  %irq = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 3
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %7) #14
  %rx_pending.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 25
  %8 = ptrtoint ptr %rx_pending.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %rx_pending.i, align 4
  %tx_pending.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 26
  %9 = ptrtoint ptr %tx_pending.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %tx_pending.i, align 1
  %rxtq.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 35
  tail call void @tasklet_kill(ptr noundef %rxtq.i) #14
  %txtq.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 41
  tail call void @tasklet_kill(ptr noundef %txtq.i) #14
  %beacontq.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 45
  tail call void @tasklet_kill(ptr noundef %beacontq.i) #14
  %ani_tasklet.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 61
  tail call void @tasklet_kill(ptr noundef %ani_tasklet.i) #14
  %ani_state = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60
  %10 = ptrtoint ptr %ani_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ani_state, align 8
  tail call void @ath5k_ani_init(ptr noundef %ah, i32 noundef 0) #14
  tail call fastcc void @ath5k_drain_tx_buffs(ptr noundef %ah)
  tail call void @ath5k_hw_stop_rx_pcu(ptr noundef %ah) #14
  %call13 = tail call i32 @ath5k_hw_dma_stop(ptr noundef %ah) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %.not = xor i1 %1, true
  %brmerge = select i1 %tobool14.not, i1 true, i1 %.not
  br i1 %brmerge, label %do.end.if.end36_crit_edge, label %do.body17

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

do.body17:                                        ; preds = %do.end
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  %and20 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body17.if.end36_crit_edge, label %land.rhs22

do.body17.if.end36_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

land.rhs22:                                       ; preds = %do.body17
  %call23 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.rhs22.if.end36_crit_edge, label %if.then32, !prof !399

land.rhs22.if.end36_crit_edge:                    ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then32:                                        ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.114, ptr noundef nonnull @__func__.ath5k_reset, i32 noundef 2943)
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %land.rhs22.if.end36_crit_edge, %do.body17.if.end36_crit_edge, %do.end.if.end36_crit_edge
  %fast.0.shrunk = phi i1 [ %1, %do.end.if.end36_crit_edge ], [ false, %do.body17.if.end36_crit_edge ], [ false, %if.then32 ], [ false, %land.rhs22.if.end36_crit_edge ]
  br i1 %tobool.not, label %if.end36.if.end39_crit_edge, label %if.then38

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %curchan = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 21
  %14 = ptrtoint ptr %curchan to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %chan, ptr %curchan, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end36.if.end39_crit_edge
  %opmode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 12
  %15 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %opmode, align 8
  %curchan40 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 21
  %17 = ptrtoint ptr %curchan40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %curchan40, align 4
  %call43 = tail call i32 @ath5k_hw_reset(ptr noundef %ah, i32 noundef %16, ptr noundef %18, i1 noundef zeroext %fast.0.shrunk, i1 noundef zeroext %skip_pcu) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end53, label %do.body46

do.body46:                                        ; preds = %if.end39
  %call47 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.body46.cleanup_crit_edge, label %if.then49

do.body46.cleanup_crit_edge:                      ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then49:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.115, i32 noundef %call43)
  br label %cleanup

if.end53:                                         ; preds = %if.end39
  %cachelsz.i = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 7
  %19 = ptrtoint ptr %cachelsz.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cachelsz.i, align 4
  %conv.i = zext i16 %20 to i32
  %add.i = add nuw nsw i32 %conv.i, 2351
  %21 = urem i32 %add.i, %conv.i
  %mul.i = sub nsw i32 %add.i, %21
  %rx_bufsize.i = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 12
  %22 = ptrtoint ptr %rx_bufsize.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul.i, ptr %rx_bufsize.i, align 4
  %23 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug, align 4
  %and.i116 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %tobool.not.i = icmp eq i32 %and.i116, 0
  br i1 %tobool.not.i, label %if.end53.do.end.i_crit_edge, label %land.rhs.i

if.end53.do.end.i_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.rhs.i:                                       ; preds = %if.end53
  %call3.i = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.rhs.i.do.end.i_crit_edge, label %if.then.i, !prof !399

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %cachelsz.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cachelsz.i, align 4
  %conv8.i = zext i16 %26 to i32
  %27 = ptrtoint ptr %rx_bufsize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_bufsize.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.ath5k_rx_start, i32 noundef 1214, i32 noundef %conv8.i, i32 noundef %28) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.rhs.i.do.end.i_crit_edge, %if.end53.do.end.i_crit_edge
  %rxbuflock.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 33
  tail call void @_raw_spin_lock_bh(ptr noundef %rxbuflock.i) #14
  %rxlink.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 34
  %29 = ptrtoint ptr %rxlink.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rxlink.i, align 8
  %rxbuf.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 32
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %bf.0.in.i = phi ptr [ %rxbuf.i, %do.end.i ], [ %bf.0.i, %for.body.i.for.cond.i_crit_edge ]
  %30 = ptrtoint ptr %bf.0.in.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.0.i = load ptr, ptr %bf.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %bf.0.i, %rxbuf.i
  br i1 %cmp.not.i, label %if.end64, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %call15.i = tail call fastcc i32 @ath5k_rxbuf_setup(ptr noundef %ah, ptr noundef %bf.0.i) #14
  %cmp16.not.i = icmp eq i32 %call15.i, 0
  br i1 %cmp16.not.i, label %for.body.i.for.cond.i_crit_edge, label %do.body57

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

do.body57:                                        ; preds = %for.body.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %rxbuflock.i) #14
  %call58 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %do.body57.cleanup_crit_edge, label %if.then60

do.body57.cleanup_crit_edge:                      ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then60:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.116)
  br label %cleanup

if.end64:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rxbuf.i, align 4
  %daddr.i = getelementptr inbounds %struct.ath5k_buf, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %daddr.i, align 4
  %call31.i = tail call i32 @ath5k_hw_set_rxdp(ptr noundef %ah, i32 noundef %34) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %rxbuflock.i) #14
  tail call void @ath5k_hw_start_rx_dma(ptr noundef %ah) #14
  tail call void @ath5k_update_bssid_mask_and_opmode(ptr noundef %ah, ptr noundef null) #14
  tail call void @ath5k_hw_start_rx_pcu(ptr noundef %ah) #14
  tail call void @ath5k_ani_init(ptr noundef %ah, i32 noundef %11) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %35, 6000
  %ah_cal_next_full = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 112
  %36 = ptrtoint ptr %ah_cal_next_full to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add, ptr %ah_cal_next_full, align 4
  %37 = load volatile i32, ptr @jiffies, align 128
  %add67 = add i32 %37, 100
  %ah_cal_next_ani = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 114
  %38 = ptrtoint ptr %ah_cal_next_ani to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add67, ptr %ah_cal_next_ani, align 4
  %39 = load volatile i32, ptr @jiffies, align 128
  %add69 = add i32 %39, 1000
  %ah_cal_next_short = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 113
  %40 = ptrtoint ptr %ah_cal_next_short to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add69, ptr %ah_cal_next_short, align 8
  %ah_beacon_rssi_avg = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 110
  %41 = ptrtoint ptr %ah_beacon_rssi_avg to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %ah_beacon_rssi_avg, align 4
  %survey = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 63
  %42 = call ptr @memset(ptr %survey, i32 0, i32 72)
  %cc_lock = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 19
  tail call void @_raw_spin_lock_bh(ptr noundef %cc_lock) #14
  tail call void @ath_hw_cycle_counters_update(ptr noundef %ah) #14
  %cc_ani = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 20
  %43 = call ptr @memset(ptr %cc_ani, i32 0, i32 32)
  tail call void @_raw_spin_unlock_bh(ptr noundef %cc_lock) #14
  %44 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status, align 4
  %and.i = and i32 %45, -17
  store i32 %and.i, ptr %status, align 4
  tail call void @ath5k_beacon_config(ptr noundef %ah)
  %hw = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 7
  %46 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %47) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then60, %do.body57.cleanup_crit_edge, %if.then49, %do.body46.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end64 ], [ %call43, %if.then49 ], [ %call43, %do.body46.cleanup_crit_edge ], [ %call15.i, %if.then60 ], [ %call15.i, %do.body57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_vif_iter(ptr nocapture noundef %data, ptr nocapture noundef readonly %mac, ptr nocapture noundef readonly %vif) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mac, align 1
  %8 = xor i8 %5, %7
  %neg = xor i8 %8, -1
  %arrayidx4 = getelementptr %struct.ath5k_vif_iter_data, ptr %data, i32 0, i32 1, i32 0
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx4, align 1
  %and = and i8 %10, %neg
  store i8 %and, ptr %arrayidx4, align 1
  %arrayidx.1 = getelementptr i8, ptr %3, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1, align 1
  %arrayidx2.1 = getelementptr i8, ptr %mac, i32 1
  %13 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx2.1, align 1
  %15 = xor i8 %12, %14
  %neg.1 = xor i8 %15, -1
  %arrayidx4.1 = getelementptr %struct.ath5k_vif_iter_data, ptr %data, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx4.1, align 1
  %and.1 = and i8 %17, %neg.1
  store i8 %and.1, ptr %arrayidx4.1, align 1
  %arrayidx.2 = getelementptr i8, ptr %3, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.2, align 1
  %arrayidx2.2 = getelementptr i8, ptr %mac, i32 2
  %20 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx2.2, align 1
  %22 = xor i8 %19, %21
  %neg.2 = xor i8 %22, -1
  %arrayidx4.2 = getelementptr %struct.ath5k_vif_iter_data, ptr %data, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx4.2, align 1
  %and.2 = and i8 %24, %neg.2
  store i8 %and.2, ptr %arrayidx4.2, align 1
  %arrayidx.3 = getelementptr i8, ptr %3, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.3, align 1
  %arrayidx2.3 = getelementptr i8, ptr %mac, i32 3
  %27 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx2.3, align 1
  %29 = xor i8 %26, %28
  %neg.3 = xor i8 %29, -1
  %arrayidx4.3 = getelementptr %struct.ath5k_vif_iter_data, ptr %data, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx4.3, align 1
  %and.3 = and i8 %31, %neg.3
  store i8 %and.3, ptr %arrayidx4.3, align 1
  %arrayidx.4 = getelementptr i8, ptr %3, i32 4
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.4, align 1
  %arrayidx2.4 = getelementptr i8, ptr %mac, i32 4
  %34 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx2.4, align 1
  %36 = xor i8 %33, %35
  %neg.4 = xor i8 %36, -1
  %arrayidx4.4 = getelementptr %struct.ath5k_vif_iter_data, ptr %data, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx4.4, align 1
  %and.4 = and i8 %38, %neg.4
  store i8 %and.4, ptr %arrayidx4.4, align 1
  %arrayidx.5 = getelementptr i8, ptr %3, i32 5
  %39 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.5, align 1
  %arrayidx2.5 = getelementptr i8, ptr %mac, i32 5
  %41 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx2.5, align 1
  %43 = xor i8 %40, %42
  %neg.5 = xor i8 %43, -1
  %arrayidx4.5 = getelementptr %struct.ath5k_vif_iter_data, ptr %data, i32 0, i32 1, i32 5
  %44 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx4.5, align 1
  %and.5 = and i8 %45, %neg.5
  store i8 %and.5, ptr %arrayidx4.5, align 1
  br label %if.end

if.end:                                           ; preds = %for.cond.preheader, %entry.if.end_crit_edge
  %found_active = getelementptr inbounds %struct.ath5k_vif_iter_data, ptr %data, i32 0, i32 4
  %46 = ptrtoint ptr %found_active to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %found_active, align 1, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool7.not = icmp eq i8 %47, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %found_active to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %found_active, align 1
  %active_mac = getelementptr inbounds %struct.ath5k_vif_iter_data, ptr %data, i32 0, i32 2
  %49 = call ptr @memcpy(ptr %active_mac, ptr %mac, i32 6)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %need_set_hw_addr = getelementptr inbounds %struct.ath5k_vif_iter_data, ptr %data, i32 0, i32 3
  %50 = ptrtoint ptr %need_set_hw_addr to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %need_set_hw_addr, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool12.not = icmp eq i8 %51, 0
  br i1 %tobool12.not, label %if.end11.if.end21_crit_edge, label %land.lhs.true

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end11
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  %tobool15.not = icmp eq ptr %53, null
  br i1 %tobool15.not, label %land.lhs.true.if.end21_crit_edge, label %if.then16

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then16:                                        ; preds = %land.lhs.true
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %56 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mac, align 4
  %xor.i = xor i32 %57, %55
  %add.ptr.i = getelementptr i8, ptr %53, i32 4
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %mac, i32 4
  %60 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %61, %59
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then18, label %if.then16.if.end21_crit_edge

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %need_set_hw_addr to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %need_set_hw_addr, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then16.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.end11.if.end21_crit_edge
  %any_assoc = getelementptr inbounds %struct.ath5k_vif_iter_data, ptr %data, i32 0, i32 5
  %63 = ptrtoint ptr %any_assoc to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %any_assoc, align 2, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool22.not = icmp eq i8 %64, 0
  br i1 %tobool22.not, label %if.then23, label %if.end21.if.end28_crit_edge

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then23:                                        ; preds = %if.end21
  %65 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %drv_priv, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool24.not = icmp eq i8 %66, 0
  br i1 %tobool24.not, label %if.then23.if.end28_crit_edge, label %if.then25

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  %67 = ptrtoint ptr %any_assoc to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %any_assoc, align 2
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.then23.if.end28_crit_edge, %if.end21.if.end28_crit_edge
  %opmode = getelementptr inbounds %struct.ath5k_vif, ptr %drv_priv, i32 0, i32 1
  %68 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %opmode, align 4
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values)
  switch i32 %69, label %if.end28.if.end38_crit_edge [
    i32 3, label %if.then31
    i32 2, label %if.then36
  ]

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %opmode32 = getelementptr inbounds %struct.ath5k_vif_iter_data, ptr %data, i32 0, i32 6
  %71 = ptrtoint ptr %opmode32 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 3, ptr %opmode32, align 4
  br label %if.end46

if.then36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %n_stas = getelementptr inbounds %struct.ath5k_vif_iter_data, ptr %data, i32 0, i32 7
  %72 = ptrtoint ptr %n_stas to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %n_stas, align 4
  %inc37 = add i32 %73, 1
  store i32 %inc37, ptr %n_stas, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end28.if.end38_crit_edge
  %opmode39 = getelementptr inbounds %struct.ath5k_vif_iter_data, ptr %data, i32 0, i32 6
  %74 = ptrtoint ptr %opmode39 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %opmode39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp40 = icmp eq i32 %75, 0
  br i1 %cmp40, label %if.then42, label %if.end38.if.end46_crit_edge

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %opmode, align 4
  %78 = ptrtoint ptr %opmode39 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %opmode39, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end38.if.end46_crit_edge, %if.then31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_update_bssid_mask_and_opmode(ptr noundef %ah, ptr noundef readonly %vif) local_unnamed_addr #0 align 64 {
entry:
  %iter_data = alloca %struct.ath5k_vif_iter_data, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %iter_data) #14
  %0 = getelementptr inbounds i8, ptr %iter_data, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %macaddr = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 9
  %2 = ptrtoint ptr %iter_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %macaddr, ptr %iter_data, align 4
  %mask = getelementptr inbounds %struct.ath5k_vif_iter_data, ptr %iter_data, i32 0, i32 1
  %3 = call ptr @memset(ptr %mask, i32 255, i32 6)
  %found_active = getelementptr inbounds %struct.ath5k_vif_iter_data, ptr %iter_data, i32 0, i32 4
  %4 = ptrtoint ptr %found_active to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %found_active, align 1
  %need_set_hw_addr = getelementptr inbounds %struct.ath5k_vif_iter_data, ptr %iter_data, i32 0, i32 3
  %5 = ptrtoint ptr %need_set_hw_addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %need_set_hw_addr, align 4
  %opmode = getelementptr inbounds %struct.ath5k_vif_iter_data, ptr %iter_data, i32 0, i32 6
  %6 = ptrtoint ptr %opmode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %opmode, align 4
  %n_stas = getelementptr inbounds %struct.ath5k_vif_iter_data, ptr %iter_data, i32 0, i32 7
  %7 = ptrtoint ptr %n_stas to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %n_stas, align 4
  %tobool.not = icmp eq ptr %vif, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  call void @ath5k_vif_iter(ptr noundef nonnull %iter_data, ptr noundef %addr, ptr noundef nonnull %vif)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hw = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 7
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @ath5k_vif_iter, ptr noundef nonnull %iter_data) #14
  %bssidmask = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 27
  %10 = call ptr @memcpy(ptr %bssidmask, ptr %mask, i32 6)
  %11 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %opmode, align 4
  %opmode7 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  %spec.select = select i1 %cmp, i32 2, i32 %12
  %13 = ptrtoint ptr %opmode7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select, ptr %opmode7, align 8
  %call13 = call i32 @ath5k_hw_set_opmode(ptr noundef %ah, i32 noundef %spec.select) #14
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %14 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug, align 4
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end.do.end_crit_edge, label %land.rhs

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.rhs:                                         ; preds = %if.end
  %call15 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.rhs.do.end_crit_edge, label %if.then19, !prof !399

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then19:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %opmode7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %opmode7, align 8
  %call22 = call ptr @ath_opmode_to_string(i32 noundef %17) #14
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ath5k_update_bssid_mask_and_opmode, i32 noundef 552, i32 noundef %17, ptr noundef %call22)
  br label %do.end

do.end:                                           ; preds = %if.then19, %land.rhs.do.end_crit_edge, %if.end.do.end_crit_edge
  %18 = ptrtoint ptr %need_set_hw_addr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %need_set_hw_addr, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool25.not = icmp eq i8 %19, 0
  br i1 %tobool25.not, label %do.end.if.end31_crit_edge, label %land.lhs.true

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

land.lhs.true:                                    ; preds = %do.end
  %20 = ptrtoint ptr %found_active to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %found_active, align 1, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool27.not = icmp eq i8 %21, 0
  br i1 %tobool27.not, label %land.lhs.true.if.end31_crit_edge, label %if.then28

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %active_mac = getelementptr inbounds %struct.ath5k_vif_iter_data, ptr %iter_data, i32 0, i32 2
  %call30 = call i32 @ath5k_hw_set_lladdr(ptr noundef %ah, ptr noundef %active_mac) #14
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %land.lhs.true.if.end31_crit_edge, %do.end.if.end31_crit_edge
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %22 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp32 = icmp eq i32 %23, 2
  br i1 %cmp32, label %if.then33, label %if.end31.if.end36_crit_edge

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_hw_set_bssid_mask(ptr noundef %ah, ptr noundef %bssidmask) #14
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end31.if.end36_crit_edge
  %24 = ptrtoint ptr %n_stas to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_stas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp38 = icmp sgt i32 %25, 1
  br i1 %cmp38, label %if.then39, label %if.end36.if.end40_crit_edge

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %filter_flags = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 19
  %26 = ptrtoint ptr %filter_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %filter_flags, align 4
  %or = or i32 %27, 32
  store i32 %or, ptr %filter_flags, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36.if.end40_crit_edge
  %filter_flags41 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 19
  %28 = ptrtoint ptr %filter_flags41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %filter_flags41, align 4
  call void @ath5k_hw_set_rx_filter(ptr noundef %ah, i32 noundef %29) #14
  %30 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug, align 4
  %and45 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end40.do.end60_crit_edge, label %land.rhs47

if.end40.do.end60_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60

land.rhs47:                                       ; preds = %if.end40
  %call48 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.rhs47.do.end60_crit_edge, label %if.then57, !prof !399

land.rhs47.do.end60_crit_edge:                    ; preds = %land.rhs47
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60

if.then57:                                        ; preds = %land.rhs47
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.ath5k_update_bssid_mask_and_opmode, i32 noundef 571, i32 noundef %29)
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %land.rhs47.do.end60_crit_edge, %if.end40.do.end60_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %iter_data) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_opmode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath_opmode_to_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_lladdr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_set_bssid_mask(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_set_rx_filter(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_txbuf_free_skb(ptr nocapture noundef readonly %ah, ptr noundef %bf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bf, null
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !400

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath5k/base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 965, 0\0A.popsection", ""() #14, !srcloc !403
  unreachable

do.end7:                                          ; preds = %entry
  %skb = getelementptr inbounds %struct.ath5k_buf, ptr %bf, i32 0, i32 3
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %do.end7.return_crit_edge, label %if.end10

do.end7.return_crit_edge:                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end10:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %skbaddr = getelementptr inbounds %struct.ath5k_buf, ptr %bf, i32 0, i32 4
  %4 = ptrtoint ptr %skbaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skbaddr, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef 1, i32 noundef 0) #14
  %hw = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 7
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %9, ptr noundef %11) #14
  %12 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %skb, align 4
  %13 = ptrtoint ptr %skbaddr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %skbaddr, align 4
  %desc = getelementptr inbounds %struct.ath5k_buf, ptr %bf, i32 0, i32 1
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc, align 4
  %ds_data = getelementptr inbounds %struct.ath5k_desc, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ds_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ds_data, align 4
  br label %return

return:                                           ; preds = %if.end10, %do.end7.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_rxbuf_free_skb(ptr nocapture noundef readonly %ah, ptr noundef %bf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bf, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !400

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath5k/base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 981, 0\0A.popsection", ""() #14, !srcloc !404
  unreachable

do.end9:                                          ; preds = %entry
  %skb = getelementptr inbounds %struct.ath5k_buf, ptr %bf, i32 0, i32 3
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %do.end9.cleanup_crit_edge, label %if.end12

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %skbaddr = getelementptr inbounds %struct.ath5k_buf, ptr %bf, i32 0, i32 4
  %4 = ptrtoint ptr %skbaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skbaddr, align 4
  %rx_bufsize = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 12
  %6 = ptrtoint ptr %rx_bufsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_bufsize, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef 2, i32 noundef 0) #14
  %8 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %9, i32 noundef 1) #14
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %skb, align 4
  %11 = ptrtoint ptr %skbaddr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %skbaddr, align 4
  %desc = getelementptr inbounds %struct.ath5k_buf, ptr %bf, i32 0, i32 1
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %ds_data = getelementptr inbounds %struct.ath5k_desc, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ds_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ds_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_tx_queue(ptr noundef %hw, ptr noundef %skb, ptr noundef %txq, ptr noundef readonly %control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call fastcc void @trace_ath5k_tx(ptr noundef %1, ptr noundef %skb, ptr noundef %txq)
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %6 = and i16 %5, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %6)
  %cmp.i.i.i = icmp eq i16 %6, 3
  %spec.select.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %7 = and i16 %5, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %7)
  %cmp.i9.i.i = icmp eq i16 %7, -30720
  %add4.i.i = add nuw nsw i32 %spec.select.i.i, 2
  %padpos.1.i.i = select i1 %cmp.i9.i.i, i32 %add4.i.i, i32 %spec.select.i.i
  %and.i = and i32 %padpos.1.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end3_crit_edge, label %land.lhs.true.i

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

land.lhs.true.i:                                  ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %padpos.1.i.i)
  %cmp.i = icmp ugt i32 %9, %padpos.1.i.i
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end3_crit_edge

land.lhs.true.i.if.end3_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then.i:                                        ; preds = %land.lhs.true.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %and.i)
  %cmp2.i = icmp ult i32 %sub.ptr.sub.i.i, %and.i
  br i1 %cmp2.i, label %do.body, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %and.i) #14
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %and.i
  %14 = call ptr @memmove(ptr %13, ptr %add.ptr.i, i32 %padpos.1.i.i)
  br label %if.end3

do.body:                                          ; preds = %if.then.i
  %call1 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body.drop_packet_crit_edge, label %if.then2

do.body.drop_packet_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %drop_packet

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7)
  br label %drop_packet

if.end3:                                          ; preds = %if.end.i, %land.lhs.true.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %entry.if.end3_crit_edge ], [ 0, %land.lhs.true.i.if.end3_crit_edge ], [ %and.i, %if.end.i ]
  %txq_len = getelementptr inbounds %struct.ath5k_txq, ptr %txq, i32 0, i32 5
  %15 = ptrtoint ptr %txq_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %txq_len, align 4
  %txq_max = getelementptr inbounds %struct.ath5k_txq, ptr %txq, i32 0, i32 6
  %17 = ptrtoint ptr %txq_max to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %txq_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp4.not = icmp slt i32 %16, %18
  br i1 %cmp4.not, label %if.end3.do.body10_crit_edge, label %land.lhs.true

if.end3.do.body10_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

land.lhs.true:                                    ; preds = %if.end3
  %19 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %txq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp5 = icmp ult i32 %20, 4
  br i1 %cmp5, label %if.then6, label %land.lhs.true.do.body10_crit_edge

land.lhs.true.do.body10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_stop_queue(ptr noundef %hw, i32 noundef %20) #14
  br label %do.body10

do.body10:                                        ; preds = %if.then6, %land.lhs.true.do.body10_crit_edge, %if.end3.do.body10_crit_edge
  %txbuflock = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 38
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txbuflock) #14
  %txbuf = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 37
  %21 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %txbuf, align 4
  %cmp.i98.not = icmp eq ptr %22, %txbuf
  br i1 %cmp.i98.not, label %do.body21, label %if.end29

do.body21:                                        ; preds = %do.body10
  %call22 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.body21.do.end27_crit_edge, label %if.then24

do.body21.do.end27_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end27

if.then24:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8)
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.body21.do.end27_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txbuflock, i32 noundef %call13) #14
  tail call void @ieee80211_stop_queues(ptr noundef %hw) #14
  br label %drop_packet

if.end29:                                         ; preds = %do.body10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %22) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end29.list_del.exit_crit_edge

if.end29.list_del.exit_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end29.list_del.exit_crit_edge
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %txbuf_len = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 39
  %31 = ptrtoint ptr %txbuf_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %txbuf_len, align 4
  %dec = add i32 %32, -1
  store i32 %dec, ptr %txbuf_len, align 4
  %33 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %txbuf, align 4
  %cmp.i99.not = icmp eq ptr %34, %txbuf
  br i1 %cmp.i99.not, label %if.then35, label %list_del.exit.if.end36_crit_edge

list_del.exit.if.end36_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then35:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_stop_queues(ptr noundef %hw) #14
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %list_del.exit.if.end36_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txbuflock, i32 noundef %call13) #14
  %skb38 = getelementptr inbounds %struct.ath5k_buf, ptr %22, i32 0, i32 3
  %35 = ptrtoint ptr %skb38 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %skb, ptr %skb38, align 4
  %desc.i = getelementptr inbounds %struct.ath5k_buf, ptr %22, i32 0, i32 1
  %36 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %desc.i, align 4
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %dev.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 8
  %40 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i, align 4
  %len.i101 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %42 = ptrtoint ptr %len.i101 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i101, align 4
  %call.i.i102 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %41) #14
  br i1 %call.i.i102, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end36
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !399

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %39) #14
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 3
  %44 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %39, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %47, %if.end.i.i.i ], [ %45, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.92, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.93, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #14
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %39, ptr noundef %41, i32 noundef %43) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %48 = load ptr, ptr @mem_map, align 4
  %49 = ptrtoint ptr %41 to i32
  %sub.i.i = add i32 %49, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %48, i32 %shr.i.i
  %and.i.i = and i32 %49, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %39, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %43, i32 noundef 1, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %skbaddr.i = getelementptr inbounds %struct.ath5k_buf, ptr %22, i32 0, i32 4
  %50 = ptrtoint ptr %skbaddr.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i.i, ptr %skbaddr.i, align 4
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %52, i32 noundef %retval.0.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then41_crit_edge, label %if.end.i103

dma_map_single_attrs.exit.i.if.then41_crit_edge:  ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then41

if.end.i103:                                      ; preds = %dma_map_single_attrs.exit.i
  %tobool6.not.i = icmp eq ptr %control, null
  br i1 %tobool6.not.i, label %if.end.i103.if.then11.i_crit_edge, label %if.end9.i

if.end.i103.if.then11.i_crit_edge:                ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i

if.end9.i:                                        ; preds = %if.end.i103
  %53 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %control, align 4
  %tobool.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i, label %if.end9.i.if.then11.i_crit_edge, label %if.end.i.i104

if.end9.i.if.then11.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i

if.end.i.i104:                                    ; preds = %if.end9.i
  %rates.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %54, i32 0, i32 16
  %55 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %rates.i.i, align 4
  %call.i219.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219.i)
  %tobool2.not.i.i = icmp eq i32 %call.i219.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i104.do.end10.i.i_crit_edge

if.end.i.i104.do.end10.i.i_crit_edge:             ; preds = %if.end.i.i104
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i104
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end10.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b124.i.i = load i1, ptr @ath5k_merge_ratetbl.__warned, align 1
  br i1 %.b124.i.i, label %land.lhs.true5.i.i.do.end10.i.i_crit_edge, label %if.then7.i.i

land.lhs.true5.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ath5k_merge_ratetbl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 740, ptr noundef nonnull @.str.90) #14
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then7.i.i, %land.lhs.true5.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %if.end.i.i104.do.end10.i.i_crit_edge
  %tobool12.not.i.i = icmp eq ptr %56, null
  br i1 %tobool12.not.i.i, label %do.end10.i.i.if.then11.i_crit_edge, label %if.end14.i.i

do.end10.i.i.if.then11.i_crit_edge:               ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i

if.end14.i.i:                                     ; preds = %do.end10.i.i
  %57 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp.i220.i = icmp slt i8 %59, 0
  br i1 %cmp.i220.i, label %if.end14.i.i.if.end27.i.i_crit_edge, label %lor.lhs.false.i.i

if.end14.i.i.if.end27.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i.i

lor.lhs.false.i.i:                                ; preds = %if.end14.i.i
  %count.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %60 = ptrtoint ptr %count.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %bf.load.i.i = load i16, ptr %count.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load.i.i)
  %cmp20.i.i = icmp ult i16 %bf.load.i.i, 2048
  br i1 %cmp20.i.i, label %lor.lhs.false.i.i.if.end27.i.i_crit_edge, label %if.else.i.i

lor.lhs.false.i.i.if.end27.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rates23.i.i = getelementptr inbounds %struct.ath5k_buf, ptr %22, i32 0, i32 5
  %61 = call ptr @memcpy(ptr %rates23.i.i, ptr %57, i32 3)
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.else.i.i, %lor.lhs.false.i.i.if.end27.i.i_crit_edge, %if.end14.i.i.if.end27.i.i_crit_edge
  %i.0.i.i = phi i32 [ 1, %if.else.i.i ], [ 0, %lor.lhs.false.i.i.if.end27.i.i_crit_edge ], [ 0, %if.end14.i.i.if.end27.i.i_crit_edge ]
  %use_rts.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 21
  %arrayidx31.i.i = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %i.0.i.i
  %62 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx31.i.i, align 2
  %arrayidx35.i.i = getelementptr %struct.ath5k_buf, ptr %22, i32 0, i32 5, i32 %i.0.i.i
  %64 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx35.i.i, align 1
  %flags.i.i = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %i.0.i.i, i32 4
  %65 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %flags.i.i, align 2
  %flags43.i.i = getelementptr %struct.ath5k_buf, ptr %22, i32 0, i32 5, i32 %i.0.i.i, i32 1
  %67 = ptrtoint ptr %flags43.i.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %bf.load44.i.i = load i16, ptr %flags43.i.i, align 1
  %bf.value.i.i = and i16 %66, 2047
  %bf.clear.i.i = and i16 %bf.load44.i.i, -2048
  %bf.set.i.i = or i16 %bf.clear.i.i, %bf.value.i.i
  store i16 %bf.set.i.i, ptr %flags43.i.i, align 1
  %68 = ptrtoint ptr %use_rts.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load45.i.i = load i8, ptr %use_rts.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load45.i.i)
  %tobool47.not.i.i = icmp sgt i8 %bf.load45.i.i, -1
  br i1 %tobool47.not.i.i, label %if.else61.i.i, label %if.then48.i.i

if.then48.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %count_rts.i.i = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %i.0.i.i, i32 3
  br label %for.inc.i.i

if.else61.i.i:                                    ; preds = %if.end27.i.i
  %69 = and i8 %bf.load45.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool65.not.i.i = icmp eq i8 %69, 0
  br i1 %tobool65.not.i.i, label %if.else80.i.i, label %if.then66.i.i

if.then66.i.i:                                    ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %count_cts.i.i = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %i.0.i.i, i32 2
  br label %for.inc.i.i

if.else80.i.i:                                    ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %count84.i.i = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %i.0.i.i, i32 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else80.i.i, %if.then66.i.i, %if.then48.i.i
  %.sink.in.i.i = phi ptr [ %count_rts.i.i, %if.then48.i.i ], [ %count84.i.i, %if.else80.i.i ], [ %count_cts.i.i, %if.then66.i.i ]
  %70 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %.sink.i.i = load i8, ptr %.sink.in.i.i, align 1
  %bf.value58.i.i = zext i8 %.sink.i.i to i16
  %bf.shl.i.i = shl i16 %bf.value58.i.i, 11
  %bf.set60.i.i = or i16 %bf.shl.i.i, %bf.value.i.i
  %71 = ptrtoint ptr %flags43.i.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 %bf.set60.i.i, ptr %flags43.i.i, align 1
  %indvars.iv.next.i.i = add nuw nsw i32 %i.0.i.i, 1
  %arrayidx31.i.i.1 = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %indvars.iv.next.i.i
  %72 = ptrtoint ptr %arrayidx31.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx31.i.i.1, align 2
  %arrayidx35.i.i.1 = getelementptr %struct.ath5k_buf, ptr %22, i32 0, i32 5, i32 %indvars.iv.next.i.i
  %74 = ptrtoint ptr %arrayidx35.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayidx35.i.i.1, align 1
  %flags.i.i.1 = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %indvars.iv.next.i.i, i32 4
  %75 = ptrtoint ptr %flags.i.i.1 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %flags.i.i.1, align 2
  %flags43.i.i.1 = getelementptr %struct.ath5k_buf, ptr %22, i32 0, i32 5, i32 %indvars.iv.next.i.i, i32 1
  %77 = ptrtoint ptr %flags43.i.i.1 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %bf.load44.i.i.1 = load i16, ptr %flags43.i.i.1, align 1
  %bf.value.i.i.1 = and i16 %76, 2047
  %bf.clear.i.i.1 = and i16 %bf.load44.i.i.1, -2048
  %bf.set.i.i.1 = or i16 %bf.clear.i.i.1, %bf.value.i.i.1
  store i16 %bf.set.i.i.1, ptr %flags43.i.i.1, align 1
  %78 = ptrtoint ptr %use_rts.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load45.i.i.1 = load i8, ptr %use_rts.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load45.i.i.1)
  %tobool47.not.i.i.1 = icmp sgt i8 %bf.load45.i.i.1, -1
  br i1 %tobool47.not.i.i.1, label %if.else61.i.i.1, label %if.then48.i.i.1

if.then48.i.i.1:                                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %count_rts.i.i.1 = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %indvars.iv.next.i.i, i32 3
  br label %for.inc.i.i.1

if.else61.i.i.1:                                  ; preds = %for.inc.i.i
  %79 = and i8 %bf.load45.i.i.1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool65.not.i.i.1 = icmp eq i8 %79, 0
  br i1 %tobool65.not.i.i.1, label %if.else80.i.i.1, label %if.then66.i.i.1

if.then66.i.i.1:                                  ; preds = %if.else61.i.i.1
  call void @__sanitizer_cov_trace_pc() #16
  %count_cts.i.i.1 = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %indvars.iv.next.i.i, i32 2
  br label %for.inc.i.i.1

if.else80.i.i.1:                                  ; preds = %if.else61.i.i.1
  call void @__sanitizer_cov_trace_pc() #16
  %count84.i.i.1 = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %indvars.iv.next.i.i, i32 1
  br label %for.inc.i.i.1

for.inc.i.i.1:                                    ; preds = %if.else80.i.i.1, %if.then66.i.i.1, %if.then48.i.i.1
  %.sink.in.i.i.1 = phi ptr [ %count_rts.i.i.1, %if.then48.i.i.1 ], [ %count84.i.i.1, %if.else80.i.i.1 ], [ %count_cts.i.i.1, %if.then66.i.i.1 ]
  %80 = ptrtoint ptr %.sink.in.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %80)
  %.sink.i.i.1 = load i8, ptr %.sink.in.i.i.1, align 1
  %bf.value58.i.i.1 = zext i8 %.sink.i.i.1 to i16
  %bf.shl.i.i.1 = shl i16 %bf.value58.i.i.1, 11
  %bf.set60.i.i.1 = or i16 %bf.shl.i.i.1, %bf.value.i.i.1
  %81 = ptrtoint ptr %flags43.i.i.1 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 %bf.set60.i.i.1, ptr %flags43.i.i.1, align 1
  %indvars.iv.next.i.i.1 = or i32 %i.0.i.i, 2
  %arrayidx31.i.i.2 = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %indvars.iv.next.i.i.1
  %82 = ptrtoint ptr %arrayidx31.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx31.i.i.2, align 2
  %arrayidx35.i.i.2 = getelementptr %struct.ath5k_buf, ptr %22, i32 0, i32 5, i32 %indvars.iv.next.i.i.1
  %84 = ptrtoint ptr %arrayidx35.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx35.i.i.2, align 1
  %flags.i.i.2 = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %indvars.iv.next.i.i.1, i32 4
  %85 = ptrtoint ptr %flags.i.i.2 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %flags.i.i.2, align 2
  %flags43.i.i.2 = getelementptr %struct.ath5k_buf, ptr %22, i32 0, i32 5, i32 %indvars.iv.next.i.i.1, i32 1
  %87 = ptrtoint ptr %flags43.i.i.2 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %bf.load44.i.i.2 = load i16, ptr %flags43.i.i.2, align 1
  %bf.value.i.i.2 = and i16 %86, 2047
  %bf.clear.i.i.2 = and i16 %bf.load44.i.i.2, -2048
  %bf.set.i.i.2 = or i16 %bf.clear.i.i.2, %bf.value.i.i.2
  store i16 %bf.set.i.i.2, ptr %flags43.i.i.2, align 1
  %88 = ptrtoint ptr %use_rts.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load45.i.i.2 = load i8, ptr %use_rts.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load45.i.i.2)
  %tobool47.not.i.i.2 = icmp sgt i8 %bf.load45.i.i.2, -1
  br i1 %tobool47.not.i.i.2, label %if.else61.i.i.2, label %if.then48.i.i.2

if.then48.i.i.2:                                  ; preds = %for.inc.i.i.1
  call void @__sanitizer_cov_trace_pc() #16
  %count_rts.i.i.2 = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %indvars.iv.next.i.i.1, i32 3
  br label %for.inc.i.i.2

if.else61.i.i.2:                                  ; preds = %for.inc.i.i.1
  %89 = and i8 %bf.load45.i.i.2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool65.not.i.i.2 = icmp eq i8 %89, 0
  br i1 %tobool65.not.i.i.2, label %if.else80.i.i.2, label %if.then66.i.i.2

if.then66.i.i.2:                                  ; preds = %if.else61.i.i.2
  call void @__sanitizer_cov_trace_pc() #16
  %count_cts.i.i.2 = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %indvars.iv.next.i.i.1, i32 2
  br label %for.inc.i.i.2

if.else80.i.i.2:                                  ; preds = %if.else61.i.i.2
  call void @__sanitizer_cov_trace_pc() #16
  %count84.i.i.2 = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %indvars.iv.next.i.i.1, i32 1
  br label %for.inc.i.i.2

for.inc.i.i.2:                                    ; preds = %if.else80.i.i.2, %if.then66.i.i.2, %if.then48.i.i.2
  %.sink.in.i.i.2 = phi ptr [ %count_rts.i.i.2, %if.then48.i.i.2 ], [ %count84.i.i.2, %if.else80.i.i.2 ], [ %count_cts.i.i.2, %if.then66.i.i.2 ]
  %90 = ptrtoint ptr %.sink.in.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %90)
  %.sink.i.i.2 = load i8, ptr %.sink.in.i.i.2, align 1
  %bf.value58.i.i.2 = zext i8 %.sink.i.i.2 to i16
  %bf.shl.i.i.2 = shl i16 %bf.value58.i.i.2, 11
  %bf.set60.i.i.2 = or i16 %bf.shl.i.i.2, %bf.value.i.i.2
  %91 = ptrtoint ptr %flags43.i.i.2 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 %bf.set60.i.i.2, ptr %flags43.i.i.2, align 1
  %indvars.iv.next.i.i.2 = add nuw nsw i32 %i.0.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv.next.i.i.2)
  %exitcond.not.i.i.2 = icmp eq i32 %indvars.iv.next.i.i.2, 4
  br i1 %exitcond.not.i.i.2, label %for.inc.i.i.2.if.end12.i_crit_edge, label %for.body.i.i.3

for.inc.i.i.2.if.end12.i_crit_edge:               ; preds = %for.inc.i.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

for.body.i.i.3:                                   ; preds = %for.inc.i.i.2
  %arrayidx31.i.i.3 = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %indvars.iv.next.i.i.2
  %92 = ptrtoint ptr %arrayidx31.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx31.i.i.3, align 2
  %arrayidx35.i.i.3 = getelementptr %struct.ath5k_buf, ptr %22, i32 0, i32 5, i32 %indvars.iv.next.i.i.2
  %94 = ptrtoint ptr %arrayidx35.i.i.3 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx35.i.i.3, align 1
  %flags.i.i.3 = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %indvars.iv.next.i.i.2, i32 4
  %95 = ptrtoint ptr %flags.i.i.3 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %flags.i.i.3, align 2
  %flags43.i.i.3 = getelementptr %struct.ath5k_buf, ptr %22, i32 0, i32 5, i32 %indvars.iv.next.i.i.2, i32 1
  %97 = ptrtoint ptr %flags43.i.i.3 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %bf.load44.i.i.3 = load i16, ptr %flags43.i.i.3, align 1
  %bf.value.i.i.3 = and i16 %96, 2047
  %bf.clear.i.i.3 = and i16 %bf.load44.i.i.3, -2048
  %bf.set.i.i.3 = or i16 %bf.clear.i.i.3, %bf.value.i.i.3
  store i16 %bf.set.i.i.3, ptr %flags43.i.i.3, align 1
  %98 = ptrtoint ptr %use_rts.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load45.i.i.3 = load i8, ptr %use_rts.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load45.i.i.3)
  %tobool47.not.i.i.3 = icmp sgt i8 %bf.load45.i.i.3, -1
  br i1 %tobool47.not.i.i.3, label %if.else61.i.i.3, label %if.then48.i.i.3

if.then48.i.i.3:                                  ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #16
  %count_rts.i.i.3 = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %indvars.iv.next.i.i.2, i32 3
  br label %for.inc.i.i.3

if.else61.i.i.3:                                  ; preds = %for.body.i.i.3
  %99 = and i8 %bf.load45.i.i.3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool65.not.i.i.3 = icmp eq i8 %99, 0
  br i1 %tobool65.not.i.i.3, label %if.else80.i.i.3, label %if.then66.i.i.3

if.then66.i.i.3:                                  ; preds = %if.else61.i.i.3
  call void @__sanitizer_cov_trace_pc() #16
  %count_cts.i.i.3 = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %indvars.iv.next.i.i.2, i32 2
  br label %for.inc.i.i.3

if.else80.i.i.3:                                  ; preds = %if.else61.i.i.3
  call void @__sanitizer_cov_trace_pc() #16
  %count84.i.i.3 = getelementptr %struct.ieee80211_sta_rates, ptr %56, i32 0, i32 1, i32 %indvars.iv.next.i.i.2, i32 1
  br label %for.inc.i.i.3

for.inc.i.i.3:                                    ; preds = %if.else80.i.i.3, %if.then66.i.i.3, %if.then48.i.i.3
  %.sink.in.i.i.3 = phi ptr [ %count_rts.i.i.3, %if.then48.i.i.3 ], [ %count84.i.i.3, %if.else80.i.i.3 ], [ %count_cts.i.i.3, %if.then66.i.i.3 ]
  %100 = ptrtoint ptr %.sink.in.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %100)
  %.sink.i.i.3 = load i8, ptr %.sink.in.i.i.3, align 1
  %bf.value58.i.i.3 = zext i8 %.sink.i.i.3 to i16
  %bf.shl.i.i.3 = shl i16 %bf.value58.i.i.3, 11
  %bf.set60.i.i.3 = or i16 %bf.shl.i.i.3, %bf.value.i.i.3
  %101 = ptrtoint ptr %flags43.i.i.3 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 2)
  store i16 %bf.set60.i.i.3, ptr %flags43.i.i.3, align 1
  br label %if.end12.i

if.then11.i:                                      ; preds = %do.end10.i.i.if.then11.i_crit_edge, %if.end9.i.if.then11.i_crit_edge, %if.end.i103.if.then11.i_crit_edge
  %sta.0295.ph.i = phi ptr [ %54, %do.end10.i.i.if.then11.i_crit_edge ], [ null, %if.end9.i.if.then11.i_crit_edge ], [ null, %if.end.i103.if.then11.i_crit_edge ]
  %vif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %102 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %vif.i, align 8
  %rates.i = getelementptr inbounds %struct.ath5k_buf, ptr %22, i32 0, i32 5
  tail call void @ieee80211_get_tx_rates(ptr noundef %103, ptr noundef %sta.0295.ph.i, ptr noundef %skb, ptr noundef %rates.i, i32 noundef 4) #14
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %for.inc.i.i.3, %for.inc.i.i.2.if.end12.i_crit_edge
  %hw.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 7
  %104 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw.i, align 4
  %arrayidx.i.i = getelementptr %struct.ath5k_buf, ptr %22, i32 0, i32 5, i32 0
  %106 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %cmp.i222.i = icmp slt i8 %107, 0
  br i1 %cmp.i222.i, label %if.end12.i.err_unmap.i_crit_edge, label %ath5k_get_rate.exit.i

if.end12.i.err_unmap.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unmap.i

ath5k_get_rate.exit.i:                            ; preds = %if.end12.i
  %conv10.i.i = zext i8 %107 to i32
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %105, i32 0, i32 1
  %108 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %wiphy.i.i, align 8
  %band.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %110 = ptrtoint ptr %band.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %bf.load.i223.i = load i32, ptr %band.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i223.i, 29
  %arrayidx3.i.i = getelementptr %struct.wiphy, ptr %109, i32 0, i32 53, i32 %bf.lshr.i.i
  %111 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx3.i.i, align 4
  %bitrates.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %bitrates.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bitrates.i.i, align 4
  %arrayidx7.i.i = getelementptr %struct.ieee80211_rate, ptr %114, i32 %conv10.i.i
  %tobool14.not.i = icmp eq ptr %arrayidx7.i.i, null
  br i1 %tobool14.not.i, label %ath5k_get_rate.exit.i.err_unmap.i_crit_edge, label %ath5k_get_rate_hw_value.exit.i

ath5k_get_rate.exit.i.err_unmap.i_crit_edge:      ; preds = %ath5k_get_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unmap.i

ath5k_get_rate_hw_value.exit.i:                   ; preds = %ath5k_get_rate.exit.i
  %115 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cb.i.i, align 8
  %and.i105 = and i32 %116, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105)
  %tobool18.not.i = icmp eq i32 %and.i105, 0
  %spec.select.i = select i1 %tobool18.not.i, i32 17, i32 19
  %flags22.i = getelementptr %struct.ath5k_buf, ptr %22, i32 0, i32 5, i32 0, i32 1
  %117 = ptrtoint ptr %flags22.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %bf.load.i = load i16, ptr %flags22.i, align 1
  %118 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool2.not.i229.i = icmp eq i16 %118, 0
  %hw_value_short.i.i = getelementptr %struct.ieee80211_rate, ptr %114, i32 %conv10.i.i, i32 3
  %hw_value.i.i = getelementptr %struct.ieee80211_rate, ptr %114, i32 %conv10.i.i, i32 2
  %cond.in.in.i.i = select i1 %tobool2.not.i229.i, ptr %hw_value.i.i, ptr %hw_value_short.i.i
  %119 = ptrtoint ptr %cond.in.in.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %cond.in12.i.i = load i16, ptr %cond.in.in.i.i, align 2
  %phi.cast.i = zext i16 %cond.in12.i.i to i32
  %120 = ptrtoint ptr %len.i101 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %len.i101, align 4
  %hw_key.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %122 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hw_key.i, align 4
  %tobool26.not.i = icmp eq ptr %123, null
  br i1 %tobool26.not.i, label %ath5k_get_rate_hw_value.exit.i.if.end32.i_crit_edge, label %if.then27.i

ath5k_get_rate_hw_value.exit.i.if.end32.i_crit_edge: ; preds = %ath5k_get_rate_hw_value.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i

if.then27.i:                                      ; preds = %ath5k_get_rate_hw_value.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %hw_key_idx.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %hw_key_idx.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %hw_key_idx.i, align 2
  %conv29.i = zext i8 %125 to i32
  %icv_len.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %123, i32 0, i32 2
  %126 = ptrtoint ptr %icv_len.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %icv_len.i, align 4
  %conv31.i = zext i8 %127 to i32
  %add.i = add i32 %121, %conv31.i
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then27.i, %ath5k_get_rate_hw_value.exit.i.if.end32.i_crit_edge
  %pktlen.0.i = phi i32 [ %add.i, %if.then27.i ], [ %121, %ath5k_get_rate_hw_value.exit.i.if.end32.i_crit_edge ]
  %keyidx.0.i = phi i32 [ %conv29.i, %if.then27.i ], [ -1, %ath5k_get_rate_hw_value.exit.i.if.end32.i_crit_edge ]
  %128 = and i16 %bf.load.i, 255
  %conv33.i = zext i16 %128 to i32
  %and34.i = and i32 %conv33.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end32.i.if.end43.i_crit_edge, label %if.then36.i

if.end32.i.if.end43.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43.i

if.then36.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  %or37.i = or i32 %spec.select.i, 4
  %rts_cts_rate_idx.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %129 = ptrtoint ptr %rts_cts_rate_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %rts_cts_rate_idx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %cmp.i232.i = icmp slt i8 %130, 0
  %conv6.i.i = zext i8 %130 to i32
  %arrayidx3.i239.i = getelementptr %struct.ieee80211_rate, ptr %114, i32 %conv6.i.i
  %retval.0.i241.i = select i1 %cmp.i232.i, ptr null, ptr %arrayidx3.i239.i
  %hw_value.i = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i241.i, i32 0, i32 2
  %131 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %hw_value.i, align 2
  %vif41.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %133 = ptrtoint ptr %vif41.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %vif41.i, align 8
  %call42.i = tail call zeroext i16 @ieee80211_rts_duration(ptr noundef %105, ptr noundef %134, i32 noundef %pktlen.0.i, ptr noundef %cb.i.i) #14
  %135 = tail call i16 @llvm.bswap.i16(i16 %call42.i) #14
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then36.i, %if.end32.i.if.end43.i_crit_edge
  %flags.1.i = phi i32 [ %or37.i, %if.then36.i ], [ %spec.select.i, %if.end32.i.if.end43.i_crit_edge ]
  %cts_rate.0.i = phi i16 [ %132, %if.then36.i ], [ 0, %if.end32.i.if.end43.i_crit_edge ]
  %duration.0.i = phi i16 [ %135, %if.then36.i ], [ 0, %if.end32.i.if.end43.i_crit_edge ]
  %and45.i = and i32 %conv33.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.end43.i.if.end55.i_crit_edge, label %if.then47.i

if.end43.i.if.end55.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.i

if.then47.i:                                      ; preds = %if.end43.i
  %or48.i = or i32 %flags.1.i, 8
  %136 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hw.i, align 4
  %rts_cts_rate_idx.i242.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %138 = ptrtoint ptr %rts_cts_rate_idx.i242.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %rts_cts_rate_idx.i242.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp.i243.i = icmp slt i8 %139, 0
  br i1 %cmp.i243.i, label %if.then47.i.ieee80211_get_rts_cts_rate.exit254.i_crit_edge, label %if.end.i252.i

if.then47.i.ieee80211_get_rts_cts_rate.exit254.i_crit_edge: ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_get_rts_cts_rate.exit254.i

if.end.i252.i:                                    ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv6.i244.i = zext i8 %139 to i32
  %wiphy.i245.i = getelementptr inbounds %struct.ieee80211_hw, ptr %137, i32 0, i32 1
  %140 = ptrtoint ptr %wiphy.i245.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %wiphy.i245.i, align 8
  %142 = ptrtoint ptr %band.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %bf.load.i247.i = load i32, ptr %band.i.i, align 4
  %bf.lshr.i248.i = lshr i32 %bf.load.i247.i, 29
  %arrayidx.i249.i = getelementptr %struct.wiphy, ptr %141, i32 0, i32 53, i32 %bf.lshr.i248.i
  %143 = ptrtoint ptr %arrayidx.i249.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.i249.i, align 4
  %bitrates.i250.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %bitrates.i250.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %bitrates.i250.i, align 4
  %arrayidx3.i251.i = getelementptr %struct.ieee80211_rate, ptr %146, i32 %conv6.i244.i
  br label %ieee80211_get_rts_cts_rate.exit254.i

ieee80211_get_rts_cts_rate.exit254.i:             ; preds = %if.end.i252.i, %if.then47.i.ieee80211_get_rts_cts_rate.exit254.i_crit_edge
  %retval.0.i253.i = phi ptr [ %arrayidx3.i251.i, %if.end.i252.i ], [ null, %if.then47.i.ieee80211_get_rts_cts_rate.exit254.i_crit_edge ]
  %hw_value51.i = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i253.i, i32 0, i32 2
  %147 = ptrtoint ptr %hw_value51.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %hw_value51.i, align 2
  %vif53.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %149 = ptrtoint ptr %vif53.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %vif53.i, align 8
  %call54.i = tail call zeroext i16 @ieee80211_ctstoself_duration(ptr noundef %137, ptr noundef %150, i32 noundef %pktlen.0.i, ptr noundef %cb.i.i) #14
  %151 = tail call i16 @llvm.bswap.i16(i16 %call54.i) #14
  br label %if.end55.i

if.end55.i:                                       ; preds = %ieee80211_get_rts_cts_rate.exit254.i, %if.end43.i.if.end55.i_crit_edge
  %flags.2.i = phi i32 [ %or48.i, %ieee80211_get_rts_cts_rate.exit254.i ], [ %flags.1.i, %if.end43.i.if.end55.i_crit_edge ]
  %cts_rate.1.i = phi i16 [ %148, %ieee80211_get_rts_cts_rate.exit254.i ], [ %cts_rate.0.i, %if.end43.i.if.end55.i_crit_edge ]
  %duration.1.i = phi i16 [ %151, %ieee80211_get_rts_cts_rate.exit254.i ], [ %duration.0.i, %if.end43.i.if.end55.i_crit_edge ]
  %ah_setup_tx_desc.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 116
  %152 = ptrtoint ptr %ah_setup_tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ah_setup_tx_desc.i, align 4
  %call56.i = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %skb) #14
  %154 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %data.i.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %155, align 2
  %158 = and i16 %157, -1024
  %159 = zext i16 %158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.155)
  switch i16 %158, label %if.else6.i.i [
    i16 -32768, label %if.end55.i.get_hw_packet_type.exit.i_crit_edge
    i16 20480, label %if.end12.fold.split.i.i
    i16 -28672, label %if.end12.fold.split19.i.i
  ]

if.end55.i.get_hw_packet_type.exit.i_crit_edge:   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_hw_packet_type.exit.i

if.else6.i.i:                                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23552, i16 %158)
  %cmp.i18.i.i = icmp eq i16 %158, -23552
  %..i255.i = select i1 %cmp.i18.i.i, i32 2, i32 0
  br label %get_hw_packet_type.exit.i

if.end12.fold.split.i.i:                          ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_hw_packet_type.exit.i

if.end12.fold.split19.i.i:                        ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_hw_packet_type.exit.i

get_hw_packet_type.exit.i:                        ; preds = %if.end12.fold.split19.i.i, %if.end12.fold.split.i.i, %if.else6.i.i, %if.end55.i.get_hw_packet_type.exit.i_crit_edge
  %htype.0.i.i = phi i32 [ 3, %if.end55.i.get_hw_packet_type.exit.i_crit_edge ], [ %..i255.i, %if.else6.i.i ], [ 4, %if.end12.fold.split.i.i ], [ 1, %if.end12.fold.split19.i.i ]
  %txp_requested.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 108, i32 14
  %160 = ptrtoint ptr %txp_requested.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %txp_requested.i, align 4
  %mul.i = shl i32 %161, 1
  %162 = ptrtoint ptr %flags22.i to i32
  call void @__asan_loadN_noabort(i32 %162, i32 2)
  %bf.load61.i = load i16, ptr %flags22.i, align 1
  %bf.lshr.i = lshr i16 %bf.load61.i, 11
  %conv62.i = zext i16 %bf.lshr.i to i32
  %ah_tx_ant.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 84
  %163 = ptrtoint ptr %ah_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %ah_tx_ant.i, align 1
  %conv63.i = zext i8 %164 to i32
  %conv64.i = zext i16 %cts_rate.1.i to i32
  %conv65.i = zext i16 %duration.1.i to i32
  %call66.i = tail call i32 %153(ptr noundef %1, ptr noundef %37, i32 noundef %pktlen.0.i, i32 noundef %call56.i, i32 noundef %retval.0.i.ph, i32 noundef %htype.0.i.i, i32 noundef %mul.i, i32 noundef %phi.cast.i, i32 noundef %conv62.i, i32 noundef %keyidx.0.i, i32 noundef %conv63.i, i32 noundef %flags.2.i, i32 noundef %conv64.i, i32 noundef %conv65.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.end69.i, label %get_hw_packet_type.exit.i.err_unmap.i_crit_edge

get_hw_packet_type.exit.i.err_unmap.i_crit_edge:  ; preds = %get_hw_packet_type.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unmap.i

if.end69.i:                                       ; preds = %get_hw_packet_type.exit.i
  %cap_has_mrr_support.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 86, i32 5
  %165 = ptrtoint ptr %cap_has_mrr_support.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %cap_has_mrr_support.i, align 2, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool70.not.i = icmp eq i8 %166, 0
  br i1 %tobool70.not.i, label %if.end69.i.if.end98.i_crit_edge, label %if.then71.i

if.end69.i.if.end98.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98.i

if.then71.i:                                      ; preds = %if.end69.i
  %167 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %cmp.i257.i = icmp slt i8 %168, 0
  br i1 %cmp.i257.i, label %if.then71.i.for.end.i_crit_edge, label %ath5k_get_rate.exit268.i

if.then71.i.for.end.i_crit_edge:                  ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

ath5k_get_rate.exit268.i:                         ; preds = %if.then71.i
  %169 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %hw.i, align 4
  %wiphy.i259.i = getelementptr inbounds %struct.ieee80211_hw, ptr %170, i32 0, i32 1
  %conv10.i258.i = zext i8 %168 to i32
  %171 = ptrtoint ptr %wiphy.i259.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %wiphy.i259.i, align 8
  %173 = ptrtoint ptr %band.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %bf.load.i261.i = load i32, ptr %band.i.i, align 4
  %bf.lshr.i262.i = lshr i32 %bf.load.i261.i, 29
  %arrayidx3.i263.i = getelementptr %struct.wiphy, ptr %172, i32 0, i32 53, i32 %bf.lshr.i262.i
  %174 = ptrtoint ptr %arrayidx3.i263.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx3.i263.i, align 4
  %bitrates.i264.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %bitrates.i264.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %bitrates.i264.i, align 4
  %arrayidx7.i265.i = getelementptr %struct.ieee80211_rate, ptr %177, i32 %conv10.i258.i
  %tobool77.not.i = icmp eq ptr %arrayidx7.i265.i, null
  br i1 %tobool77.not.i, label %ath5k_get_rate.exit268.i.for.end.i_crit_edge, label %ath5k_get_rate_hw_value.exit290.i

ath5k_get_rate.exit268.i.for.end.i_crit_edge:     ; preds = %ath5k_get_rate.exit268.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

ath5k_get_rate_hw_value.exit290.i:                ; preds = %ath5k_get_rate.exit268.i
  %178 = ptrtoint ptr %flags22.i to i32
  call void @__asan_loadN_noabort(i32 %178, i32 2)
  %bf.load.i282.i = load i16, ptr %flags22.i, align 1
  %179 = and i16 %bf.load.i282.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %179)
  %tobool2.not.i283.i = icmp eq i16 %179, 0
  %hw_value_short.i284.i = getelementptr %struct.ieee80211_rate, ptr %177, i32 %conv10.i258.i, i32 3
  %hw_value.i285.i = getelementptr %struct.ieee80211_rate, ptr %177, i32 %conv10.i258.i, i32 2
  %cond.in.in.i286.i = select i1 %tobool2.not.i283.i, ptr %hw_value.i285.i, ptr %hw_value_short.i284.i
  %180 = ptrtoint ptr %cond.in.in.i286.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %cond.in12.i287.i = load i16, ptr %cond.in.in.i286.i, align 2
  %bf.lshr88.i = lshr i16 %bf.load.i282.i, 11
  %arrayidx.i256.1.i = getelementptr %struct.ath5k_buf, ptr %22, i32 0, i32 5, i32 1
  %181 = ptrtoint ptr %arrayidx.i256.1.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx.i256.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %cmp.i257.1.i = icmp slt i8 %182, 0
  br i1 %cmp.i257.1.i, label %ath5k_get_rate_hw_value.exit290.i.for.end.i_crit_edge, label %ath5k_get_rate.exit268.1.i

ath5k_get_rate_hw_value.exit290.i.for.end.i_crit_edge: ; preds = %ath5k_get_rate_hw_value.exit290.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

ath5k_get_rate.exit268.1.i:                       ; preds = %ath5k_get_rate_hw_value.exit290.i
  %conv10.i258.1.i = zext i8 %182 to i32
  %arrayidx7.i265.1.i = getelementptr %struct.ieee80211_rate, ptr %177, i32 %conv10.i258.1.i
  %tobool77.not.1.i = icmp eq ptr %arrayidx7.i265.1.i, null
  br i1 %tobool77.not.1.i, label %ath5k_get_rate.exit268.1.i.for.end.i_crit_edge, label %ath5k_get_rate_hw_value.exit290.1.i

ath5k_get_rate.exit268.1.i.for.end.i_crit_edge:   ; preds = %ath5k_get_rate.exit268.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

ath5k_get_rate_hw_value.exit290.1.i:              ; preds = %ath5k_get_rate.exit268.1.i
  %flags.i281.1.i = getelementptr %struct.ath5k_buf, ptr %22, i32 0, i32 5, i32 1, i32 1
  %183 = ptrtoint ptr %flags.i281.1.i to i32
  call void @__asan_loadN_noabort(i32 %183, i32 2)
  %bf.load.i282.1.i = load i16, ptr %flags.i281.1.i, align 1
  %184 = and i16 %bf.load.i282.1.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %184)
  %tobool2.not.i283.1.i = icmp eq i16 %184, 0
  %hw_value_short.i284.1.i = getelementptr %struct.ieee80211_rate, ptr %177, i32 %conv10.i258.1.i, i32 3
  %hw_value.i285.1.i = getelementptr %struct.ieee80211_rate, ptr %177, i32 %conv10.i258.1.i, i32 2
  %cond.in.in.i286.1.i = select i1 %tobool2.not.i283.1.i, ptr %hw_value.i285.1.i, ptr %hw_value_short.i284.1.i
  %185 = ptrtoint ptr %cond.in.in.i286.1.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %cond.in12.i287.1.i = load i16, ptr %cond.in.in.i286.1.i, align 2
  %bf.lshr88.1.i = lshr i16 %bf.load.i282.1.i, 11
  %arrayidx.i256.2.i = getelementptr %struct.ath5k_buf, ptr %22, i32 0, i32 5, i32 2
  %186 = ptrtoint ptr %arrayidx.i256.2.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx.i256.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %cmp.i257.2.i = icmp slt i8 %187, 0
  br i1 %cmp.i257.2.i, label %ath5k_get_rate_hw_value.exit290.1.i.for.end.i_crit_edge, label %ath5k_get_rate.exit268.2.i

ath5k_get_rate_hw_value.exit290.1.i.for.end.i_crit_edge: ; preds = %ath5k_get_rate_hw_value.exit290.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

ath5k_get_rate.exit268.2.i:                       ; preds = %ath5k_get_rate_hw_value.exit290.1.i
  %conv10.i258.2.i = zext i8 %187 to i32
  %arrayidx7.i265.2.i = getelementptr %struct.ieee80211_rate, ptr %177, i32 %conv10.i258.2.i
  %tobool77.not.2.i = icmp eq ptr %arrayidx7.i265.2.i, null
  br i1 %tobool77.not.2.i, label %ath5k_get_rate.exit268.2.i.for.end.i_crit_edge, label %ath5k_get_rate_hw_value.exit290.2.i

ath5k_get_rate.exit268.2.i.for.end.i_crit_edge:   ; preds = %ath5k_get_rate.exit268.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

ath5k_get_rate_hw_value.exit290.2.i:              ; preds = %ath5k_get_rate.exit268.2.i
  call void @__sanitizer_cov_trace_pc() #16
  %flags.i281.2.i = getelementptr %struct.ath5k_buf, ptr %22, i32 0, i32 5, i32 2, i32 1
  %188 = ptrtoint ptr %flags.i281.2.i to i32
  call void @__asan_loadN_noabort(i32 %188, i32 2)
  %bf.load.i282.2.i = load i16, ptr %flags.i281.2.i, align 1
  %189 = and i16 %bf.load.i282.2.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %189)
  %tobool2.not.i283.2.i = icmp eq i16 %189, 0
  %hw_value_short.i284.2.i = getelementptr %struct.ieee80211_rate, ptr %177, i32 %conv10.i258.2.i, i32 3
  %hw_value.i285.2.i = getelementptr %struct.ieee80211_rate, ptr %177, i32 %conv10.i258.2.i, i32 2
  %cond.in.in.i286.2.i = select i1 %tobool2.not.i283.2.i, ptr %hw_value.i285.2.i, ptr %hw_value_short.i284.2.i
  %190 = ptrtoint ptr %cond.in.in.i286.2.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %cond.in12.i287.2.i = load i16, ptr %cond.in.in.i286.2.i, align 2
  %phi.cast307.i = zext i16 %cond.in12.i287.2.i to i32
  %bf.lshr88.2.i = lshr i16 %bf.load.i282.2.i, 11
  %conv89.2.i = zext i16 %bf.lshr88.2.i to i32
  br label %for.end.i

for.end.i:                                        ; preds = %ath5k_get_rate_hw_value.exit290.2.i, %ath5k_get_rate.exit268.2.i.for.end.i_crit_edge, %ath5k_get_rate_hw_value.exit290.1.i.for.end.i_crit_edge, %ath5k_get_rate.exit268.1.i.for.end.i_crit_edge, %ath5k_get_rate_hw_value.exit290.i.for.end.i_crit_edge, %ath5k_get_rate.exit268.i.for.end.i_crit_edge, %if.then71.i.for.end.i_crit_edge
  %mrr_rate.sroa.0.0.i.shrunk = phi i16 [ 0, %if.then71.i.for.end.i_crit_edge ], [ 0, %ath5k_get_rate.exit268.i.for.end.i_crit_edge ], [ %cond.in12.i287.i, %ath5k_get_rate_hw_value.exit290.i.for.end.i_crit_edge ], [ %cond.in12.i287.i, %ath5k_get_rate.exit268.1.i.for.end.i_crit_edge ], [ %cond.in12.i287.i, %ath5k_get_rate_hw_value.exit290.1.i.for.end.i_crit_edge ], [ %cond.in12.i287.i, %ath5k_get_rate.exit268.2.i.for.end.i_crit_edge ], [ %cond.in12.i287.i, %ath5k_get_rate_hw_value.exit290.2.i ]
  %mrr_rate.sroa.6.0.i.shrunk = phi i16 [ 0, %if.then71.i.for.end.i_crit_edge ], [ 0, %ath5k_get_rate.exit268.i.for.end.i_crit_edge ], [ 0, %ath5k_get_rate_hw_value.exit290.i.for.end.i_crit_edge ], [ 0, %ath5k_get_rate.exit268.1.i.for.end.i_crit_edge ], [ %cond.in12.i287.1.i, %ath5k_get_rate_hw_value.exit290.1.i.for.end.i_crit_edge ], [ %cond.in12.i287.1.i, %ath5k_get_rate.exit268.2.i.for.end.i_crit_edge ], [ %cond.in12.i287.1.i, %ath5k_get_rate_hw_value.exit290.2.i ]
  %mrr_rate.sroa.9.0.i = phi i32 [ 0, %if.then71.i.for.end.i_crit_edge ], [ 0, %ath5k_get_rate.exit268.i.for.end.i_crit_edge ], [ 0, %ath5k_get_rate_hw_value.exit290.i.for.end.i_crit_edge ], [ 0, %ath5k_get_rate.exit268.1.i.for.end.i_crit_edge ], [ 0, %ath5k_get_rate_hw_value.exit290.1.i.for.end.i_crit_edge ], [ 0, %ath5k_get_rate.exit268.2.i.for.end.i_crit_edge ], [ %phi.cast307.i, %ath5k_get_rate_hw_value.exit290.2.i ]
  %mrr_tries.sroa.0.0.shrunk.i = phi i16 [ 0, %if.then71.i.for.end.i_crit_edge ], [ 0, %ath5k_get_rate.exit268.i.for.end.i_crit_edge ], [ %bf.lshr88.i, %ath5k_get_rate_hw_value.exit290.i.for.end.i_crit_edge ], [ %bf.lshr88.i, %ath5k_get_rate.exit268.1.i.for.end.i_crit_edge ], [ %bf.lshr88.i, %ath5k_get_rate_hw_value.exit290.1.i.for.end.i_crit_edge ], [ %bf.lshr88.i, %ath5k_get_rate.exit268.2.i.for.end.i_crit_edge ], [ %bf.lshr88.i, %ath5k_get_rate_hw_value.exit290.2.i ]
  %mrr_tries.sroa.6.0.shrunk.i = phi i16 [ 0, %if.then71.i.for.end.i_crit_edge ], [ 0, %ath5k_get_rate.exit268.i.for.end.i_crit_edge ], [ 0, %ath5k_get_rate_hw_value.exit290.i.for.end.i_crit_edge ], [ 0, %ath5k_get_rate.exit268.1.i.for.end.i_crit_edge ], [ %bf.lshr88.1.i, %ath5k_get_rate_hw_value.exit290.1.i.for.end.i_crit_edge ], [ %bf.lshr88.1.i, %ath5k_get_rate.exit268.2.i.for.end.i_crit_edge ], [ %bf.lshr88.1.i, %ath5k_get_rate_hw_value.exit290.2.i ]
  %mrr_tries.sroa.9.0.i = phi i32 [ 0, %if.then71.i.for.end.i_crit_edge ], [ 0, %ath5k_get_rate.exit268.i.for.end.i_crit_edge ], [ 0, %ath5k_get_rate_hw_value.exit290.i.for.end.i_crit_edge ], [ 0, %ath5k_get_rate.exit268.1.i.for.end.i_crit_edge ], [ 0, %ath5k_get_rate_hw_value.exit290.1.i.for.end.i_crit_edge ], [ 0, %ath5k_get_rate.exit268.2.i.for.end.i_crit_edge ], [ %conv89.2.i, %ath5k_get_rate_hw_value.exit290.2.i ]
  %mrr_rate.sroa.6.0.i = zext i16 %mrr_rate.sroa.6.0.i.shrunk to i32
  %mrr_rate.sroa.0.0.i = zext i16 %mrr_rate.sroa.0.0.i.shrunk to i32
  %mrr_tries.sroa.6.0.i = zext i16 %mrr_tries.sroa.6.0.shrunk.i to i32
  %mrr_tries.sroa.0.0.i = zext i16 %mrr_tries.sroa.0.0.shrunk.i to i32
  %call97.i = tail call i32 @ath5k_hw_setup_mrr_tx_desc(ptr noundef %1, ptr noundef %37, i32 noundef %mrr_rate.sroa.0.0.i, i32 noundef %mrr_tries.sroa.0.0.i, i32 noundef %mrr_rate.sroa.6.0.i, i32 noundef %mrr_tries.sroa.6.0.i, i32 noundef %mrr_rate.sroa.9.0.i, i32 noundef %mrr_tries.sroa.9.0.i) #14
  br label %if.end98.i

if.end98.i:                                       ; preds = %for.end.i, %if.end69.i.if.end98.i_crit_edge
  %191 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 0, ptr %37, align 4
  %192 = ptrtoint ptr %skbaddr.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %skbaddr.i, align 4
  %ds_data.i = getelementptr inbounds %struct.ath5k_desc, ptr %37, i32 0, i32 1
  %194 = ptrtoint ptr %ds_data.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %ds_data.i, align 4
  %lock.i = getelementptr inbounds %struct.ath5k_txq, ptr %txq, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #14
  %q.i = getelementptr inbounds %struct.ath5k_txq, ptr %txq, i32 0, i32 2
  %prev.i.i106 = getelementptr inbounds %struct.ath5k_txq, ptr %txq, i32 0, i32 2, i32 1
  %195 = ptrtoint ptr %prev.i.i106 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %prev.i.i106, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %22, ptr noundef %196, ptr noundef %q.i) #14
  br i1 %call.i.i.i, label %if.end.i.i291.i, label %if.end98.i.list_add_tail.exit.i_crit_edge

if.end98.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i

if.end.i.i291.i:                                  ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #16
  %197 = ptrtoint ptr %prev.i.i106 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %22, ptr %prev.i.i106, align 4
  %198 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %q.i, ptr %22, align 4
  %199 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %196, ptr %prev.i, align 4
  %200 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %200)
  store volatile ptr %22, ptr %196, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i291.i, %if.end98.i.list_add_tail.exit.i_crit_edge
  %201 = ptrtoint ptr %txq_len to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %txq_len, align 4
  %inc100.i = add i32 %202, 1
  store i32 %inc100.i, ptr %txq_len, align 4
  %link.i = getelementptr inbounds %struct.ath5k_txq, ptr %txq, i32 0, i32 1
  %203 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %link.i, align 4
  %cmp101.i = icmp eq ptr %204, null
  br i1 %cmp101.i, label %if.then103.i, label %if.else105.i

if.then103.i:                                     ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %205 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %txq, align 4
  %daddr.i = getelementptr inbounds %struct.ath5k_buf, ptr %22, i32 0, i32 2
  %207 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %daddr.i, align 4
  %call104.i = tail call i32 @ath5k_hw_set_txdp(ptr noundef %1, i32 noundef %206, i32 noundef %208) #14
  br label %ath5k_txbuf_setup.exit

if.else105.i:                                     ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %daddr106.i = getelementptr inbounds %struct.ath5k_buf, ptr %22, i32 0, i32 2
  %209 = ptrtoint ptr %daddr106.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %daddr106.i, align 4
  %211 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %204, align 4
  br label %ath5k_txbuf_setup.exit

err_unmap.i:                                      ; preds = %get_hw_packet_type.exit.i.err_unmap.i_crit_edge, %ath5k_get_rate.exit.i.err_unmap.i_crit_edge, %if.end12.i.err_unmap.i_crit_edge
  %212 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev.i, align 8
  %214 = ptrtoint ptr %skbaddr.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %skbaddr.i, align 4
  %216 = ptrtoint ptr %len.i101 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %len.i101, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %213, i32 noundef %215, i32 noundef %217, i32 noundef 1, i32 noundef 0) #14
  br label %if.then41

ath5k_txbuf_setup.exit:                           ; preds = %if.else105.i, %if.then103.i
  %218 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %37, ptr %link.i, align 4
  %219 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %txq, align 4
  %call112.i = tail call i32 @ath5k_hw_start_tx_dma(ptr noundef %1, i32 noundef %220) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #14
  br label %cleanup

if.then41:                                        ; preds = %err_unmap.i, %dma_map_single_attrs.exit.i.if.then41_crit_edge
  %221 = ptrtoint ptr %skb38 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr null, ptr %skb38, align 4
  %call52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txbuflock) #14
  %prev.i108 = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 37, i32 1
  %222 = ptrtoint ptr %prev.i108 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %prev.i108, align 4
  %call.i.i109 = tail call zeroext i1 @__list_add_valid(ptr noundef %22, ptr noundef %223, ptr noundef %txbuf) #14
  br i1 %call.i.i109, label %if.end.i.i110, label %if.then41.list_add_tail.exit_crit_edge

if.then41.list_add_tail.exit_crit_edge:           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i110:                                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  %224 = ptrtoint ptr %prev.i108 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %22, ptr %prev.i108, align 4
  %225 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %txbuf, ptr %22, align 4
  %226 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %223, ptr %prev.i, align 4
  %227 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %227)
  store volatile ptr %22, ptr %223, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i110, %if.then41.list_add_tail.exit_crit_edge
  %228 = ptrtoint ptr %txbuf_len to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %txbuf_len, align 4
  %inc = add i32 %229, 1
  store i32 %inc, ptr %txbuf_len, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txbuflock, i32 noundef %call52) #14
  br label %drop_packet

drop_packet:                                      ; preds = %list_add_tail.exit, %do.end27, %if.then2, %do.body.drop_packet_crit_edge
  tail call void @ieee80211_free_txskb(ptr noundef %hw, ptr noundef %skb) #14
  br label %cleanup

cleanup:                                          ; preds = %drop_packet, %ath5k_txbuf_setup.exit
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath5k_tx(ptr noundef %priv, ptr noundef %skb, ptr noundef %q) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath5k_tx, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_ath5k_tx, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !405

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !399

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !406
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath5k_tx, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %priv, ptr noundef %skb, ptr noundef %q) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !407
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !407
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !399

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !408
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath5k_tx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath5k_tx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_ath5k_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.89, i32 noundef 63, ptr noundef nonnull @.str.90) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !409
  %38 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_beacon_update(ptr noundef %hw, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %vif, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !400

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1944, i32 noundef 9, ptr noundef null) #14
  br label %out

if.end23:                                         ; preds = %entry
  %call.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %hw, ptr noundef nonnull %vif, ptr noundef null, ptr noundef null) #14
  %tobool24.not = icmp eq ptr %call.i, null
  br i1 %tobool24.not, label %if.end23.out_crit_edge, label %if.end26

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end26:                                         ; preds = %if.end23
  %bbuf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %bbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bbuf, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !400

do.body4.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath5k/base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 965, 0\0A.popsection", ""() #14, !srcloc !403
  unreachable

do.end7.i:                                        ; preds = %if.end26
  %skb.i = getelementptr inbounds %struct.ath5k_buf, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb.i, align 4
  %tobool8.not.i = icmp eq ptr %5, null
  br i1 %tobool8.not.i, label %do.end7.i.ath5k_txbuf_free_skb.exit_crit_edge, label %if.end10.i

do.end7.i.ath5k_txbuf_free_skb.exit_crit_edge:    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_txbuf_free_skb.exit

if.end10.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  %skbaddr.i = getelementptr inbounds %struct.ath5k_buf, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %skbaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %skbaddr.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef 1, i32 noundef 0) #14
  %hw.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw.i, align 4
  %14 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb.i, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %13, ptr noundef %15) #14
  %16 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %skb.i, align 4
  %17 = ptrtoint ptr %skbaddr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %skbaddr.i, align 4
  %desc.i = getelementptr inbounds %struct.ath5k_buf, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc.i, align 4
  %ds_data.i = getelementptr inbounds %struct.ath5k_desc, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %ds_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %ds_data.i, align 4
  br label %ath5k_txbuf_free_skb.exit

ath5k_txbuf_free_skb.exit:                        ; preds = %if.end10.i, %do.end7.i.ath5k_txbuf_free_skb.exit_crit_edge
  %21 = ptrtoint ptr %bbuf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bbuf, align 4
  %skb28 = getelementptr inbounds %struct.ath5k_buf, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %skb28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %skb28, align 4
  %24 = load ptr, ptr %bbuf, align 4
  %skb1.i = getelementptr inbounds %struct.ath5k_buf, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %skb1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb1.i, align 4
  %dev.i39 = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %dev.i39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i39, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 19
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i, align 4
  %len.i40 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 6
  %31 = ptrtoint ptr %len.i40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i40, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %30) #14
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %ath5k_txbuf_free_skb.exit
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !399

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %28) #14
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %28, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %36, %if.end.i.i.i ], [ %34, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.92, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.93, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #14
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %ath5k_txbuf_free_skb.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %28, ptr noundef %30, i32 noundef %32) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %37 = load ptr, ptr @mem_map, align 4
  %38 = ptrtoint ptr %30 to i32
  %sub.i.i = add i32 %38, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %37, i32 %shr.i.i
  %and.i.i = and i32 %38, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %28, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %32, i32 noundef 1, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %skbaddr.i41 = getelementptr inbounds %struct.ath5k_buf, ptr %24, i32 0, i32 4
  %39 = ptrtoint ptr %skbaddr.i41 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i.i, ptr %skbaddr.i41, align 4
  %debug.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 13
  %40 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %debug.i, align 4
  %and.i = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i42 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i42, label %dma_map_single_attrs.exit.i.do.end.i_crit_edge, label %land.rhs.i

dma_map_single_attrs.exit.i.do.end.i_crit_edge:   ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.rhs.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %call3.i = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.rhs.i.do.endthread-pre-split.i_crit_edge, label %if.then.i, !prof !399

land.rhs.i.do.endthread-pre-split.i_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.endthread-pre-split.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %44 = ptrtoint ptr %len.i40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i40, align 4
  %46 = ptrtoint ptr %skbaddr.i41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %skbaddr.i41, align 4
  %conv.i = zext i32 %47 to i64
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.94, ptr noundef nonnull @__func__.ath5k_beacon_setup, i32 noundef 1868, ptr noundef %26, ptr noundef %43, i32 noundef %45, i64 noundef %conv.i) #14
  br label %do.endthread-pre-split.i

do.endthread-pre-split.i:                         ; preds = %if.then.i, %land.rhs.i.do.endthread-pre-split.i_crit_edge
  %48 = ptrtoint ptr %skbaddr.i41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr.i = load i32, ptr %skbaddr.i41, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %do.endthread-pre-split.i, %dma_map_single_attrs.exit.i.do.end.i_crit_edge
  %49 = phi i32 [ %.pr.i, %do.endthread-pre-split.i ], [ %retval.0.i.i, %dma_map_single_attrs.exit.i.do.end.i_crit_edge ]
  %50 = ptrtoint ptr %dev.i39 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i39, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %51, i32 noundef %49) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp.i.not.i = icmp eq i32 %49, -1
  br i1 %cmp.i.not.i, label %do.body15.i, label %if.end23.i

do.body15.i:                                      ; preds = %do.end.i
  %call16.i = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %do.body15.i.do.end21.i_crit_edge, label %if.then18.i

do.body15.i.do.end21.i_crit_edge:                 ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end21.i

if.then18.i:                                      ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.95) #14
  br label %do.end21.i

do.end21.i:                                       ; preds = %if.then18.i, %do.body15.i.do.end21.i_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %26, i32 noundef 1) #14
  %52 = ptrtoint ptr %skb1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %skb1.i, align 4
  br label %out

if.end23.i:                                       ; preds = %do.end.i
  %desc.i43 = getelementptr inbounds %struct.ath5k_buf, ptr %24, i32 0, i32 1
  %53 = ptrtoint ptr %desc.i43 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %desc.i43, align 4
  %ah_tx_ant.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 84
  %55 = ptrtoint ptr %ah_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ah_tx_ant.i, align 1
  %opmode.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 12
  %57 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %opmode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp.i = icmp eq i32 %58, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end23.i.if.end29.i_crit_edge

if.end23.i.if.end29.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

land.lhs.true.i:                                  ; preds = %if.end23.i
  %ah_version.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 68
  %59 = ptrtoint ptr %ah_version.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ah_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp25.not.i = icmp eq i32 %60, 0
  br i1 %cmp25.not.i, label %land.lhs.true.i.if.end29.i_crit_edge, label %if.then27.i

land.lhs.true.i.if.end29.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %daddr.i = getelementptr inbounds %struct.ath5k_buf, ptr %24, i32 0, i32 2
  %61 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %daddr.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %land.lhs.true.i.if.end29.i_crit_edge, %if.end23.i.if.end29.i_crit_edge
  %storemerge.i = phi i32 [ %62, %if.then27.i ], [ 0, %land.lhs.true.i.if.end29.i_crit_edge ], [ 0, %if.end23.i.if.end29.i_crit_edge ]
  %flags.0.i = phi i32 [ 34, %if.then27.i ], [ 2, %land.lhs.true.i.if.end29.i_crit_edge ], [ 2, %if.end23.i.if.end29.i_crit_edge ]
  %63 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %storemerge.i, ptr %54, align 4
  %ah_ant_mode.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 83
  %64 = ptrtoint ptr %ah_ant_mode.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ah_ant_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %65)
  %cmp31.i = icmp eq i8 %65, 4
  br i1 %cmp31.i, label %if.then33.i, label %if.end29.i.if.end37.i_crit_edge

if.end29.i.if.end37.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i

if.then33.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  %bsent.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 54
  %66 = ptrtoint ptr %bsent.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bsent.i, align 8
  %and34.i = and i32 %67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  %conv36.i = select i1 %tobool35.not.i, i8 1, i8 2
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then33.i, %if.end29.i.if.end37.i_crit_edge
  %antenna.0.i = phi i8 [ %conv36.i, %if.then33.i ], [ %56, %if.end29.i.if.end37.i_crit_edge ]
  %68 = ptrtoint ptr %skbaddr.i41 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %skbaddr.i41, align 4
  %ds_data.i44 = getelementptr inbounds %struct.ath5k_desc, ptr %54, i32 0, i32 1
  %70 = ptrtoint ptr %ds_data.i44 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %ds_data.i44, align 4
  %ah_setup_tx_desc.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 116
  %71 = ptrtoint ptr %ah_setup_tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ah_setup_tx_desc.i, align 4
  %73 = ptrtoint ptr %len.i40 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i40, align 4
  %call40.i = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %26) #14
  %txp_requested.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 108, i32 14
  %75 = ptrtoint ptr %txp_requested.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %txp_requested.i, align 4
  %mul.i = shl i32 %76, 1
  %77 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3, i32 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %77, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp.i93.i = icmp slt i8 %79, 0
  br i1 %cmp.i93.i, label %land.rhs.i94.i, label %if.end39.i96.i

land.rhs.i94.i:                                   ; preds = %if.end37.i
  %.b49.i.i = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i.i, label %land.rhs.i94.i.ieee80211_get_tx_rate.exit.i_crit_edge, label %if.then.i95.i, !prof !399

land.rhs.i94.i.ieee80211_get_tx_rate.exit.i_crit_edge: ; preds = %land.rhs.i94.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_get_tx_rate.exit.i

if.then.i95.i:                                    ; preds = %land.rhs.i94.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 2737, i32 noundef 9, ptr noundef null) #14
  br label %ieee80211_get_tx_rate.exit.i

if.end39.i96.i:                                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  %hw.i45 = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 7
  %80 = ptrtoint ptr %hw.i45 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw.i45, align 4
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wiphy.i.i, align 8
  %band.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3, i32 4
  %84 = ptrtoint ptr %band.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %bf.load.i.i = load i32, ptr %band.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 29
  %arrayidx40.i.i = getelementptr %struct.wiphy, ptr %83, i32 0, i32 53, i32 %bf.lshr.i.i
  %85 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx40.i.i, align 4
  %bitrates.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %bitrates.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bitrates.i.i, align 4
  %idxprom51.i.i = zext i8 %79 to i32
  %arrayidx44.i.i = getelementptr %struct.ieee80211_rate, ptr %88, i32 %idxprom51.i.i
  br label %ieee80211_get_tx_rate.exit.i

ieee80211_get_tx_rate.exit.i:                     ; preds = %if.end39.i96.i, %if.then.i95.i, %land.rhs.i94.i.ieee80211_get_tx_rate.exit.i_crit_edge
  %retval.0.i97.i = phi ptr [ %arrayidx44.i.i, %if.end39.i96.i ], [ null, %if.then.i95.i ], [ null, %land.rhs.i94.i.ieee80211_get_tx_rate.exit.i_crit_edge ]
  %hw_value.i = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i97.i, i32 0, i32 2
  %89 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %hw_value.i, align 2
  %conv42.i = zext i16 %90 to i32
  %conv43.i = zext i8 %antenna.0.i to i32
  %call44.i = tail call i32 %72(ptr noundef %1, ptr noundef %54, i32 noundef %74, i32 noundef %call40.i, i32 noundef 0, i32 noundef 3, i32 noundef %mul.i, i32 noundef %conv42.i, i32 noundef 1, i32 noundef -1, i32 noundef %conv43.i, i32 noundef %flags.0.i, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %ieee80211_get_tx_rate.exit.i.out_crit_edge, label %err_unmap.i

ieee80211_get_tx_rate.exit.i.out_crit_edge:       ; preds = %ieee80211_get_tx_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

err_unmap.i:                                      ; preds = %ieee80211_get_tx_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %91 = ptrtoint ptr %dev.i39 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i39, align 8
  %93 = ptrtoint ptr %skbaddr.i41 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %skbaddr.i41, align 4
  %95 = ptrtoint ptr %len.i40 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len.i40, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %92, i32 noundef %94, i32 noundef %96, i32 noundef 1, i32 noundef 0) #14
  br label %out

out:                                              ; preds = %err_unmap.i, %ieee80211_get_tx_rate.exit.i.out_crit_edge, %do.end21.i, %if.end23.out_crit_edge, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ -12, %if.end23.out_crit_edge ], [ -5, %do.end21.i ], [ %call44.i, %err_unmap.i ], [ 0, %ieee80211_get_tx_rate.exit.i.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_beacon_update_timers(ptr noundef %ah, i64 noundef %bc_tsf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bintval = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 53
  %0 = ptrtoint ptr %bintval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bintval, align 4
  %and = and i32 %1, 65535
  %opmode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 12
  %2 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %num_ap_vifs = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 48
  %4 = ptrtoint ptr %num_ap_vifs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_ap_vifs, align 4
  %conv = zext i16 %5 to i32
  %num_mesh_vifs = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 50
  %6 = ptrtoint ptr %num_mesh_vifs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_mesh_vifs, align 8
  %conv1 = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv1, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp2 = icmp ugt i32 %add, 1
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %div230 = lshr i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %and)
  %cmp4 = icmp ult i32 %and, 60
  br i1 %cmp4, label %do.body, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

do.body:                                          ; preds = %if.then
  %call = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.if.end9_crit_edge, label %if.then7

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %div230)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.body.if.end9_crit_edge, %if.then.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %intval.0 = phi i32 [ %div230, %if.then7 ], [ %div230, %do.body.if.end9_crit_edge ], [ %div230, %if.then.if.end9_crit_edge ], [ %and, %land.lhs.true.if.end9_crit_edge ], [ %and, %entry.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intval.0)
  %tobool10.not = icmp eq i32 %intval.0, 0
  br i1 %tobool10.not, label %do.end23, label %if.end38, !prof !400

do.end23:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2104, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end38:                                         ; preds = %if.end9
  %shr = lshr i64 %bc_tsf, 10
  %conv39 = trunc i64 %shr to i32
  %call40 = tail call i64 @ath5k_hw_get_tsf64(ptr noundef %ah) #14
  %shr41 = lshr i64 %call40, 10
  %conv42 = trunc i64 %shr41 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bc_tsf)
  %cmp43 = icmp eq i64 %bc_tsf, -1
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %sub = add nuw nsw i32 %intval.0, 12
  %add48 = add i32 %sub, %conv42
  %8 = urem i32 %add48, %intval.0
  %mul = sub i32 %add48, %8
  br label %if.end82

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bc_tsf)
  %cmp50 = icmp eq i64 %bc_tsf, 0
  br i1 %cmp50, label %if.then52, label %if.else53

if.then52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %intval.0, 16777216
  br label %if.end82

if.else53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp8(i64 %call40, i64 %bc_tsf)
  %cmp54 = icmp ult i64 %call40, %bc_tsf
  br i1 %cmp54, label %do.body57, label %if.else70

do.body57:                                        ; preds = %if.else53
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %9 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug, align 4
  %and58 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body57.cleanup_crit_edge, label %if.then66, !prof !399

do.body57.cleanup_crit_edge:                      ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then66:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.ath5k_beacon_update_timers, i32 noundef 2141)
  br label %cleanup

if.else70:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #16
  %sub74 = sub i32 12, %conv39
  %sub75 = add i32 %sub74, %intval.0
  %add76 = add i32 %sub75, %conv42
  %11 = urem i32 %add76, %intval.0
  %mul78 = add i32 %add76, %conv39
  %add79 = sub i32 %mul78, %11
  br label %if.end82

if.end82:                                         ; preds = %if.else70, %if.then52, %if.then45
  %intval.1 = phi i32 [ %intval.0, %if.then45 ], [ %or, %if.then52 ], [ %intval.0, %if.else70 ]
  %nexttbtt.0 = phi i32 [ %mul, %if.then45 ], [ %intval.0, %if.then52 ], [ %add79, %if.else70 ]
  %nexttbtt83 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 55
  %12 = ptrtoint ptr %nexttbtt83 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %nexttbtt.0, ptr %nexttbtt83, align 4
  %or84 = or i32 %intval.1, 8388608
  tail call void @ath5k_hw_init_beacon_timers(ptr noundef %ah, i32 noundef %nexttbtt.0, i32 noundef %or84) #14
  br i1 %cmp43, label %do.body88, label %if.else103

do.body88:                                        ; preds = %if.end82
  %debug89 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %13 = ptrtoint ptr %debug89 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug89, align 4
  %and91 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %do.body88.do.body140_crit_edge, label %if.then99, !prof !399

do.body88.do.body140_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body140

if.then99:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ath5k_beacon_update_timers, i32 noundef 2166)
  br label %do.body140

if.else103:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bc_tsf)
  %cmp104 = icmp eq i64 %bc_tsf, 0
  %debug108 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %15 = ptrtoint ptr %debug108 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug108, align 4
  %and110 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %cmp104, label %do.body107, label %do.body123

do.body107:                                       ; preds = %if.else103
  br i1 %tobool111.not, label %do.body107.do.body140_crit_edge, label %if.then118, !prof !399

do.body107.do.body140_crit_edge:                  ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body140

if.then118:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.ath5k_beacon_update_timers, i32 noundef 2169)
  br label %do.body140

do.body123:                                       ; preds = %if.else103
  br i1 %tobool111.not, label %do.body123.do.body140_crit_edge, label %if.then134, !prof !399

do.body123.do.body140_crit_edge:                  ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body140

if.then134:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.ath5k_beacon_update_timers, i32 noundef 2172)
  br label %do.body140

do.body140:                                       ; preds = %if.then134, %do.body123.do.body140_crit_edge, %if.then118, %do.body107.do.body140_crit_edge, %if.then99, %do.body88.do.body140_crit_edge
  %debug141 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %17 = ptrtoint ptr %debug141 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug141, align 4
  %and143 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %do.body140.do.body155_crit_edge, label %if.then151, !prof !399

do.body140.do.body155_crit_edge:                  ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body155

if.then151:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.ath5k_beacon_update_timers, i32 noundef 2177, i64 noundef %bc_tsf, i64 noundef %call40, i32 noundef %conv39, i32 noundef %conv42, i32 noundef %nexttbtt.0)
  br label %do.body155

do.body155:                                       ; preds = %if.then151, %do.body140.do.body155_crit_edge
  %19 = ptrtoint ptr %debug141 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug141, align 4
  %and158 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %do.body155.cleanup_crit_edge, label %if.then166, !prof !399

do.body155.cleanup_crit_edge:                     ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then166:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #16
  %and167 = and i32 %intval.1, 65535
  %and170 = and i32 %intval.1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  %cond172 = select i1 %tobool171.not, ptr @.str.18, ptr @.str.19
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.ath5k_beacon_update_timers, i32 noundef 2181, i32 noundef %and167, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond172)
  br label %cleanup

cleanup:                                          ; preds = %if.then166, %do.body155.cleanup_crit_edge, %if.then66, %do.body57.cleanup_crit_edge, %do.end23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ath5k_hw_get_tsf64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_init_beacon_timers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_beacon_config(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  %qi.i = alloca %struct.ath5k_txq_info, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %block = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 44
  tail call void @_raw_spin_lock_bh(ptr noundef %block) #14
  %bmisscount = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 52
  %0 = ptrtoint ptr %bmisscount to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bmisscount, align 8
  %imask = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 23
  %1 = ptrtoint ptr %imask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %imask, align 4
  %and = and i32 %2, -327681
  store i32 %and, ptr %imask, align 4
  %enable_beacon = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 58
  %3 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable_beacon, align 1, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else6, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %qi.i) #14
  %5 = call ptr @memset(ptr %qi.i, i32 255, i32 32)
  %bhalq.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 51
  %6 = ptrtoint ptr %bhalq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bhalq.i, align 4
  %call.i = call i32 @ath5k_hw_get_tx_queueprops(ptr noundef %ah, i32 noundef %7, ptr noundef nonnull %qi.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.ath5k_beaconq_config.exit_crit_edge

if.then.ath5k_beaconq_config.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_beaconq_config.exit

if.end.i:                                         ; preds = %if.then
  %opmode.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 12
  %8 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %opmode.i, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %9, label %if.end.i.do.body.i_crit_edge [
    i32 3, label %if.end.i.do.body.sink.split.i_crit_edge
    i32 7, label %if.end.i.do.body.sink.split.i_crit_edge26
    i32 1, label %if.then6.i
  ]

if.end.i.do.body.sink.split.i_crit_edge26:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.sink.split.i

if.end.i.do.body.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.sink.split.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.sink.split.i

do.body.sink.split.i:                             ; preds = %if.then6.i, %if.end.i.do.body.sink.split.i_crit_edge, %if.end.i.do.body.sink.split.i_crit_edge26
  %.sink.i = phi i16 [ 30, %if.then6.i ], [ 0, %if.end.i.do.body.sink.split.i_crit_edge ], [ 0, %if.end.i.do.body.sink.split.i_crit_edge26 ]
  %tqi_aifs.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i, i32 0, i32 3
  %11 = ptrtoint ptr %tqi_aifs.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %tqi_aifs.i, align 2
  %tqi_cw_min.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i, i32 0, i32 4
  %12 = ptrtoint ptr %tqi_cw_min.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %tqi_cw_min.i, align 4
  %tqi_cw_max.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i, i32 0, i32 5
  %13 = ptrtoint ptr %tqi_cw_max.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %.sink.i, ptr %tqi_cw_max.i, align 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.sink.split.i, %if.end.i.do.body.i_crit_edge
  %debug.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %14 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug.i, align 4
  %and.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %do.body.i.do.end.i_crit_edge, label %land.rhs.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.rhs.i:                                       ; preds = %do.body.i
  %call13.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %land.rhs.i.do.end.i_crit_edge, label %if.then17.i, !prof !399

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then17.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %tqi_aifs18.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i, i32 0, i32 3
  %16 = ptrtoint ptr %tqi_aifs18.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tqi_aifs18.i, align 2
  %conv.i = zext i8 %17 to i32
  %tqi_cw_min19.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i, i32 0, i32 4
  %18 = ptrtoint ptr %tqi_cw_min19.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tqi_cw_min19.i, align 4
  %conv20.i = zext i16 %19 to i32
  %tqi_cw_max21.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i, i32 0, i32 5
  %20 = ptrtoint ptr %tqi_cw_max21.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tqi_cw_max21.i, align 2
  %conv22.i = zext i16 %21 to i32
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.97, ptr noundef nonnull @__func__.ath5k_beaconq_config, i32 noundef 1116, i32 noundef %conv.i, i32 noundef %conv20.i, i32 noundef %conv22.i) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then17.i, %land.rhs.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %22 = ptrtoint ptr %bhalq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bhalq.i, align 4
  %call25.i = call i32 @ath5k_hw_set_tx_queueprops(ptr noundef %ah, i32 noundef %23, ptr noundef nonnull %qi.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end35.i, label %do.body28.i

do.body28.i:                                      ; preds = %do.end.i
  %call29.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %do.body28.i.ath5k_beaconq_config.exit_crit_edge, label %if.then31.i

do.body28.i.ath5k_beaconq_config.exit_crit_edge:  ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_beaconq_config.exit

if.then31.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.98, ptr noundef nonnull @__func__.ath5k_beaconq_config) #14
  br label %ath5k_beaconq_config.exit

if.end35.i:                                       ; preds = %do.end.i
  %24 = ptrtoint ptr %bhalq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bhalq.i, align 4
  %call37.i = call i32 @ath5k_hw_reset_tx_queue(ptr noundef %ah, i32 noundef %25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end35.i.ath5k_beaconq_config.exit_crit_edge

if.end35.i.ath5k_beaconq_config.exit_crit_edge:   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_beaconq_config.exit

if.end40.i:                                       ; preds = %if.end35.i
  %call41.i = call i32 @ath5k_hw_get_tx_queueprops(ptr noundef %ah, i32 noundef 8, ptr noundef nonnull %qi.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end40.i.ath5k_beaconq_config.exit_crit_edge

if.end40.i.ath5k_beaconq_config.exit_crit_edge:   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_beaconq_config.exit

if.end44.i:                                       ; preds = %if.end40.i
  %bintval.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 53
  %26 = ptrtoint ptr %bintval.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bintval.i, align 4
  %mul.i = mul i32 %27, 80
  %div.i = udiv i32 %mul.i, 100
  %tqi_ready_time.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i, i32 0, i32 9
  %28 = ptrtoint ptr %tqi_ready_time.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div.i, ptr %tqi_ready_time.i, align 4
  %call45.i = call i32 @ath5k_hw_set_tx_queueprops(ptr noundef %ah, i32 noundef 8, ptr noundef nonnull %qi.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %if.end44.i.ath5k_beaconq_config.exit_crit_edge

if.end44.i.ath5k_beaconq_config.exit_crit_edge:   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_beaconq_config.exit

if.end48.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  %call49.i = call i32 @ath5k_hw_reset_tx_queue(ptr noundef %ah, i32 noundef 8) #14
  br label %ath5k_beaconq_config.exit

ath5k_beaconq_config.exit:                        ; preds = %if.end48.i, %if.end44.i.ath5k_beaconq_config.exit_crit_edge, %if.end40.i.ath5k_beaconq_config.exit_crit_edge, %if.end35.i.ath5k_beaconq_config.exit_crit_edge, %if.then31.i, %do.body28.i.ath5k_beaconq_config.exit_crit_edge, %if.then.ath5k_beaconq_config.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %qi.i) #14
  %29 = ptrtoint ptr %imask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %imask, align 4
  %or = or i32 %30, 65536
  store i32 %or, ptr %imask, align 4
  %opmode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 12
  %31 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %opmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp = icmp eq i32 %32, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %ath5k_beaconq_config.exit
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %33 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp3.not = icmp eq i32 %34, 0
  br i1 %cmp3.not, label %if.then2.if.end8_crit_edge, label %if.then4

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @ath5k_beacon_send(ptr noundef %ah)
  br label %if.end8

if.else:                                          ; preds = %ath5k_beaconq_config.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_beacon_update_timers(ptr noundef %ah, i64 noundef -1)
  br label %if.end8

if.else6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bhalq = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 51
  %35 = ptrtoint ptr %bhalq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bhalq, align 4
  %call7 = tail call i32 @ath5k_hw_stop_beacon_queue(ptr noundef %ah, i32 noundef %36) #14
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.else, %if.then4, %if.then2.if.end8_crit_edge
  %37 = ptrtoint ptr %imask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %imask, align 4
  %call10 = call i32 @ath5k_hw_set_imr(ptr noundef %ah, i32 noundef %38) #14
  call void @_raw_spin_unlock_bh(ptr noundef %block) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath5k_beacon_send(ptr noundef %ah) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then, !prof !399

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.99, ptr noundef nonnull @__func__.ath5k_beacon_send, i32 noundef 1981)
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %bhalq = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 51
  %2 = ptrtoint ptr %bhalq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bhalq, align 4
  %call = tail call i32 @ath5k_hw_num_tx_pending(ptr noundef %ah, i32 noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  %bmisscount72 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 52
  %4 = ptrtoint ptr %bmisscount72 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bmisscount72, align 8
  br i1 %cmp.not, label %if.end71, label %if.then9, !prof !399

if.then9:                                         ; preds = %do.end
  %inc = add i32 %5, 1
  %6 = ptrtoint ptr %bmisscount72 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc, ptr %bmisscount72, align 8
  %7 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug, align 4
  %and13 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then9.do.end27_crit_edge, label %land.rhs

if.then9.do.end27_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end27

land.rhs:                                         ; preds = %if.then9
  %call15 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.rhs.do.end27thread-pre-split_crit_edge, label %if.then23, !prof !399

land.rhs.do.end27thread-pre-split_crit_edge:      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end27thread-pre-split

if.then23:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %bmisscount72 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bmisscount72, align 8
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.100, ptr noundef nonnull @__func__.ath5k_beacon_send, i32 noundef 1993, i32 noundef %10)
  br label %do.end27thread-pre-split

do.end27thread-pre-split:                         ; preds = %if.then23, %land.rhs.do.end27thread-pre-split_crit_edge
  %11 = ptrtoint ptr %bmisscount72 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %bmisscount72, align 8
  br label %do.end27

do.end27:                                         ; preds = %do.end27thread-pre-split, %if.then9.do.end27_crit_edge
  %12 = phi i32 [ %.pr, %do.end27thread-pre-split ], [ %inc, %if.then9.do.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %12)
  %cmp29 = icmp ugt i32 %12, 10
  br i1 %cmp29, label %do.body31, label %do.end27.cleanup_crit_edge

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body31:                                        ; preds = %do.end27
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug, align 4
  %and34 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body31.do.body51_crit_edge, label %land.rhs36

do.body31.do.body51_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body51

land.rhs36:                                       ; preds = %do.body31
  %call37 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.rhs36.do.body51_crit_edge, label %if.then46, !prof !399

land.rhs36.do.body51_crit_edge:                   ; preds = %land.rhs36
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body51

if.then46:                                        ; preds = %land.rhs36
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %bmisscount72 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bmisscount72, align 8
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.101, ptr noundef nonnull @__func__.ath5k_beacon_send, i32 noundef 1997, i32 noundef %16)
  br label %do.body51

do.body51:                                        ; preds = %if.then46, %land.rhs36.do.body51_crit_edge, %do.body31.do.body51_crit_edge
  %17 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug, align 4
  %and54 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body51.do.end69_crit_edge, label %land.rhs56

do.body51.do.end69_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end69

land.rhs56:                                       ; preds = %do.body51
  %call57 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.rhs56.do.end69_crit_edge, label %if.then66, !prof !399

land.rhs56.do.end69_crit_edge:                    ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end69

if.then66:                                        ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.ath5k_beacon_send, i32 noundef 1999)
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %land.rhs56.do.end69_crit_edge, %do.body51.do.end69_crit_edge
  %hw = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 7
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %reset_work = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 30
  tail call void @ieee80211_queue_work(ptr noundef %20, ptr noundef %reset_work) #14
  br label %cleanup

if.end71:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp73.not = icmp eq i32 %5, 0
  br i1 %cmp73.not, label %if.end71.if.end102_crit_edge, label %do.body81, !prof !399

if.end71.if.end102_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102

do.body81:                                        ; preds = %if.end71
  %21 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug, align 4
  %and84 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %do.body81.do.end100_crit_edge, label %land.rhs86

do.body81.do.end100_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end100

land.rhs86:                                       ; preds = %do.body81
  %call87 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %land.rhs86.do.end100_crit_edge, label %if.then96, !prof !399

land.rhs86.do.end100_crit_edge:                   ; preds = %land.rhs86
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end100

if.then96:                                        ; preds = %land.rhs86
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %bmisscount72 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bmisscount72, align 8
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__.ath5k_beacon_send, i32 noundef 2007, i32 noundef %24)
  br label %do.end100

do.end100:                                        ; preds = %if.then96, %land.rhs86.do.end100_crit_edge, %do.body81.do.end100_crit_edge
  %25 = ptrtoint ptr %bmisscount72 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %bmisscount72, align 8
  br label %if.end102

if.end102:                                        ; preds = %do.end100, %if.end71.if.end102_crit_edge
  %opmode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 12
  %26 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %opmode, align 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %27, label %if.end102.if.else_crit_edge [
    i32 3, label %land.lhs.true
    i32 7, label %if.end102.if.then110_crit_edge
  ]

if.end102.if.then110_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then110

if.end102.if.else_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end102
  %num_ap_vifs = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 48
  %29 = ptrtoint ptr %num_ap_vifs to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_ap_vifs, align 4
  %conv = zext i16 %30 to i32
  %num_mesh_vifs = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 50
  %31 = ptrtoint ptr %num_mesh_vifs to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num_mesh_vifs, align 8
  %conv104 = zext i16 %32 to i32
  %add = add nuw nsw i32 %conv104, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp105 = icmp ugt i32 %add, 1
  br i1 %cmp105, label %land.lhs.true.if.then110_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true.if.then110_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then110

if.then110:                                       ; preds = %land.lhs.true.if.then110_crit_edge, %if.end102.if.then110_crit_edge
  %call111 = tail call i64 @ath5k_hw_get_tsf64(ptr noundef %ah) #14
  %shr = lshr i64 %call111, 10
  %conv112 = trunc i64 %shr to i32
  %bintval = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 53
  %33 = ptrtoint ptr %bintval to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bintval, align 4
  %rem = urem i32 %conv112, %34
  %mul = shl i32 %rem, 2
  %div = udiv i32 %mul, %34
  %add114 = add nuw i32 %div, 1
  %rem115 = srem i32 %add114, 4
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 47, i32 %rem115
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %37 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %debug, align 4
  %and119 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.then110.if.end138_crit_edge, label %land.rhs121

if.then110.if.end138_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end138

land.rhs121:                                      ; preds = %if.then110
  %call122 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %land.rhs121.if.end138_crit_edge, label %if.then131, !prof !399

land.rhs121.if.end138_crit_edge:                  ; preds = %land.rhs121
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end138

if.then131:                                       ; preds = %land.rhs121
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %bintval to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bintval, align 4
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.ath5k_beacon_send, i32 noundef 2020, i64 noundef %call111, i32 noundef %conv112, i32 noundef %40, i32 noundef %div, ptr noundef %36)
  br label %if.end138

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end102.if.else_crit_edge
  %bslot136 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 47
  %41 = ptrtoint ptr %bslot136 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bslot136, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.else, %if.then131, %land.rhs121.if.end138_crit_edge, %if.then110.if.end138_crit_edge
  %vif.0 = phi ptr [ %42, %if.else ], [ %36, %if.then110.if.end138_crit_edge ], [ %36, %if.then131 ], [ %36, %land.rhs121.if.end138_crit_edge ]
  %tobool139.not = icmp eq ptr %vif.0, null
  br i1 %tobool139.not, label %if.end138.cleanup_crit_edge, label %if.end141

if.end138.cleanup_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end141:                                        ; preds = %if.end138
  %bbuf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif.0, i32 1, i32 1, i32 1
  %43 = ptrtoint ptr %bbuf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bbuf, align 4
  %45 = ptrtoint ptr %bhalq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bhalq, align 4
  %call143 = tail call i32 @ath5k_hw_stop_beacon_queue(ptr noundef %ah, i32 noundef %46) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end141.if.end160_crit_edge, label %do.body152, !prof !399

if.end141.if.end160_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end160

do.body152:                                       ; preds = %if.end141
  %call153 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %do.body152.if.end160_crit_edge, label %if.then155

do.body152.if.end160_crit_edge:                   ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end160

if.then155:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %bhalq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bhalq, align 4
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.105, i32 noundef %48)
  br label %if.end160

if.end160:                                        ; preds = %if.then155, %do.body152.if.end160_crit_edge, %if.end141.if.end160_crit_edge
  %49 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %opmode, align 8
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %50, label %if.end160.if.end174_crit_edge [
    i32 3, label %if.end160.if.then168_crit_edge
    i32 7, label %if.end160.if.then168_crit_edge325
  ]

if.end160.if.then168_crit_edge325:                ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then168

if.end160.if.then168_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then168

if.end160.if.end174_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end174

if.then168:                                       ; preds = %if.end160.if.then168_crit_edge, %if.end160.if.then168_crit_edge325
  %hw169 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 7
  %52 = ptrtoint ptr %hw169 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw169, align 4
  %call170 = tail call i32 @ath5k_beacon_update(ptr noundef %53, ptr noundef nonnull %vif.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.then168.if.end174_crit_edge, label %if.then168.cleanup_crit_edge

if.then168.cleanup_crit_edge:                     ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then168.if.end174_crit_edge:                   ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end174

if.end174:                                        ; preds = %if.then168.if.end174_crit_edge, %if.end160.if.end174_crit_edge
  %skb175 = getelementptr inbounds %struct.ath5k_buf, ptr %44, i32 0, i32 3
  %54 = ptrtoint ptr %skb175 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %skb175, align 4
  %cmp176 = icmp eq ptr %55, null
  br i1 %cmp176, label %if.end174.do.body192_crit_edge, label %lor.lhs.false178, !prof !400

if.end174.do.body192_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body192

lor.lhs.false178:                                 ; preds = %if.end174
  %56 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %opmode, align 8
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %57, label %if.end200 [
    i32 6, label %lor.lhs.false178.do.body192_crit_edge
    i32 2, label %lor.lhs.false178.do.body192_crit_edge326
  ]

lor.lhs.false178.do.body192_crit_edge326:         ; preds = %lor.lhs.false178
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body192

lor.lhs.false178.do.body192_crit_edge:            ; preds = %lor.lhs.false178
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body192

do.body192:                                       ; preds = %lor.lhs.false178.do.body192_crit_edge, %lor.lhs.false178.do.body192_crit_edge326, %if.end174.do.body192_crit_edge
  %call193 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %do.body192.cleanup_crit_edge, label %if.then195

do.body192.cleanup_crit_edge:                     ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then195:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %skb175 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %skb175, align 4
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.106, ptr noundef %44, ptr noundef %60)
  br label %cleanup

if.end200:                                        ; preds = %lor.lhs.false178
  %61 = ptrtoint ptr %bhalq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bhalq, align 4
  %arrayidx203 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 %62
  tail call fastcc void @trace_ath5k_tx(ptr noundef %ah, ptr noundef nonnull %55, ptr noundef %arrayidx203)
  %63 = ptrtoint ptr %bhalq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bhalq, align 4
  %daddr = getelementptr inbounds %struct.ath5k_buf, ptr %44, i32 0, i32 2
  %65 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %daddr, align 4
  %call205 = tail call i32 @ath5k_hw_set_txdp(ptr noundef %ah, i32 noundef %64, i32 noundef %66) #14
  %67 = ptrtoint ptr %bhalq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bhalq, align 4
  %call207 = tail call i32 @ath5k_hw_start_tx_dma(ptr noundef %ah, i32 noundef %68) #14
  %69 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %debug, align 4
  %and211 = and i32 %70, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %if.end200.do.end229_crit_edge, label %land.rhs213

if.end200.do.end229_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end229

land.rhs213:                                      ; preds = %if.end200
  %call214 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %land.rhs213.do.end229_crit_edge, label %if.then223, !prof !399

land.rhs213.do.end229_crit_edge:                  ; preds = %land.rhs213
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end229

if.then223:                                       ; preds = %land.rhs213
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %bhalq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bhalq, align 4
  %73 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %daddr, align 4
  %conv226 = zext i32 %74 to i64
  %desc = getelementptr inbounds %struct.ath5k_buf, ptr %44, i32 0, i32 1
  %75 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %desc, align 4
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.107, ptr noundef nonnull @__func__.ath5k_beacon_send, i32 noundef 2059, i32 noundef %72, i64 noundef %conv226, ptr noundef %76)
  br label %do.end229

do.end229:                                        ; preds = %if.then223, %land.rhs213.do.end229_crit_edge, %if.end200.do.end229_crit_edge
  %hw230 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 7
  %77 = ptrtoint ptr %hw230 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw230, align 4
  %call231 = tail call ptr @ieee80211_get_buffered_bc(ptr noundef %78, ptr noundef nonnull %vif.0) #14
  %tobool232.not323 = icmp eq ptr %call231, null
  br i1 %tobool232.not323, label %do.end229.while.end_crit_edge, label %while.body.lr.ph

do.end229.while.end_crit_edge:                    ; preds = %do.end229
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end229
  %cabq = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 56
  br label %while.body

while.body:                                       ; preds = %if.end239.while.body_crit_edge, %while.body.lr.ph
  %skb.0324 = phi ptr [ %call231, %while.body.lr.ph ], [ %call241, %if.end239.while.body_crit_edge ]
  %79 = ptrtoint ptr %hw230 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw230, align 4
  %81 = ptrtoint ptr %cabq to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cabq, align 8
  tail call void @ath5k_tx_queue(ptr noundef %80, ptr noundef nonnull %skb.0324, ptr noundef %82, ptr noundef null)
  %83 = ptrtoint ptr %cabq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cabq, align 8
  %txq_len = getelementptr inbounds %struct.ath5k_txq, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %txq_len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %txq_len, align 4
  %txq_max = getelementptr inbounds %struct.ath5k_txq, ptr %84, i32 0, i32 6
  %87 = ptrtoint ptr %txq_max to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %txq_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp236.not = icmp slt i32 %86, %88
  br i1 %cmp236.not, label %if.end239, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end239:                                        ; preds = %while.body
  %89 = ptrtoint ptr %hw230 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw230, align 4
  %call241 = tail call ptr @ieee80211_get_buffered_bc(ptr noundef %90, ptr noundef nonnull %vif.0) #14
  %tobool232.not = icmp eq ptr %call241, null
  br i1 %tobool232.not, label %if.end239.while.end_crit_edge, label %if.end239.while.body_crit_edge

if.end239.while.body_crit_edge:                   ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end239.while.end_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end239.while.end_crit_edge, %while.body.while.end_crit_edge, %do.end229.while.end_crit_edge
  %bsent = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 54
  %91 = ptrtoint ptr %bsent to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bsent, align 8
  %inc242 = add i32 %92, 1
  store i32 %inc242, ptr %bsent, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then195, %do.body192.cleanup_crit_edge, %if.then168.cleanup_crit_edge, %if.end138.cleanup_crit_edge, %do.end69, %do.end27.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_stop_beacon_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_imr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_init_ah(ptr noundef %ah, ptr noundef %bus_ops) local_unnamed_addr #0 align 64 {
entry:
  %qi.i347.i = alloca %struct.ath5k_txq_info, align 4
  %qi.i319.i = alloca %struct.ath5k_txq_info, align 4
  %qi.i293.i = alloca %struct.ath5k_txq_info, align 4
  %qi.i284.i = alloca %struct.ath5k_txq_info, align 4
  %qi.i.i = alloca %struct.ath5k_txq_info, align 4
  %mac.i = alloca [6 x i8], align 1
  %csz = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 7
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csz) #14
  %2 = ptrtoint ptr %csz to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %csz, align 4, !annotation !401
  %dev = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 1
  %7 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %parent.i.i, align 8
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %or.i.i205 = or i32 %9, 4261910
  store i32 %or.i.i205, ptr %flags.i, align 4
  %10 = load ptr, ptr %wiphy.i, align 8
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 142, ptr %interface_modes, align 4
  %12 = load ptr, ptr %wiphy.i, align 8
  %iface_combinations = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %iface_combinations to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @if_comb, ptr %iface_combinations, align 16
  %14 = load ptr, ptr %wiphy.i, align 8
  %n_iface_combinations = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %n_iface_combinations to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %n_iface_combinations, align 4
  %16 = load ptr, ptr %wiphy.i, align 8
  %flags = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 32
  %or = or i32 %18, 256
  store i32 %or, ptr %flags, align 32
  %19 = load ptr, ptr %wiphy.i, align 8
  %flags6 = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags6, align 32
  %or7 = or i32 %21, 4194304
  store i32 %or7, ptr %flags6, align 32
  %22 = load ptr, ptr %wiphy.i, align 8
  %available_antennas_tx = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %available_antennas_tx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %available_antennas_tx, align 4
  %24 = load ptr, ptr %wiphy.i, align 8
  %available_antennas_rx = getelementptr inbounds %struct.wiphy, ptr %24, i32 0, i32 45
  %25 = ptrtoint ptr %available_antennas_rx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %available_antennas_rx, align 16
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %extra_tx_headroom, align 4
  %27 = load ptr, ptr %wiphy.i, align 8
  %arrayidx.i = getelementptr %struct.wiphy, ptr %27, i32 0, i32 14, i32 1
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  %30 = or i8 %29, 32
  store i8 %30, ptr %arrayidx.i, align 1
  %status = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 18
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status, align 4
  %or.i = or i32 %32, 1
  store i32 %or.i, ptr %status, align 4
  %opmode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 12
  %33 = ptrtoint ptr %opmode to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %opmode, align 8
  %bintval = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 53
  %34 = ptrtoint ptr %bintval to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1000, ptr %bintval, align 4
  %lock = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @ath5k_init_ah.__key) #14
  %rxbuflock = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 33
  tail call void @__raw_spin_lock_init(ptr noundef %rxbuflock, ptr noundef nonnull @.str.22, ptr noundef nonnull @ath5k_init_ah.__key.21, i16 noundef signext 3) #14
  %txbuflock = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 38
  tail call void @__raw_spin_lock_init(ptr noundef %txbuflock, ptr noundef nonnull @.str.24, ptr noundef nonnull @ath5k_init_ah.__key.23, i16 noundef signext 3) #14
  %block = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 44
  tail call void @__raw_spin_lock_init(ptr noundef %block, ptr noundef nonnull @.str.26, ptr noundef nonnull @ath5k_init_ah.__key.25, i16 noundef signext 3) #14
  %irqlock = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 24
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.28, ptr noundef nonnull @ath5k_init_ah.__key.27, i16 noundef signext 3) #14
  %irq = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 3
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %36, ptr noundef nonnull @ath5k_intr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.29, ptr noundef %ah) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end33, label %do.body27

do.body27:                                        ; preds = %entry
  %call28 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.body27.cleanup_crit_edge, label %if.then30

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then30:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.30)
  br label %cleanup

if.end33:                                         ; preds = %entry
  %ops = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 24
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ath5k_common_ops, ptr %ops, align 4
  %bus_ops35 = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 25
  %38 = ptrtoint ptr %bus_ops35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %bus_ops, ptr %bus_ops35, align 4
  %39 = ptrtoint ptr %ah to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %ah, ptr %ah, align 4
  %hw37 = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 2
  %40 = ptrtoint ptr %hw37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %1, ptr %hw37, align 4
  %priv = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 1
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ah, ptr %priv, align 4
  %clockrate = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 18
  %42 = ptrtoint ptr %clockrate to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 40, ptr %clockrate, align 4
  %read_cachesize.i = getelementptr inbounds %struct.ath_bus_ops, ptr %bus_ops, i32 0, i32 1
  %43 = ptrtoint ptr %read_cachesize.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read_cachesize.i, align 4
  call void %44(ptr noundef %ah, ptr noundef nonnull %csz) #14
  %45 = ptrtoint ptr %csz to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %csz, align 4
  %.tr = trunc i32 %46 to i16
  %conv = shl i16 %.tr, 2
  %cachelsz = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 7
  %47 = ptrtoint ptr %cachelsz to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv, ptr %cachelsz, align 4
  %cc_lock = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 19
  call void @__raw_spin_lock_init(ptr noundef %cc_lock, ptr noundef nonnull @.str.32, ptr noundef nonnull @ath5k_init_ah.__key.31, i16 noundef signext 3) #14
  %call42 = call i32 @ath5k_hw_init(ptr noundef %ah) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end33.err_irq_crit_edge

if.end33.err_irq_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_irq

if.end45:                                         ; preds = %if.end33
  %ah_capabilities = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86
  %cap_has_mrr_support = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 5
  %48 = ptrtoint ptr %cap_has_mrr_support to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cap_has_mrr_support, align 2, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool46.not = icmp eq i8 %49, 0
  br i1 %tobool46.not, label %if.end45.if.end48_crit_edge, label %if.then47

if.end45.if.end48_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %max_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 14
  %50 = ptrtoint ptr %max_rates to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 4, ptr %max_rates, align 1
  %max_rate_tries = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 16
  %51 = ptrtoint ptr %max_rate_tries to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 7, ptr %max_rate_tries, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end45.if.end48_crit_edge
  %vif_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 7
  %52 = ptrtoint ptr %vif_data_size to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 16, ptr %vif_data_size, align 4
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv.i, align 8
  %regulatory.i.i = getelementptr inbounds %struct.ath_common, ptr %54, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i) #14
  %55 = call ptr @memset(ptr %mac.i, i32 0, i32 6)
  %sbands.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 8
  %band.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 8, i32 0, i32 2
  %56 = ptrtoint ptr %band.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %band.i.i, align 4
  %rates.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 10
  %bitrates.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 8, i32 0, i32 1
  %57 = ptrtoint ptr %bitrates.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %rates.i.i, ptr %bitrates.i.i, align 4
  %ah_capabilities.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 86
  %58 = ptrtoint ptr %ah_capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %ah_capabilities.i.i, align 4
  %60 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end48
  %61 = call ptr @memcpy(ptr %rates.i.i, ptr @ath5k_rates, i32 144)
  %n_bitrates.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 8, i32 0, i32 4
  %62 = ptrtoint ptr %n_bitrates.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 12, ptr %n_bitrates.i.i, align 4
  %channels.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 9
  %63 = ptrtoint ptr %sbands.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %channels.i.i, ptr %sbands.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i
  %ch.042.i.i.i = phi i32 [ 1, %if.then.i.i ], [ %inc18.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %count.041.i.i.i = phi i32 [ 0, %if.then.i.i ], [ %count.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %call.i.i.i.i = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %ch.042.i.i.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call.i.i.i.i)
  %64 = icmp ult i32 %call.i.i.i.i, 1000
  br i1 %64, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.end6.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i

if.end6.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %div.i.i.i.i = udiv i32 %call.i.i.i.i, 1000
  %arrayidx.i.i.i = getelementptr %struct.ieee80211_channel, ptr %channels.i.i, i32 %count.041.i.i.i
  %center_freq.i.i.i = getelementptr %struct.ieee80211_channel, ptr %channels.i.i, i32 %count.041.i.i.i, i32 1
  %65 = ptrtoint ptr %center_freq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %div.i.i.i.i, ptr %center_freq.i.i.i, align 4
  %66 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %arrayidx.i.i.i, align 4
  %hw_value.i.i.i = getelementptr %struct.ieee80211_channel, ptr %channels.i.i, i32 %count.041.i.i.i, i32 3
  %67 = ptrtoint ptr %hw_value.i.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 2, ptr %hw_value.i.i.i, align 2
  %call11.i.i.i = call zeroext i1 @ath5k_channel_ok(ptr noundef %54, ptr noundef %arrayidx.i.i.i) #14
  %inc.i.i.i = zext i1 %call11.i.i.i to i32
  %spec.select.i.i.i = add nuw nsw i32 %count.041.i.i.i, %inc.i.i.i
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end6.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %count.1.i.i.i = phi i32 [ %count.041.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ], [ %spec.select.i.i.i, %if.end6.i.i.i ]
  %inc18.i.i.i = add nuw nsw i32 %ch.042.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %ch.042.i.i.i)
  %cmp.not.i.i.i = icmp ult i32 %ch.042.i.i.i, 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 314, i32 %count.1.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %count.1.i.i.i, 314
  %or.cond.i.i.i = select i1 %cmp.not.i.i.i, i1 %cmp2.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %ath5k_setup_channels.exit.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

ath5k_setup_channels.exit.i.i:                    ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %n_channels.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 8, i32 0, i32 3
  %68 = ptrtoint ptr %n_channels.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %count.1.i.i.i, ptr %n_channels.i.i, align 4
  %69 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wiphy.i, align 8
  %bands.i.i = getelementptr inbounds %struct.wiphy, ptr %70, i32 0, i32 53
  %71 = ptrtoint ptr %bands.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %sbands.i.i, ptr %bands.i.i, align 16
  %72 = load i32, ptr %n_channels.i.i, align 4
  %sub.i.i = sub i32 314, %72
  br label %if.end46.i.i

if.else.i.i:                                      ; preds = %if.end48
  %73 = ptrtoint ptr %ah_capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %ah_capabilities.i.i, align 4
  %75 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool14.not.i.i = icmp eq i32 %75, 0
  br i1 %tobool14.not.i.i, label %if.else.i.i.if.end46.i.i_crit_edge, label %if.then15.i.i

if.else.i.i.if.end46.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46.i.i

if.then15.i.i:                                    ; preds = %if.else.i.i
  %76 = call ptr @memcpy(ptr %rates.i.i, ptr @ath5k_rates, i32 48)
  %n_bitrates17.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 8, i32 0, i32 4
  %77 = ptrtoint ptr %n_bitrates17.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4, ptr %n_bitrates17.i.i, align 4
  %ah_version.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 68
  %78 = ptrtoint ptr %ah_version.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ah_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp.i.i = icmp eq i32 %79, 1
  br i1 %cmp.i.i, label %for.body.preheader.i.i, label %if.then15.i.i.if.end.i.i_crit_edge

if.then15.i.i.if.end.i.i_crit_edge:               ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

for.body.preheader.i.i:                           ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %hw_value.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 10, i32 0, i32 0, i32 2
  %80 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %hw_value.i.i, align 2
  %82 = and i16 %81, 15
  store i16 %82, ptr %hw_value.i.i, align 2
  %hw_value_short.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 10, i32 0, i32 0, i32 3
  %83 = ptrtoint ptr %hw_value_short.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %hw_value_short.i.i, align 4
  %85 = and i16 %84, 15
  store i16 %85, ptr %hw_value_short.i.i, align 4
  %hw_value.1.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 10, i32 0, i32 1, i32 2
  %86 = ptrtoint ptr %hw_value.1.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %hw_value.1.i.i, align 2
  %88 = and i16 %87, 15
  store i16 %88, ptr %hw_value.1.i.i, align 2
  %hw_value_short.1.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 10, i32 0, i32 1, i32 3
  %89 = ptrtoint ptr %hw_value_short.1.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %hw_value_short.1.i.i, align 4
  %91 = and i16 %90, 15
  store i16 %91, ptr %hw_value_short.1.i.i, align 4
  %hw_value.2.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 10, i32 0, i32 2, i32 2
  %92 = ptrtoint ptr %hw_value.2.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %hw_value.2.i.i, align 2
  %94 = and i16 %93, 15
  store i16 %94, ptr %hw_value.2.i.i, align 2
  %hw_value_short.2.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 10, i32 0, i32 2, i32 3
  %95 = ptrtoint ptr %hw_value_short.2.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %hw_value_short.2.i.i, align 4
  %97 = and i16 %96, 15
  store i16 %97, ptr %hw_value_short.2.i.i, align 4
  %hw_value.3.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 10, i32 0, i32 3, i32 2
  %98 = ptrtoint ptr %hw_value.3.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %hw_value.3.i.i, align 2
  %100 = and i16 %99, 15
  store i16 %100, ptr %hw_value.3.i.i, align 2
  %hw_value_short.3.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 10, i32 0, i32 3, i32 3
  %101 = ptrtoint ptr %hw_value_short.3.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %hw_value_short.3.i.i, align 4
  %103 = and i16 %102, 15
  store i16 %103, ptr %hw_value_short.3.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.preheader.i.i, %if.then15.i.i.if.end.i.i_crit_edge
  %channels34.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 9
  %104 = ptrtoint ptr %sbands.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %channels34.i.i, ptr %sbands.i.i, align 4
  br label %for.body.i7.i.i

for.body.i7.i.i:                                  ; preds = %for.inc.i21.i.i.for.body.i7.i.i_crit_edge, %if.end.i.i
  %ch.042.i4.i.i = phi i32 [ 1, %if.end.i.i ], [ %inc18.i17.i.i, %for.inc.i21.i.i.for.body.i7.i.i_crit_edge ]
  %count.041.i5.i.i = phi i32 [ 0, %if.end.i.i ], [ %count.1.i16.i.i, %for.inc.i21.i.i.for.body.i7.i.i_crit_edge ]
  %call.i.i6.i.i = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %ch.042.i4.i.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call.i.i6.i.i)
  %105 = icmp ult i32 %call.i.i6.i.i, 1000
  br i1 %105, label %for.body.i7.i.i.for.inc.i21.i.i_crit_edge, label %if.end6.i15.i.i

for.body.i7.i.i.for.inc.i21.i.i_crit_edge:        ; preds = %for.body.i7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i21.i.i

if.end6.i15.i.i:                                  ; preds = %for.body.i7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %div.i.i8.i.i = udiv i32 %call.i.i6.i.i, 1000
  %arrayidx.i9.i.i = getelementptr %struct.ieee80211_channel, ptr %channels34.i.i, i32 %count.041.i5.i.i
  %center_freq.i10.i.i = getelementptr %struct.ieee80211_channel, ptr %channels34.i.i, i32 %count.041.i5.i.i, i32 1
  %106 = ptrtoint ptr %center_freq.i10.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %div.i.i8.i.i, ptr %center_freq.i10.i.i, align 4
  %107 = ptrtoint ptr %arrayidx.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %arrayidx.i9.i.i, align 4
  %hw_value.i11.i.i = getelementptr %struct.ieee80211_channel, ptr %channels34.i.i, i32 %count.041.i5.i.i, i32 3
  %108 = ptrtoint ptr %hw_value.i11.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 1, ptr %hw_value.i11.i.i, align 2
  %call11.i12.i.i = call zeroext i1 @ath5k_channel_ok(ptr noundef %54, ptr noundef %arrayidx.i9.i.i) #14
  %inc.i13.i.i = zext i1 %call11.i12.i.i to i32
  %spec.select.i14.i.i = add nuw nsw i32 %count.041.i5.i.i, %inc.i13.i.i
  br label %for.inc.i21.i.i

for.inc.i21.i.i:                                  ; preds = %if.end6.i15.i.i, %for.body.i7.i.i.for.inc.i21.i.i_crit_edge
  %count.1.i16.i.i = phi i32 [ %count.041.i5.i.i, %for.body.i7.i.i.for.inc.i21.i.i_crit_edge ], [ %spec.select.i14.i.i, %if.end6.i15.i.i ]
  %inc18.i17.i.i = add nuw nsw i32 %ch.042.i4.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %ch.042.i4.i.i)
  %cmp.not.i18.i.i = icmp ult i32 %ch.042.i4.i.i, 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 314, i32 %count.1.i16.i.i)
  %cmp2.i19.i.i = icmp ult i32 %count.1.i16.i.i, 314
  %or.cond.i20.i.i = select i1 %cmp.not.i18.i.i, i1 %cmp2.i19.i.i, i1 false
  br i1 %or.cond.i20.i.i, label %for.inc.i21.i.i.for.body.i7.i.i_crit_edge, label %ath5k_setup_channels.exit22.i.i

for.inc.i21.i.i.for.body.i7.i.i_crit_edge:        ; preds = %for.inc.i21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i7.i.i

ath5k_setup_channels.exit22.i.i:                  ; preds = %for.inc.i21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %n_channels39.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 8, i32 0, i32 3
  %109 = ptrtoint ptr %n_channels39.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %count.1.i16.i.i, ptr %n_channels39.i.i, align 4
  %110 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wiphy.i, align 8
  %bands41.i.i = getelementptr inbounds %struct.wiphy, ptr %111, i32 0, i32 53
  %112 = ptrtoint ptr %bands41.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %sbands.i.i, ptr %bands41.i.i, align 16
  %113 = load i32, ptr %n_channels39.i.i, align 4
  %sub44.i.i = sub i32 314, %113
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %ath5k_setup_channels.exit22.i.i, %if.else.i.i.if.end46.i.i_crit_edge, %ath5k_setup_channels.exit.i.i
  %max_c.0.i.i = phi i32 [ %sub.i.i, %ath5k_setup_channels.exit.i.i ], [ %sub44.i.i, %ath5k_setup_channels.exit22.i.i ], [ 314, %if.else.i.i.if.end46.i.i_crit_edge ]
  %count_c.0.i.i = phi i32 [ %72, %ath5k_setup_channels.exit.i.i ], [ %113, %ath5k_setup_channels.exit22.i.i ], [ 0, %if.else.i.i.if.end46.i.i_crit_edge ]
  call fastcc void @ath5k_setup_rate_idx(ptr noundef %54, ptr noundef %sbands.i.i) #14
  %114 = ptrtoint ptr %ah_capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %ah_capabilities.i.i, align 4
  %and1.i3.i.i = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i3.i.i)
  %tobool51.not.i.i = icmp eq i32 %and1.i3.i.i, 0
  br i1 %tobool51.not.i.i, label %if.end46.i.i.ath5k_setup_bands.exit.i_crit_edge, label %if.then52.i.i

if.end46.i.i.ath5k_setup_bands.exit.i_crit_edge:  ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_setup_bands.exit.i

if.then52.i.i:                                    ; preds = %if.end46.i.i
  %arrayidx54.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 8, i32 1
  %band55.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 8, i32 1, i32 2
  %116 = ptrtoint ptr %band55.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %band55.i.i, align 4
  %arrayidx57.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 10, i32 1
  %bitrates59.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 8, i32 1, i32 1
  %117 = ptrtoint ptr %bitrates59.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %arrayidx57.i.i, ptr %bitrates59.i.i, align 4
  %118 = call ptr @memcpy(ptr %arrayidx57.i.i, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @ath5k_rates, i32 0, i32 4), i32 96)
  %n_bitrates61.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 8, i32 1, i32 4
  %119 = ptrtoint ptr %n_bitrates61.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 8, ptr %n_bitrates61.i.i, align 4
  %arrayidx63.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 9, i32 %count_c.0.i.i
  %120 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %arrayidx63.i.i, ptr %arrayidx54.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_c.0.i.i)
  %cmp240.not.i.i.i = icmp eq i32 %max_c.0.i.i, 0
  br i1 %cmp240.not.i.i.i, label %if.then52.i.i.ath5k_setup_channels.exit41.i.i_crit_edge, label %if.then52.i.i.for.body.i26.i.i_crit_edge

if.then52.i.i.for.body.i26.i.i_crit_edge:         ; preds = %if.then52.i.i
  br label %for.body.i26.i.i

if.then52.i.i.ath5k_setup_channels.exit41.i.i_crit_edge: ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_setup_channels.exit41.i.i

for.body.i26.i.i:                                 ; preds = %for.inc.i40.i.i.for.body.i26.i.i_crit_edge, %if.then52.i.i.for.body.i26.i.i_crit_edge
  %ch.042.i23.i.i = phi i32 [ %inc18.i36.i.i, %for.inc.i40.i.i.for.body.i26.i.i_crit_edge ], [ 1, %if.then52.i.i.for.body.i26.i.i_crit_edge ]
  %count.041.i24.i.i = phi i32 [ %count.1.i35.i.i, %for.inc.i40.i.i.for.body.i26.i.i_crit_edge ], [ 0, %if.then52.i.i.for.body.i26.i.i_crit_edge ]
  %call.i.i25.i.i = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %ch.042.i23.i.i, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call.i.i25.i.i)
  %121 = icmp ult i32 %call.i.i25.i.i, 1000
  br i1 %121, label %for.body.i26.i.i.for.inc.i40.i.i_crit_edge, label %if.end6.i34.i.i

for.body.i26.i.i.for.inc.i40.i.i_crit_edge:       ; preds = %for.body.i26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i40.i.i

if.end6.i34.i.i:                                  ; preds = %for.body.i26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %div.i.i27.i.i = udiv i32 %call.i.i25.i.i, 1000
  %arrayidx.i28.i.i = getelementptr %struct.ieee80211_channel, ptr %arrayidx63.i.i, i32 %count.041.i24.i.i
  %center_freq.i29.i.i = getelementptr %struct.ieee80211_channel, ptr %arrayidx63.i.i, i32 %count.041.i24.i.i, i32 1
  %122 = ptrtoint ptr %center_freq.i29.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %div.i.i27.i.i, ptr %center_freq.i29.i.i, align 4
  %123 = ptrtoint ptr %arrayidx.i28.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 1, ptr %arrayidx.i28.i.i, align 4
  %hw_value.i30.i.i = getelementptr %struct.ieee80211_channel, ptr %arrayidx63.i.i, i32 %count.041.i24.i.i, i32 3
  %124 = ptrtoint ptr %hw_value.i30.i.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 0, ptr %hw_value.i30.i.i, align 2
  %call11.i31.i.i = call zeroext i1 @ath5k_channel_ok(ptr noundef %54, ptr noundef %arrayidx.i28.i.i) #14
  %inc.i32.i.i = zext i1 %call11.i31.i.i to i32
  %spec.select.i33.i.i = add nuw i32 %count.041.i24.i.i, %inc.i32.i.i
  br label %for.inc.i40.i.i

for.inc.i40.i.i:                                  ; preds = %if.end6.i34.i.i, %for.body.i26.i.i.for.inc.i40.i.i_crit_edge
  %count.1.i35.i.i = phi i32 [ %count.041.i24.i.i, %for.body.i26.i.i.for.inc.i40.i.i_crit_edge ], [ %spec.select.i33.i.i, %if.end6.i34.i.i ]
  %inc18.i36.i.i = add nuw nsw i32 %ch.042.i23.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 220, i32 %ch.042.i23.i.i)
  %cmp.not.i37.i.i = icmp ult i32 %ch.042.i23.i.i, 220
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1.i35.i.i, i32 %max_c.0.i.i)
  %cmp2.i38.i.i = icmp ult i32 %count.1.i35.i.i, %max_c.0.i.i
  %or.cond.i39.i.i = select i1 %cmp.not.i37.i.i, i1 %cmp2.i38.i.i, i1 false
  br i1 %or.cond.i39.i.i, label %for.inc.i40.i.i.for.body.i26.i.i_crit_edge, label %for.inc.i40.i.i.ath5k_setup_channels.exit41.i.i_crit_edge

for.inc.i40.i.i.ath5k_setup_channels.exit41.i.i_crit_edge: ; preds = %for.inc.i40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_setup_channels.exit41.i.i

for.inc.i40.i.i.for.body.i26.i.i_crit_edge:       ; preds = %for.inc.i40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i26.i.i

ath5k_setup_channels.exit41.i.i:                  ; preds = %for.inc.i40.i.i.ath5k_setup_channels.exit41.i.i_crit_edge, %if.then52.i.i.ath5k_setup_channels.exit41.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.then52.i.i.ath5k_setup_channels.exit41.i.i_crit_edge ], [ %count.1.i35.i.i, %for.inc.i40.i.i.ath5k_setup_channels.exit41.i.i_crit_edge ]
  %n_channels67.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 8, i32 1, i32 3
  %125 = ptrtoint ptr %n_channels67.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %retval.0.i.i.i, ptr %n_channels67.i.i, align 4
  %126 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %wiphy.i, align 8
  %arrayidx70.i.i = getelementptr %struct.wiphy, ptr %127, i32 0, i32 53, i32 1
  %128 = ptrtoint ptr %arrayidx70.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %arrayidx54.i.i, ptr %arrayidx70.i.i, align 4
  br label %ath5k_setup_bands.exit.i

ath5k_setup_bands.exit.i:                         ; preds = %ath5k_setup_channels.exit41.i.i, %if.end46.i.i.ath5k_setup_bands.exit.i_crit_edge
  %sband.0.i.i = phi ptr [ %arrayidx54.i.i, %ath5k_setup_channels.exit41.i.i ], [ %sbands.i.i, %if.end46.i.i.ath5k_setup_bands.exit.i_crit_edge ]
  call fastcc void @ath5k_setup_rate_idx(ptr noundef %54, ptr noundef %sband.0.i.i) #14
  call void @ath5k_debug_dump_bands(ptr noundef %54) #14
  %desc_len.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 17
  %129 = ptrtoint ptr %desc_len.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 7840, ptr %desc_len.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 2
  %130 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i.i, align 8
  %desc_daddr.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 16
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %131, i32 noundef 7840, ptr noundef %desc_daddr.i.i, i32 noundef 3264, i32 noundef 0) #14
  %desc.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 15
  %132 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call.i.i.i, ptr %desc.i.i, align 4
  %cmp.i281.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i281.i, label %do.body.i.i, label %if.end5.i.i

do.body.i.i:                                      ; preds = %ath5k_setup_bands.exit.i
  %call3.i.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i282.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i282.i, label %do.body.i.i.do.body9.i_crit_edge, label %if.then4.i.i

do.body.i.i.do.body9.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body9.i

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %54, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.122) #14
  br label %do.body9.i

if.end5.i.i:                                      ; preds = %ath5k_setup_bands.exit.i
  %133 = ptrtoint ptr %desc_daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %desc_daddr.i.i, align 8
  %debug.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 13
  %135 = ptrtoint ptr %debug.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %debug.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool9.not.i.i = icmp eq i32 %136, 0
  br i1 %tobool9.not.i.i, label %if.end5.i.i.do.end19.i.i_crit_edge, label %land.rhs.i.i

if.end5.i.i.do.end19.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19.i.i

land.rhs.i.i:                                     ; preds = %if.end5.i.i
  %call10.i.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %land.rhs.i.i.do.end19.i.i_crit_edge, label %if.then14.i.i, !prof !399

land.rhs.i.i.do.end19.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19.i.i

if.then14.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %137 = ptrtoint ptr %desc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %desc_len.i.i, align 4
  %139 = ptrtoint ptr %desc_daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %desc_daddr.i.i, align 8
  %conv.i.i = zext i32 %140 to i64
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %54, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.137, ptr noundef nonnull @__func__.ath5k_desc_alloc, i32 noundef 920, ptr noundef nonnull %call.i.i.i, i32 noundef %138, i64 noundef %conv.i.i) #14
  br label %do.end19.i.i

do.end19.i.i:                                     ; preds = %if.then14.i.i, %land.rhs.i.i.do.end19.i.i_crit_edge, %if.end5.i.i.do.end19.i.i_crit_edge
  %call1.i.i.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8820, i32 noundef 3520, i32 noundef 2) #18
  %cmp21.i.i = icmp eq ptr %call1.i.i.i.i.i.i, null
  br i1 %cmp21.i.i, label %do.body24.i.i, label %if.end31.i.i

do.body24.i.i:                                    ; preds = %do.end19.i.i
  %call25.i.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %do.body24.i.i.do.end30.i.i_crit_edge, label %if.then27.i.i

do.body24.i.i.do.end30.i.i_crit_edge:             ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30.i.i

if.then27.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %54, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.138) #14
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then27.i.i, %do.body24.i.i.do.end30.i.i_crit_edge
  %141 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev.i.i, align 8
  %143 = ptrtoint ptr %desc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %desc_len.i.i, align 4
  %145 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %desc.i.i, align 4
  %147 = ptrtoint ptr %desc_daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %desc_daddr.i.i, align 8
  call void @dma_free_attrs(ptr noundef %142, i32 noundef %144, ptr noundef %146, i32 noundef %148, i32 noundef 0) #14
  br label %do.body9.i

if.end31.i.i:                                     ; preds = %do.end19.i.i
  %bufptr.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 14
  %149 = ptrtoint ptr %bufptr.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call1.i.i.i.i.i.i, ptr %bufptr.i.i, align 8
  %rxbuf.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 32
  %150 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %rxbuf.i.i, ptr %rxbuf.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 32, i32 1
  %151 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %rxbuf.i.i, ptr %prev.i.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %list_add_tail.exit.i.i.for.body.i.i_crit_edge, %if.end31.i.i
  %i.0146.i.i = phi i32 [ 0, %if.end31.i.i ], [ %inc.i.i, %list_add_tail.exit.i.i.for.body.i.i_crit_edge ]
  %da.0145.i.i = phi i32 [ %134, %if.end31.i.i ], [ %add.i.i, %list_add_tail.exit.i.i.for.body.i.i_crit_edge ]
  %bf.0143.i.i = phi ptr [ %call1.i.i.i.i.i.i, %if.end31.i.i ], [ %incdec.ptr.i.i, %list_add_tail.exit.i.i.for.body.i.i_crit_edge ]
  %ds.0142.i.i = phi ptr [ %call.i.i.i, %if.end31.i.i ], [ %incdec.ptr36.i.i, %list_add_tail.exit.i.i.for.body.i.i_crit_edge ]
  %desc34.i.i = getelementptr inbounds %struct.ath5k_buf, ptr %bf.0143.i.i, i32 0, i32 1
  %152 = ptrtoint ptr %desc34.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %ds.0142.i.i, ptr %desc34.i.i, align 4
  %daddr.i.i = getelementptr inbounds %struct.ath5k_buf, ptr %bf.0143.i.i, i32 0, i32 2
  %153 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %da.0145.i.i, ptr %daddr.i.i, align 4
  %154 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i283.i = call zeroext i1 @__list_add_valid(ptr noundef %bf.0143.i.i, ptr noundef %155, ptr noundef %rxbuf.i.i) #14
  br i1 %call.i.i.i283.i, label %if.end.i.i.i.i, label %for.body.i.i.list_add_tail.exit.i.i_crit_edge

for.body.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %156 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %bf.0143.i.i, ptr %prev.i.i.i, align 4
  %157 = ptrtoint ptr %bf.0143.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %rxbuf.i.i, ptr %bf.0143.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %bf.0143.i.i, i32 0, i32 1
  %158 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %155, ptr %prev3.i.i.i.i, align 4
  %159 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile ptr %bf.0143.i.i, ptr %155, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %for.body.i.i.list_add_tail.exit.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0146.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.ath5k_buf, ptr %bf.0143.i.i, i32 1
  %incdec.ptr36.i.i = getelementptr %struct.ath5k_desc, ptr %ds.0142.i.i, i32 1
  %add.i.i = add i32 %da.0145.i.i, 32
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 40
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %list_add_tail.exit.i.i.for.body.i.i_crit_edge

list_add_tail.exit.i.i.for.body.i.i_crit_edge:    ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %list_add_tail.exit.i.i
  %txbuf.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 37
  %160 = ptrtoint ptr %txbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile ptr %txbuf.i.i, ptr %txbuf.i.i, align 4
  %prev.i130.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 37, i32 1
  %161 = ptrtoint ptr %prev.i130.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %txbuf.i.i, ptr %prev.i130.i.i, align 4
  %txbuf_len.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 39
  %162 = ptrtoint ptr %txbuf_len.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 200, ptr %txbuf_len.i.i, align 4
  br label %for.body40.i.i

for.body40.i.i:                                   ; preds = %list_add_tail.exit135.i.i.for.body40.i.i_crit_edge, %for.end.i.i
  %i.1151.i.i = phi i32 [ 0, %for.end.i.i ], [ %inc46.i.i, %list_add_tail.exit135.i.i.for.body40.i.i_crit_edge ]
  %da.1150.i.i = phi i32 [ %add.i.i, %for.end.i.i ], [ %add49.i.i, %list_add_tail.exit135.i.i.for.body40.i.i_crit_edge ]
  %bf.1148.i.i = phi ptr [ %incdec.ptr.i.i, %for.end.i.i ], [ %incdec.ptr47.i.i, %list_add_tail.exit135.i.i.for.body40.i.i_crit_edge ]
  %ds.1147.i.i = phi ptr [ %incdec.ptr36.i.i, %for.end.i.i ], [ %incdec.ptr48.i.i, %list_add_tail.exit135.i.i.for.body40.i.i_crit_edge ]
  %desc41.i.i = getelementptr inbounds %struct.ath5k_buf, ptr %bf.1148.i.i, i32 0, i32 1
  %163 = ptrtoint ptr %desc41.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %ds.1147.i.i, ptr %desc41.i.i, align 4
  %daddr42.i.i = getelementptr inbounds %struct.ath5k_buf, ptr %bf.1148.i.i, i32 0, i32 2
  %164 = ptrtoint ptr %daddr42.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %da.1150.i.i, ptr %daddr42.i.i, align 4
  %165 = ptrtoint ptr %prev.i130.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %prev.i130.i.i, align 4
  %call.i.i132.i.i = call zeroext i1 @__list_add_valid(ptr noundef %bf.1148.i.i, ptr noundef %166, ptr noundef %txbuf.i.i) #14
  br i1 %call.i.i132.i.i, label %if.end.i.i134.i.i, label %for.body40.i.i.list_add_tail.exit135.i.i_crit_edge

for.body40.i.i.list_add_tail.exit135.i.i_crit_edge: ; preds = %for.body40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit135.i.i

if.end.i.i134.i.i:                                ; preds = %for.body40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %167 = ptrtoint ptr %prev.i130.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %bf.1148.i.i, ptr %prev.i130.i.i, align 4
  %168 = ptrtoint ptr %bf.1148.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %txbuf.i.i, ptr %bf.1148.i.i, align 4
  %prev3.i.i133.i.i = getelementptr inbounds %struct.list_head, ptr %bf.1148.i.i, i32 0, i32 1
  %169 = ptrtoint ptr %prev3.i.i133.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %166, ptr %prev3.i.i133.i.i, align 4
  %170 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile ptr %bf.1148.i.i, ptr %166, align 4
  br label %list_add_tail.exit135.i.i

list_add_tail.exit135.i.i:                        ; preds = %if.end.i.i134.i.i, %for.body40.i.i.list_add_tail.exit135.i.i_crit_edge
  %inc46.i.i = add nuw nsw i32 %i.1151.i.i, 1
  %incdec.ptr47.i.i = getelementptr %struct.ath5k_buf, ptr %bf.1148.i.i, i32 1
  %incdec.ptr48.i.i = getelementptr %struct.ath5k_desc, ptr %ds.1147.i.i, i32 1
  %add49.i.i = add i32 %da.1150.i.i, 32
  %exitcond157.not.i.i = icmp eq i32 %inc46.i.i, 200
  br i1 %exitcond157.not.i.i, label %for.end50.i.i, label %list_add_tail.exit135.i.i.for.body40.i.i_crit_edge

list_add_tail.exit135.i.i.for.body40.i.i_crit_edge: ; preds = %list_add_tail.exit135.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body40.i.i

for.end50.i.i:                                    ; preds = %list_add_tail.exit135.i.i
  %bcbuf.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 46
  %171 = ptrtoint ptr %bcbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %bcbuf.i.i, ptr %bcbuf.i.i, align 4
  %prev.i136.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 46, i32 1
  %172 = ptrtoint ptr %prev.i136.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %bcbuf.i.i, ptr %prev.i136.i.i, align 4
  %desc55.i.i = getelementptr %struct.ath5k_buf, ptr %bf.1148.i.i, i32 1, i32 1
  %173 = ptrtoint ptr %desc55.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %incdec.ptr48.i.i, ptr %desc55.i.i, align 4
  %daddr56.i.i = getelementptr %struct.ath5k_buf, ptr %bf.1148.i.i, i32 1, i32 2
  %174 = ptrtoint ptr %daddr56.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %add49.i.i, ptr %daddr56.i.i, align 4
  %175 = load ptr, ptr %prev.i136.i.i, align 4
  %call.i.i138.i.i = call zeroext i1 @__list_add_valid(ptr noundef %incdec.ptr47.i.i, ptr noundef %175, ptr noundef %bcbuf.i.i) #14
  br i1 %call.i.i138.i.i, label %if.end.i.i140.i.i, label %for.end50.i.i.list_add_tail.exit141.i.i_crit_edge

for.end50.i.i.list_add_tail.exit141.i.i_crit_edge: ; preds = %for.end50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit141.i.i

if.end.i.i140.i.i:                                ; preds = %for.end50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %176 = ptrtoint ptr %prev.i136.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %incdec.ptr47.i.i, ptr %prev.i136.i.i, align 4
  %177 = ptrtoint ptr %incdec.ptr47.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %bcbuf.i.i, ptr %incdec.ptr47.i.i, align 4
  %prev3.i.i139.i.i = getelementptr %struct.ath5k_buf, ptr %bf.1148.i.i, i32 1, i32 0, i32 1
  %178 = ptrtoint ptr %prev3.i.i139.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %175, ptr %prev3.i.i139.i.i, align 4
  %179 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile ptr %incdec.ptr47.i.i, ptr %175, align 4
  br label %list_add_tail.exit141.i.i

list_add_tail.exit141.i.i:                        ; preds = %if.end.i.i140.i.i, %for.end50.i.i.list_add_tail.exit141.i.i_crit_edge
  %incdec.ptr61.i.i = getelementptr %struct.ath5k_buf, ptr %bf.1148.i.i, i32 2
  %incdec.ptr62.i.i = getelementptr %struct.ath5k_desc, ptr %ds.1147.i.i, i32 2
  %add63.i.i = add i32 %da.1150.i.i, 64
  %desc55.1.i.i = getelementptr %struct.ath5k_buf, ptr %bf.1148.i.i, i32 2, i32 1
  %180 = ptrtoint ptr %desc55.1.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %incdec.ptr62.i.i, ptr %desc55.1.i.i, align 4
  %daddr56.1.i.i = getelementptr %struct.ath5k_buf, ptr %bf.1148.i.i, i32 2, i32 2
  %181 = ptrtoint ptr %daddr56.1.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %add63.i.i, ptr %daddr56.1.i.i, align 4
  %182 = ptrtoint ptr %prev.i136.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %prev.i136.i.i, align 4
  %call.i.i138.1.i.i = call zeroext i1 @__list_add_valid(ptr noundef %incdec.ptr61.i.i, ptr noundef %183, ptr noundef %bcbuf.i.i) #14
  br i1 %call.i.i138.1.i.i, label %if.end.i.i140.1.i.i, label %list_add_tail.exit141.i.i.list_add_tail.exit141.1.i.i_crit_edge

list_add_tail.exit141.i.i.list_add_tail.exit141.1.i.i_crit_edge: ; preds = %list_add_tail.exit141.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit141.1.i.i

if.end.i.i140.1.i.i:                              ; preds = %list_add_tail.exit141.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %184 = ptrtoint ptr %prev.i136.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %incdec.ptr61.i.i, ptr %prev.i136.i.i, align 4
  %185 = ptrtoint ptr %incdec.ptr61.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %bcbuf.i.i, ptr %incdec.ptr61.i.i, align 4
  %prev3.i.i139.1.i.i = getelementptr %struct.ath5k_buf, ptr %bf.1148.i.i, i32 2, i32 0, i32 1
  %186 = ptrtoint ptr %prev3.i.i139.1.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %183, ptr %prev3.i.i139.1.i.i, align 4
  %187 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %187)
  store volatile ptr %incdec.ptr61.i.i, ptr %183, align 4
  br label %list_add_tail.exit141.1.i.i

list_add_tail.exit141.1.i.i:                      ; preds = %if.end.i.i140.1.i.i, %list_add_tail.exit141.i.i.list_add_tail.exit141.1.i.i_crit_edge
  %incdec.ptr61.1.i.i = getelementptr %struct.ath5k_buf, ptr %bf.1148.i.i, i32 3
  %incdec.ptr62.1.i.i = getelementptr %struct.ath5k_desc, ptr %ds.1147.i.i, i32 3
  %add63.1.i.i = add i32 %da.1150.i.i, 96
  %desc55.2.i.i = getelementptr %struct.ath5k_buf, ptr %bf.1148.i.i, i32 3, i32 1
  %188 = ptrtoint ptr %desc55.2.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %incdec.ptr62.1.i.i, ptr %desc55.2.i.i, align 4
  %daddr56.2.i.i = getelementptr %struct.ath5k_buf, ptr %bf.1148.i.i, i32 3, i32 2
  %189 = ptrtoint ptr %daddr56.2.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %add63.1.i.i, ptr %daddr56.2.i.i, align 4
  %190 = ptrtoint ptr %prev.i136.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %prev.i136.i.i, align 4
  %call.i.i138.2.i.i = call zeroext i1 @__list_add_valid(ptr noundef %incdec.ptr61.1.i.i, ptr noundef %191, ptr noundef %bcbuf.i.i) #14
  br i1 %call.i.i138.2.i.i, label %if.end.i.i140.2.i.i, label %list_add_tail.exit141.1.i.i.list_add_tail.exit141.2.i.i_crit_edge

list_add_tail.exit141.1.i.i.list_add_tail.exit141.2.i.i_crit_edge: ; preds = %list_add_tail.exit141.1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit141.2.i.i

if.end.i.i140.2.i.i:                              ; preds = %list_add_tail.exit141.1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %192 = ptrtoint ptr %prev.i136.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %incdec.ptr61.1.i.i, ptr %prev.i136.i.i, align 4
  %193 = ptrtoint ptr %incdec.ptr61.1.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %bcbuf.i.i, ptr %incdec.ptr61.1.i.i, align 4
  %prev3.i.i139.2.i.i = getelementptr %struct.ath5k_buf, ptr %bf.1148.i.i, i32 3, i32 0, i32 1
  %194 = ptrtoint ptr %prev3.i.i139.2.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %191, ptr %prev3.i.i139.2.i.i, align 4
  %195 = ptrtoint ptr %191 to i32
  call void @__asan_store4_noabort(i32 %195)
  store volatile ptr %incdec.ptr61.1.i.i, ptr %191, align 4
  br label %list_add_tail.exit141.2.i.i

list_add_tail.exit141.2.i.i:                      ; preds = %if.end.i.i140.2.i.i, %list_add_tail.exit141.1.i.i.list_add_tail.exit141.2.i.i_crit_edge
  %incdec.ptr61.2.i.i = getelementptr %struct.ath5k_buf, ptr %bf.1148.i.i, i32 4
  %incdec.ptr62.2.i.i = getelementptr %struct.ath5k_desc, ptr %ds.1147.i.i, i32 4
  %add63.2.i.i = add i32 %da.1150.i.i, 128
  %desc55.3.i.i = getelementptr %struct.ath5k_buf, ptr %bf.1148.i.i, i32 4, i32 1
  %196 = ptrtoint ptr %desc55.3.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %incdec.ptr62.2.i.i, ptr %desc55.3.i.i, align 4
  %daddr56.3.i.i = getelementptr %struct.ath5k_buf, ptr %bf.1148.i.i, i32 4, i32 2
  %197 = ptrtoint ptr %daddr56.3.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %add63.2.i.i, ptr %daddr56.3.i.i, align 4
  %198 = ptrtoint ptr %prev.i136.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %prev.i136.i.i, align 4
  %call.i.i138.3.i.i = call zeroext i1 @__list_add_valid(ptr noundef %incdec.ptr61.2.i.i, ptr noundef %199, ptr noundef %bcbuf.i.i) #14
  br i1 %call.i.i138.3.i.i, label %if.end.i.i140.3.i.i, label %list_add_tail.exit141.2.i.i.if.end16.i_crit_edge

list_add_tail.exit141.2.i.i.if.end16.i_crit_edge: ; preds = %list_add_tail.exit141.2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

if.end.i.i140.3.i.i:                              ; preds = %list_add_tail.exit141.2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %200 = ptrtoint ptr %prev.i136.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %incdec.ptr61.2.i.i, ptr %prev.i136.i.i, align 4
  %201 = ptrtoint ptr %incdec.ptr61.2.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %bcbuf.i.i, ptr %incdec.ptr61.2.i.i, align 4
  %prev3.i.i139.3.i.i = getelementptr %struct.ath5k_buf, ptr %bf.1148.i.i, i32 4, i32 0, i32 1
  %202 = ptrtoint ptr %prev3.i.i139.3.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %199, ptr %prev3.i.i139.3.i.i, align 4
  %203 = ptrtoint ptr %199 to i32
  call void @__asan_store4_noabort(i32 %203)
  store volatile ptr %incdec.ptr61.2.i.i, ptr %199, align 4
  br label %if.end16.i

do.body9.i:                                       ; preds = %do.end30.i.i, %if.then4.i.i, %do.body.i.i.do.body9.i_crit_edge
  %204 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr null, ptr %desc.i.i, align 4
  %call10.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %do.body9.i.ath5k_init.exit.thread_crit_edge, label %if.then12.i

do.body9.i.ath5k_init.exit.thread_crit_edge:      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_init.exit.thread

if.then12.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %54, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.122) #14
  br label %ath5k_init.exit.thread

if.end16.i:                                       ; preds = %if.end.i.i140.3.i.i, %list_add_tail.exit141.2.i.i.if.end16.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %qi.i.i) #14
  %205 = call ptr @memcpy(ptr %qi.i.i, ptr @__const.ath5k_beaconq_setup.qi, i32 32)
  %call.i.i = call i32 @ath5k_hw_setup_tx_queue(ptr noundef %54, i32 noundef 2, ptr noundef nonnull %qi.i.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %qi.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body19.i, label %if.end26.i

do.body19.i:                                      ; preds = %if.end16.i
  %call20.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %do.body19.i.ath5k_init.exit.thread216_crit_edge, label %if.then22.i

do.body19.i.ath5k_init.exit.thread216_crit_edge:  ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_init.exit.thread216

if.then22.i:                                      ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %54, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.123) #14
  br label %ath5k_init.exit.thread216

if.end26.i:                                       ; preds = %if.end16.i
  %bhalq.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 51
  %206 = ptrtoint ptr %bhalq.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %call.i.i, ptr %bhalq.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %qi.i284.i) #14
  %207 = getelementptr inbounds i8, ptr %qi.i284.i, i32 8
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 787199, ptr %207, align 4
  %209 = ptrtoint ptr %qi.i284.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 0, ptr %qi.i284.i, align 4
  %tqi_subtype.i.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i284.i, i32 0, i32 1
  %210 = ptrtoint ptr %tqi_subtype.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 0, ptr %tqi_subtype.i.i, align 4
  %tqi_cw_min.i.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i284.i, i32 0, i32 4
  %211 = ptrtoint ptr %tqi_cw_min.i.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 15, ptr %tqi_cw_min.i.i, align 4
  %tqi_cw_max.i.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i284.i, i32 0, i32 5
  %212 = ptrtoint ptr %tqi_cw_max.i.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 1023, ptr %tqi_cw_max.i.i, align 2
  %tqi_cbr_period.i.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i284.i, i32 0, i32 6
  %213 = call ptr @memset(ptr %tqi_cbr_period.i.i, i32 0, i32 16)
  %call.i285.i = call i32 @ath5k_hw_setup_tx_queue(ptr noundef %54, i32 noundef 3, ptr noundef nonnull %qi.i284.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i285.i)
  %cmp.i286.i = icmp slt i32 %call.i285.i, 0
  br i1 %cmp.i286.i, label %if.then.i287.i, label %if.end.i289.i

if.then.i287.i:                                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  %214 = inttoptr i32 %call.i285.i to ptr
  br label %ath5k_txq_setup.exit.i

if.end.i289.i:                                    ; preds = %if.end26.i
  %arrayidx.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i285.i
  %setup.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i285.i, i32 4
  %215 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %setup.i.i, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool.not.i288.i = icmp eq i8 %216, 0
  br i1 %tobool.not.i288.i, label %if.then3.i.i, label %if.end.i289.i.ath5k_txq_setup.exit.i_crit_edge

if.end.i289.i.ath5k_txq_setup.exit.i_crit_edge:   ; preds = %if.end.i289.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_txq_setup.exit.i

if.then3.i.i:                                     ; preds = %if.end.i289.i
  call void @__sanitizer_cov_trace_pc() #16
  %217 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %call.i285.i, ptr %arrayidx.i.i, align 4
  %link.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i285.i, i32 1
  %218 = ptrtoint ptr %link.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr null, ptr %link.i.i, align 4
  %q.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i285.i, i32 2
  %219 = ptrtoint ptr %q.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile ptr %q.i.i, ptr %q.i.i, align 4
  %prev.i.i290.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i285.i, i32 2, i32 1
  %220 = ptrtoint ptr %prev.i.i290.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %q.i.i, ptr %prev.i.i290.i, align 4
  %lock.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i285.i, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.139, ptr noundef nonnull @ath5k_txq_setup.__key, i16 noundef signext 3) #14
  %221 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 1, ptr %setup.i.i, align 4
  %txq_len.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i285.i, i32 5
  %222 = ptrtoint ptr %txq_len.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 0, ptr %txq_len.i.i, align 4
  %txq_max.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i285.i, i32 6
  %223 = ptrtoint ptr %txq_max.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 50, ptr %txq_max.i.i, align 4
  %txq_poll_mark.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i285.i, i32 7
  %224 = ptrtoint ptr %txq_poll_mark.i.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 0, ptr %txq_poll_mark.i.i, align 4
  %txq_stuck.i.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i285.i, i32 8
  %225 = ptrtoint ptr %txq_stuck.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %txq_stuck.i.i, align 4
  br label %ath5k_txq_setup.exit.i

ath5k_txq_setup.exit.i:                           ; preds = %if.then3.i.i, %if.end.i289.i.ath5k_txq_setup.exit.i_crit_edge, %if.then.i287.i
  %retval.0.i291.i = phi ptr [ %214, %if.then.i287.i ], [ %arrayidx.i.i, %if.then3.i.i ], [ %arrayidx.i.i, %if.end.i289.i.ath5k_txq_setup.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %qi.i284.i) #14
  %cabq.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 56
  %226 = ptrtoint ptr %cabq.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %retval.0.i291.i, ptr %cabq.i, align 8
  %cmp.i292.i = icmp ugt ptr %retval.0.i291.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i292.i, label %do.body31.i, label %if.end40.i

do.body31.i:                                      ; preds = %ath5k_txq_setup.exit.i
  %call32.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %do.body31.i.do.end37.i_crit_edge, label %if.then34.i

do.body31.i.do.end37.i_crit_edge:                 ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end37.i

if.then34.i:                                      ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %54, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.124) #14
  br label %do.end37.i

do.end37.i:                                       ; preds = %if.then34.i, %do.body31.i.do.end37.i_crit_edge
  %227 = ptrtoint ptr %cabq.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %cabq.i, align 8
  %229 = ptrtoint ptr %228 to i32
  br label %ath5k_init.exit

if.end40.i:                                       ; preds = %ath5k_txq_setup.exit.i
  %cap_queues.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 86, i32 3
  %230 = ptrtoint ptr %cap_queues.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %cap_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %231)
  %cmp41.i = icmp ugt i8 %231, 5
  br i1 %cmp41.i, label %if.then43.i, label %if.else.i

if.then43.i:                                      ; preds = %if.end40.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %qi.i293.i) #14
  %232 = getelementptr inbounds i8, ptr %qi.i293.i, i32 8
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 787199, ptr %232, align 4
  %234 = ptrtoint ptr %qi.i293.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 0, ptr %qi.i293.i, align 4
  %tqi_subtype.i294.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i293.i, i32 0, i32 1
  %235 = ptrtoint ptr %tqi_subtype.i294.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 3, ptr %tqi_subtype.i294.i, align 4
  %tqi_cw_min.i297.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i293.i, i32 0, i32 4
  %236 = ptrtoint ptr %tqi_cw_min.i297.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 15, ptr %tqi_cw_min.i297.i, align 4
  %tqi_cw_max.i298.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i293.i, i32 0, i32 5
  %237 = ptrtoint ptr %tqi_cw_max.i298.i to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 1023, ptr %tqi_cw_max.i298.i, align 2
  %tqi_cbr_period.i299.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i293.i, i32 0, i32 6
  %238 = call ptr @memset(ptr %tqi_cbr_period.i299.i, i32 0, i32 16)
  %call.i300.i = call i32 @ath5k_hw_setup_tx_queue(ptr noundef %54, i32 noundef 1, ptr noundef nonnull %qi.i293.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i300.i)
  %cmp.i301.i = icmp slt i32 %call.i300.i, 0
  br i1 %cmp.i301.i, label %if.then.i302.i, label %if.end.i306.i

if.then.i302.i:                                   ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #16
  %239 = inttoptr i32 %call.i300.i to ptr
  br label %ath5k_txq_setup.exit317.i

if.end.i306.i:                                    ; preds = %if.then43.i
  %arrayidx.i303.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i300.i
  %setup.i304.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i300.i, i32 4
  %240 = ptrtoint ptr %setup.i304.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %setup.i304.i, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool.not.i305.i = icmp eq i8 %241, 0
  br i1 %tobool.not.i305.i, label %if.then3.i315.i, label %if.end.i306.i.ath5k_txq_setup.exit317.i_crit_edge

if.end.i306.i.ath5k_txq_setup.exit317.i_crit_edge: ; preds = %if.end.i306.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_txq_setup.exit317.i

if.then3.i315.i:                                  ; preds = %if.end.i306.i
  call void @__sanitizer_cov_trace_pc() #16
  %242 = ptrtoint ptr %arrayidx.i303.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %call.i300.i, ptr %arrayidx.i303.i, align 4
  %link.i307.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i300.i, i32 1
  %243 = ptrtoint ptr %link.i307.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr null, ptr %link.i307.i, align 4
  %q.i308.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i300.i, i32 2
  %244 = ptrtoint ptr %q.i308.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store volatile ptr %q.i308.i, ptr %q.i308.i, align 4
  %prev.i.i309.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i300.i, i32 2, i32 1
  %245 = ptrtoint ptr %prev.i.i309.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %q.i308.i, ptr %prev.i.i309.i, align 4
  %lock.i310.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i300.i, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock.i310.i, ptr noundef nonnull @.str.139, ptr noundef nonnull @ath5k_txq_setup.__key, i16 noundef signext 3) #14
  %246 = ptrtoint ptr %setup.i304.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 1, ptr %setup.i304.i, align 4
  %txq_len.i311.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i300.i, i32 5
  %247 = ptrtoint ptr %txq_len.i311.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 0, ptr %txq_len.i311.i, align 4
  %txq_max.i312.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i300.i, i32 6
  %248 = ptrtoint ptr %txq_max.i312.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 50, ptr %txq_max.i312.i, align 4
  %txq_poll_mark.i313.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i300.i, i32 7
  %249 = ptrtoint ptr %txq_poll_mark.i313.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 0, ptr %txq_poll_mark.i313.i, align 4
  %txq_stuck.i314.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i300.i, i32 8
  %250 = ptrtoint ptr %txq_stuck.i314.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %txq_stuck.i314.i, align 4
  br label %ath5k_txq_setup.exit317.i

ath5k_txq_setup.exit317.i:                        ; preds = %if.then3.i315.i, %if.end.i306.i.ath5k_txq_setup.exit317.i_crit_edge, %if.then.i302.i
  %retval.0.i316.i = phi ptr [ %239, %if.then.i302.i ], [ %arrayidx.i303.i, %if.then3.i315.i ], [ %arrayidx.i303.i, %if.end.i306.i.ath5k_txq_setup.exit317.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %qi.i293.i) #14
  %cmp.i318.i = icmp ugt ptr %retval.0.i316.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i318.i, label %do.body47.i, label %if.end55.i

do.body47.i:                                      ; preds = %ath5k_txq_setup.exit317.i
  %call48.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %do.body47.i.do.end53.i_crit_edge, label %if.then50.i

do.body47.i.do.end53.i_crit_edge:                 ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end53.i

if.then50.i:                                      ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %54, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.125) #14
  br label %do.end53.i

do.end53.i:                                       ; preds = %if.then50.i, %do.body47.i.do.end53.i_crit_edge
  %251 = ptrtoint ptr %retval.0.i316.i to i32
  br label %err_queues.i

if.end55.i:                                       ; preds = %ath5k_txq_setup.exit317.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %qi.i319.i) #14
  %252 = getelementptr inbounds i8, ptr %qi.i319.i, i32 8
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 787199, ptr %252, align 4
  %254 = ptrtoint ptr %qi.i319.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 0, ptr %qi.i319.i, align 4
  %tqi_subtype.i320.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i319.i, i32 0, i32 1
  %255 = ptrtoint ptr %tqi_subtype.i320.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 2, ptr %tqi_subtype.i320.i, align 4
  %tqi_cw_min.i323.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i319.i, i32 0, i32 4
  %256 = ptrtoint ptr %tqi_cw_min.i323.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 15, ptr %tqi_cw_min.i323.i, align 4
  %tqi_cw_max.i324.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i319.i, i32 0, i32 5
  %257 = ptrtoint ptr %tqi_cw_max.i324.i to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 1023, ptr %tqi_cw_max.i324.i, align 2
  %tqi_cbr_period.i325.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i319.i, i32 0, i32 6
  %258 = call ptr @memset(ptr %tqi_cbr_period.i325.i, i32 0, i32 16)
  %call.i326.i = call i32 @ath5k_hw_setup_tx_queue(ptr noundef %54, i32 noundef 1, ptr noundef nonnull %qi.i319.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i326.i)
  %cmp.i327.i = icmp slt i32 %call.i326.i, 0
  br i1 %cmp.i327.i, label %if.then.i328.i, label %if.end.i332.i

if.then.i328.i:                                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  %259 = inttoptr i32 %call.i326.i to ptr
  br label %ath5k_txq_setup.exit343.i

if.end.i332.i:                                    ; preds = %if.end55.i
  %arrayidx.i329.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i326.i
  %setup.i330.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i326.i, i32 4
  %260 = ptrtoint ptr %setup.i330.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %setup.i330.i, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool.not.i331.i = icmp eq i8 %261, 0
  br i1 %tobool.not.i331.i, label %if.then3.i341.i, label %if.end.i332.i.ath5k_txq_setup.exit343.i_crit_edge

if.end.i332.i.ath5k_txq_setup.exit343.i_crit_edge: ; preds = %if.end.i332.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_txq_setup.exit343.i

if.then3.i341.i:                                  ; preds = %if.end.i332.i
  call void @__sanitizer_cov_trace_pc() #16
  %262 = ptrtoint ptr %arrayidx.i329.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %call.i326.i, ptr %arrayidx.i329.i, align 4
  %link.i333.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i326.i, i32 1
  %263 = ptrtoint ptr %link.i333.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr null, ptr %link.i333.i, align 4
  %q.i334.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i326.i, i32 2
  %264 = ptrtoint ptr %q.i334.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store volatile ptr %q.i334.i, ptr %q.i334.i, align 4
  %prev.i.i335.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i326.i, i32 2, i32 1
  %265 = ptrtoint ptr %prev.i.i335.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %q.i334.i, ptr %prev.i.i335.i, align 4
  %lock.i336.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i326.i, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock.i336.i, ptr noundef nonnull @.str.139, ptr noundef nonnull @ath5k_txq_setup.__key, i16 noundef signext 3) #14
  %266 = ptrtoint ptr %setup.i330.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 1, ptr %setup.i330.i, align 4
  %txq_len.i337.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i326.i, i32 5
  %267 = ptrtoint ptr %txq_len.i337.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 0, ptr %txq_len.i337.i, align 4
  %txq_max.i338.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i326.i, i32 6
  %268 = ptrtoint ptr %txq_max.i338.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 50, ptr %txq_max.i338.i, align 4
  %txq_poll_mark.i339.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i326.i, i32 7
  %269 = ptrtoint ptr %txq_poll_mark.i339.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 0, ptr %txq_poll_mark.i339.i, align 4
  %txq_stuck.i340.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i326.i, i32 8
  %270 = ptrtoint ptr %txq_stuck.i340.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 0, ptr %txq_stuck.i340.i, align 4
  br label %ath5k_txq_setup.exit343.i

ath5k_txq_setup.exit343.i:                        ; preds = %if.then3.i341.i, %if.end.i332.i.ath5k_txq_setup.exit343.i_crit_edge, %if.then.i328.i
  %retval.0.i342.i = phi ptr [ %259, %if.then.i328.i ], [ %arrayidx.i329.i, %if.then3.i341.i ], [ %arrayidx.i329.i, %if.end.i332.i.ath5k_txq_setup.exit343.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %qi.i319.i) #14
  %cmp.i344.i = icmp ugt ptr %retval.0.i342.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i344.i, label %do.body59.i, label %if.end67.i

do.body59.i:                                      ; preds = %ath5k_txq_setup.exit343.i
  %call60.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %do.body59.i.do.end65.i_crit_edge, label %if.then62.i

do.body59.i.do.end65.i_crit_edge:                 ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65.i

if.then62.i:                                      ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %54, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.125) #14
  br label %do.end65.i

do.end65.i:                                       ; preds = %if.then62.i, %do.body59.i.do.end65.i_crit_edge
  %271 = ptrtoint ptr %retval.0.i342.i to i32
  br label %err_queues.i

if.end67.i:                                       ; preds = %ath5k_txq_setup.exit343.i
  %call68.i = call fastcc ptr @ath5k_txq_setup(ptr noundef %54, i32 noundef 1, i32 noundef 1) #14
  %cmp.i345.i = icmp ugt ptr %call68.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i345.i, label %do.body71.i, label %if.end79.i

do.body71.i:                                      ; preds = %if.end67.i
  %call72.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %do.body71.i.do.end77.i_crit_edge, label %if.then74.i

do.body71.i.do.end77.i_crit_edge:                 ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end77.i

if.then74.i:                                      ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %54, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.125) #14
  br label %do.end77.i

do.end77.i:                                       ; preds = %if.then74.i, %do.body71.i.do.end77.i_crit_edge
  %272 = ptrtoint ptr %call68.i to i32
  br label %err_queues.i

if.end79.i:                                       ; preds = %if.end67.i
  %call80.i = call fastcc ptr @ath5k_txq_setup(ptr noundef %54, i32 noundef 1, i32 noundef 0) #14
  %cmp.i346.i = icmp ugt ptr %call80.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i346.i, label %do.body83.i, label %if.end79.i.if.end105.i_crit_edge

if.end79.i.if.end105.i_crit_edge:                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105.i

do.body83.i:                                      ; preds = %if.end79.i
  %call84.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %tobool85.not.i = icmp eq i32 %call84.i, 0
  br i1 %tobool85.not.i, label %do.body83.i.do.end89.i_crit_edge, label %if.then86.i

do.body83.i.do.end89.i_crit_edge:                 ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end89.i

if.then86.i:                                      ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %54, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.125) #14
  br label %do.end89.i

do.end89.i:                                       ; preds = %if.then86.i, %do.body83.i.do.end89.i_crit_edge
  %273 = ptrtoint ptr %call80.i to i32
  br label %err_queues.i

if.else.i:                                        ; preds = %if.end40.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %qi.i347.i) #14
  %274 = getelementptr inbounds i8, ptr %qi.i347.i, i32 8
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 787199, ptr %274, align 4
  %276 = ptrtoint ptr %qi.i347.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 0, ptr %qi.i347.i, align 4
  %tqi_subtype.i348.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i347.i, i32 0, i32 1
  %277 = ptrtoint ptr %tqi_subtype.i348.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 1, ptr %tqi_subtype.i348.i, align 4
  %tqi_cw_min.i351.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i347.i, i32 0, i32 4
  %278 = ptrtoint ptr %tqi_cw_min.i351.i to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 15, ptr %tqi_cw_min.i351.i, align 4
  %tqi_cw_max.i352.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i347.i, i32 0, i32 5
  %279 = ptrtoint ptr %tqi_cw_max.i352.i to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 1023, ptr %tqi_cw_max.i352.i, align 2
  %tqi_cbr_period.i353.i = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi.i347.i, i32 0, i32 6
  %280 = call ptr @memset(ptr %tqi_cbr_period.i353.i, i32 0, i32 16)
  %call.i354.i = call i32 @ath5k_hw_setup_tx_queue(ptr noundef %54, i32 noundef 1, ptr noundef nonnull %qi.i347.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i354.i)
  %cmp.i355.i = icmp slt i32 %call.i354.i, 0
  br i1 %cmp.i355.i, label %if.then.i356.i, label %if.end.i360.i

if.then.i356.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %281 = inttoptr i32 %call.i354.i to ptr
  br label %ath5k_txq_setup.exit371.i

if.end.i360.i:                                    ; preds = %if.else.i
  %arrayidx.i357.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i354.i
  %setup.i358.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i354.i, i32 4
  %282 = ptrtoint ptr %setup.i358.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %setup.i358.i, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %tobool.not.i359.i = icmp eq i8 %283, 0
  br i1 %tobool.not.i359.i, label %if.then3.i369.i, label %if.end.i360.i.ath5k_txq_setup.exit371.i_crit_edge

if.end.i360.i.ath5k_txq_setup.exit371.i_crit_edge: ; preds = %if.end.i360.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_txq_setup.exit371.i

if.then3.i369.i:                                  ; preds = %if.end.i360.i
  call void @__sanitizer_cov_trace_pc() #16
  %284 = ptrtoint ptr %arrayidx.i357.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %call.i354.i, ptr %arrayidx.i357.i, align 4
  %link.i361.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i354.i, i32 1
  %285 = ptrtoint ptr %link.i361.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr null, ptr %link.i361.i, align 4
  %q.i362.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i354.i, i32 2
  %286 = ptrtoint ptr %q.i362.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store volatile ptr %q.i362.i, ptr %q.i362.i, align 4
  %prev.i.i363.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i354.i, i32 2, i32 1
  %287 = ptrtoint ptr %prev.i.i363.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %q.i362.i, ptr %prev.i.i363.i, align 4
  %lock.i364.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i354.i, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock.i364.i, ptr noundef nonnull @.str.139, ptr noundef nonnull @ath5k_txq_setup.__key, i16 noundef signext 3) #14
  %288 = ptrtoint ptr %setup.i358.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 1, ptr %setup.i358.i, align 4
  %txq_len.i365.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i354.i, i32 5
  %289 = ptrtoint ptr %txq_len.i365.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 0, ptr %txq_len.i365.i, align 4
  %txq_max.i366.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i354.i, i32 6
  %290 = ptrtoint ptr %txq_max.i366.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 50, ptr %txq_max.i366.i, align 4
  %txq_poll_mark.i367.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i354.i, i32 7
  %291 = ptrtoint ptr %txq_poll_mark.i367.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 0, ptr %txq_poll_mark.i367.i, align 4
  %txq_stuck.i368.i = getelementptr %struct.ath5k_hw, ptr %54, i32 0, i32 40, i32 %call.i354.i, i32 8
  %292 = ptrtoint ptr %txq_stuck.i368.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 0, ptr %txq_stuck.i368.i, align 4
  br label %ath5k_txq_setup.exit371.i

ath5k_txq_setup.exit371.i:                        ; preds = %if.then3.i369.i, %if.end.i360.i.ath5k_txq_setup.exit371.i_crit_edge, %if.then.i356.i
  %retval.0.i370.i = phi ptr [ %281, %if.then.i356.i ], [ %arrayidx.i357.i, %if.then3.i369.i ], [ %arrayidx.i357.i, %if.end.i360.i.ath5k_txq_setup.exit371.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %qi.i347.i) #14
  %cmp.i372.i = icmp ugt ptr %retval.0.i370.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i372.i, label %do.body95.i, label %ath5k_txq_setup.exit371.i.if.end105.i_crit_edge

ath5k_txq_setup.exit371.i.if.end105.i_crit_edge:  ; preds = %ath5k_txq_setup.exit371.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105.i

do.body95.i:                                      ; preds = %ath5k_txq_setup.exit371.i
  %call96.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %tobool97.not.i = icmp eq i32 %call96.i, 0
  br i1 %tobool97.not.i, label %do.body95.i.do.end101.i_crit_edge, label %if.then98.i

do.body95.i.do.end101.i_crit_edge:                ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end101.i

if.then98.i:                                      ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %54, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.125) #14
  br label %do.end101.i

do.end101.i:                                      ; preds = %if.then98.i, %do.body95.i.do.end101.i_crit_edge
  %293 = ptrtoint ptr %retval.0.i370.i to i32
  br label %err_queues.i

if.end105.i:                                      ; preds = %ath5k_txq_setup.exit371.i.if.end105.i_crit_edge, %if.end79.i.if.end105.i_crit_edge
  %.sink.i = phi i16 [ 4, %if.end79.i.if.end105.i_crit_edge ], [ 1, %ath5k_txq_setup.exit371.i.if.end105.i_crit_edge ]
  %queues104.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 11
  %294 = ptrtoint ptr %queues104.i to i32
  call void @__asan_store2_noabort(i32 %294)
  store i16 %.sink.i, ptr %queues104.i, align 4
  %rxtq.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 35
  call void @tasklet_setup(ptr noundef %rxtq.i, ptr noundef nonnull @ath5k_tasklet_rx) #14
  %txtq.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 41
  call void @tasklet_setup(ptr noundef %txtq.i, ptr noundef nonnull @ath5k_tasklet_tx) #14
  %beacontq.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 45
  call void @tasklet_setup(ptr noundef %beacontq.i, ptr noundef nonnull @ath5k_tasklet_beacon) #14
  %ani_tasklet.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 61
  call void @tasklet_setup(ptr noundef %ani_tasklet.i, ptr noundef nonnull @ath5k_tasklet_ani) #14
  %reset_work.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 30
  call void @__init_work(ptr noundef %reset_work.i, i32 noundef 0) #14
  %295 = ptrtoint ptr %reset_work.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 -64, ptr %reset_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 30, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.126, ptr noundef nonnull @ath5k_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry110.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 30, i32 1
  %296 = ptrtoint ptr %entry110.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store volatile ptr %entry110.i, ptr %entry110.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 30, i32 1, i32 1
  %297 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %entry110.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 30, i32 2
  %298 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr @ath5k_reset_work, ptr %func.i, align 4
  %calib_work.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 31
  call void @__init_work(ptr noundef %calib_work.i, i32 noundef 0) #14
  %299 = ptrtoint ptr %calib_work.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 -64, ptr %calib_work.i, align 8
  %lockdep_map120.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 31, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map120.i, ptr noundef nonnull @.str.128, ptr noundef nonnull @ath5k_init.__key.127, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry122.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 31, i32 1
  %300 = ptrtoint ptr %entry122.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store volatile ptr %entry122.i, ptr %entry122.i, align 4
  %prev.i373.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 31, i32 1, i32 1
  %301 = ptrtoint ptr %prev.i373.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %entry122.i, ptr %prev.i373.i, align 4
  %func124.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 31, i32 2
  %302 = ptrtoint ptr %func124.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr @ath5k_calibrate_work, ptr %func124.i, align 4
  %tx_complete_work.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 62
  call void @__init_work(ptr noundef %tx_complete_work.i, i32 noundef 0) #14
  %303 = ptrtoint ptr %tx_complete_work.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 -64, ptr %tx_complete_work.i, align 8
  %lockdep_map136.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 62, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map136.i, ptr noundef nonnull @.str.130, ptr noundef nonnull @ath5k_init.__key.129, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry139.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 62, i32 0, i32 1
  %304 = ptrtoint ptr %entry139.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store volatile ptr %entry139.i, ptr %entry139.i, align 4
  %prev.i374.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 62, i32 0, i32 1, i32 1
  %305 = ptrtoint ptr %prev.i374.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %entry139.i, ptr %prev.i374.i, align 4
  %func142.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 62, i32 0, i32 2
  %306 = ptrtoint ptr %func142.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr @ath5k_tx_complete_poll_work, ptr %func142.i, align 4
  %timer.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 62, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.132, ptr noundef nonnull @ath5k_init.__key.131) #14
  %bus_ops.i206 = getelementptr inbounds %struct.ath_common, ptr %54, i32 0, i32 25
  %307 = ptrtoint ptr %bus_ops.i206 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %bus_ops.i206, align 4
  %eeprom_read_mac.i = getelementptr inbounds %struct.ath_bus_ops, ptr %308, i32 0, i32 3
  %309 = ptrtoint ptr %eeprom_read_mac.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %eeprom_read_mac.i, align 4
  %call152.i = call i32 %310(ptr noundef %54, ptr noundef nonnull %mac.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152.i)
  %tobool153.not.i = icmp eq i32 %call152.i, 0
  br i1 %tobool153.not.i, label %if.end162.i, label %do.body155.i

do.body155.i:                                     ; preds = %if.end105.i
  %call156.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156.i)
  %tobool157.not.i = icmp eq i32 %call156.i, 0
  br i1 %tobool157.not.i, label %do.body155.i.err_queues.i_crit_edge, label %if.then158.i

do.body155.i.err_queues.i_crit_edge:              ; preds = %do.body155.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_queues.i

if.then158.i:                                     ; preds = %do.body155.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %54, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.133) #14
  br label %err_queues.i

if.end162.i:                                      ; preds = %if.end105.i
  %311 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %wiphy.i, align 8
  %perm_addr.i.i = getelementptr inbounds %struct.wiphy, ptr %312, i32 0, i32 1
  %313 = call ptr @memcpy(ptr %perm_addr.i.i, ptr %mac.i, i32 6)
  call void @ath5k_update_bssid_mask_and_opmode(ptr noundef %54, ptr noundef null) #14
  %ee_regdomain.i = getelementptr inbounds %struct.ath5k_hw, ptr %54, i32 0, i32 86, i32 2, i32 2
  %314 = ptrtoint ptr %ee_regdomain.i to i32
  call void @__asan_load2_noabort(i32 %314)
  %315 = load i16, ptr %ee_regdomain.i, align 4
  %current_rd.i = getelementptr inbounds %struct.ath_common, ptr %54, i32 0, i32 22, i32 4
  %316 = ptrtoint ptr %current_rd.i to i32
  call void @__asan_store2_noabort(i32 %316)
  store i16 %315, ptr %current_rd.i, align 4
  %317 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %wiphy.i, align 8
  %call165.i = call i32 @ath_regd_init(ptr noundef %regulatory.i.i, ptr noundef %318, ptr noundef nonnull @ath5k_reg_notifier) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165.i)
  %tobool166.not.i = icmp eq i32 %call165.i, 0
  br i1 %tobool166.not.i, label %if.end175.i, label %do.body168.i

do.body168.i:                                     ; preds = %if.end162.i
  %call169.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169.i)
  %tobool170.not.i = icmp eq i32 %call169.i, 0
  br i1 %tobool170.not.i, label %do.body168.i.err_queues.i_crit_edge, label %if.then171.i

do.body168.i.err_queues.i_crit_edge:              ; preds = %do.body168.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_queues.i

if.then171.i:                                     ; preds = %do.body168.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %54, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.134) #14
  br label %err_queues.i

if.end175.i:                                      ; preds = %if.end162.i
  %call176.i = call i32 @ieee80211_register_hw(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176.i)
  %tobool177.not.i = icmp eq i32 %call176.i, 0
  br i1 %tobool177.not.i, label %if.end186.i, label %do.body179.i

do.body179.i:                                     ; preds = %if.end175.i
  %call180.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180.i)
  %tobool181.not.i = icmp eq i32 %call180.i, 0
  br i1 %tobool181.not.i, label %do.body179.i.err_queues.i_crit_edge, label %if.then182.i

do.body179.i.err_queues.i_crit_edge:              ; preds = %do.body179.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_queues.i

if.then182.i:                                     ; preds = %do.body179.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %54, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.135) #14
  br label %err_queues.i

if.end186.i:                                      ; preds = %if.end175.i
  %call187.i = call zeroext i1 @ath_is_world_regd(ptr noundef %regulatory.i.i) #14
  br i1 %call187.i, label %if.end186.i.ath5k_init.exit.thread212_crit_edge, label %if.then188.i

if.end186.i.ath5k_init.exit.thread212_crit_edge:  ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_init.exit.thread212

if.then188.i:                                     ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #16
  %319 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %wiphy.i, align 8
  %call191.i = call i32 @regulatory_hint(ptr noundef %320, ptr noundef %regulatory.i.i) #14
  br label %ath5k_init.exit.thread212

ath5k_init.exit.thread212:                        ; preds = %if.then188.i, %if.end186.i.ath5k_init.exit.thread212_crit_edge
  %call193.i = call i32 @ath5k_init_leds(ptr noundef %54) #14
  %call194.i = call i32 @ath5k_sysfs_register(ptr noundef %54) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #14
  br label %if.end52

err_queues.i:                                     ; preds = %if.then182.i, %do.body179.i.err_queues.i_crit_edge, %if.then171.i, %do.body168.i.err_queues.i_crit_edge, %if.then158.i, %do.body155.i.err_queues.i_crit_edge, %do.end101.i, %do.end89.i, %do.end77.i, %do.end65.i, %do.end53.i
  %ret.0.i = phi i32 [ %251, %do.end53.i ], [ %271, %do.end65.i ], [ %272, %do.end77.i ], [ %273, %do.end89.i ], [ %call152.i, %if.then158.i ], [ %call152.i, %do.body155.i.err_queues.i_crit_edge ], [ %call165.i, %if.then171.i ], [ %call165.i, %do.body168.i.err_queues.i_crit_edge ], [ %call176.i, %if.then182.i ], [ %call176.i, %do.body179.i.err_queues.i_crit_edge ], [ %293, %do.end101.i ]
  call fastcc void @ath5k_txq_release(ptr noundef %54) #14
  br label %ath5k_init.exit

ath5k_init.exit.thread:                           ; preds = %if.then12.i, %do.body9.i.ath5k_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #14
  br label %err_ah

ath5k_init.exit.thread216:                        ; preds = %if.then22.i, %do.body19.i.ath5k_init.exit.thread216_crit_edge
  call fastcc void @ath5k_desc_free(ptr noundef %54) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #14
  br label %err_ah

ath5k_init.exit:                                  ; preds = %err_queues.i, %do.end37.i
  %ret.1.i = phi i32 [ %229, %do.end37.i ], [ %ret.0.i, %err_queues.i ]
  %321 = ptrtoint ptr %bhalq.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %bhalq.i, align 4
  call void @ath5k_hw_release_tx_queue(ptr noundef %54, i32 noundef %322) #14
  call fastcc void @ath5k_desc_free(ptr noundef %54) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool50.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool50.not, label %ath5k_init.exit.if.end52_crit_edge, label %ath5k_init.exit.err_ah_crit_edge

ath5k_init.exit.err_ah_crit_edge:                 ; preds = %ath5k_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_ah

ath5k_init.exit.if.end52_crit_edge:               ; preds = %ath5k_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.end52:                                         ; preds = %ath5k_init.exit.if.end52_crit_edge, %ath5k_init.exit.thread212
  %ah_mac_srev = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 70
  %323 = ptrtoint ptr %ah_mac_srev to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %ah_mac_srev, align 4
  %and.i207 = and i32 %324, 240
  %and9.i = and i32 %324, 255
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end52
  %i.027.i = phi i32 [ 0, %if.end52 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %name.026.i = phi ptr [ @.str, %if.end52 ], [ %name.2.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i208 = getelementptr [34 x %struct.ath5k_srev_name], ptr @srev_names, i32 0, i32 %i.027.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %i.027.i)
  %cmp1.not.i = icmp ult i32 %i.027.i, 19
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %sr_val.i = getelementptr [34 x %struct.ath5k_srev_name], ptr @srev_names, i32 0, i32 %i.027.i, i32 2
  %325 = ptrtoint ptr %sr_val.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %sr_val.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i207, i32 %326)
  %cmp3.i = icmp eq i32 %and.i207, %326
  br i1 %cmp3.i, label %if.then5.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %327 = ptrtoint ptr %arrayidx.i208 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %arrayidx.i208, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %name.1.i = phi ptr [ %328, %if.then5.i ], [ %name.026.i, %if.end.i.if.end7.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and9.i, i32 %326)
  %cmp12.i = icmp eq i32 %and9.i, %326
  br i1 %cmp12.i, label %if.then14.i, label %if.end7.i.for.inc.i_crit_edge

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then14.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %329 = ptrtoint ptr %arrayidx.i208 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %arrayidx.i208, align 4
  br label %ath5k_chip_name.exit

for.inc.i:                                        ; preds = %if.end7.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %name.2.i = phi ptr [ %name.026.i, %for.body.i.for.inc.i_crit_edge ], [ %name.1.i, %if.end7.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 34
  br i1 %exitcond.not.i, label %for.inc.i.ath5k_chip_name.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.ath5k_chip_name.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_chip_name.exit

ath5k_chip_name.exit:                             ; preds = %for.inc.i.ath5k_chip_name.exit_crit_edge, %if.then14.i
  %name.3.i = phi ptr [ %330, %if.then14.i ], [ %name.2.i, %for.inc.i.ath5k_chip_name.exit_crit_edge ]
  %ah_phy_revision = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 72
  %331 = ptrtoint ptr %ah_phy_revision to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %ah_phy_revision, align 2
  %conv56 = zext i16 %332 to i32
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef %name.3.i, i32 noundef %324, i32 noundef %conv56)
  %ah_single_chip = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 67
  %333 = ptrtoint ptr %ah_single_chip to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %ah_single_chip, align 1, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %334)
  %tobool57.not = icmp eq i8 %334, 0
  br i1 %tobool57.not, label %if.then58, label %ath5k_chip_name.exit.if.end108_crit_edge

ath5k_chip_name.exit.if.end108_crit_edge:         ; preds = %ath5k_chip_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end108

if.then58:                                        ; preds = %ath5k_chip_name.exit
  %ah_radio_5ghz_revision = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 73
  %335 = ptrtoint ptr %ah_radio_5ghz_revision to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %ah_radio_5ghz_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %336)
  %tobool60.not = icmp eq i16 %336, 0
  br i1 %tobool60.not, label %if.then58.if.end108_crit_edge, label %land.lhs.true

if.then58.if.end108_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end108

land.lhs.true:                                    ; preds = %if.then58
  %ah_radio_2ghz_revision = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 74
  %337 = ptrtoint ptr %ah_radio_2ghz_revision to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %ah_radio_2ghz_revision, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %338)
  %tobool61.not = icmp eq i16 %338, 0
  br i1 %tobool61.not, label %if.then62, label %land.lhs.true93

if.then62:                                        ; preds = %land.lhs.true
  %339 = ptrtoint ptr %ah_capabilities to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load volatile i32, ptr %ah_capabilities, align 4
  %and1.i = and i32 %340, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool66.not = icmp eq i32 %and1.i, 0
  br i1 %tobool66.not, label %if.then67, label %if.else

if.then67:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  %call69 = call ptr @ath5k_chip_name(i32 noundef 1, i16 noundef zeroext %336)
  %conv71 = zext i16 %336 to i32
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.35, ptr noundef %call69, i32 noundef %conv71)
  br label %if.end108

if.else:                                          ; preds = %if.then62
  %341 = ptrtoint ptr %ah_capabilities to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load volatile i32, ptr %ah_capabilities, align 4
  %343 = and i32 %342, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %343)
  %tobool76.not = icmp eq i32 %343, 0
  %call79 = call ptr @ath5k_chip_name(i32 noundef 1, i16 noundef zeroext %336)
  %conv81 = zext i16 %336 to i32
  br i1 %tobool76.not, label %if.then77, label %if.else82

if.then77:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.36, ptr noundef %call79, i32 noundef %conv81)
  br label %if.end108

if.else82:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.37, ptr noundef %call79, i32 noundef %conv81)
  br label %if.end108

land.lhs.true93:                                  ; preds = %land.lhs.true
  %344 = ptrtoint ptr %ah_radio_2ghz_revision to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %ah_radio_2ghz_revision, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %345)
  %tobool96.not = icmp eq i16 %345, 0
  br i1 %tobool96.not, label %land.lhs.true93.if.end108_crit_edge, label %if.then97

land.lhs.true93.if.end108_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end108

if.then97:                                        ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #16
  %call99 = call ptr @ath5k_chip_name(i32 noundef 1, i16 noundef zeroext %336)
  %conv101 = zext i16 %336 to i32
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.36, ptr noundef %call99, i32 noundef %conv101)
  %346 = ptrtoint ptr %ah_radio_2ghz_revision to i32
  call void @__asan_load2_noabort(i32 %346)
  %347 = load i16, ptr %ah_radio_2ghz_revision, align 2
  %call103 = call ptr @ath5k_chip_name(i32 noundef 1, i16 noundef zeroext %347)
  %conv105 = zext i16 %347 to i32
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.35, ptr noundef %call103, i32 noundef %conv105)
  br label %if.end108

if.end108:                                        ; preds = %if.then97, %land.lhs.true93.if.end108_crit_edge, %if.else82, %if.then77, %if.then67, %if.then58.if.end108_crit_edge, %ath5k_chip_name.exit.if.end108_crit_edge
  call void @ath5k_debug_init_device(ptr noundef %ah) #14
  %348 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %status, align 4
  %and.i = and i32 %349, -2
  store i32 %and.i, ptr %status, align 4
  br label %cleanup

err_ah:                                           ; preds = %ath5k_init.exit.err_ah_crit_edge, %ath5k_init.exit.thread216, %ath5k_init.exit.thread
  %retval.0.i211 = phi i32 [ -12, %ath5k_init.exit.thread ], [ %ret.1.i, %ath5k_init.exit.err_ah_crit_edge ], [ %call.i.i, %ath5k_init.exit.thread216 ]
  call void @ath5k_hw_deinit(ptr noundef %ah) #14
  br label %err_irq

err_irq:                                          ; preds = %err_ah, %if.end33.err_irq_crit_edge
  %ret.0 = phi i32 [ %call42, %if.end33.err_irq_crit_edge ], [ %retval.0.i211, %err_ah ]
  %350 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %irq, align 4
  %call112 = call ptr @free_irq(i32 noundef %351, ptr noundef %ah) #14
  br label %cleanup

cleanup:                                          ; preds = %err_irq, %if.end108, %if.then30, %do.body27.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end108 ], [ %call.i, %if.then30 ], [ %call.i, %do.body27.cleanup_crit_edge ], [ %ret.0, %err_irq ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csz) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath5k_intr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #14
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !401
  %status1 = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 18
  %1 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %status1, align 4
  %and1.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.cleanup_crit_edge, !prof !399

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  %bus_ops.i = getelementptr inbounds %struct.ath_common, ptr %dev_id, i32 0, i32 25
  %3 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus_ops.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %lor.rhs.do.body.preheader_crit_edge, label %land.rhs

lor.rhs.do.body.preheader_crit_edge:              ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.preheader

land.rhs:                                         ; preds = %lor.rhs
  %call3 = tail call zeroext i1 @ath5k_hw_is_intr_pending(ptr noundef %dev_id) #14
  br i1 %call3, label %land.rhs.do.body.preheader_crit_edge, label %land.rhs.cleanup_crit_edge, !prof !399

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs.do.body.preheader_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.preheader

do.body.preheader:                                ; preds = %land.rhs.do.body.preheader_crit_edge, %lor.rhs.do.body.preheader_crit_edge
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 13
  %imask = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 23
  %hw = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 7
  %reset_work = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 30
  %rxorn_intr = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 59, i32 23
  %ah_mac_srev = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 70
  %state.i = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 45, i32 1
  %beacontq = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 45
  %rxeol_intr = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 59, i32 24
  %rx_pending.i = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 25
  %state.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 35, i32 1
  %rxtq.i = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 35
  %tx_pending.i = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 26
  %state.i.i188 = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 41, i32 1
  %txtq.i = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 41
  %mib_intr = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 59, i32 22
  %state.i192 = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 43, i32 2, i32 1
  %toggleq = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 43, i32 2
  br label %do.body

do.body:                                          ; preds = %land.rhs126.do.body_crit_edge, %do.body.preheader
  %counter.0 = phi i32 [ %dec, %land.rhs126.do.body_crit_edge ], [ 1000, %do.body.preheader ]
  %call7 = call i32 @ath5k_hw_get_isr(ptr noundef %dev_id, ptr noundef nonnull %status) #14
  %7 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body.do.end_crit_edge, label %land.rhs10

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.rhs10:                                       ; preds = %do.body
  %call11 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.rhs10.do.end_crit_edge, label %if.then20, !prof !399

land.rhs10.do.end_crit_edge:                      ; preds = %land.rhs10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then20:                                        ; preds = %land.rhs10
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  %11 = ptrtoint ptr %imask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %imask, align 4
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %dev_id, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.108, ptr noundef nonnull @__func__.ath5k_intr, i32 noundef 2333, i32 noundef %10, i32 noundef %12)
  br label %do.end

do.end:                                           ; preds = %if.then20, %land.rhs10.do.end_crit_edge, %do.body.do.end_crit_edge
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %and22 = and i32 %14, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else, label %do.body31, !prof !399

do.body31:                                        ; preds = %do.end
  %15 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug, align 4
  %and34 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body31.do.end49_crit_edge, label %land.rhs36

do.body31.do.end49_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end49

land.rhs36:                                       ; preds = %do.body31
  %call37 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.rhs36.do.end49_crit_edge, label %if.then46, !prof !399

land.rhs36.do.end49_crit_edge:                    ; preds = %land.rhs36
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end49

if.then46:                                        ; preds = %land.rhs36
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %dev_id, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.109, ptr noundef nonnull @__func__.ath5k_intr, i32 noundef 2345)
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %land.rhs36.do.end49_crit_edge, %do.body31.do.end49_crit_edge
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  call void @ieee80211_queue_work(ptr noundef %18, ptr noundef %reset_work) #14
  br label %if.end119

if.else:                                          ; preds = %do.end
  %and50 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.else84, label %if.then58, !prof !399

if.then58:                                        ; preds = %if.else
  %19 = ptrtoint ptr %rxorn_intr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rxorn_intr, align 8
  %inc = add i32 %20, 1
  store i32 %inc, ptr %rxorn_intr, align 8
  %21 = ptrtoint ptr %ah_mac_srev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ah_mac_srev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %22)
  %cmp59 = icmp ult i32 %22, 80
  br i1 %cmp59, label %do.body61, label %if.else82

do.body61:                                        ; preds = %if.then58
  %23 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug, align 4
  %and64 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body61.do.end79_crit_edge, label %land.rhs66

do.body61.do.end79_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end79

land.rhs66:                                       ; preds = %do.body61
  %call67 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.rhs66.do.end79_crit_edge, label %if.then76, !prof !399

land.rhs66.do.end79_crit_edge:                    ; preds = %land.rhs66
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end79

if.then76:                                        ; preds = %land.rhs66
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %dev_id, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.110, ptr noundef nonnull @__func__.ath5k_intr, i32 noundef 2367)
  br label %do.end79

do.end79:                                         ; preds = %if.then76, %land.rhs66.do.end79_crit_edge, %do.body61.do.end79_crit_edge
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  call void @ieee80211_queue_work(ptr noundef %26, ptr noundef %reset_work) #14
  br label %if.end119

if.else82:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @ath5k_schedule_rx(ptr noundef %dev_id)
  br label %if.end119

if.else84:                                        ; preds = %if.else
  %and85 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.else84.if.end88_crit_edge, label %if.then87

if.else84.if.end88_crit_edge:                     ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

if.then87:                                        ; preds = %if.else84
  %call.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then87.if.end88_crit_edge

if.then87.if.end88_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

if.then.i:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #16
  call void @__tasklet_hi_schedule(ptr noundef %beacontq) #14
  br label %if.end88

if.end88:                                         ; preds = %if.then.i, %if.then87.if.end88_crit_edge, %if.else84.if.end88_crit_edge
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status, align 4
  %and89 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end88.if.end94_crit_edge, label %if.then91

if.end88.if.end94_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end94

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %rxeol_intr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rxeol_intr, align 4
  %inc93 = add i32 %30, 1
  store i32 %inc93, ptr %rxeol_intr, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.end88.if.end94_crit_edge
  %and95 = and i32 %28, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end94.if.end99_crit_edge, label %if.then97

if.end94.if.end99_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end99

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #16
  %call98 = call i32 @ath5k_hw_update_tx_triglevel(ptr noundef %dev_id, i1 noundef zeroext true) #14
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end94.if.end99_crit_edge
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status, align 4
  %and100 = and i32 %32, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end99.if.end103_crit_edge, label %if.then102

if.end99.if.end103_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end103

if.then102:                                       ; preds = %if.end99
  %33 = ptrtoint ptr %rx_pending.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %rx_pending.i, align 4
  %call.i.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then102.if.end103_crit_edge

if.then102.if.end103_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end103

if.then.i.i:                                      ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #16
  call void @__tasklet_schedule(ptr noundef %rxtq.i) #14
  br label %if.end103

if.end103:                                        ; preds = %if.then.i.i, %if.then102.if.end103_crit_edge, %if.end99.if.end103_crit_edge
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status, align 4
  %and104 = and i32 %35, 1472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end103.if.end107_crit_edge, label %if.then106

if.end103.if.end107_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.then106:                                       ; preds = %if.end103
  %36 = ptrtoint ptr %tx_pending.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %tx_pending.i, align 1
  %call.i.i189 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i188) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i189)
  %tobool.not.i.i190 = icmp eq i32 %call.i.i189, 0
  br i1 %tobool.not.i.i190, label %if.then.i.i191, label %if.then106.if.end107_crit_edge

if.then106.if.end107_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.then.i.i191:                                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #16
  call void @__tasklet_schedule(ptr noundef %txtq.i) #14
  br label %if.end107

if.end107:                                        ; preds = %if.then.i.i191, %if.then106.if.end107_crit_edge, %if.end103.if.end107_crit_edge
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status, align 4
  %and108 = and i32 %38, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end107.if.end113_crit_edge, label %if.then110

if.end107.if.end113_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %mib_intr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mib_intr, align 4
  %inc112 = add i32 %40, 1
  store i32 %inc112, ptr %mib_intr, align 4
  call void @ath5k_hw_update_mib_counters(ptr noundef %dev_id) #14
  call void @ath5k_ani_mib_intr(ptr noundef %dev_id) #14
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %if.end107.if.end113_crit_edge
  %41 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %status, align 4
  %and114 = and i32 %42, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end113.if.end119_crit_edge, label %if.then116

if.end113.if.end119_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

if.then116:                                       ; preds = %if.end113
  %call.i193 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i192) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %tobool.not.i194 = icmp eq i32 %call.i193, 0
  br i1 %tobool.not.i194, label %if.then.i195, label %if.then116.if.end119_crit_edge

if.then116.if.end119_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

if.then.i195:                                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #16
  call void @__tasklet_schedule(ptr noundef %toggleq) #14
  br label %if.end119

if.end119:                                        ; preds = %if.then.i195, %if.then116.if.end119_crit_edge, %if.end113.if.end119_crit_edge, %if.else82, %do.end79, %do.end49
  %43 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus_ops.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp121 = icmp eq i32 %46, 1
  br i1 %cmp121, label %if.end119.do.end129_crit_edge, label %do.cond124

if.end119.do.end129_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end129

do.cond124:                                       ; preds = %if.end119
  %call125 = call zeroext i1 @ath5k_hw_is_intr_pending(ptr noundef %dev_id) #14
  br i1 %call125, label %land.rhs126, label %do.cond124.do.end129_crit_edge

do.cond124.do.end129_crit_edge:                   ; preds = %do.cond124
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end129

land.rhs126:                                      ; preds = %do.cond124
  %dec = add nsw i32 %counter.0, -1
  %cmp127.not = icmp eq i32 %dec, 0
  br i1 %cmp127.not, label %land.rhs126.do.end129_crit_edge, label %land.rhs126.do.body_crit_edge

land.rhs126.do.body_crit_edge:                    ; preds = %land.rhs126
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.rhs126.do.end129_crit_edge:                  ; preds = %land.rhs126
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end129

do.end129:                                        ; preds = %land.rhs126.do.end129_crit_edge, %do.cond124.do.end129_crit_edge, %if.end119.do.end129_crit_edge
  %counter.1 = phi i32 [ %counter.0, %if.end119.do.end129_crit_edge ], [ 0, %land.rhs126.do.end129_crit_edge ], [ %counter.0, %do.cond124.do.end129_crit_edge ]
  %47 = ptrtoint ptr %rx_pending.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rx_pending.i, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool130.not = icmp eq i8 %48, 0
  br i1 %tobool130.not, label %lor.lhs.false, label %do.end129.if.then132_crit_edge

do.end129.if.then132_crit_edge:                   ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then132

lor.lhs.false:                                    ; preds = %do.end129
  %49 = ptrtoint ptr %tx_pending.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %tx_pending.i, align 1, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool131.not = icmp eq i8 %50, 0
  br i1 %tobool131.not, label %lor.lhs.false.if.end133_crit_edge, label %lor.lhs.false.if.then132_crit_edge

lor.lhs.false.if.then132_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then132

lor.lhs.false.if.end133_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end133

if.then132:                                       ; preds = %lor.lhs.false.if.then132_crit_edge, %do.end129.if.then132_crit_edge
  %51 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %status1, align 4
  %53 = and i32 %52, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i197 = icmp eq i32 %53, 0
  br i1 %tobool.not.i197, label %do.body1.i, label %if.then132.if.end133_crit_edge

if.then132.if.end133_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end133

do.body1.i:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #16
  %irqlock.i = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 24
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i) #14
  %54 = ptrtoint ptr %imask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %imask, align 4
  %56 = ptrtoint ptr %rx_pending.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %rx_pending.i, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool7.not.i = icmp eq i8 %57, 0
  %and.i = and i32 %55, -64
  %spec.select.i = select i1 %tobool7.not.i, i32 %55, i32 %and.i
  %58 = ptrtoint ptr %tx_pending.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %tx_pending.i, align 1, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool10.not.i = icmp eq i8 %59, 0
  %and12.i = and i32 %spec.select.i, -4033
  %imask.1.i = select i1 %tobool10.not.i, i32 %spec.select.i, i32 %and12.i
  %call14.i = call i32 @ath5k_hw_set_imr(ptr noundef %dev_id, i32 noundef %imask.1.i) #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i, i32 noundef %call3.i) #14
  br label %if.end133

if.end133:                                        ; preds = %do.body1.i, %if.then132.if.end133_crit_edge, %lor.lhs.false.if.end133_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %counter.1)
  %tobool134.not = icmp eq i32 %counter.1, 0
  br i1 %tobool134.not, label %do.body144, label %if.end133.if.end151_crit_edge, !prof !400

if.end133.if.end151_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end151

do.body144:                                       ; preds = %if.end133
  %call145 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %do.body144.if.end151_crit_edge, label %if.then147

do.body144.if.end151_crit_edge:                   ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end151

if.then147:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %dev_id, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.111)
  br label %if.end151

if.end151:                                        ; preds = %if.then147, %do.body144.if.end151_crit_edge, %if.end133.if.end151_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %ah_cal_next_ani.i = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 114
  %61 = ptrtoint ptr %ah_cal_next_ani.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ah_cal_next_ani.i, align 4
  %sub.i = sub i32 %60, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end151.if.else.i_crit_edge

if.end151.if.else.i_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end151
  %ah_cal_mask.i = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 115
  %63 = ptrtoint ptr %ah_cal_mask.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ah_cal_mask.i, align 8
  %65 = and i8 %64, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %if.then.i203, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.then.i203:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %67, 100
  %68 = ptrtoint ptr %ah_cal_next_ani.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add.i, ptr %ah_cal_next_ani.i, align 4
  %state.i.i200 = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 61, i32 1
  %call.i.i201 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i200) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i201)
  %tobool.not.i.i202 = icmp eq i32 %call.i.i201, 0
  br i1 %tobool.not.i.i202, label %if.then.i.i204, label %if.then.i203.cleanup_crit_edge

if.then.i203.cleanup_crit_edge:                   ; preds = %if.then.i203
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i.i204:                                   ; preds = %if.then.i203
  call void @__sanitizer_cov_trace_pc() #16
  %ani_tasklet.i = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 61
  call void @__tasklet_schedule(ptr noundef %ani_tasklet.i) #14
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end151.if.else.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %ah_cal_next_short.i = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 113
  %70 = ptrtoint ptr %ah_cal_next_short.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ah_cal_next_short.i, align 8
  %sub7.i = sub i32 %69, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub7.i)
  %cmp8.i = icmp sgt i32 %sub7.i, -1
  br i1 %cmp8.i, label %land.lhs.true10.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true10.i:                                ; preds = %if.else.i
  %ah_cal_mask11.i = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 115
  %72 = ptrtoint ptr %ah_cal_mask11.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ah_cal_mask11.i, align 8
  %74 = and i8 %73, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %if.then20.i, label %land.lhs.true10.i.cleanup_crit_edge

land.lhs.true10.i.cleanup_crit_edge:              ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then20.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %add22.i = add i32 %76, 1000
  %77 = ptrtoint ptr %ah_cal_next_short.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add22.i, ptr %ah_cal_next_short.i, align 8
  %78 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw, align 4
  %calib_work.i = getelementptr inbounds %struct.ath5k_hw, ptr %dev_id, i32 0, i32 31
  call void @ieee80211_queue_work(ptr noundef %79, ptr noundef %calib_work.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then20.i, %land.lhs.true10.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then.i.i204, %if.then.i203.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then.i203.cleanup_crit_edge ], [ 1, %if.then.i.i204 ], [ 1, %if.else.i.cleanup_crit_edge ], [ 1, %land.lhs.true10.i.cleanup_crit_edge ], [ 1, %if.then20.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_debug_init_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_start(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %land.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.rhs:                                         ; preds = %entry
  %call1 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.rhs.do.end_crit_edge, label %if.then, !prof !399

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %opmode = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opmode, align 8
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.ath5k_start, i32 noundef 2776, i32 noundef %5)
  br label %do.end

do.end:                                           ; preds = %if.then, %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call fastcc void @ath5k_stop_locked(ptr noundef %1)
  %hw6 = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %hw6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw6, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chandef, align 4
  %curchan = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %curchan to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %curchan, align 4
  %imask = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 23
  %11 = ptrtoint ptr %imask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -2146954059, ptr %imask, align 4
  %call7 = tail call fastcc i32 @ath5k_reset(ptr noundef %1, ptr noundef null, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.done_crit_edge

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end10:                                         ; preds = %do.end
  %12 = load i8, ptr @ath5k_modparam_no_hw_rfkill_switch, align 1, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not = icmp eq i8 %12, 0
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end13_crit_edge

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ath5k_rfkill_hw_start(ptr noundef %1) #14
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %keymax = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %keymax to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %keymax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp48.not = icmp eq i32 %14, 0
  br i1 %cmp48.not, label %if.end13.for.end_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end13.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end13.for.body_crit_edge ]
  %conv = trunc i32 %i.049 to i16
  %call14 = tail call zeroext i1 @ath_hw_keyreset(ptr noundef %1, i16 noundef zeroext %conv) #14
  %inc = add nuw i32 %i.049, 1
  %15 = ptrtoint ptr %keymax to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %keymax, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end13.for.end_crit_edge
  %ah_ack_bitrate_high = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 79
  %17 = ptrtoint ptr %ah_ack_bitrate_high to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %ah_ack_bitrate_high, align 4
  %uglygep = getelementptr i8, ptr %1, i32 23748
  %18 = call ptr @memset(ptr %uglygep, i32 0, i32 16)
  br label %done

done:                                             ; preds = %for.end, %do.end.done_crit_edge
  %ret.0 = phi i32 [ %call7, %do.end.done_crit_edge ], [ 0, %for.end ]
  tail call void @mutex_unlock(ptr noundef %lock) #14
  %status = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status) #14
  %19 = ptrtoint ptr %hw6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw6, align 4
  %tx_complete_work = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 62
  tail call void @ieee80211_queue_delayed_work(ptr noundef %20, ptr noundef %tx_complete_work, i32 noundef 300) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath5k_stop_locked(ptr noundef %ah) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %land.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.rhs:                                         ; preds = %entry
  %call = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.rhs.do.end_crit_edge, label %if.then, !prof !399

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %status = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 18
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %3, 1
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.ath5k_stop_locked, i32 noundef 2736, i32 noundef %and1.i)
  br label %do.end

do.end:                                           ; preds = %if.then, %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %hw = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 7
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %5) #14
  %status5 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 18
  %6 = ptrtoint ptr %status5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status5, align 4
  %and1.i1 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1)
  %tobool8.not = icmp eq i32 %and1.i1, 0
  br i1 %tobool8.not, label %if.then9, label %do.end.if.end13_crit_edge

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ath5k_led_off(ptr noundef %ah) #14
  %call10 = tail call i32 @ath5k_hw_set_imr(ptr noundef %ah, i32 noundef 0) #14
  %irq = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 3
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %9) #14
  tail call void @ath5k_hw_set_rx_filter(ptr noundef %ah, i32 noundef 0) #14
  tail call void @ath5k_hw_stop_rx_pcu(ptr noundef %ah) #14
  tail call void @ath5k_debug_printrxbuffs(ptr noundef %ah) #14
  %call11 = tail call i32 @ath5k_hw_dma_stop(ptr noundef %ah) #14
  tail call fastcc void @ath5k_drain_tx_buffs(ptr noundef %ah)
  %call12 = tail call i32 @ath5k_hw_phy_disable(ptr noundef %ah) #14
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %do.end.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_rfkill_hw_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath_hw_keyreset(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_stop(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  tail call fastcc void @ath5k_stop_locked(ptr noundef %1)
  %status = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @ath5k_hw_on_hold(ptr noundef %1) #14
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then.if.end9_crit_edge, label %land.rhs

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

land.rhs:                                         ; preds = %if.then
  %call4 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.rhs.if.end9_crit_edge, label %if.then8, !prof !399

land.rhs.if.end9_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.ath5k_stop, i32 noundef 2881)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.rhs.if.end9_crit_edge, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #14
  %rx_pending.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %rx_pending.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %rx_pending.i, align 4
  %tx_pending.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 26
  %7 = ptrtoint ptr %tx_pending.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %tx_pending.i, align 1
  %rxtq.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 35
  tail call void @tasklet_kill(ptr noundef %rxtq.i) #14
  %txtq.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 41
  tail call void @tasklet_kill(ptr noundef %txtq.i) #14
  %beacontq.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 45
  tail call void @tasklet_kill(ptr noundef %beacontq.i) #14
  %ani_tasklet.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 61
  tail call void @tasklet_kill(ptr noundef %ani_tasklet.i) #14
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %status) #14
  %tx_complete_work = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 62
  %call13 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %tx_complete_work) #14
  %8 = load i8, ptr @ath5k_modparam_no_hw_rfkill_switch, align 1, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool14.not = icmp eq i8 %8, 0
  br i1 %tobool14.not, label %if.then15, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ath5k_rfkill_hw_stop(ptr noundef %1) #14
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end9.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_on_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_rfkill_hw_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_deinit_ah(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 7
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  tail call void @ieee80211_unregister_hw(ptr noundef %1) #14
  tail call fastcc void @ath5k_desc_free(ptr noundef %ah)
  tail call fastcc void @ath5k_txq_release(ptr noundef %ah)
  %bhalq = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 51
  %2 = ptrtoint ptr %bhalq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bhalq, align 4
  tail call void @ath5k_hw_release_tx_queue(ptr noundef %ah, i32 noundef %3) #14
  tail call void @ath5k_unregister_leds(ptr noundef %ah) #14
  tail call void @ath5k_sysfs_unregister(ptr noundef %ah) #14
  tail call void @ath5k_hw_deinit(ptr noundef %ah) #14
  %irq = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 3
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %5, ptr noundef %ah) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath5k_desc_free(ptr noundef %ah) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %txbuf = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 37
  %0 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.088 = load ptr, ptr %txbuf, align 4
  %cmp.not89 = icmp eq ptr %bf.088, %txbuf
  br i1 %cmp.not89, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 2
  %hw.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %ath5k_txbuf_free_skb.exit.for.body_crit_edge, %for.body.lr.ph
  %bf.090 = phi ptr [ %bf.088, %for.body.lr.ph ], [ %bf.0, %ath5k_txbuf_free_skb.exit.for.body_crit_edge ]
  %tobool.not.i = icmp eq ptr %bf.090, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !400

do.body4.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath5k/base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 965, 0\0A.popsection", ""() #14, !srcloc !403
  unreachable

do.end7.i:                                        ; preds = %for.body
  %skb.i = getelementptr inbounds %struct.ath5k_buf, ptr %bf.090, i32 0, i32 3
  %1 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skb.i, align 4
  %tobool8.not.i = icmp eq ptr %2, null
  br i1 %tobool8.not.i, label %do.end7.i.ath5k_txbuf_free_skb.exit_crit_edge, label %if.end10.i

do.end7.i.ath5k_txbuf_free_skb.exit_crit_edge:    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_txbuf_free_skb.exit

if.end10.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 8
  %skbaddr.i = getelementptr inbounds %struct.ath5k_buf, ptr %bf.090, i32 0, i32 4
  %5 = ptrtoint ptr %skbaddr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %skbaddr.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 6
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef 1, i32 noundef 0) #14
  %9 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw.i, align 4
  %11 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skb.i, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %10, ptr noundef %12) #14
  %13 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %skb.i, align 4
  %14 = ptrtoint ptr %skbaddr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %skbaddr.i, align 4
  %desc.i = getelementptr inbounds %struct.ath5k_buf, ptr %bf.090, i32 0, i32 1
  %15 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc.i, align 4
  %ds_data.i = getelementptr inbounds %struct.ath5k_desc, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ds_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %ds_data.i, align 4
  br label %ath5k_txbuf_free_skb.exit

ath5k_txbuf_free_skb.exit:                        ; preds = %if.end10.i, %do.end7.i.ath5k_txbuf_free_skb.exit_crit_edge
  %18 = ptrtoint ptr %bf.090 to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.0 = load ptr, ptr %bf.090, align 4
  %cmp.not = icmp eq ptr %bf.0, %txbuf
  br i1 %cmp.not, label %ath5k_txbuf_free_skb.exit.for.end_crit_edge, label %ath5k_txbuf_free_skb.exit.for.body_crit_edge

ath5k_txbuf_free_skb.exit.for.body_crit_edge:     ; preds = %ath5k_txbuf_free_skb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

ath5k_txbuf_free_skb.exit.for.end_crit_edge:      ; preds = %ath5k_txbuf_free_skb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %ath5k_txbuf_free_skb.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %rxbuf = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 32
  %19 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.191 = load ptr, ptr %rxbuf, align 4
  %cmp14.not92 = icmp eq ptr %bf.191, %rxbuf
  br i1 %cmp14.not92, label %for.end.for.end23_crit_edge, label %for.body16.lr.ph

for.end.for.end23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end23

for.body16.lr.ph:                                 ; preds = %for.end
  %dev.i71 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 2
  %rx_bufsize.i = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 12
  br label %for.body16

for.body16:                                       ; preds = %ath5k_rxbuf_free_skb.exit.for.body16_crit_edge, %for.body16.lr.ph
  %bf.193 = phi ptr [ %bf.191, %for.body16.lr.ph ], [ %bf.1, %ath5k_rxbuf_free_skb.exit.for.body16_crit_edge ]
  %tobool.not.i68 = icmp eq ptr %bf.193, null
  br i1 %tobool.not.i68, label %do.body4.i69, label %do.end9.i, !prof !400

do.body4.i69:                                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath5k/base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 981, 0\0A.popsection", ""() #14, !srcloc !404
  unreachable

do.end9.i:                                        ; preds = %for.body16
  %skb.i70 = getelementptr inbounds %struct.ath5k_buf, ptr %bf.193, i32 0, i32 3
  %20 = ptrtoint ptr %skb.i70 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb.i70, align 4
  %tobool10.not.i = icmp eq ptr %21, null
  br i1 %tobool10.not.i, label %do.end9.i.ath5k_rxbuf_free_skb.exit_crit_edge, label %if.end12.i

do.end9.i.ath5k_rxbuf_free_skb.exit_crit_edge:    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_rxbuf_free_skb.exit

if.end12.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %dev.i71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i71, align 8
  %skbaddr.i72 = getelementptr inbounds %struct.ath5k_buf, ptr %bf.193, i32 0, i32 4
  %24 = ptrtoint ptr %skbaddr.i72 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %skbaddr.i72, align 4
  %26 = ptrtoint ptr %rx_bufsize.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_bufsize.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef 2, i32 noundef 0) #14
  %28 = ptrtoint ptr %skb.i70 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb.i70, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %29, i32 noundef 1) #14
  %30 = ptrtoint ptr %skb.i70 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %skb.i70, align 4
  %31 = ptrtoint ptr %skbaddr.i72 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %skbaddr.i72, align 4
  %desc.i73 = getelementptr inbounds %struct.ath5k_buf, ptr %bf.193, i32 0, i32 1
  %32 = ptrtoint ptr %desc.i73 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc.i73, align 4
  %ds_data.i74 = getelementptr inbounds %struct.ath5k_desc, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %ds_data.i74 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %ds_data.i74, align 4
  br label %ath5k_rxbuf_free_skb.exit

ath5k_rxbuf_free_skb.exit:                        ; preds = %if.end12.i, %do.end9.i.ath5k_rxbuf_free_skb.exit_crit_edge
  %35 = ptrtoint ptr %bf.193 to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.1 = load ptr, ptr %bf.193, align 4
  %cmp14.not = icmp eq ptr %bf.1, %rxbuf
  br i1 %cmp14.not, label %ath5k_rxbuf_free_skb.exit.for.end23_crit_edge, label %ath5k_rxbuf_free_skb.exit.for.body16_crit_edge

ath5k_rxbuf_free_skb.exit.for.body16_crit_edge:   ; preds = %ath5k_rxbuf_free_skb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16

ath5k_rxbuf_free_skb.exit.for.end23_crit_edge:    ; preds = %ath5k_rxbuf_free_skb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end23

for.end23:                                        ; preds = %ath5k_rxbuf_free_skb.exit.for.end23_crit_edge, %for.end.for.end23_crit_edge
  %bcbuf = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 46
  %36 = ptrtoint ptr %bcbuf to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.294 = load ptr, ptr %bcbuf, align 4
  %cmp31.not95 = icmp eq ptr %bf.294, %bcbuf
  br i1 %cmp31.not95, label %for.end23.for.end40_crit_edge, label %for.body33.lr.ph

for.end23.for.end40_crit_edge:                    ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end40

for.body33.lr.ph:                                 ; preds = %for.end23
  %dev.i80 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 2
  %hw.i83 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 7
  br label %for.body33

for.body33:                                       ; preds = %ath5k_txbuf_free_skb.exit87.for.body33_crit_edge, %for.body33.lr.ph
  %bf.296 = phi ptr [ %bf.294, %for.body33.lr.ph ], [ %bf.2, %ath5k_txbuf_free_skb.exit87.for.body33_crit_edge ]
  %tobool.not.i75 = icmp eq ptr %bf.296, null
  br i1 %tobool.not.i75, label %do.body4.i76, label %do.end7.i79, !prof !400

do.body4.i76:                                     ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath5k/base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 965, 0\0A.popsection", ""() #14, !srcloc !403
  unreachable

do.end7.i79:                                      ; preds = %for.body33
  %skb.i77 = getelementptr inbounds %struct.ath5k_buf, ptr %bf.296, i32 0, i32 3
  %37 = ptrtoint ptr %skb.i77 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %skb.i77, align 4
  %tobool8.not.i78 = icmp eq ptr %38, null
  br i1 %tobool8.not.i78, label %do.end7.i79.ath5k_txbuf_free_skb.exit87_crit_edge, label %if.end10.i86

do.end7.i79.ath5k_txbuf_free_skb.exit87_crit_edge: ; preds = %do.end7.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_txbuf_free_skb.exit87

if.end10.i86:                                     ; preds = %do.end7.i79
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %dev.i80 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i80, align 8
  %skbaddr.i81 = getelementptr inbounds %struct.ath5k_buf, ptr %bf.296, i32 0, i32 4
  %41 = ptrtoint ptr %skbaddr.i81 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %skbaddr.i81, align 4
  %len.i82 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 6
  %43 = ptrtoint ptr %len.i82 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i82, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef 1, i32 noundef 0) #14
  %45 = ptrtoint ptr %hw.i83 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw.i83, align 4
  %47 = ptrtoint ptr %skb.i77 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %skb.i77, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %46, ptr noundef %48) #14
  %49 = ptrtoint ptr %skb.i77 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %skb.i77, align 4
  %50 = ptrtoint ptr %skbaddr.i81 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %skbaddr.i81, align 4
  %desc.i84 = getelementptr inbounds %struct.ath5k_buf, ptr %bf.296, i32 0, i32 1
  %51 = ptrtoint ptr %desc.i84 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %desc.i84, align 4
  %ds_data.i85 = getelementptr inbounds %struct.ath5k_desc, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %ds_data.i85 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %ds_data.i85, align 4
  br label %ath5k_txbuf_free_skb.exit87

ath5k_txbuf_free_skb.exit87:                      ; preds = %if.end10.i86, %do.end7.i79.ath5k_txbuf_free_skb.exit87_crit_edge
  %54 = ptrtoint ptr %bf.296 to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.2 = load ptr, ptr %bf.296, align 4
  %cmp31.not = icmp eq ptr %bf.2, %bcbuf
  br i1 %cmp31.not, label %ath5k_txbuf_free_skb.exit87.for.end40_crit_edge, label %ath5k_txbuf_free_skb.exit87.for.body33_crit_edge

ath5k_txbuf_free_skb.exit87.for.body33_crit_edge: ; preds = %ath5k_txbuf_free_skb.exit87
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body33

ath5k_txbuf_free_skb.exit87.for.end40_crit_edge:  ; preds = %ath5k_txbuf_free_skb.exit87
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end40

for.end40:                                        ; preds = %ath5k_txbuf_free_skb.exit87.for.end40_crit_edge, %for.end23.for.end40_crit_edge
  %dev = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 2
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 8
  %desc_len = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 17
  %57 = ptrtoint ptr %desc_len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %desc_len, align 4
  %desc = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 15
  %59 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %desc, align 4
  %desc_daddr = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 16
  %61 = ptrtoint ptr %desc_daddr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %desc_daddr, align 8
  tail call void @dma_free_attrs(ptr noundef %56, i32 noundef %58, ptr noundef %60, i32 noundef %62, i32 noundef 0) #14
  %63 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %desc, align 4
  %64 = ptrtoint ptr %desc_daddr to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %desc_daddr, align 8
  %bufptr = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 14
  %65 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bufptr, align 8
  tail call void @kfree(ptr noundef %66) #14
  %67 = ptrtoint ptr %bufptr to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %bufptr, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath5k_txq_release(ptr noundef %ah) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %setup = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 0, i32 4
  %0 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %setup, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %txqs = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 40
  %2 = ptrtoint ptr %txqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txqs, align 4
  tail call void @ath5k_hw_release_tx_queue(ptr noundef %ah, i32 noundef %3) #14
  %4 = ptrtoint ptr %setup to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %setup, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %setup.1 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 1, i32 4
  %5 = ptrtoint ptr %setup.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %setup.1, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.1 = icmp eq i8 %6, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %incdec.ptr, align 4
  tail call void @ath5k_hw_release_tx_queue(ptr noundef %ah, i32 noundef %8) #14
  %9 = ptrtoint ptr %setup.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %setup.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %setup.2 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 2, i32 4
  %10 = ptrtoint ptr %setup.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %setup.2, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.2 = icmp eq i8 %11, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.1 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 2
  %12 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr.1, align 4
  tail call void @ath5k_hw_release_tx_queue(ptr noundef %ah, i32 noundef %13) #14
  %14 = ptrtoint ptr %setup.2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %setup.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %setup.3 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 3, i32 4
  %15 = ptrtoint ptr %setup.3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %setup.3, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.3 = icmp eq i8 %16, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.2 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 3
  %17 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr.2, align 4
  tail call void @ath5k_hw_release_tx_queue(ptr noundef %ah, i32 noundef %18) #14
  %19 = ptrtoint ptr %setup.3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %setup.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %setup.4 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 4, i32 4
  %20 = ptrtoint ptr %setup.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %setup.4, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.4 = icmp eq i8 %21, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.3 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 4
  %22 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %incdec.ptr.3, align 4
  tail call void @ath5k_hw_release_tx_queue(ptr noundef %ah, i32 noundef %23) #14
  %24 = ptrtoint ptr %setup.4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %setup.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %setup.5 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 5, i32 4
  %25 = ptrtoint ptr %setup.5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %setup.5, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.5 = icmp eq i8 %26, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.4 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 5
  %27 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %incdec.ptr.4, align 4
  tail call void @ath5k_hw_release_tx_queue(ptr noundef %ah, i32 noundef %28) #14
  %29 = ptrtoint ptr %setup.5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %setup.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %setup.6 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 6, i32 4
  %30 = ptrtoint ptr %setup.6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %setup.6, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.6 = icmp eq i8 %31, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.5 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 6
  %32 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %incdec.ptr.5, align 4
  tail call void @ath5k_hw_release_tx_queue(ptr noundef %ah, i32 noundef %33) #14
  %34 = ptrtoint ptr %setup.6 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %setup.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %setup.7 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 7, i32 4
  %35 = ptrtoint ptr %setup.7 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %setup.7, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.7 = icmp eq i8 %36, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.6 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 7
  %37 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %incdec.ptr.6, align 4
  tail call void @ath5k_hw_release_tx_queue(ptr noundef %ah, i32 noundef %38) #14
  %39 = ptrtoint ptr %setup.7 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %setup.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %setup.8 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 8, i32 4
  %40 = ptrtoint ptr %setup.8 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %setup.8, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.8 = icmp eq i8 %41, 0
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.8

if.then.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.7 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 8
  %42 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %incdec.ptr.7, align 4
  tail call void @ath5k_hw_release_tx_queue(ptr noundef %ah, i32 noundef %43) #14
  %44 = ptrtoint ptr %setup.8 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %setup.8, align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then.8, %for.inc.7.for.inc.8_crit_edge
  %setup.9 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 9, i32 4
  %45 = ptrtoint ptr %setup.9 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %setup.9, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.9 = icmp eq i8 %46, 0
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.9

if.then.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.8 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 9
  %47 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %incdec.ptr.8, align 4
  tail call void @ath5k_hw_release_tx_queue(ptr noundef %ah, i32 noundef %48) #14
  %49 = ptrtoint ptr %setup.9 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %setup.9, align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then.9, %for.inc.8.for.inc.9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_release_tx_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_unregister_leds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_sysfs_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath5k_any_vif_assoc(ptr nocapture noundef readonly %ah) local_unnamed_addr #0 align 64 {
entry:
  %iter_data = alloca %struct.ath5k_vif_iter_data, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %iter_data) #14
  %0 = getelementptr inbounds i8, ptr %iter_data, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  %2 = ptrtoint ptr %iter_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %iter_data, align 4
  %any_assoc = getelementptr inbounds %struct.ath5k_vif_iter_data, ptr %iter_data, i32 0, i32 5
  %3 = ptrtoint ptr %any_assoc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %any_assoc, align 2
  %need_set_hw_addr = getelementptr inbounds %struct.ath5k_vif_iter_data, ptr %iter_data, i32 0, i32 3
  %4 = ptrtoint ptr %need_set_hw_addr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %need_set_hw_addr, align 4
  %found_active = getelementptr inbounds %struct.ath5k_vif_iter_data, ptr %iter_data, i32 0, i32 4
  %5 = ptrtoint ptr %found_active to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %found_active, align 1
  %hw = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 7
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %7, i32 noundef 1, ptr noundef nonnull @ath5k_vif_iter, ptr noundef nonnull %iter_data) #14
  %8 = ptrtoint ptr %any_assoc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %any_assoc, align 2, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool = icmp ne i8 %9, 0
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %iter_data) #14
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_set_beacon_filter(ptr nocapture noundef readonly %hw, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 @ath5k_hw_get_rx_filter(ptr noundef %1) #14
  %and = and i32 %call, -17
  %masksel = select i1 %enable, i32 16, i32 0
  %rfilt.0 = or i32 %and, %masksel
  tail call void @ath5k_hw_set_rx_filter(ptr noundef %1, i32 noundef %rfilt.0) #14
  %filter_flags = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %filter_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rfilt.0, ptr %filter_flags, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_get_rx_filter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ath5k_rx(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %priv = getelementptr inbounds %struct.trace_event_raw_ath5k_rx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %skbaddr = getelementptr inbounds %struct.trace_event_raw_ath5k_rx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %skbaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skbaddr, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.51, ptr noundef %3, i32 noundef %5) #14
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ath5k_tx(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %priv = getelementptr inbounds %struct.trace_event_raw_ath5k_tx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %skbaddr = getelementptr inbounds %struct.trace_event_raw_ath5k_tx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %skbaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skbaddr, align 4
  %qnum = getelementptr inbounds %struct.trace_event_raw_ath5k_tx, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %qnum to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %qnum, align 4
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.54, ptr noundef %3, i32 noundef %5, i32 noundef %conv) #14
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ath5k_tx_complete(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %priv = getelementptr inbounds %struct.trace_event_raw_ath5k_tx_complete, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %skbaddr = getelementptr inbounds %struct.trace_event_raw_ath5k_tx_complete, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %skbaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skbaddr, align 4
  %qnum = getelementptr inbounds %struct.trace_event_raw_ath5k_tx_complete, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %qnum to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %qnum, align 4
  %conv = zext i8 %7 to i32
  %ts_status = getelementptr inbounds %struct.trace_event_raw_ath5k_tx_complete, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ts_status, align 1
  %conv1 = zext i8 %9 to i32
  %ts_rssi = getelementptr inbounds %struct.trace_event_raw_ath5k_tx_complete, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %ts_rssi to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ts_rssi, align 2
  %conv2 = sext i8 %11 to i32
  %ts_antenna = getelementptr inbounds %struct.trace_event_raw_ath5k_tx_complete, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %ts_antenna to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ts_antenna, align 1
  %conv3 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.59, ptr noundef %3, i32 noundef %5, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3) #14
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_tx_rates(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_rts_duration(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_ctstoself_duration(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_hdrlen_from_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_setup_mrr_tx_desc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_txdp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_start_tx_dma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_get_tx_queueprops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_tx_queueprops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_reset_tx_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_num_tx_pending(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_buffered_bc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath5k_hw_is_intr_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_get_isr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath5k_schedule_rx(ptr noundef %ah) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_pending = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 25
  %0 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %rx_pending, align 4
  %state.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 35, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rxtq = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 35
  tail call void @__tasklet_schedule(ptr noundef %rxtq) #14
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_update_tx_triglevel(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_update_mib_counters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_ani_mib_intr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath5k_ioread32(ptr nocapture noundef readonly %hw_priv, i32 noundef %reg_offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %hw_priv, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %conv.i = and i32 %reg_offset, 65535
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !410
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !411
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_iowrite32(ptr nocapture noundef readonly %hw_priv, i32 noundef %val, i32 noundef %reg_offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %hw_priv, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %conv.i = and i32 %reg_offset, 65535
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !412
  tail call void @arm_heavy_mb() #14
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #14, !srcloc !413
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_led_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_dma_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath5k_drain_tx_buffs(ptr noundef %ah) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 2
  %hw.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 7
  %txbuflock = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 38
  %txbuf = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 37
  %prev.i2.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 37, i32 1
  %txbuf_len = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 39
  br label %for.body

for.body:                                         ; preds = %for.inc20.for.body_crit_edge, %entry
  %i.047 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20.for.body_crit_edge ]
  %setup = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 %i.047, i32 4
  %0 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %setup, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.for.inc20_crit_edge, label %if.then

for.body.for.inc20_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc20

if.then:                                          ; preds = %for.body
  %lock = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 %i.047, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %q = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 %i.047, i32 2
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 4
  %cmp10.not44 = icmp eq ptr %3, %q
  br i1 %cmp10.not44, label %if.then.for.end_crit_edge, label %for.body11.lr.ph

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body11.lr.ph:                                 ; preds = %if.then
  %txq_len = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 %i.047, i32 5
  br label %for.body11

for.body11:                                       ; preds = %list_move_tail.exit.for.body11_crit_edge, %for.body11.lr.ph
  %bf.045 = phi ptr [ %3, %for.body11.lr.ph ], [ %bf0.0, %list_move_tail.exit.for.body11_crit_edge ]
  %4 = ptrtoint ptr %bf.045 to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf0.0 = load ptr, ptr %bf.045, align 4
  tail call void @ath5k_debug_printtxbuf(ptr noundef %ah, ptr noundef %bf.045) #14
  %tobool.not.i = icmp eq ptr %bf.045, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !400

do.body4.i:                                       ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath5k/base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 965, 0\0A.popsection", ""() #14, !srcloc !403
  unreachable

do.end7.i:                                        ; preds = %for.body11
  %skb.i = getelementptr inbounds %struct.ath5k_buf, ptr %bf.045, i32 0, i32 3
  %5 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skb.i, align 4
  %tobool8.not.i = icmp eq ptr %6, null
  br i1 %tobool8.not.i, label %do.end7.i.ath5k_txbuf_free_skb.exit_crit_edge, label %if.end10.i

do.end7.i.ath5k_txbuf_free_skb.exit_crit_edge:    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_txbuf_free_skb.exit

if.end10.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  %skbaddr.i = getelementptr inbounds %struct.ath5k_buf, ptr %bf.045, i32 0, i32 4
  %9 = ptrtoint ptr %skbaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %skbaddr.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 6
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef 1, i32 noundef 0) #14
  %13 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw.i, align 4
  %15 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skb.i, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %14, ptr noundef %16) #14
  %17 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %skb.i, align 4
  %18 = ptrtoint ptr %skbaddr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %skbaddr.i, align 4
  %desc.i = getelementptr inbounds %struct.ath5k_buf, ptr %bf.045, i32 0, i32 1
  %19 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc.i, align 4
  %ds_data.i = getelementptr inbounds %struct.ath5k_desc, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %ds_data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ds_data.i, align 4
  br label %ath5k_txbuf_free_skb.exit

ath5k_txbuf_free_skb.exit:                        ; preds = %if.end10.i, %do.end7.i.ath5k_txbuf_free_skb.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %txbuflock) #14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %bf.045) #14
  br i1 %call.i.i, label %if.end.i.i, label %ath5k_txbuf_free_skb.exit.__list_del_entry.exit.i_crit_edge

ath5k_txbuf_free_skb.exit.__list_del_entry.exit.i_crit_edge: ; preds = %ath5k_txbuf_free_skb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %ath5k_txbuf_free_skb.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %bf.045, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %bf.045 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bf.045, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %ath5k_txbuf_free_skb.exit.__list_del_entry.exit.i_crit_edge
  %28 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %bf.045, ptr noundef %29, ptr noundef %txbuf) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %bf.045, ptr %prev.i2.i, align 4
  %31 = ptrtoint ptr %bf.045 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %txbuf, ptr %bf.045, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %bf.045, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %bf.045, ptr %29, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %34 = ptrtoint ptr %txbuf_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %txbuf_len, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %txbuf_len, align 4
  %36 = ptrtoint ptr %txq_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %txq_len, align 4
  %dec = add i32 %37, -1
  store i32 %dec, ptr %txq_len, align 4
  tail call void @_raw_spin_unlock(ptr noundef %txbuflock) #14
  %cmp10.not = icmp eq ptr %bf0.0, %q
  br i1 %cmp10.not, label %list_move_tail.exit.for.end_crit_edge, label %list_move_tail.exit.for.body11_crit_edge

list_move_tail.exit.for.body11_crit_edge:         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body11

list_move_tail.exit.for.end_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_move_tail.exit.for.end_crit_edge, %if.then.for.end_crit_edge
  %link = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 %i.047, i32 1
  %38 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %link, align 4
  %txq_poll_mark = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 %i.047, i32 7
  %39 = ptrtoint ptr %txq_poll_mark to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %txq_poll_mark, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  br label %for.inc20

for.inc20:                                        ; preds = %for.end, %for.body.for.inc20_crit_edge
  %inc21 = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc21, 10
  br i1 %exitcond.not, label %for.end22, label %for.inc20.for.body_crit_edge

for.inc20.for.body_crit_edge:                     ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end22:                                        ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_phy_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_stop_rx_pcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_debug_printrxbuffs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_debug_printtxbuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_ani_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_reset(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_hw_cycle_counters_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath5k_rxbuf_setup(ptr noundef %ah, ptr nocapture noundef %bf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1 = getelementptr inbounds %struct.ath5k_buf, ptr %bf, i32 0, i32 3
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %entry
  %skbaddr = getelementptr inbounds %struct.ath5k_buf, ptr %bf, i32 0, i32 4
  %call = tail call fastcc ptr @ath5k_rx_skb_alloc(ptr noundef %ah, ptr noundef %skbaddr)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %skb1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %skb1, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %desc = getelementptr inbounds %struct.ath5k_buf, ptr %bf, i32 0, i32 1
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc, align 4
  %daddr = getelementptr inbounds %struct.ath5k_buf, ptr %bf, i32 0, i32 2
  %5 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %daddr, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %4, align 4
  %skbaddr6 = getelementptr inbounds %struct.ath5k_buf, ptr %bf, i32 0, i32 4
  %8 = ptrtoint ptr %skbaddr6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %skbaddr6, align 4
  %ds_data = getelementptr inbounds %struct.ath5k_desc, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %ds_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ds_data, align 4
  %rx_bufsize = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 12
  %11 = ptrtoint ptr %rx_bufsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_bufsize, align 4
  %call7 = tail call i32 @ath5k_hw_setup_rx_desc(ptr noundef %ah, ptr noundef %4, i32 noundef %12, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %do.body

do.body:                                          ; preds = %if.end5
  %call10 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %if.then12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.118, ptr noundef nonnull @__func__.ath5k_rxbuf_setup)
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %rxlink = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 34
  %13 = ptrtoint ptr %rxlink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rxlink, align 8
  %cmp.not = icmp eq ptr %14, null
  br i1 %cmp.not, label %if.end14.if.end18_crit_edge, label %if.then15

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %daddr, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %14, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end14.if.end18_crit_edge
  %18 = ptrtoint ptr %rxlink to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %4, ptr %rxlink, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then12, %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -12, %if.then.cleanup_crit_edge ], [ %call7, %if.then12 ], [ %call7, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_rxdp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_start_rx_dma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_start_rx_pcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ath5k_rx_skb_alloc(ptr noundef %ah, ptr nocapture noundef writeonly %skb_addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_bufsize = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 12
  %0 = ptrtoint ptr %rx_bufsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_bufsize, align 4
  %call1 = tail call ptr @ath_rxbuf_alloc(ptr noundef %ah, i32 noundef %1, i32 noundef 2592) #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  %call2 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %rx_bufsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_bufsize, align 4
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.119, i32 noundef %3)
  br label %cleanup

if.end6:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %rx_bufsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_bufsize, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %7) #14
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end6
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !399

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %5) #14
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.92, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.93, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #14
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %5, ptr noundef %7, i32 noundef %9) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %7 to i32
  %sub.i = add i32 %15, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %14, i32 %shr.i
  %and.i = and i32 %15, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %9, i32 noundef 2, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %16 = ptrtoint ptr %skb_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i, ptr %skb_addr, align 4
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %18, i32 noundef %retval.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %do.body15, label %dma_map_single_attrs.exit.cleanup_crit_edge

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body15:                                        ; preds = %dma_map_single_attrs.exit
  %call16 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body15.do.end21_crit_edge, label %if.then18

do.body15.do.end21_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end21

if.then18:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.120, ptr noundef nonnull @__func__.ath5k_rx_skb_alloc)
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body15.do.end21_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %dma_map_single_attrs.exit.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end21 ], [ null, %if.then4 ], [ null, %do.body.cleanup_crit_edge ], [ %call1, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_setup_rx_desc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath_rxbuf_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ath5k_txq_setup(ptr noundef %ah, i32 noundef %qtype, i32 noundef %subtype) unnamed_addr #0 align 64 {
entry:
  %qi = alloca %struct.ath5k_txq_info, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %qi) #14
  %0 = getelementptr inbounds i8, ptr %qi, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %qi to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %qi, align 4
  %tqi_subtype = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi, i32 0, i32 1
  %3 = ptrtoint ptr %tqi_subtype to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %subtype, ptr %tqi_subtype, align 4
  %tqi_flags = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi, i32 0, i32 2
  %tqi_aifs = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi, i32 0, i32 3
  %4 = ptrtoint ptr %tqi_aifs to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %tqi_aifs, align 2
  %tqi_cw_min = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi, i32 0, i32 4
  %5 = ptrtoint ptr %tqi_cw_min to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 15, ptr %tqi_cw_min, align 4
  %tqi_cw_max = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi, i32 0, i32 5
  %6 = ptrtoint ptr %tqi_cw_max to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1023, ptr %tqi_cw_max, align 2
  %tqi_cbr_period = getelementptr inbounds %struct.ath5k_txq_info, ptr %qi, i32 0, i32 6
  %7 = call ptr @memset(ptr %tqi_cbr_period, i32 0, i32 16)
  %8 = ptrtoint ptr %tqi_flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 12, ptr %tqi_flags, align 4
  %call = call i32 @ath5k_hw_setup_tx_queue(ptr noundef %ah, i32 noundef %qtype, ptr noundef nonnull %qi) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %9 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 %call
  %setup = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 %call, i32 4
  %10 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %setup, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call, ptr %arrayidx, align 4
  %link = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 %call, i32 1
  %13 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %link, align 4
  %q = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 %call, i32 2
  %14 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %q, ptr %q, align 4
  %prev.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 %call, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %q, ptr %prev.i, align 4
  %lock = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 %call, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.139, ptr noundef nonnull @ath5k_txq_setup.__key, i16 noundef signext 3) #14
  %16 = ptrtoint ptr %setup to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %setup, align 4
  %txq_len = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 %call, i32 5
  %17 = ptrtoint ptr %txq_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %txq_len, align 4
  %txq_max = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 %call, i32 6
  %18 = ptrtoint ptr %txq_max to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 50, ptr %txq_max, align 4
  %txq_poll_mark = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 %call, i32 7
  %19 = ptrtoint ptr %txq_poll_mark to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %txq_poll_mark, align 4
  %txq_stuck = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 40, i32 %call, i32 8
  %20 = ptrtoint ptr %txq_stuck to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %txq_stuck, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %9, %if.then ], [ %arrayidx, %if.then3 ], [ %arrayidx, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %qi) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_tasklet_rx(ptr noundef %t) #0 align 64 {
entry:
  %rs = alloca %struct.ath5k_rx_status, align 2
  %next_skb_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rs) #14
  %0 = call ptr @memset(ptr %rs, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_skb_addr) #14
  %1 = ptrtoint ptr %next_skb_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %next_skb_addr, align 4, !annotation !401
  %add.ptr = getelementptr i8, ptr %t, i32 -21868
  %rxbuflock = getelementptr i8, ptr %t, i32 -48
  tail call void @_raw_spin_lock(ptr noundef %rxbuflock) #14
  %rxbuf = getelementptr i8, ptr %t, i32 -56
  %2 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rxbuf, align 4
  %cmp.i.not = icmp eq ptr %3, %rxbuf
  br i1 %cmp.i.not, label %do.body, label %do.body6.preheader

do.body6.preheader:                               ; preds = %entry
  %ah_proc_rx_desc = getelementptr i8, ptr %t, i32 6944
  %rx_all_count.i = getelementptr i8, ptr %t, i32 1972
  %rx_bytes_count.i = getelementptr i8, ptr %t, i32 1980
  %rs_status.i = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 2
  %rxerr_crc.i = getelementptr i8, ptr %t, i32 1988
  %rxerr_fifo.i = getelementptr i8, ptr %t, i32 2124
  %rxerr_phy.i = getelementptr i8, ptr %t, i32 1992
  %rs_phyerr.i = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 3
  %rxerr_decrypt.i = getelementptr i8, ptr %t, i32 2128
  %rs_keyix.i = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 5
  %rxerr_mic.i = getelementptr i8, ptr %t, i32 2132
  %fif_filter_flags.i = getelementptr i8, ptr %t, i32 -220
  %rs_more.i = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 8
  %rxerr_jumbo.i = getelementptr i8, ptr %t, i32 2140
  %dev = getelementptr i8, ptr %t, i32 -20996
  %rx_bufsize = getelementptr i8, ptr %t, i32 -21752
  %rs_tstamp.i = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 1
  %curchan.i = getelementptr i8, ptr %t, i32 -216
  %ah_noise_floor.i = getelementptr i8, ptr %t, i32 6916
  %rs_rssi.i = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 4
  %rs_antenna.i = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 7
  %stats39.i = getelementptr i8, ptr %t, i32 1932
  %rs_rate.i = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 6
  %keymap.i.i = getelementptr i8, ptr %t, i32 -21744
  %ah_bwmode.i = getelementptr i8, ptr %t, i32 2497
  %ah_beacon_rssi_avg.i = getelementptr i8, ptr %t, i32 6912
  %opmode.i = getelementptr i8, ptr %t, i32 -252
  %debug.i.i = getelementptr i8, ptr %t, i32 -248
  %nexttbtt.i.i = getelementptr i8, ptr %t, i32 1920
  %bintval.i.i = getelementptr i8, ptr %t, i32 1912
  %hw.i = getelementptr i8, ptr %t, i32 -20888
  %prev.i2.i = getelementptr i8, ptr %t, i32 -52
  br label %do.body6

do.body:                                          ; preds = %entry
  %call2 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body.unlock_crit_edge, label %if.then4

do.body.unlock_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %add.ptr, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.140)
  br label %unlock

do.body6:                                         ; preds = %list_move_tail.exit.do.body6_crit_edge, %do.body6.preheader
  %4 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rxbuf, align 4
  %skb12 = getelementptr inbounds %struct.ath5k_buf, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %skb12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb12, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %do.body16, label %do.end24, !prof !400

do.body16:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath5k/base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1602, 0\0A.popsection", ""() #14, !srcloc !414
  unreachable

do.end24:                                         ; preds = %do.body6
  %desc = getelementptr inbounds %struct.ath5k_buf, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %call26 = call i32 @ath5k_hw_get_rxdp(ptr noundef %add.ptr) #14
  %daddr = getelementptr inbounds %struct.ath5k_buf, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %daddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call26, i32 %11)
  %cmp27 = icmp eq i32 %call26, %11
  br i1 %cmp27, label %do.end24.unlock_crit_edge, label %if.end29

do.end24.unlock_crit_edge:                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.end29:                                         ; preds = %do.end24
  %12 = ptrtoint ptr %ah_proc_rx_desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ah_proc_rx_desc, align 4
  %call30 = call i32 %13(ptr noundef %add.ptr, ptr noundef %9, ptr noundef nonnull %rs) #14
  %14 = zext i32 %call30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %call30, label %do.body47 [
    i32 -115, label %if.end29.unlock_crit_edge
    i32 0, label %if.end55
  ], !prof !415

if.end29.unlock_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

do.body47:                                        ; preds = %if.end29
  %call48 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.body47.do.end53_crit_edge, label %if.then50

do.body47.do.end53_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end53

if.then50:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %add.ptr, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.141)
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %do.body47.do.end53_crit_edge
  %rxerr_proc = getelementptr i8, ptr %t, i32 2136
  %15 = ptrtoint ptr %rxerr_proc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rxerr_proc, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %rxerr_proc, align 4
  br label %unlock

if.end55:                                         ; preds = %if.end29
  %17 = ptrtoint ptr %rx_all_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_all_count.i, align 8
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %rx_all_count.i, align 8
  %19 = ptrtoint ptr %rs to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rs, align 2
  %conv.i103 = zext i16 %20 to i32
  %21 = ptrtoint ptr %rx_bytes_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_bytes_count.i, align 8
  %add.i = add i32 %22, %conv.i103
  store i32 %add.i, ptr %rx_bytes_count.i, align 8
  %23 = ptrtoint ptr %rs_status.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rs_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.end55.if.end91.i_crit_edge, label %if.then.i, !prof !399

if.end55.if.end91.i_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91.i

if.then.i:                                        ; preds = %if.end55
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool6.not.i = icmp eq i8 %25, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then7.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %rxerr_crc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rxerr_crc.i, align 8
  %inc9.i = add i32 %27, 1
  store i32 %inc9.i, ptr %rxerr_crc.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then.i.if.end.i_crit_edge
  %28 = and i8 %24, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool13.not.i = icmp eq i8 %28, 0
  br i1 %tobool13.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then14.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %rxerr_fifo.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rxerr_fifo.i, align 8
  %inc16.i = add i32 %30, 1
  store i32 %inc16.i, ptr %rxerr_fifo.i, align 8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end.i.if.end17.i_crit_edge
  %31 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool21.not.i = icmp eq i8 %31, 0
  br i1 %tobool21.not.i, label %if.end17.i.if.end53.i_crit_edge, label %if.then22.i

if.end17.i.if.end53.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53.i

if.then22.i:                                      ; preds = %if.end17.i
  %32 = ptrtoint ptr %rxerr_phy.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rxerr_phy.i, align 4
  %inc24.i = add i32 %33, 1
  store i32 %inc24.i, ptr %rxerr_phy.i, align 4
  %34 = ptrtoint ptr %rs_phyerr.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rs_phyerr.i, align 1
  %36 = add i8 %35, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %36)
  %37 = icmp ult i8 %36, 31
  br i1 %37, label %if.then31.i, label %if.then22.i.if.end35.i_crit_edge

if.then22.i.if.end35.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35.i

if.then31.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv25.i = zext i8 %35 to i32
  %arrayidx.i = getelementptr %struct.ath5k_hw, ptr %add.ptr, i32 0, i32 59, i32 8, i32 %conv25.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  %inc34.i = add i32 %39, 1
  store i32 %inc34.i, ptr %arrayidx.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then31.i, %if.then22.i.if.end35.i_crit_edge
  %40 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.161)
  switch i8 %35, label %if.end35.i.next66_crit_edge [
    i8 23, label %if.end35.i.if.then44.i_crit_edge
    i8 31, label %if.end35.i.if.then44.i_crit_edge123
  ]

if.end35.i.if.then44.i_crit_edge123:              ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then44.i

if.end35.i.if.then44.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then44.i

if.end35.i.next66_crit_edge:                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %next66

if.then44.i:                                      ; preds = %if.end35.i.if.then44.i_crit_edge, %if.end35.i.if.then44.i_crit_edge123
  %41 = and i8 %24, -4
  %42 = or i8 %41, 1
  %43 = ptrtoint ptr %rs_status.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %rs_status.i, align 2
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then44.i, %if.end17.i.if.end53.i_crit_edge
  %44 = ptrtoint ptr %rs_status.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rs_status.i, align 2
  %46 = and i8 %45, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool57.not.i = icmp eq i8 %46, 0
  br i1 %tobool57.not.i, label %if.end53.i.if.end71.i_crit_edge, label %if.then58.i

if.end53.i.if.end71.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71.i

if.then58.i:                                      ; preds = %if.end53.i
  %47 = ptrtoint ptr %rxerr_decrypt.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rxerr_decrypt.i, align 4
  %inc60.i = add i32 %48, 1
  store i32 %inc60.i, ptr %rxerr_decrypt.i, align 4
  %49 = ptrtoint ptr %rs_keyix.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %rs_keyix.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %50)
  %cmp62.i = icmp eq i8 %50, -1
  %51 = and i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool68.not.i = icmp eq i8 %51, 0
  %or.cond = select i1 %cmp62.i, i1 %tobool68.not.i, i1 false
  br i1 %or.cond, label %if.then58.i.if.then57_crit_edge, label %if.then58.i.if.end71.i_crit_edge

if.then58.i.if.end71.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71.i

if.then58.i.if.then57_crit_edge:                  ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then57

if.end71.i:                                       ; preds = %if.then58.i.if.end71.i_crit_edge, %if.end53.i.if.end71.i_crit_edge
  %52 = and i8 %45, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool75.not.i = icmp eq i8 %52, 0
  br i1 %tobool75.not.i, label %if.end79.i, label %ath5k_receive_frame_ok.exit.thread119

ath5k_receive_frame_ok.exit.thread119:            ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %rxerr_mic.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rxerr_mic.i, align 8
  %inc78.i122 = add i32 %54, 1
  store i32 %inc78.i122, ptr %rxerr_mic.i, align 8
  br label %if.then57

if.end79.i:                                       ; preds = %if.end71.i
  %55 = ptrtoint ptr %fif_filter_flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fif_filter_flags.i, align 8
  %and80.i = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  %spec.select.i = select i1 %tobool81.not.i, i32 247, i32 246
  %conv86.i = zext i8 %45 to i32
  %and87.i = and i32 %spec.select.i, %conv86.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %if.end79.i.if.end91.i_crit_edge, label %if.end79.i.next66_crit_edge

if.end79.i.next66_crit_edge:                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %next66

if.end79.i.if.end91.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.end79.i.if.end91.i_crit_edge, %if.end55.if.end91.i_crit_edge
  %57 = ptrtoint ptr %rs_more.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %rs_more.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool92.not.i = icmp eq i8 %58, 0
  br i1 %tobool92.not.i, label %if.end91.i.if.then57_crit_edge, label %ath5k_receive_frame_ok.exit, !prof !399

if.end91.i.if.then57_crit_edge:                   ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then57

ath5k_receive_frame_ok.exit:                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %rxerr_jumbo.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rxerr_jumbo.i, align 8
  %inc78.i = add i32 %60, 1
  store i32 %inc78.i, ptr %rxerr_jumbo.i, align 8
  br label %next66

if.then57:                                        ; preds = %if.end91.i.if.then57_crit_edge, %ath5k_receive_frame_ok.exit.thread119, %if.then58.i.if.then57_crit_edge
  %call58 = call fastcc ptr @ath5k_rx_skb_alloc(ptr noundef %add.ptr, ptr noundef nonnull %next_skb_addr)
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.then57.next66_crit_edge, label %if.end61

if.then57.next66_crit_edge:                       ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  br label %next66

if.end61:                                         ; preds = %if.then57
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 8
  %skbaddr = getelementptr inbounds %struct.ath5k_buf, ptr %5, i32 0, i32 4
  %63 = ptrtoint ptr %skbaddr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %skbaddr, align 4
  %65 = ptrtoint ptr %rx_bufsize to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_bufsize, align 4
  call void @dma_unmap_page_attrs(ptr noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef 2, i32 noundef 0) #14
  %67 = ptrtoint ptr %rs to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %rs, align 2
  %conv = zext i16 %68 to i32
  %call62 = call ptr @skb_put(ptr noundef nonnull %7, i32 noundef %conv) #14
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %69 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %70, align 2
  %73 = and i16 %72, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %73)
  %cmp.i.i.i.i = icmp eq i16 %73, 3
  %spec.select.i.i.i = select i1 %cmp.i.i.i.i, i32 30, i32 24
  %74 = and i16 %72, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %74)
  %cmp.i9.i.i.i = icmp eq i16 %74, -30720
  %add4.i.i.i = add nuw nsw i32 %spec.select.i.i.i, 2
  %padpos.1.i.i.i = select i1 %cmp.i9.i.i.i, i32 %add4.i.i.i, i32 %spec.select.i.i.i
  %and.i.i = and i32 %padpos.1.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end61.ath5k_remove_padding.exit.i_crit_edge, label %land.lhs.true.i.i

if.end61.ath5k_remove_padding.exit.i_crit_edge:   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_remove_padding.exit.i

land.lhs.true.i.i:                                ; preds = %if.end61
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %75 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len.i.i, align 4
  %add.i.i = add nuw nsw i32 %and.i.i, %padpos.1.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %add.i.i)
  %cmp.not.i.i = icmp ult i32 %76, %add.i.i
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.ath5k_remove_padding.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.ath5k_remove_padding.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_remove_padding.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 %and.i.i
  %77 = call ptr @memmove(ptr %add.ptr.i.i, ptr %70, i32 %padpos.1.i.i.i)
  %call2.i.i = call ptr @skb_pull(ptr noundef nonnull %7, i32 noundef %and.i.i) #14
  br label %ath5k_remove_padding.exit.i

ath5k_remove_padding.exit.i:                      ; preds = %if.then.i.i, %land.lhs.true.i.i.ath5k_remove_padding.exit.i_crit_edge, %if.end61.ath5k_remove_padding.exit.i_crit_edge
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3
  %flag.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 24
  %78 = ptrtoint ptr %flag.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %flag.i, align 8
  %79 = ptrtoint ptr %rs_status.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %rs_status.i, align 2
  %81 = and i8 %80, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i105 = icmp eq i8 %81, 0
  br i1 %tobool.not.i105, label %ath5k_remove_padding.exit.i.if.end.i107_crit_edge, label %if.then.i106, !prof !399

ath5k_remove_padding.exit.i.if.end.i107_crit_edge: ; preds = %ath5k_remove_padding.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i107

if.then.i106:                                     ; preds = %ath5k_remove_padding.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %82 = ptrtoint ptr %flag.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %flag.i, align 8
  br label %if.end.i107

if.end.i107:                                      ; preds = %if.then.i106, %ath5k_remove_padding.exit.i.if.end.i107_crit_edge
  %83 = and i8 %80, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool9.not.i = icmp eq i8 %83, 0
  br i1 %tobool9.not.i, label %if.end.i107.if.end19.i_crit_edge, label %if.then16.i, !prof !399

if.end.i107.if.end19.i_crit_edge:                 ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #16
  %84 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flag.i, align 8
  %or18.i = or i32 %85, 32
  store i32 %or18.i, ptr %flag.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.end.i107.if.end19.i_crit_edge
  %86 = ptrtoint ptr %rs_tstamp.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %rs_tstamp.i, align 2
  %call.i.i = call i64 @ath5k_hw_get_tsf64(ptr noundef %add.ptr) #14
  %and.i133.i = and i64 %call.i.i, 32767
  %conv.i.i = zext i16 %87 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i133.i, i64 %conv.i.i)
  %cmp.i.i = icmp ult i64 %and.i133.i, %conv.i.i
  %sub.i.i = add i64 %call.i.i, -32768
  %spec.select.i.i = select i1 %cmp.i.i, i64 %sub.i.i, i64 %call.i.i
  %and2.i.i = and i64 %spec.select.i.i, -32768
  %or.i.i = or i64 %and2.i.i, %conv.i.i
  %88 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %or.i.i, ptr %cb.i.i, align 8
  %89 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flag.i, align 8
  %or23.i = or i32 %90, 65536
  store i32 %or23.i, ptr %flag.i, align 8
  %91 = ptrtoint ptr %curchan.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %curchan.i, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %center_freq.i, align 4
  %conv24.i = trunc i32 %94 to i16
  %freq.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 28
  %95 = ptrtoint ptr %freq.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load.i = load i16, ptr %freq.i, align 4
  %bf.shl.i = shl i16 %conv24.i, 3
  %bf.clear.i = and i16 %bf.load.i, 7
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  store i16 %bf.set.i, ptr %freq.i, align 4
  %96 = load ptr, ptr %curchan.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %conv26.i = trunc i32 %98 to i8
  %band27.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 36
  %99 = ptrtoint ptr %band27.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv26.i, ptr %band27.i, align 4
  %100 = ptrtoint ptr %ah_noise_floor.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ah_noise_floor.i, align 8
  %102 = ptrtoint ptr %rs_rssi.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %rs_rssi.i, align 2
  %104 = trunc i32 %101 to i8
  %conv29.i = add i8 %103, %104
  %signal.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 38
  %105 = ptrtoint ptr %signal.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv29.i, ptr %signal.i, align 2
  %106 = ptrtoint ptr %rs_antenna.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %rs_antenna.i, align 1
  %antenna.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 37
  %108 = ptrtoint ptr %antenna.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %antenna.i, align 1
  %109 = add i8 %107, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %109)
  %110 = icmp ult i8 %109, 4
  br i1 %110, label %if.then37.i, label %if.else.i

if.then37.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv31.i = zext i8 %107 to i32
  %arrayidx.i108 = getelementptr [5 x i32], ptr %stats39.i, i32 0, i32 %conv31.i
  %111 = ptrtoint ptr %arrayidx.i108 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.i108, align 4
  %inc.i109 = add i32 %112, 1
  store i32 %inc.i109, ptr %arrayidx.i108, align 4
  br label %if.end43.i

if.else.i:                                        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  %113 = ptrtoint ptr %stats39.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %stats39.i, align 8
  %inc42.i = add i32 %114, 1
  store i32 %inc42.i, ptr %stats39.i, align 8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else.i, %if.then37.i
  %115 = ptrtoint ptr %rs_rate.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %rs_rate.i, align 2
  %conv44.i = zext i8 %116 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %116)
  %cmp1.i.i = icmp ugt i8 %116, 31
  br i1 %cmp1.i.i, label %do.end.i.i, label %if.end22.i.i, !prof !400

do.end.i.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 581, i32 noundef 9, ptr noundef nonnull @.str.142, i32 noundef %conv44.i) #14
  br label %ath5k_hw_to_driver_rix.exit.i

if.end22.i.i:                                     ; preds = %if.end43.i
  %117 = ptrtoint ptr %curchan.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %curchan.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %118, align 4
  %arrayidx23.i.i = getelementptr %struct.ath5k_hw, ptr %add.ptr, i32 0, i32 11, i32 %120, i32 %conv44.i
  %121 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx23.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp25.i.i = icmp slt i8 %122, 0
  br i1 %cmp25.i.i, label %do.end42.i.i, label %if.end22.i.i.if.end48.i.i_crit_edge, !prof !400

if.end22.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i.i

do.end42.i.i:                                     ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 585, i32 noundef 9, ptr noundef nonnull @.str.143, i32 noundef %conv44.i) #14
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %do.end42.i.i, %if.end22.i.i.if.end48.i.i_crit_edge
  %123 = call i8 @llvm.smax.i8(i8 %122, i8 0) #14
  br label %ath5k_hw_to_driver_rix.exit.i

ath5k_hw_to_driver_rix.exit.i:                    ; preds = %if.end48.i.i, %do.end.i.i
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ %123, %if.end48.i.i ]
  %rate_idx.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 33
  %124 = ptrtoint ptr %rate_idx.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %retval.0.i.i, ptr %rate_idx.i, align 1
  %125 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data.i.i.i, align 4
  %127 = ptrtoint ptr %rs_status.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %rs_status.i, align 2
  %129 = and i8 %128, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i135.i = icmp eq i8 %129, 0
  br i1 %tobool.not.i135.i, label %land.lhs.true.i137.i, label %ath5k_hw_to_driver_rix.exit.i.if.end.i.i_crit_edge

ath5k_hw_to_driver_rix.exit.i.if.end.i.i_crit_edge: ; preds = %ath5k_hw_to_driver_rix.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i137.i:                             ; preds = %ath5k_hw_to_driver_rix.exit.i
  %130 = ptrtoint ptr %rs_keyix.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %rs_keyix.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %131)
  %cmp.not.i136.i = icmp eq i8 %131, -1
  br i1 %cmp.not.i136.i, label %land.lhs.true.i137.i.if.end.i.i_crit_edge, label %land.lhs.true.i137.i.ath5k_rx_decrypted.exit.i_crit_edge

land.lhs.true.i137.i.ath5k_rx_decrypted.exit.i_crit_edge: ; preds = %land.lhs.true.i137.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_rx_decrypted.exit.i

land.lhs.true.i137.i.if.end.i.i_crit_edge:        ; preds = %land.lhs.true.i137.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i137.i.if.end.i.i_crit_edge, %ath5k_hw_to_driver_rix.exit.i.if.end.i.i_crit_edge
  %132 = ptrtoint ptr %126 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %126, align 2
  %call3.i.i = call i32 @ieee80211_hdrlen(i16 noundef zeroext %133) #19
  %134 = and i16 %133, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %134)
  %cmp.i.not33.i.i = icmp eq i16 %134, 0
  %tobool.not.not.i.i = xor i1 %tobool.not.i135.i, true
  %brmerge.i.i = select i1 %cmp.i.not33.i.i, i1 true, i1 %tobool.not.not.i.i
  br i1 %brmerge.i.i, label %if.end.i.i.if.end23.i.i_crit_edge, label %land.lhs.true12.i.i

if.end.i.i.if.end23.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.i.i

land.lhs.true12.i.i:                              ; preds = %if.end.i.i
  %len.i138.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %135 = ptrtoint ptr %len.i138.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %len.i138.i, align 4
  %add.i139.i = add i32 %call3.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %add.i139.i)
  %cmp13.not.i.i = icmp ult i32 %136, %add.i139.i
  br i1 %cmp13.not.i.i, label %land.lhs.true12.i.i.if.end23.i.i_crit_edge, label %if.then15.i.i

land.lhs.true12.i.i.if.end23.i.i_crit_edge:       ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.i.i

if.then15.i.i:                                    ; preds = %land.lhs.true12.i.i
  %add17.i.i = add i32 %call3.i.i, 3
  %arrayidx.i.i = getelementptr i8, ptr %126, i32 %add17.i.i
  %137 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx.i.i, align 1
  %139 = lshr i8 %138, 6
  %140 = zext i8 %139 to i32
  %141 = ptrtoint ptr %keymap.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %keymap.i.i, align 4
  %143 = shl nuw nsw i32 1, %140
  %144 = and i32 %143, %142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool20.not.i.i = icmp eq i32 %144, 0
  br i1 %tobool20.not.i.i, label %if.then15.i.i.if.end23.i.i_crit_edge, label %if.then15.i.i.ath5k_rx_decrypted.exit.i_crit_edge

if.then15.i.i.ath5k_rx_decrypted.exit.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_rx_decrypted.exit.i

if.then15.i.i.if.end23.i.i_crit_edge:             ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then15.i.i.if.end23.i.i_crit_edge, %land.lhs.true12.i.i.if.end23.i.i_crit_edge, %if.end.i.i.if.end23.i.i_crit_edge
  br label %ath5k_rx_decrypted.exit.i

ath5k_rx_decrypted.exit.i:                        ; preds = %if.end23.i.i, %if.then15.i.i.ath5k_rx_decrypted.exit.i_crit_edge, %land.lhs.true.i137.i.ath5k_rx_decrypted.exit.i_crit_edge
  %retval.0.i140.i = phi i32 [ 0, %if.end23.i.i ], [ 2, %land.lhs.true.i137.i.ath5k_rx_decrypted.exit.i_crit_edge ], [ 2, %if.then15.i.i.ath5k_rx_decrypted.exit.i_crit_edge ]
  %145 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %flag.i, align 8
  %or49.i = or i32 %146, %retval.0.i140.i
  store i32 %or49.i, ptr %flag.i, align 8
  %147 = ptrtoint ptr %ah_bwmode.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %ah_bwmode.i, align 1
  %149 = zext i8 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.162)
  switch i8 %148, label %ath5k_rx_decrypted.exit.i.sw.epilog.i_crit_edge [
    i8 1, label %ath5k_rx_decrypted.exit.i.sw.epilog.sink.split.i_crit_edge
    i8 2, label %sw.bb54.i
  ]

ath5k_rx_decrypted.exit.i.sw.epilog.sink.split.i_crit_edge: ; preds = %ath5k_rx_decrypted.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i

ath5k_rx_decrypted.exit.i.sw.epilog.i_crit_edge:  ; preds = %ath5k_rx_decrypted.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb54.i:                                        ; preds = %ath5k_rx_decrypted.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb54.i, %ath5k_rx_decrypted.exit.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i16 [ 4096, %sw.bb54.i ], [ 2048, %ath5k_rx_decrypted.exit.i.sw.epilog.sink.split.i_crit_edge ]
  %bw.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 31
  %150 = ptrtoint ptr %bw.i to i32
  call void @__asan_loadN_noabort(i32 %150, i32 2)
  %bf.load56.i = load i16, ptr %bw.i, align 1
  %bf.clear57.i = and i16 %bf.load56.i, -14337
  %bf.set58.i = or i16 %bf.clear57.i, %.sink.i
  store i16 %bf.set58.i, ptr %bw.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %ath5k_rx_decrypted.exit.i.sw.epilog.i_crit_edge
  %151 = ptrtoint ptr %rs_rate.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %rs_rate.i, align 2
  %153 = ptrtoint ptr %curchan.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %curchan.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 4
  %bitrates.i = getelementptr %struct.ath5k_hw, ptr %add.ptr, i32 0, i32 8, i32 %156, i32 1
  %157 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %bitrates.i, align 4
  %159 = ptrtoint ptr %rate_idx.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %rate_idx.i, align 1
  %idxprom65.i = zext i8 %160 to i32
  %hw_value_short.i = getelementptr %struct.ieee80211_rate, ptr %158, i32 %idxprom65.i, i32 3
  %161 = ptrtoint ptr %hw_value_short.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %hw_value_short.i, align 4
  %163 = zext i8 %152 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %162, i16 %163)
  %cmp68.i = icmp eq i16 %162, %163
  br i1 %cmp68.i, label %if.then70.i, label %sw.epilog.i.if.end74.i_crit_edge

sw.epilog.i.if.end74.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74.i

if.then70.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  %enc_flags.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 30
  %164 = ptrtoint ptr %enc_flags.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %enc_flags.i, align 2
  %166 = or i8 %165, 1
  store i8 %166, ptr %enc_flags.i, align 2
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then70.i, %sw.epilog.i.if.end74.i_crit_edge
  call fastcc void @trace_ath5k_rx(ptr noundef %add.ptr, ptr noundef nonnull %7) #14
  %167 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %data.i.i.i, align 4
  %call75.i = call zeroext i1 @ath_is_mybeacon(ptr noundef %add.ptr, ptr noundef %168) #14
  br i1 %call75.i, label %if.then76.i110, label %if.end74.i.ath5k_receive_frame.exit_crit_edge

if.end74.i.ath5k_receive_frame.exit_crit_edge:    ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_receive_frame.exit

if.then76.i110:                                   ; preds = %if.end74.i
  %169 = ptrtoint ptr %rs_rssi.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %rs_rssi.i, align 2
  %conv78.i = sext i8 %170 to i32
  %171 = ptrtoint ptr %ah_beacon_rssi_avg.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %ah_beacon_rssi_avg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.not.i141.i = icmp eq i32 %172, 0
  %sub.i142.i = mul i32 %172, 7
  %shl19.i.i = shl nsw i32 %conv78.i, 10
  %add.i143.i = add i32 %sub.i142.i, %shl19.i.i
  %shr.i.i = lshr i32 %add.i143.i, 3
  %cond.i.i = select i1 %tobool.not.i141.i, i32 %shl19.i.i, i32 %shr.i.i
  %173 = ptrtoint ptr %ah_beacon_rssi_avg.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile i32 %cond.i.i, ptr %ah_beacon_rssi_avg.i, align 4
  %174 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %opmode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %175)
  %cmp79.i = icmp eq i32 %175, 1
  br i1 %cmp79.i, label %if.then81.i, label %if.then76.i110.ath5k_receive_frame.exit_crit_edge

if.then76.i110.ath5k_receive_frame.exit_crit_edge: ; preds = %if.then76.i110
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_receive_frame.exit

if.then81.i:                                      ; preds = %if.then76.i110
  %176 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %data.i.i.i, align 4
  %capab_info.i.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %177, i32 0, i32 6, i32 1
  %178 = ptrtoint ptr %capab_info.i.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %capab_info.i.i, align 2
  %180 = and i16 %179, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %180)
  %tobool.not.i145.i = icmp eq i16 %180, 0
  br i1 %tobool.not.i145.i, label %if.then81.i.ath5k_receive_frame.exit_crit_edge, label %if.then.i148.i

if.then81.i.ath5k_receive_frame.exit_crit_edge:   ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_receive_frame.exit

if.then.i148.i:                                   ; preds = %if.then81.i
  %u.i.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %177, i32 0, i32 6
  %call.i146.i = call i64 @ath5k_hw_get_tsf64(ptr noundef %add.ptr) #14
  %181 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %181, i32 8)
  %182 = load i64, ptr %u.i.i, align 2
  %183 = call i64 @llvm.bswap.i64(i64 %182) #14
  %shr.i147.i = lshr i64 %call.i146.i, 10
  %conv2.i.i = trunc i64 %shr.i147.i to i32
  %184 = ptrtoint ptr %debug.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %debug.i.i, align 4
  %and3.i.i = and i32 %185, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then.i148.i.do.end.i151.i_crit_edge, label %if.then7.i.i, !prof !399

if.then.i148.i.do.end.i151.i_crit_edge:           ; preds = %if.then.i148.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i151.i

if.then7.i.i:                                     ; preds = %if.then.i148.i
  call void @__sanitizer_cov_trace_pc() #16
  %186 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %cb.i.i, align 8
  %sub.i149.i = sub i64 %187, %183
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %add.ptr, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.144, ptr noundef nonnull @__func__.ath5k_check_ibss_tsf, i32 noundef 1307, i64 noundef %183, i64 noundef %187, i64 noundef %sub.i149.i, i64 noundef %call.i146.i) #14
  br label %do.end.i151.i

do.end.i151.i:                                    ; preds = %if.then7.i.i, %if.then.i148.i.do.end.i151.i_crit_edge
  %188 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %cb.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %183, i64 %189)
  %cmp.i150.i = icmp ugt i64 %183, %189
  br i1 %cmp.i150.i, label %do.body12.i.i, label %do.end.i151.i.if.end29.i.i_crit_edge

do.end.i151.i.if.end29.i.i_crit_edge:             ; preds = %do.end.i151.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i.i

do.body12.i.i:                                    ; preds = %do.end.i151.i
  %190 = ptrtoint ptr %debug.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %debug.i.i, align 4
  %and15.i.i = and i32 %191, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %do.body12.i.i.do.end27.i.i_crit_edge, label %if.then23.i.i, !prof !399

do.body12.i.i.do.end27.i.i_crit_edge:             ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end27.i.i

if.then23.i.i:                                    ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %add.ptr, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.145, ptr noundef nonnull @__func__.ath5k_check_ibss_tsf, i32 noundef 1324, i64 noundef %189, i64 noundef %call.i146.i) #14
  br label %do.end27.i.i

do.end27.i.i:                                     ; preds = %if.then23.i.i, %do.body12.i.i.do.end27.i.i_crit_edge
  %192 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store8_noabort(i32 %192)
  store i64 %call.i146.i, ptr %cb.i.i, align 8
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %do.end27.i.i, %do.end.i151.i.if.end29.i.i_crit_edge
  %193 = ptrtoint ptr %nexttbtt.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %nexttbtt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %194, i32 %conv2.i.i)
  %cmp30.not.i.i = icmp ugt i32 %194, %conv2.i.i
  br i1 %cmp30.not.i.i, label %if.end29.i.i.if.end33.i.i_crit_edge, label %if.then32.i.i

if.end29.i.i.if.end33.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.i.i

if.then32.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_beacon_update_timers(ptr noundef %add.ptr, i64 noundef %183) #14
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then32.i.i, %if.end29.i.i.if.end33.i.i_crit_edge
  %195 = ptrtoint ptr %bintval.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %bintval.i.i, align 4
  %call34.i.i = call zeroext i1 @ath5k_hw_check_beacon_timers(ptr noundef %add.ptr, i32 noundef %196) #14
  br i1 %call34.i.i, label %if.end33.i.i.ath5k_receive_frame.exit_crit_edge, label %if.then35.i.i

if.end33.i.i.ath5k_receive_frame.exit_crit_edge:  ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_receive_frame.exit

if.then35.i.i:                                    ; preds = %if.end33.i.i
  call void @ath5k_beacon_update_timers(ptr noundef %add.ptr, i64 noundef %183) #14
  %197 = ptrtoint ptr %debug.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %debug.i.i, align 4
  %and39.i.i = and i32 %198, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i.i)
  %tobool40.not.i.i = icmp eq i32 %and39.i.i, 0
  br i1 %tobool40.not.i.i, label %if.then35.i.i.ath5k_receive_frame.exit_crit_edge, label %if.then47.i.i, !prof !399

if.then35.i.i.ath5k_receive_frame.exit_crit_edge: ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_receive_frame.exit

if.then47.i.i:                                    ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %add.ptr, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.146, ptr noundef nonnull @__func__.ath5k_check_ibss_tsf, i32 noundef 1343) #14
  br label %ath5k_receive_frame.exit

ath5k_receive_frame.exit:                         ; preds = %if.then47.i.i, %if.then35.i.i.ath5k_receive_frame.exit_crit_edge, %if.end33.i.i.ath5k_receive_frame.exit_crit_edge, %if.then81.i.ath5k_receive_frame.exit_crit_edge, %if.then76.i110.ath5k_receive_frame.exit_crit_edge, %if.end74.i.ath5k_receive_frame.exit_crit_edge
  %199 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %hw.i, align 4
  call void @ieee80211_rx_napi(ptr noundef %200, ptr noundef null, ptr noundef nonnull %7, ptr noundef null) #14
  %201 = ptrtoint ptr %skb12 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %call58, ptr %skb12, align 4
  %202 = ptrtoint ptr %next_skb_addr to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %next_skb_addr, align 4
  %204 = ptrtoint ptr %skbaddr to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %skbaddr, align 4
  br label %next66

next66:                                           ; preds = %ath5k_receive_frame.exit, %if.then57.next66_crit_edge, %ath5k_receive_frame_ok.exit, %if.end79.i.next66_crit_edge, %if.end35.i.next66_crit_edge
  %call.i.i111 = call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #14
  br i1 %call.i.i111, label %if.end.i.i112, label %next66.__list_del_entry.exit.i_crit_edge

next66.__list_del_entry.exit.i_crit_edge:         ; preds = %next66
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i

if.end.i.i112:                                    ; preds = %next66
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %205 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %prev.i.i, align 4
  %207 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %206, ptr %prev1.i.i.i, align 4
  %210 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %210)
  store volatile ptr %208, ptr %206, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i112, %next66.__list_del_entry.exit.i_crit_edge
  %211 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %212, ptr noundef %rxbuf) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %213 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %5, ptr %prev.i2.i, align 4
  %214 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %rxbuf, ptr %5, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %215 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %212, ptr %prev3.i.i.i, align 4
  %216 = ptrtoint ptr %212 to i32
  call void @__asan_store4_noabort(i32 %216)
  store volatile ptr %5, ptr %212, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %call69 = call fastcc i32 @ath5k_rxbuf_setup(ptr noundef %add.ptr, ptr noundef %5)
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %list_move_tail.exit.do.body6_crit_edge, label %list_move_tail.exit.unlock_crit_edge

list_move_tail.exit.unlock_crit_edge:             ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

list_move_tail.exit.do.body6_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6

unlock:                                           ; preds = %list_move_tail.exit.unlock_crit_edge, %do.end53, %if.end29.unlock_crit_edge, %do.end24.unlock_crit_edge, %if.then4, %do.body.unlock_crit_edge
  call void @_raw_spin_unlock(ptr noundef %rxbuflock) #14
  %rx_pending = getelementptr i8, ptr %t, i32 -160
  %217 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 0, ptr %rx_pending, align 4
  %status.i = getelementptr i8, ptr %t, i32 -228
  %218 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load volatile i32, ptr %status.i, align 4
  %220 = and i32 %219, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool.not.i113 = icmp eq i32 %220, 0
  br i1 %tobool.not.i113, label %do.body1.i, label %unlock.ath5k_set_current_imask.exit_crit_edge

unlock.ath5k_set_current_imask.exit_crit_edge:    ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_set_current_imask.exit

do.body1.i:                                       ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #16
  %irqlock.i = getelementptr i8, ptr %t, i32 -204
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i) #14
  %imask6.i = getelementptr i8, ptr %t, i32 -208
  %221 = ptrtoint ptr %imask6.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %imask6.i, align 4
  %223 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %rx_pending, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool7.not.i = icmp eq i8 %224, 0
  %and.i = and i32 %222, -64
  %spec.select.i114 = select i1 %tobool7.not.i, i32 %222, i32 %and.i
  %tx_pending.i = getelementptr i8, ptr %t, i32 -159
  %225 = ptrtoint ptr %tx_pending.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %tx_pending.i, align 1, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool10.not.i = icmp eq i8 %226, 0
  %and12.i = and i32 %spec.select.i114, -4033
  %imask.1.i = select i1 %tobool10.not.i, i32 %spec.select.i114, i32 %and12.i
  %call14.i = call i32 @ath5k_hw_set_imr(ptr noundef %add.ptr, i32 noundef %imask.1.i) #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i, i32 noundef %call3.i) #14
  br label %ath5k_set_current_imask.exit

ath5k_set_current_imask.exit:                     ; preds = %do.body1.i, %unlock.ath5k_set_current_imask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_skb_addr) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_tasklet_tx(ptr noundef %t) #0 align 64 {
entry:
  %tries.i.i = alloca [3 x i8], align 1
  %ts.i = alloca %struct.ath5k_tx_status, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -23184
  %txqs = getelementptr i8, ptr %t, i32 -800
  %ah_txq_isr_txok_all = getelementptr i8, ptr %t, i32 4800
  %ah_proc_tx_desc.i = getelementptr i8, ptr %t, i32 5624
  %dev.i = getelementptr i8, ptr %t, i32 -22312
  %0 = getelementptr inbounds [3 x i8], ptr %tries.i.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %tries.i.i, i32 0, i32 2
  %tx_all_count.i.i = getelementptr i8, ptr %t, i32 660
  %tx_bytes_count.i.i = getelementptr i8, ptr %t, i32 668
  %ts_final_idx.i.i = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts.i, i32 0, i32 3
  %ts_final_retry.i.i = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts.i, i32 0, i32 4
  %ts_status.i.i = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts.i, i32 0, i32 2
  %ack_fail.i.i = getelementptr i8, ptr %t, i32 840
  %txerr_filt.i.i = getelementptr i8, ptr %t, i32 836
  %txerr_retry.i.i = getelementptr i8, ptr %t, i32 828
  %txerr_fifo.i.i = getelementptr i8, ptr %t, i32 832
  %ts_rssi.i.i = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts.i, i32 0, i32 5
  %ts_antenna.i.i = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts.i, i32 0, i32 8
  %antenna_tx103.i.i = getelementptr i8, ptr %t, i32 636
  %hw.i.i = getelementptr i8, ptr %t, i32 -22204
  %txbuflock.i = getelementptr i8, ptr %t, i32 -848
  %txbuf.i = getelementptr i8, ptr %t, i32 -856
  %prev.i2.i.i = getelementptr i8, ptr %t, i32 -852
  %txbuf_len.i = getelementptr i8, ptr %t, i32 -804
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [10 x %struct.ath5k_txq], ptr %txqs, i32 0, i32 %i.013
  %setup = getelementptr inbounds %struct.ath5k_txq, ptr %arrayidx, i32 0, i32 4
  %2 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %setup, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %4 = ptrtoint ptr %ah_txq_isr_txok_all to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ah_txq_isr_txok_all, align 8
  %shl = shl nuw nsw i32 1, %i.013
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ts.i) #14
  %6 = call ptr @memset(ptr %ts.i, i32 0, i32 12)
  %lock.i = getelementptr inbounds %struct.ath5k_txq, ptr %arrayidx, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %lock.i) #14
  %q.i = getelementptr inbounds %struct.ath5k_txq, ptr %arrayidx, i32 0, i32 2
  %7 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %q.i, align 4
  %cmp.not84.i = icmp eq ptr %8, %q.i
  br i1 %cmp.not84.i, label %if.then.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %txq_poll_mark.i = getelementptr inbounds %struct.ath5k_txq, ptr %arrayidx, i32 0, i32 7
  %txq_len.i = getelementptr inbounds %struct.ath5k_txq, ptr %arrayidx, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bf.085.i = phi ptr [ %8, %for.body.lr.ph.i ], [ %bf0.087.i, %for.inc.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %bf.085.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf0.087.i = load ptr, ptr %bf.085.i, align 4
  %10 = ptrtoint ptr %txq_poll_mark.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %txq_poll_mark.i, align 4
  %skb7.i = getelementptr inbounds %struct.ath5k_buf, ptr %bf.085.i, i32 0, i32 3
  %11 = ptrtoint ptr %skb7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skb7.i, align 4
  %cmp8.not.i = icmp eq ptr %12, null
  br i1 %cmp8.not.i, label %for.body.i.if.end28.i_crit_edge, label %if.then.i

for.body.i.if.end28.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i

if.then.i:                                        ; preds = %for.body.i
  %desc.i = getelementptr inbounds %struct.ath5k_buf, ptr %bf.085.i, i32 0, i32 1
  %13 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %desc.i, align 4
  %15 = ptrtoint ptr %ah_proc_tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ah_proc_tx_desc.i, align 8
  %call.i = call i32 %16(ptr noundef %add.ptr, ptr noundef %14, ptr noundef nonnull %ts.i) #14
  %17 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %call.i, label %do.body.i [
    i32 -115, label %if.then.i.for.end.i_crit_edge
    i32 0, label %if.end25.i
  ], !prof !415

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

do.body.i:                                        ; preds = %if.then.i
  %call21.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %do.body.i.for.end.i_crit_edge, label %if.then23.i

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.then23.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %add.ptr, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.147, i32 noundef %call.i, i32 noundef %19) #14
  br label %for.end.i

if.end25.i:                                       ; preds = %if.then.i
  %20 = ptrtoint ptr %skb7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb7.i, align 4
  store ptr null, ptr %skb7.i, align 4
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 8
  %skbaddr.i = getelementptr inbounds %struct.ath5k_buf, ptr %bf.085.i, i32 0, i32 4
  %24 = ptrtoint ptr %skbaddr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %skbaddr.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef 1, i32 noundef 0) #14
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %tries.i.i) #14
  %28 = ptrtoint ptr %tx_all_count.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_all_count.i.i, align 4
  %inc.i.i = add i32 %29, 1
  store i32 %inc.i.i, ptr %tx_all_count.i.i, align 4
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i, align 4
  %32 = ptrtoint ptr %tx_bytes_count.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_bytes_count.i.i, align 4
  %add.i.i = add i32 %33, %31
  store i32 %add.i.i, ptr %tx_bytes_count.i.i, align 4
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3
  %34 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 8
  %rates2.i.i = getelementptr inbounds %struct.ath5k_buf, ptr %bf.085.i, i32 0, i32 5
  %35 = call ptr @memcpy(ptr %34, ptr %rates2.i.i, i32 12)
  %count.i.i = getelementptr %struct.sk_buff, ptr %21, i32 0, i32 3, i32 9
  %36 = ptrtoint ptr %count.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %bf.load.i.i = load i16, ptr %count.i.i, align 1
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 11
  %conv.i.i = trunc i16 %bf.lshr.i.i to i8
  %37 = ptrtoint ptr %tries.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i.i, ptr %tries.i.i, align 1
  %count8.i.i = getelementptr %struct.sk_buff, ptr %21, i32 0, i32 3, i32 12
  %38 = ptrtoint ptr %count8.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %bf.load9.i.i = load i16, ptr %count8.i.i, align 1
  %bf.lshr10.i.i = lshr i16 %bf.load9.i.i, 11
  %conv11.i.i = trunc i16 %bf.lshr10.i.i to i8
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv11.i.i, ptr %0, align 1
  %count15.i.i = getelementptr %struct.sk_buff, ptr %21, i32 0, i32 3, i32 15
  %40 = ptrtoint ptr %count15.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %bf.load16.i.i = load i16, ptr %count15.i.i, align 1
  %bf.lshr17.i.i = lshr i16 %bf.load16.i.i, 11
  %conv18.i.i = trunc i16 %bf.lshr17.i.i to i8
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv18.i.i, ptr %1, align 1
  %bf.clear.i.i.i = and i16 %bf.load.i.i, 2047
  store i16 %bf.clear.i.i.i, ptr %count.i.i, align 1
  %bf.clear.1.i.i.i = and i16 %bf.load9.i.i, 2047
  store i16 %bf.clear.1.i.i.i, ptr %count8.i.i, align 1
  %bf.clear.2.i.i.i = and i16 %bf.load16.i.i, 2047
  store i16 %bf.clear.2.i.i.i, ptr %count15.i.i, align 1
  %count.3.i.i.i = getelementptr %struct.sk_buff, ptr %21, i32 0, i32 3, i32 18
  %42 = ptrtoint ptr %count.3.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %bf.load.3.i.i.i = load i16, ptr %count.3.i.i.i, align 1
  %bf.clear.3.i.i.i = and i16 %bf.load.3.i.i.i, 2047
  store i16 %bf.clear.3.i.i.i, ptr %count.3.i.i.i, align 1
  %add.ptr.i.i.i = getelementptr %struct.sk_buff, ptr %21, i32 0, i32 3, i32 20
  %43 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 28)
  %44 = ptrtoint ptr %ts_final_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ts_final_idx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp149.not.i.i = icmp eq i8 %45, 0
  br i1 %cmp149.not.i.i, label %if.end25.i.for.end.i.i_crit_edge, label %if.end25.i.for.body.i.i_crit_edge

if.end25.i.for.body.i.i_crit_edge:                ; preds = %if.end25.i
  br label %for.body.i.i

if.end25.i.for.end.i.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end25.i.for.body.i.i_crit_edge
  %i.0150.i.i = phi i32 [ %inc28.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end25.i.for.body.i.i_crit_edge ]
  %arrayidx24.i.i = getelementptr [3 x i8], ptr %tries.i.i, i32 0, i32 %i.0150.i.i
  %46 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx24.i.i, align 1
  %count26.i.i = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %34, i32 0, i32 %i.0150.i.i, i32 1
  %48 = ptrtoint ptr %count26.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %bf.load27.i.i = load i16, ptr %count26.i.i, align 1
  %bf.value.i.i = zext i8 %47 to i16
  %bf.shl.i.i = shl i16 %bf.value.i.i, 11
  %bf.clear.i.i = and i16 %bf.load27.i.i, 2047
  %bf.set.i.i = or i16 %bf.clear.i.i, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %count26.i.i, align 1
  %inc28.i.i = add nuw nsw i32 %i.0150.i.i, 1
  %49 = ptrtoint ptr %ts_final_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ts_final_idx.i.i, align 1
  %conv20.i.i = zext i8 %50 to i32
  %cmp.i.i = icmp ult i32 %inc28.i.i, %conv20.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.end.i.i.loopexit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.end.i.i.loopexit:                             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv20.i.i.le = zext i8 %50 to i32
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.i.i.loopexit, %if.end25.i.for.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ 0, %if.end25.i.for.end.i.i_crit_edge ], [ %conv20.i.i.le, %for.end.i.i.loopexit ]
  %51 = ptrtoint ptr %ts_final_retry.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ts_final_retry.i.i, align 2
  %count33.i.i = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %34, i32 0, i32 %.lcssa.i.i, i32 1
  %53 = ptrtoint ptr %count33.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %bf.load34.i.i = load i16, ptr %count33.i.i, align 1
  %bf.value35.i.i = zext i8 %52 to i16
  %bf.shl36.i.i = shl i16 %bf.value35.i.i, 11
  %bf.clear37.i.i = and i16 %bf.load34.i.i, 2047
  %bf.set38.i.i = or i16 %bf.clear37.i.i, %bf.shl36.i.i
  store i16 %bf.set38.i.i, ptr %count33.i.i, align 1
  %54 = ptrtoint ptr %ts_final_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ts_final_idx.i.i, align 1
  %conv41.i.i = zext i8 %55 to i32
  %add42.i.i = add nuw nsw i32 %conv41.i.i, 1
  %arrayidx43.i.i = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %34, i32 0, i32 %add42.i.i
  %56 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %arrayidx43.i.i, align 1
  %57 = ptrtoint ptr %ts_status.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ts_status.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !399

if.then.i.i:                                      ; preds = %for.end.i.i
  %59 = ptrtoint ptr %ack_fail.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ack_fail.i.i, align 8
  %inc47.i.i = add i32 %60, 1
  store i32 %inc47.i.i, ptr %ack_fail.i.i, align 8
  %61 = and i8 %58, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool50.not.i.i = icmp eq i8 %61, 0
  br i1 %tobool50.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then51.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then51.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cb.i.i.i, align 8
  %or.i.i = or i32 %63, 256
  store i32 %or.i.i, ptr %cb.i.i.i, align 8
  %64 = ptrtoint ptr %txerr_filt.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %txerr_filt.i.i, align 4
  %inc53.i.i = add i32 %65, 1
  store i32 %inc53.i.i, ptr %txerr_filt.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then51.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %66 = and i8 %58, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool57.not.i.i = icmp eq i8 %66, 0
  br i1 %tobool57.not.i.i, label %if.end.i.i.if.end61.i.i_crit_edge, label %if.then58.i.i

if.end.i.i.if.end61.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61.i.i

if.then58.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %67 = ptrtoint ptr %txerr_retry.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %txerr_retry.i.i, align 4
  %inc60.i.i = add i32 %68, 1
  store i32 %inc60.i.i, ptr %txerr_retry.i.i, align 4
  br label %if.end61.i.i

if.end61.i.i:                                     ; preds = %if.then58.i.i, %if.end.i.i.if.end61.i.i_crit_edge
  %69 = and i8 %58, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool65.not.i.i = icmp eq i8 %69, 0
  br i1 %tobool65.not.i.i, label %if.end61.i.i.if.end86.i.i_crit_edge, label %if.then66.i.i

if.end61.i.i.if.end86.i.i_crit_edge:              ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86.i.i

if.then66.i.i:                                    ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %txerr_fifo.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %txerr_fifo.i.i, align 8
  %inc68.i.i = add i32 %71, 1
  store i32 %inc68.i.i, ptr %txerr_fifo.i.i, align 8
  br label %if.end86.i.i

if.else.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cb.i.i.i, align 8
  %or71.i.i = or i32 %73, 512
  store i32 %or71.i.i, ptr %cb.i.i.i, align 8
  %74 = ptrtoint ptr %ts_rssi.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ts_rssi.i.i, align 1
  %conv72.i.i = sext i8 %75 to i32
  %76 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv72.i.i, ptr %add.ptr.i.i.i, align 4
  %77 = ptrtoint ptr %ts_final_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ts_final_idx.i.i, align 1
  %idxprom75.i.i = zext i8 %78 to i32
  %count77.i.i = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %34, i32 0, i32 %idxprom75.i.i, i32 1
  %79 = ptrtoint ptr %count77.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %bf.load78.i.i = load i16, ptr %count77.i.i, align 1
  %80 = add i16 %bf.load78.i.i, 2048
  store i16 %80, ptr %count77.i.i, align 1
  br label %if.end86.i.i

if.end86.i.i:                                     ; preds = %if.else.i.i, %if.then66.i.i, %if.end61.i.i.if.end86.i.i_crit_edge
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 19
  %81 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i.i.i.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %82, align 2
  %85 = and i16 %84, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %85)
  %cmp.i.i.i.i.i = icmp eq i16 %85, 3
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i.i, i32 30, i32 24
  %86 = and i16 %84, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %86)
  %cmp.i9.i.i.i.i = icmp eq i16 %86, -30720
  %add4.i.i.i.i = add nuw nsw i32 %spec.select.i.i.i.i, 2
  %padpos.1.i.i.i.i = select i1 %cmp.i9.i.i.i.i, i32 %add4.i.i.i.i, i32 %spec.select.i.i.i.i
  %and.i.i.i = and i32 %padpos.1.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end86.i.i.ath5k_tx_frame_completed.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end86.i.i.ath5k_tx_frame_completed.exit.i_crit_edge: ; preds = %if.end86.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_tx_frame_completed.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end86.i.i
  %87 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len.i, align 4
  %add.i.i.i = add nuw nsw i32 %and.i.i.i, %padpos.1.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %add.i.i.i)
  %cmp.not.i.i.i = icmp ult i32 %88, %add.i.i.i
  br i1 %cmp.not.i.i.i, label %land.lhs.true.i.i.i.ath5k_tx_frame_completed.exit.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.ath5k_tx_frame_completed.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_tx_frame_completed.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i147.i.i = getelementptr i8, ptr %82, i32 %and.i.i.i
  %89 = call ptr @memmove(ptr %add.ptr.i147.i.i, ptr %82, i32 %padpos.1.i.i.i.i)
  %call2.i.i.i = call ptr @skb_pull(ptr noundef %21, i32 noundef %and.i.i.i) #14
  br label %ath5k_tx_frame_completed.exit.i

ath5k_tx_frame_completed.exit.i:                  ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.ath5k_tx_frame_completed.exit.i_crit_edge, %if.end86.i.i.ath5k_tx_frame_completed.exit.i_crit_edge
  %90 = ptrtoint ptr %ts_antenna.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ts_antenna.i.i, align 2
  %92 = add i8 %91, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %92)
  %93 = icmp ult i8 %92, 4
  %conv88.i.i = zext i8 %91 to i32
  %arrayidx99.i.i = getelementptr %struct.ath5k_hw, ptr %add.ptr, i32 0, i32 59, i32 1, i32 %conv88.i.i
  %antenna_tx103.sink153.i.i = select i1 %93, ptr %arrayidx99.i.i, ptr %antenna_tx103.i.i
  %94 = ptrtoint ptr %antenna_tx103.sink153.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %antenna_tx103.sink153.i.i, align 4
  %inc105.i.i = add i32 %95, 1
  store i32 %inc105.i.i, ptr %antenna_tx103.sink153.i.i, align 4
  call fastcc void @trace_ath5k_tx_complete(ptr noundef %add.ptr, ptr noundef %21, ptr noundef %arrayidx, ptr noundef nonnull %ts.i) #14
  %96 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw.i.i, align 4
  call void @ieee80211_tx_status(ptr noundef %97, ptr noundef %21) #14
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %tries.i.i) #14
  br label %if.end28.i

if.end28.i:                                       ; preds = %ath5k_tx_frame_completed.exit.i, %for.body.i.if.end28.i_crit_edge
  %98 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx, align 4
  %call30.i = call i32 @ath5k_hw_get_txdp(ptr noundef %add.ptr, i32 noundef %99) #14
  %daddr.i = getelementptr inbounds %struct.ath5k_buf, ptr %bf.085.i, i32 0, i32 2
  %100 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %daddr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call30.i, i32 %101)
  %cmp31.not.i = icmp eq i32 %call30.i, %101
  br i1 %cmp31.not.i, label %if.end28.i.for.inc.i_crit_edge, label %if.then32.i

if.end28.i.for.inc.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then32.i:                                      ; preds = %if.end28.i
  call void @_raw_spin_lock(ptr noundef %txbuflock.i) #14
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %bf.085.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then32.i.__list_del_entry.exit.i.i_crit_edge

if.then32.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %bf.085.i, i32 0, i32 1
  %102 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %prev.i.i.i, align 4
  %104 = ptrtoint ptr %bf.085.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bf.085.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %prev1.i.i.i.i, align 4
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %105, ptr %103, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then32.i.__list_del_entry.exit.i.i_crit_edge
  %108 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %bf.085.i, ptr noundef %109, ptr noundef %txbuf.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %110 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %bf.085.i, ptr %prev.i2.i.i, align 4
  %111 = ptrtoint ptr %bf.085.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %txbuf.i, ptr %bf.085.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %bf.085.i, i32 0, i32 1
  %112 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev3.i.i.i.i, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %bf.085.i, ptr %109, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %114 = ptrtoint ptr %txbuf_len.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %txbuf_len.i, align 4
  %inc.i = add i32 %115, 1
  store i32 %inc.i, ptr %txbuf_len.i, align 4
  %116 = ptrtoint ptr %txq_len.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %txq_len.i, align 4
  %dec.i = add i32 %117, -1
  store i32 %dec.i, ptr %txq_len.i, align 4
  call void @_raw_spin_unlock(ptr noundef %txbuflock.i) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_move_tail.exit.i, %if.end28.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %bf0.087.i, %q.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then23.i, %do.body.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i) #14
  %txq_len42.i = getelementptr inbounds %struct.ath5k_txq, ptr %arrayidx, i32 0, i32 5
  %118 = ptrtoint ptr %txq_len42.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %txq_len42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %119)
  %cmp43.i = icmp slt i32 %119, 25
  br i1 %cmp43.i, label %land.lhs.true.i, label %for.end.i.ath5k_tx_processq.exit_crit_edge

for.end.i.ath5k_tx_processq.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_tx_processq.exit

land.lhs.true.i:                                  ; preds = %for.end.i
  %120 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %121)
  %cmp45.i = icmp ult i32 %121, 4
  br i1 %cmp45.i, label %if.then46.i, label %land.lhs.true.i.ath5k_tx_processq.exit_crit_edge

land.lhs.true.i.ath5k_tx_processq.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_tx_processq.exit

if.then46.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %122 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hw.i.i, align 4
  call void @ieee80211_wake_queue(ptr noundef %123, i32 noundef %121) #14
  br label %ath5k_tx_processq.exit

ath5k_tx_processq.exit:                           ; preds = %if.then46.i, %land.lhs.true.i.ath5k_tx_processq.exit_crit_edge, %for.end.i.ath5k_tx_processq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ts.i) #14
  br label %for.inc

for.inc:                                          ; preds = %ath5k_tx_processq.exit, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tx_pending = getelementptr i8, ptr %t, i32 -1475
  %124 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %tx_pending, align 1
  %status.i = getelementptr i8, ptr %t, i32 -1544
  %125 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %status.i, align 4
  %127 = and i32 %126, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.not.i = icmp eq i32 %127, 0
  br i1 %tobool.not.i, label %do.body1.i, label %for.end.ath5k_set_current_imask.exit_crit_edge

for.end.ath5k_set_current_imask.exit_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %ath5k_set_current_imask.exit

do.body1.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %irqlock.i = getelementptr i8, ptr %t, i32 -1520
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i) #14
  %imask6.i = getelementptr i8, ptr %t, i32 -1524
  %128 = ptrtoint ptr %imask6.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %imask6.i, align 4
  %rx_pending.i = getelementptr i8, ptr %t, i32 -1476
  %130 = ptrtoint ptr %rx_pending.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %rx_pending.i, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool7.not.i = icmp eq i8 %131, 0
  %and.i = and i32 %129, -64
  %spec.select.i = select i1 %tobool7.not.i, i32 %129, i32 %and.i
  %132 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %tx_pending, align 1, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool10.not.i = icmp eq i8 %133, 0
  %and12.i = and i32 %spec.select.i, -4033
  %imask.1.i = select i1 %tobool10.not.i, i32 %spec.select.i, i32 %and12.i
  %call14.i = call i32 @ath5k_hw_set_imr(ptr noundef %add.ptr, i32 noundef %imask.1.i) #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i, i32 noundef %call3.i) #14
  br label %ath5k_set_current_imask.exit

ath5k_set_current_imask.exit:                     ; preds = %do.body1.i, %for.end.ath5k_set_current_imask.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_tasklet_beacon(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -23716
  %opmode = getelementptr i8, ptr %t, i32 -2100
  %0 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i64 @ath5k_hw_get_tsf64(ptr noundef %add.ptr) #14
  %bintval = getelementptr i8, ptr %t, i32 64
  %2 = ptrtoint ptr %bintval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bintval, align 4
  %nexttbtt = getelementptr i8, ptr %t, i32 72
  %4 = ptrtoint ptr %nexttbtt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nexttbtt, align 4
  %add = add i32 %5, %3
  store i32 %add, ptr %nexttbtt, align 4
  %debug = getelementptr i8, ptr %t, i32 -2096
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end8_crit_edge, label %land.rhs

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

land.rhs:                                         ; preds = %if.then
  %call1 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.rhs.if.end8_crit_edge, label %if.then5, !prof !399

land.rhs.if.end8_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then5:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %nexttbtt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nexttbtt, align 4
  %shr = lshr i64 %call, 10
  %conv = trunc i64 %shr to i32
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %add.ptr, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.148, ptr noundef nonnull @__func__.ath5k_tasklet_beacon, i32 noundef 2245, i32 noundef %9, i32 noundef %conv, i64 noundef %call)
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %block = getelementptr i8, ptr %t, i32 -44
  tail call void @_raw_spin_lock(ptr noundef %block) #14
  tail call fastcc void @ath5k_beacon_send(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %block) #14
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5, %land.rhs.if.end8_crit_edge, %if.then.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_tasklet_ani(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -24128
  %ah_cal_mask = getelementptr i8, ptr %t, i32 4672
  %0 = ptrtoint ptr %ah_cal_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ah_cal_mask, align 8
  %2 = or i8 %1, 8
  store i8 %2, ptr %ah_cal_mask, align 8
  tail call void @ath5k_ani_calibration(ptr noundef %add.ptr) #14
  %3 = ptrtoint ptr %ah_cal_mask to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ah_cal_mask, align 8
  %5 = and i8 %4, -9
  store i8 %5, ptr %ah_cal_mask, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_reset_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -21724
  %lock = getelementptr i8, ptr %work, i32 -20836
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %call = tail call fastcc i32 @ath5k_reset(ptr noundef %add.ptr, ptr noundef null, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef %lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_calibrate_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -21768
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %ah_cal_next_full = getelementptr i8, ptr %work, i32 7020
  %1 = ptrtoint ptr %ah_cal_next_full to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ah_cal_next_full, align 4
  %sub = sub i32 %0, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %3, 6000
  %4 = ptrtoint ptr %ah_cal_next_full to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %ah_cal_next_full, align 4
  %ah_cal_mask = getelementptr i8, ptr %work, i32 7032
  %5 = ptrtoint ptr %ah_cal_mask to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ah_cal_mask, align 8
  %7 = or i8 %6, 1
  store i8 %7, ptr %ah_cal_mask, align 8
  %debug = getelementptr i8, ptr %work, i32 -148
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 4
  %and = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.do.end_crit_edge, label %land.rhs

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.rhs:                                         ; preds = %if.then
  %call3 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.rhs.do.end_crit_edge, label %if.then7, !prof !399

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then7:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %add.ptr, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.149, ptr noundef nonnull @__func__.ath5k_calibrate_work, i32 noundef 2462)
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.rhs.do.end_crit_edge, %if.then.do.end_crit_edge
  %call8 = tail call i32 @ath5k_hw_gainf_calibrate(ptr noundef %add.ptr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 3
  br i1 %cmp9, label %do.body12, label %do.end.do.body37_crit_edge

do.end.do.body37_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body37

do.body12:                                        ; preds = %do.end
  %10 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug, align 4
  %and15 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body12.do.end30_crit_edge, label %land.rhs17

do.body12.do.end30_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

land.rhs17:                                       ; preds = %do.body12
  %call18 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.rhs17.do.end30_crit_edge, label %if.then27, !prof !399

land.rhs17.do.end30_crit_edge:                    ; preds = %land.rhs17
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

if.then27:                                        ; preds = %land.rhs17
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %add.ptr, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.150, ptr noundef nonnull @__func__.ath5k_calibrate_work, i32 noundef 2470)
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.rhs17.do.end30_crit_edge, %do.body12.do.end30_crit_edge
  %hw = getelementptr i8, ptr %work, i32 -20788
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %reset_work = getelementptr i8, ptr %work, i32 -44
  tail call void @ieee80211_queue_work(ptr noundef %13, ptr noundef %reset_work) #14
  br label %do.body37

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %ah_cal_mask32 = getelementptr i8, ptr %work, i32 7032
  %14 = ptrtoint ptr %ah_cal_mask32 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ah_cal_mask32, align 8
  %16 = or i8 %15, 2
  store i8 %16, ptr %ah_cal_mask32, align 8
  br label %do.body37

do.body37:                                        ; preds = %if.else, %do.end30, %do.end.do.body37_crit_edge
  %debug38 = getelementptr i8, ptr %work, i32 -148
  %17 = ptrtoint ptr %debug38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug38, align 4
  %and40 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body37.do.end58_crit_edge, label %land.rhs42

do.body37.do.end58_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end58

land.rhs42:                                       ; preds = %do.body37
  %call43 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.rhs42.do.end58_crit_edge, label %if.then52, !prof !399

land.rhs42.do.end58_crit_edge:                    ; preds = %land.rhs42
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end58

if.then52:                                        ; preds = %land.rhs42
  call void @__sanitizer_cov_trace_pc() #16
  %curchan = getelementptr i8, ptr %work, i32 -116
  %19 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %curchan, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %22, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #14
  %23 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %curchan, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %hw_value, align 2
  %conv55 = zext i16 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %add.ptr, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.151, ptr noundef nonnull @__func__.ath5k_calibrate_work, i32 noundef 2479, i32 noundef %call.i, i32 noundef %conv55)
  br label %do.end58

do.end58:                                         ; preds = %if.then52, %land.rhs42.do.end58_crit_edge, %do.body37.do.end58_crit_edge
  %curchan59 = getelementptr i8, ptr %work, i32 -116
  %27 = ptrtoint ptr %curchan59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %curchan59, align 4
  %call60 = tail call i32 @ath5k_hw_phy_calibrate(ptr noundef %add.ptr, ptr noundef %28) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end58.if.end73_crit_edge, label %do.body63

do.end58.if.end73_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

do.body63:                                        ; preds = %do.end58
  %call64 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %do.body63.if.end73_crit_edge, label %if.then66

do.body63.if.end73_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.then66:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %curchan59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %curchan59, align 4
  %center_freq68 = getelementptr inbounds %struct.ieee80211_channel, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %center_freq68 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %center_freq68, align 4
  %mul.i117 = mul i32 %32, 1000
  %call.i118 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i117) #14
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %add.ptr, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.152, i32 noundef %call.i118)
  br label %if.end73

if.end73:                                         ; preds = %if.then66, %do.body63.if.end73_crit_edge, %do.end58.if.end73_crit_edge
  %ah_cal_mask74 = getelementptr i8, ptr %work, i32 7032
  %33 = ptrtoint ptr %ah_cal_mask74 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ah_cal_mask74, align 8
  %conv75 = zext i8 %34 to i32
  %and76 = and i32 %conv75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.else83, label %if.end73.if.end94.sink.split_crit_edge

if.end73.if.end94.sink.split_crit_edge:           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end94.sink.split

if.else83:                                        ; preds = %if.end73
  %and86 = and i32 %conv75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.else83.if.end94_crit_edge, label %if.else83.if.end94.sink.split_crit_edge

if.else83.if.end94.sink.split_crit_edge:          ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end94.sink.split

if.else83.if.end94_crit_edge:                     ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end94

if.end94.sink.split:                              ; preds = %if.else83.if.end94.sink.split_crit_edge, %if.end73.if.end94.sink.split_crit_edge
  %.sink = phi i8 [ -2, %if.end73.if.end94.sink.split_crit_edge ], [ -3, %if.else83.if.end94.sink.split_crit_edge ]
  %and91 = and i8 %34, %.sink
  %35 = ptrtoint ptr %ah_cal_mask74 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %and91, ptr %ah_cal_mask74, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.end94.sink.split, %if.else83.if.end94_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_tx_complete_poll_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24152
  %status = getelementptr i8, ptr %work, i32 -2512
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %work, i32 -23264
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %txqs = getelementptr i8, ptr %work, i32 -1768
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.079 = phi i32 [ 0, %if.end ], [ %inc23, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [10 x %struct.ath5k_txq], ptr %txqs, i32 0, i32 %i.079
  %setup = getelementptr inbounds %struct.ath5k_txq, ptr %arrayidx, i32 0, i32 4
  %3 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %setup, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then2

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then2:                                         ; preds = %for.body
  %lock5 = getelementptr inbounds %struct.ath5k_txq, ptr %arrayidx, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock5) #14
  %txq_len = getelementptr inbounds %struct.ath5k_txq, ptr %arrayidx, i32 0, i32 5
  %5 = ptrtoint ptr %txq_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %txq_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp6 = icmp sgt i32 %6, 1
  br i1 %cmp6, label %if.then7, label %if.then2.if.end20_crit_edge

if.then2.if.end20_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then7:                                         ; preds = %if.then2
  %txq_poll_mark = getelementptr inbounds %struct.ath5k_txq, ptr %arrayidx, i32 0, i32 7
  %7 = ptrtoint ptr %txq_poll_mark to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %txq_poll_mark, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.then7
  %debug = getelementptr i8, ptr %work, i32 -2532
  %9 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug, align 4
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body.do.body26_crit_edge, label %land.rhs

do.body.do.body26_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body26

land.rhs:                                         ; preds = %do.body
  %call11 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.rhs.do.body26_crit_edge, label %if.then15, !prof !399

land.rhs.do.body26_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body26

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %add.ptr, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.153, ptr noundef nonnull @__func__.ath5k_tx_complete_poll_work, i32 noundef 2527, i32 noundef %12)
  br label %do.body26

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %txq_poll_mark to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %txq_poll_mark, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then2.if.end20_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock5) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end20, %for.body.for.inc_crit_edge
  %inc23 = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc23, 10
  br i1 %exitcond.not, label %for.inc.if.end46_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.if.end46_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

do.body26:                                        ; preds = %if.then15, %land.rhs.do.body26_crit_edge, %do.body.do.body26_crit_edge
  %txq_stuck.c77 = getelementptr inbounds %struct.ath5k_txq, ptr %arrayidx, i32 0, i32 8
  %14 = ptrtoint ptr %txq_stuck.c77 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %txq_stuck.c77, align 4
  %inc.c78 = add i32 %15, 1
  store i32 %inc.c78, ptr %txq_stuck.c77, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock5) #14
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  %and29 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body26.do.end44_crit_edge, label %land.rhs31

do.body26.do.end44_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end44

land.rhs31:                                       ; preds = %do.body26
  %call32 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.rhs31.do.end44_crit_edge, label %if.then41, !prof !399

land.rhs31.do.end44_crit_edge:                    ; preds = %land.rhs31
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end44

if.then41:                                        ; preds = %land.rhs31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %add.ptr, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.154, ptr noundef nonnull @__func__.ath5k_tx_complete_poll_work, i32 noundef 2542)
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %land.rhs31.do.end44_crit_edge, %do.body26.do.end44_crit_edge
  %call45 = tail call fastcc i32 @ath5k_reset(ptr noundef %add.ptr, ptr noundef null, i1 noundef zeroext true)
  br label %if.end46

if.end46:                                         ; preds = %do.end44, %for.inc.if.end46_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #14
  %hw = getelementptr i8, ptr %work, i32 -23172
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %19, ptr noundef %work, i32 noundef 300) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_regd_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_reg_notifier(ptr noundef %wiphy, ptr noundef %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wiphy_to_ieee80211_hw(ptr noundef %wiphy) #14
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %regulatory.i = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 22
  tail call void @ath_reg_notifier_apply(ptr noundef %wiphy, ptr noundef %request, ptr noundef %regulatory.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath_is_world_regd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_hint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_init_leds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_sysfs_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath5k_setup_rate_idx(ptr nocapture noundef writeonly %ah, ptr nocapture noundef readonly %b) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %b, i32 0, i32 2
  %0 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %band, align 4
  %arrayidx2 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %1, i32 0
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %arrayidx2, align 1
  %3 = load i32, ptr %band, align 4
  %arrayidx2.1 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %3, i32 1
  %4 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %arrayidx2.1, align 1
  %5 = load i32, ptr %band, align 4
  %arrayidx2.2 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %5, i32 2
  %6 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %arrayidx2.2, align 1
  %7 = load i32, ptr %band, align 4
  %arrayidx2.3 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %7, i32 3
  %8 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %arrayidx2.3, align 1
  %9 = load i32, ptr %band, align 4
  %arrayidx2.4 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %9, i32 4
  %10 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %arrayidx2.4, align 1
  %11 = load i32, ptr %band, align 4
  %arrayidx2.5 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %11, i32 5
  %12 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %arrayidx2.5, align 1
  %13 = load i32, ptr %band, align 4
  %arrayidx2.6 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %13, i32 6
  %14 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %arrayidx2.6, align 1
  %15 = load i32, ptr %band, align 4
  %arrayidx2.7 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %15, i32 7
  %16 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %arrayidx2.7, align 1
  %17 = load i32, ptr %band, align 4
  %arrayidx2.8 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %17, i32 8
  %18 = ptrtoint ptr %arrayidx2.8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %arrayidx2.8, align 1
  %19 = load i32, ptr %band, align 4
  %arrayidx2.9 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %19, i32 9
  %20 = ptrtoint ptr %arrayidx2.9 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %arrayidx2.9, align 1
  %21 = load i32, ptr %band, align 4
  %arrayidx2.10 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %21, i32 10
  %22 = ptrtoint ptr %arrayidx2.10 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %arrayidx2.10, align 1
  %23 = load i32, ptr %band, align 4
  %arrayidx2.11 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %23, i32 11
  %24 = ptrtoint ptr %arrayidx2.11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %arrayidx2.11, align 1
  %25 = load i32, ptr %band, align 4
  %arrayidx2.12 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %25, i32 12
  %26 = ptrtoint ptr %arrayidx2.12 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %arrayidx2.12, align 1
  %27 = load i32, ptr %band, align 4
  %arrayidx2.13 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %27, i32 13
  %28 = ptrtoint ptr %arrayidx2.13 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %arrayidx2.13, align 1
  %29 = load i32, ptr %band, align 4
  %arrayidx2.14 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %29, i32 14
  %30 = ptrtoint ptr %arrayidx2.14 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %arrayidx2.14, align 1
  %31 = load i32, ptr %band, align 4
  %arrayidx2.15 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %31, i32 15
  %32 = ptrtoint ptr %arrayidx2.15 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %arrayidx2.15, align 1
  %33 = load i32, ptr %band, align 4
  %arrayidx2.16 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %33, i32 16
  %34 = ptrtoint ptr %arrayidx2.16 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %arrayidx2.16, align 1
  %35 = load i32, ptr %band, align 4
  %arrayidx2.17 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %35, i32 17
  %36 = ptrtoint ptr %arrayidx2.17 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %arrayidx2.17, align 1
  %37 = load i32, ptr %band, align 4
  %arrayidx2.18 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %37, i32 18
  %38 = ptrtoint ptr %arrayidx2.18 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %arrayidx2.18, align 1
  %39 = load i32, ptr %band, align 4
  %arrayidx2.19 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %39, i32 19
  %40 = ptrtoint ptr %arrayidx2.19 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %arrayidx2.19, align 1
  %41 = load i32, ptr %band, align 4
  %arrayidx2.20 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %41, i32 20
  %42 = ptrtoint ptr %arrayidx2.20 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %arrayidx2.20, align 1
  %43 = load i32, ptr %band, align 4
  %arrayidx2.21 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %43, i32 21
  %44 = ptrtoint ptr %arrayidx2.21 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %arrayidx2.21, align 1
  %45 = load i32, ptr %band, align 4
  %arrayidx2.22 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %45, i32 22
  %46 = ptrtoint ptr %arrayidx2.22 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %arrayidx2.22, align 1
  %47 = load i32, ptr %band, align 4
  %arrayidx2.23 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %47, i32 23
  %48 = ptrtoint ptr %arrayidx2.23 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %arrayidx2.23, align 1
  %49 = load i32, ptr %band, align 4
  %arrayidx2.24 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %49, i32 24
  %50 = ptrtoint ptr %arrayidx2.24 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %arrayidx2.24, align 1
  %51 = load i32, ptr %band, align 4
  %arrayidx2.25 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %51, i32 25
  %52 = ptrtoint ptr %arrayidx2.25 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %arrayidx2.25, align 1
  %53 = load i32, ptr %band, align 4
  %arrayidx2.26 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %53, i32 26
  %54 = ptrtoint ptr %arrayidx2.26 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %arrayidx2.26, align 1
  %55 = load i32, ptr %band, align 4
  %arrayidx2.27 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %55, i32 27
  %56 = ptrtoint ptr %arrayidx2.27 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %arrayidx2.27, align 1
  %57 = load i32, ptr %band, align 4
  %arrayidx2.28 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %57, i32 28
  %58 = ptrtoint ptr %arrayidx2.28 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %arrayidx2.28, align 1
  %59 = load i32, ptr %band, align 4
  %arrayidx2.29 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %59, i32 29
  %60 = ptrtoint ptr %arrayidx2.29 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %arrayidx2.29, align 1
  %61 = load i32, ptr %band, align 4
  %arrayidx2.30 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %61, i32 30
  %62 = ptrtoint ptr %arrayidx2.30 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %arrayidx2.30, align 1
  %63 = load i32, ptr %band, align 4
  %arrayidx2.31 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %63, i32 31
  %64 = ptrtoint ptr %arrayidx2.31 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %arrayidx2.31, align 1
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %b, i32 0, i32 4
  %65 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp548 = icmp sgt i32 %66, 0
  br i1 %cmp548, label %for.body7.lr.ph, label %entry.for.end29_crit_edge

entry.for.end29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end29

for.body7.lr.ph:                                  ; preds = %entry
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %b, i32 0, i32 1
  br label %for.body7

for.body7:                                        ; preds = %for.inc27.for.body7_crit_edge, %for.body7.lr.ph
  %conv450 = phi i32 [ 0, %for.body7.lr.ph ], [ %conv4, %for.inc27.for.body7_crit_edge ]
  %i.149 = phi i8 [ 0, %for.body7.lr.ph ], [ %inc28, %for.inc27.for.body7_crit_edge ]
  %67 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %band, align 4
  %69 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bitrates, align 4
  %hw_value = getelementptr %struct.ieee80211_rate, ptr %70, i32 %conv450, i32 2
  %71 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %hw_value, align 2
  %idxprom13 = zext i16 %72 to i32
  %arrayidx14 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %68, i32 %idxprom13
  %73 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %i.149, ptr %arrayidx14, align 1
  %74 = load ptr, ptr %bitrates, align 4
  %hw_value_short = getelementptr %struct.ieee80211_rate, ptr %74, i32 %conv450, i32 3
  %75 = ptrtoint ptr %hw_value_short to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %hw_value_short, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool.not = icmp eq i16 %76, 0
  br i1 %tobool.not, label %for.body7.for.inc27_crit_edge, label %if.then

for.body7.for.inc27_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc27

if.then:                                          ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #16
  %77 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %band, align 4
  %idxprom25 = zext i16 %76 to i32
  %arrayidx26 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 11, i32 %78, i32 %idxprom25
  %79 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %i.149, ptr %arrayidx26, align 1
  br label %for.inc27

for.inc27:                                        ; preds = %if.then, %for.body7.for.inc27_crit_edge
  %inc28 = add i8 %i.149, 1
  %conv4 = zext i8 %inc28 to i32
  %80 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %n_bitrates, align 4
  %cmp5 = icmp sgt i32 %81, %conv4
  br i1 %cmp5, label %for.inc27.for.body7_crit_edge, label %for.inc27.for.end29_crit_edge

for.inc27.for.end29_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end29

for.inc27.for.body7_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body7

for.end29:                                        ; preds = %for.inc27.for.end29_crit_edge, %entry.for.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_debug_dump_bands(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath5k_channel_ok(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_setup_tx_queue(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_get_rxdp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath5k_rx(ptr noundef %priv, ptr noundef %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath5k_rx, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_ath5k_rx, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !405

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !399

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !416
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath5k_rx, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %priv, ptr noundef %skb) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !417
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !417
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !399

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !408
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath5k_rx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath5k_rx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_ath5k_rx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.89, i32 noundef 37, ptr noundef nonnull @.str.90) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !409
  %38 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath_is_mybeacon(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath5k_hw_check_beacon_timers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_napi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_get_txdp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath5k_tx_complete(ptr noundef %priv, ptr noundef %skb, ptr noundef %q, ptr noundef %ts) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath5k_tx_complete, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_ath5k_tx_complete, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !405

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !399

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !418
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath5k_tx_complete, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %priv, ptr noundef %skb, ptr noundef %q, ptr noundef %ts) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !419
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !419
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !399

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !408
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath5k_tx_complete, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath5k_tx_complete.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_ath5k_tx_complete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.89, i32 noundef 94, ptr noundef nonnull @.str.90) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !409
  %38 = tail call i32 @llvm.read_register.i32(metadata !389) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_ani_calibration(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_gainf_calibrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_phy_calibrate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_to_ieee80211_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_reg_notifier_apply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !32, !34, !36, !37, !39, !41, !43, !45, !47, !48, !50, !52, !53, !54, !56, !58, !59, !61, !63, !64, !66, !68, !69, !71, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !104, !106, !107, !109, !110, !112, !114, !116, !118, !119, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !135, !137, !138, !139, !140, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !230, !231, !232, !233, !235, !236, !238, !239, !240, !242, !244, !245, !247, !249, !250, !252, !253, !255, !257, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !281, !283, !285, !287, !289, !291, !292, !294, !295, !297, !299, !301, !303, !304, !306, !307, !309, !311, !312, !314, !316, !318, !320, !322, !324, !325, !327, !328, !330, !331, !332, !333, !335, !337, !339, !341, !343, !345, !346, !348, !350, !351, !353, !355, !357, !359, !360, !361, !363, !364, !366, !368, !370, !371, !372, !374, !375, !377, !378, !380, !382, !384, !386, !387}
!llvm.named.register.sp = !{!389}
!llvm.module.flags = !{!390, !391, !392, !393, !394, !395, !396, !397}
!llvm.ident = !{!398}

!0 = !{ptr @__tracepoint_ath5k_rx, !1, !"__tracepoint_ath5k_rx", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath5k/./trace.h", i32 21, i32 1}
!2 = !{ptr @__tracepoint_ptr_ath5k_rx, !1, !"__tracepoint_ptr_ath5k_rx", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_ath5k_rx, !1, !"__SCK__tp_func_ath5k_rx", i1 false, i1 false}
!4 = !{ptr @__tracepoint_ath5k_tx, !5, !"__tracepoint_ath5k_tx", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath5k/./trace.h", i32 39, i32 1}
!6 = !{ptr @__tracepoint_ptr_ath5k_tx, !5, !"__tracepoint_ptr_ath5k_tx", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_ath5k_tx, !5, !"__SCK__tp_func_ath5k_tx", i1 false, i1 false}
!8 = !{ptr @__tracepoint_ath5k_tx_complete, !9, !"__tracepoint_ath5k_tx_complete", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath5k/./trace.h", i32 65, i32 1}
!10 = !{ptr @__tracepoint_ptr_ath5k_tx_complete, !9, !"__tracepoint_ptr_ath5k_tx_complete", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_ath5k_tx_complete, !9, !"__SCK__tp_func_ath5k_tx_complete", i1 false, i1 false}
!12 = !{ptr @event_class_ath5k_rx, !1, !"event_class_ath5k_rx", i1 false, i1 false}
!13 = !{ptr @event_ath5k_rx, !1, !"event_ath5k_rx", i1 false, i1 false}
!14 = !{ptr @__event_ath5k_rx, !1, !"__event_ath5k_rx", i1 false, i1 false}
!15 = !{ptr @event_class_ath5k_tx, !5, !"event_class_ath5k_tx", i1 false, i1 false}
!16 = !{ptr @event_ath5k_tx, !5, !"event_ath5k_tx", i1 false, i1 false}
!17 = !{ptr @__event_ath5k_tx, !5, !"__event_ath5k_tx", i1 false, i1 false}
!18 = !{ptr @event_class_ath5k_tx_complete, !9, !"event_class_ath5k_tx_complete", i1 false, i1 false}
!19 = !{ptr @event_ath5k_tx_complete, !9, !"event_ath5k_tx_complete", i1 false, i1 false}
!20 = !{ptr @__event_ath5k_tx_complete, !9, !"__event_ath5k_tx_complete", i1 false, i1 false}
!21 = !{ptr @__bpf_trace_tp_map_ath5k_rx, !1, !"__bpf_trace_tp_map_ath5k_rx", i1 false, i1 false}
!22 = !{ptr @__bpf_trace_tp_map_ath5k_tx, !5, !"__bpf_trace_tp_map_ath5k_tx", i1 false, i1 false}
!23 = !{ptr @__bpf_trace_tp_map_ath5k_tx_complete, !9, !"__bpf_trace_tp_map_ath5k_tx_complete", i1 false, i1 false}
!24 = !{ptr @__param_nohwcrypt, !25, !"__param_nohwcrypt", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 76, i32 1}
!26 = !{ptr @__UNIQUE_ID_nohwcrypttype388, !25, !"__UNIQUE_ID_nohwcrypttype388", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_nohwcrypt389, !28, !"__UNIQUE_ID_nohwcrypt389", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 77, i32 1}
!29 = !{ptr @__param_fastchanswitch, !30, !"__param_fastchanswitch", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 80, i32 1}
!31 = !{ptr @__UNIQUE_ID_fastchanswitchtype390, !30, !"__UNIQUE_ID_fastchanswitchtype390", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_fastchanswitch391, !33, !"__UNIQUE_ID_fastchanswitch391", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 81, i32 1}
!34 = !{ptr @__param_no_hw_rfkill_switch, !35, !"__param_no_hw_rfkill_switch", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 84, i32 1}
!36 = !{ptr @__UNIQUE_ID_no_hw_rfkill_switchtype392, !35, !"__UNIQUE_ID_no_hw_rfkill_switchtype392", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_no_hw_rfkill_switch393, !38, !"__UNIQUE_ID_no_hw_rfkill_switch393", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 86, i32 1}
!39 = !{ptr @__UNIQUE_ID_author394, !40, !"__UNIQUE_ID_author394", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 90, i32 1}
!41 = !{ptr @__UNIQUE_ID_author395, !42, !"__UNIQUE_ID_author395", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 91, i32 1}
!43 = !{ptr @__UNIQUE_ID_description396, !44, !"__UNIQUE_ID_description396", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 92, i32 1}
!45 = !{ptr @__UNIQUE_ID_file397, !46, !"__UNIQUE_ID_file397", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 93, i32 1}
!47 = !{ptr @__UNIQUE_ID_license398, !46, !"__UNIQUE_ID_license398", i1 false, i1 false}
!48 = !{ptr @.str, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 213, i32 21}
!50 = !{ptr @.str.1, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 448, i32 2}
!52 = !{ptr @.str.2, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @__func__.ath5k_chan_set, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.3, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 464, i32 3}
!56 = !{ptr @.str.4, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 551, i32 2}
!58 = !{ptr @__func__.ath5k_update_bssid_mask_and_opmode, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.5, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 571, i32 2}
!61 = !{ptr @.str.6, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 1671, i32 3}
!63 = !{ptr @.str.7, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.8, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 1682, i32 3}
!66 = !{ptr @.str.9, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2101, i32 4}
!68 = !{ptr @.str.10, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.11, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2140, i32 3}
!71 = !{ptr @__func__.ath5k_beacon_update_timers, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.12, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2165, i32 3}
!74 = !{ptr @.str.13, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2168, i32 3}
!76 = !{ptr @.str.14, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2171, i32 3}
!78 = !{ptr @.str.15, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2174, i32 2}
!80 = !{ptr @.str.16, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2178, i32 2}
!82 = !{ptr @.str.17, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.18, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.19, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ath5k_init_ah.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2620, i32 2}
!87 = !{ptr @.str.20, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ath5k_init_ah.__key.21, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2621, i32 2}
!90 = !{ptr @.str.22, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ath5k_init_ah.__key.23, !92, !"__key", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2622, i32 2}
!93 = !{ptr @.str.24, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ath5k_init_ah.__key.25, !95, !"__key", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2623, i32 2}
!96 = !{ptr @.str.26, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @ath5k_init_ah.__key.27, !98, !"__key", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2624, i32 2}
!99 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.29, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2627, i32 54}
!102 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2629, i32 3}
!104 = !{ptr @ath5k_init_ah.__key.31, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2648, i32 2}
!106 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2669, i32 2}
!109 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2681, i32 5}
!112 = !{ptr @.str.36, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2689, i32 5}
!114 = !{ptr @.str.37, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2695, i32 5}
!116 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2776, i32 2}
!118 = !{ptr @__func__.ath5k_start, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2880, i32 3}
!121 = !{ptr @__func__.ath5k_stop, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.40, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 3242, i32 3}
!124 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @_ath5k_printk._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @_ath5k_printk._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.43, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 3245, i32 3}
!129 = !{ptr @_ath5k_printk._entry.42, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @_ath5k_printk._entry_ptr.44, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @ath5k_modparam_nohwcrypt, !132, !"ath5k_modparam_nohwcrypt", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 75, i32 6}
!133 = !{ptr @modparam_fastchanswitch, !134, !"modparam_fastchanswitch", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 79, i32 13}
!135 = !{ptr @ath5k_modparam_no_hw_rfkill_switch, !136, !"ath5k_modparam_no_hw_rfkill_switch", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 83, i32 13}
!137 = !{ptr @__tpstrtab_ath5k_rx, !1, !"__tpstrtab_ath5k_rx", i1 false, i1 false}
!138 = !{ptr @__tpstrtab_ath5k_tx, !5, !"__tpstrtab_ath5k_tx", i1 false, i1 false}
!139 = !{ptr @__tpstrtab_ath5k_tx_complete, !9, !"__tpstrtab_ath5k_tx_complete", i1 false, i1 false}
!140 = !{ptr @str__ath5k__trace_system_name, !141, !"str__ath5k__trace_system_name", i1 false, i1 false}
!141 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!142 = !{ptr @.str.45, !1, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.46, !1, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.47, !1, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.48, !1, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.49, !1, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.50, !1, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @trace_event_fields_ath5k_rx, !1, !"trace_event_fields_ath5k_rx", i1 false, i1 false}
!149 = !{ptr @trace_event_type_funcs_ath5k_rx, !1, !"trace_event_type_funcs_ath5k_rx", i1 false, i1 false}
!150 = !{ptr @.str.51, !1, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @print_fmt_ath5k_rx, !1, !"print_fmt_ath5k_rx", i1 false, i1 false}
!152 = !{ptr @.str.52, !5, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.53, !5, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @trace_event_fields_ath5k_tx, !5, !"trace_event_fields_ath5k_tx", i1 false, i1 false}
!155 = !{ptr @trace_event_type_funcs_ath5k_tx, !5, !"trace_event_type_funcs_ath5k_tx", i1 false, i1 false}
!156 = !{ptr @.str.54, !5, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @print_fmt_ath5k_tx, !5, !"print_fmt_ath5k_tx", i1 false, i1 false}
!158 = !{ptr @.str.55, !9, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.56, !9, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.57, !9, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.58, !9, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @trace_event_fields_ath5k_tx_complete, !9, !"trace_event_fields_ath5k_tx_complete", i1 false, i1 false}
!163 = !{ptr @trace_event_type_funcs_ath5k_tx_complete, !9, !"trace_event_type_funcs_ath5k_tx_complete", i1 false, i1 false}
!164 = !{ptr @.str.59, !9, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @print_fmt_ath5k_tx_complete, !9, !"print_fmt_ath5k_tx_complete", i1 false, i1 false}
!166 = !{ptr @__param_str_nohwcrypt, !25, !"__param_str_nohwcrypt", i1 false, i1 false}
!167 = !{ptr @__param_str_fastchanswitch, !30, !"__param_str_fastchanswitch", i1 false, i1 false}
!168 = !{ptr @__param_str_no_hw_rfkill_switch, !35, !"__param_str_no_hw_rfkill_switch", i1 false, i1 false}
!169 = !{ptr @.str.60, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 110, i32 4}
!171 = !{ptr @.str.61, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 111, i32 4}
!173 = !{ptr @.str.62, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 112, i32 4}
!175 = !{ptr @.str.63, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 113, i32 4}
!177 = !{ptr @.str.64, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 114, i32 4}
!179 = !{ptr @.str.65, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 115, i32 4}
!181 = !{ptr @.str.66, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 116, i32 4}
!183 = !{ptr @.str.67, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 117, i32 4}
!185 = !{ptr @.str.68, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 118, i32 4}
!187 = !{ptr @.str.69, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 119, i32 4}
!189 = !{ptr @.str.70, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 120, i32 4}
!191 = !{ptr @.str.71, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 121, i32 4}
!193 = !{ptr @.str.72, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 122, i32 4}
!195 = !{ptr @.str.73, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 123, i32 4}
!197 = !{ptr @.str.74, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 124, i32 4}
!199 = !{ptr @.str.75, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 125, i32 4}
!201 = !{ptr @.str.76, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 126, i32 4}
!203 = !{ptr @.str.77, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 127, i32 4}
!205 = !{ptr @.str.78, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 130, i32 4}
!207 = !{ptr @.str.79, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 131, i32 4}
!209 = !{ptr @.str.80, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 132, i32 4}
!211 = !{ptr @.str.81, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 133, i32 4}
!213 = !{ptr @.str.82, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 134, i32 4}
!215 = !{ptr @.str.83, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 135, i32 4}
!217 = !{ptr @.str.84, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 136, i32 4}
!219 = !{ptr @.str.85, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 137, i32 4}
!221 = !{ptr @.str.86, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 138, i32 4}
!223 = !{ptr @.str.87, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 139, i32 4}
!225 = !{ptr @.str.88, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 143, i32 4}
!227 = !{ptr @srev_names, !228, !"srev_names", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 100, i32 37}
!229 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!230 = !{ptr @.str.89, !5, !"<string literal>", i1 false, i1 false}
!231 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!232 = !{ptr @.str.90, !5, !"<string literal>", i1 false, i1 false}
!233 = distinct !{null, !234, !"__already_done", i1 false, i1 false}
!234 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!235 = !{ptr @.str.91, !234, !"<string literal>", i1 false, i1 false}
!236 = distinct !{null, !237, !"__already_done", i1 false, i1 false}
!237 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!238 = !{ptr @.str.92, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.93, !237, !"<string literal>", i1 false, i1 false}
!240 = distinct !{null, !241, !"__warned", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 740, i32 12}
!242 = !{ptr @.str.94, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 1866, i32 2}
!244 = !{ptr @__func__.ath5k_beacon_setup, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.95, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 1871, i32 3}
!247 = distinct !{null, !248, !"__already_done", i1 false, i1 false}
!248 = !{!"../include/net/mac80211.h", i32 2737, i32 6}
!249 = !{ptr @.str.96, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.97, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 1114, i32 2}
!252 = !{ptr @__func__.ath5k_beaconq_config, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.98, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 1120, i32 3}
!255 = !{ptr @.str.99, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 1981, i32 2}
!257 = !{ptr @__func__.ath5k_beacon_send, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.100, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 1992, i32 3}
!260 = !{ptr @.str.101, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 1995, i32 4}
!262 = !{ptr @.str.102, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 1998, i32 4}
!264 = !{ptr @.str.103, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2005, i32 3}
!266 = !{ptr @.str.104, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2018, i32 3}
!268 = !{ptr @.str.105, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2036, i32 3}
!270 = !{ptr @.str.106, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2050, i32 3}
!272 = !{ptr @.str.107, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2058, i32 2}
!274 = !{ptr @if_comb, !275, !"if_comb", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2566, i32 49}
!276 = !{ptr @if_limits, !277, !"if_limits", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2557, i32 43}
!278 = !{ptr @.str.108, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2332, i32 3}
!280 = !{ptr @__func__.ath5k_intr, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.109, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2344, i32 4}
!283 = !{ptr @.str.110, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2366, i32 5}
!285 = !{ptr @.str.111, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2436, i32 3}
!287 = !{ptr @ath5k_common_ops, !288, !"ath5k_common_ops", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 243, i32 29}
!289 = !{ptr @.str.112, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2735, i32 2}
!291 = !{ptr @__func__.ath5k_stop_locked, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.113, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2909, i32 2}
!294 = !{ptr @__func__.ath5k_reset, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.114, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2942, i32 3}
!297 = !{ptr @.str.115, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2952, i32 3}
!299 = !{ptr @.str.116, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2958, i32 3}
!301 = !{ptr @.str.117, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 1213, i32 2}
!303 = !{ptr @__func__.ath5k_rx_start, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.118, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 661, i32 3}
!306 = !{ptr @__func__.ath5k_rxbuf_setup, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @.str.119, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 610, i32 3}
!309 = !{ptr @.str.120, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 620, i32 3}
!311 = !{ptr @__func__.ath5k_rx_skb_alloc, !310, !"<string literal>", i1 false, i1 false}
!312 = distinct !{null, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 3044, i32 3}
!314 = !{ptr @.str.122, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 3053, i32 3}
!316 = !{ptr @.str.123, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 3065, i32 3}
!318 = !{ptr @.str.124, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 3071, i32 3}
!320 = !{ptr @.str.125, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 3083, i32 4}
!322 = !{ptr @ath5k_init.__key, !323, !"__key", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 3122, i32 2}
!324 = !{ptr @.str.126, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @ath5k_init.__key.127, !326, !"__key", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 3123, i32 2}
!327 = !{ptr @.str.128, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @ath5k_init.__key.129, !329, !"__key", i1 false, i1 false}
!329 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 3124, i32 2}
!330 = !{ptr @.str.130, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @ath5k_init.__key.131, !329, !"__key", i1 false, i1 false}
!332 = !{ptr @.str.132, !329, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @.str.133, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 3128, i32 3}
!335 = !{ptr @.str.134, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 3139, i32 3}
!337 = !{ptr @.str.135, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 3145, i32 3}
!339 = !{ptr @ath5k_rates, !340, !"ath5k_rates", i1 false, i1 false}
!340 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 151, i32 36}
!341 = distinct !{null, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 313, i32 3}
!343 = !{ptr @.str.137, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 919, i32 2}
!345 = !{ptr @__func__.ath5k_desc_alloc, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @.str.138, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 925, i32 3}
!348 = !{ptr @ath5k_txq_setup.__key, !349, !"__key", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 1060, i32 3}
!350 = !{ptr @.str.139, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.140, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 1597, i32 3}
!353 = !{ptr @.str.141, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 1614, i32 4}
!355 = !{ptr @.str.142, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 580, i32 6}
!357 = !{ptr @.str.143, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 585, i32 6}
!359 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!360 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!361 = !{ptr @.str.144, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 1302, i32 3}
!363 = !{ptr @__func__.ath5k_check_ibss_tsf, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @.str.145, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 1321, i32 4}
!366 = !{ptr @.str.146, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 1342, i32 4}
!368 = !{ptr @.str.147, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 1798, i32 5}
!370 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!371 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!372 = !{ptr @.str.148, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2240, i32 3}
!374 = !{ptr @__func__.ath5k_tasklet_beacon, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @.str.149, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2461, i32 3}
!377 = !{ptr @__func__.ath5k_calibrate_work, !376, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @.str.150, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2469, i32 4}
!380 = !{ptr @.str.151, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2477, i32 2}
!382 = !{ptr @.str.152, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2482, i32 3}
!384 = !{ptr @.str.153, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2525, i32 6}
!386 = !{ptr @__func__.ath5k_tx_complete_poll_work, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @.str.154, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/wireless/ath/ath5k/base.c", i32 2541, i32 3}
!389 = !{!"sp"}
!390 = !{i32 1, !"wchar_size", i32 2}
!391 = !{i32 1, !"min_enum_size", i32 4}
!392 = !{i32 8, !"branch-target-enforcement", i32 0}
!393 = !{i32 8, !"sign-return-address", i32 0}
!394 = !{i32 8, !"sign-return-address-all", i32 0}
!395 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!396 = !{i32 7, !"uwtable", i32 1}
!397 = !{i32 7, !"frame-pointer", i32 2}
!398 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!399 = !{!"branch_weights", i32 2000, i32 1}
!400 = !{!"branch_weights", i32 1, i32 2000}
!401 = !{!"auto-init"}
!402 = !{i8 0, i8 2}
!403 = !{i64 2158651923, i64 2158652425, i64 2158651960, i64 2158652016, i64 2158652050, i64 2158652074, i64 2158652115, i64 2158652136, i64 2158652164, i64 2158652198}
!404 = !{i64 2158657697, i64 2158658199, i64 2158657734, i64 2158657790, i64 2158657824, i64 2158657848, i64 2158657889, i64 2158657910, i64 2158657938, i64 2158657972}
!405 = !{i64 2149038482, i64 2149038487, i64 2149038500, i64 2149038544, i64 2149038578, i64 2149038599}
!406 = !{i64 2157755956}
!407 = !{i64 2157756159}
!408 = !{i64 2149449823}
!409 = !{i64 2149450859}
!410 = !{i64 6310013}
!411 = !{i64 2153850362}
!412 = !{i64 2153851717}
!413 = !{i64 6309595}
!414 = !{i64 2158686608, i64 2158687111, i64 2158686645, i64 2158686701, i64 2158686735, i64 2158686759, i64 2158686800, i64 2158686821, i64 2158686849, i64 2158686883}
!415 = !{!"branch_weights", i32 2000, i32 2001, i32 4000000}
!416 = !{i64 2157739753}
!417 = !{i64 2157739950}
!418 = !{i64 2157773001}
!419 = !{i64 2157773230}
