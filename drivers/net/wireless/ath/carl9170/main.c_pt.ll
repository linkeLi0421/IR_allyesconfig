; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/carl9170/main.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/carl9170/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ar9170 = type { %struct.ath_common, ptr, %struct.mutex, i32, %struct.spinlock, i32, i8, ptr, ptr, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.tasklet_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i8, %struct.completion, %struct.completion, %struct.anon.130, [1 x %struct.ieee80211_iface_limit], [1 x %struct.ieee80211_iface_combination], %struct.work_struct, %struct.work_struct, i32, [4 x i32], [4 x i32], i8, i8, %struct.atomic_t, %struct.list_head, i32, i32, [7 x %struct.carl9170_vif], %struct.spinlock, i32, i32, ptr, i32, i64, i8, i8, i64, i32, i32, i32, i8, i32, ptr, i32, [4 x i32], i32, i32, i8, i8, %struct.anon.134, %struct.delayed_work, ptr, [4 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], %struct.delayed_work, [2 x %struct.carl9170_led], %struct.spinlock, [4 x %struct.carl9170_tx_queue_stats], [5 x %struct.ieee80211_tx_queue_params], %struct.completion, i32, i32, ptr, %struct.spinlock, %struct.completion, %union.anon.135, i32, i32, i32, i32, %struct.ar9170_eeprom, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], %struct.delayed_work, i32, i8, %struct.work_struct, %struct.spinlock, ptr, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, %struct.spinlock, ptr, %struct.atomic_t, %struct.atomic_t, %struct.ar9170_rx_head, i8, ptr, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.anon.142, %struct.carl9170_debug, ptr, %struct.work_struct, %struct.anon.144, %struct.anon.145 }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.anon.130 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.carl9170_vif = type { i32, ptr }
%struct.anon.134 = type { i64, i64, i64, i64, i64 }
%struct.carl9170_led = type { ptr, %struct.led_classdev, [32 x i8], i32, i8, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.carl9170_tx_queue_stats = type { i32, i32, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%union.anon.135 = type { [16 x i32] }
%struct.ar9170_eeprom = type <{ i16, i16, i16, i8, i8, [2 x i16], [6 x i8], i8, i8, i16, i16, i16, i32, i8, [33 x i8], [64 x i8], [2 x %struct.ar9170_eeprom_modal], [8 x i8], [4 x i8], [2 x [8 x %struct.ar9170_calibration_data_per_freq]], [2 x [4 x %struct.ar9170_calibration_data_per_freq]], [8 x %struct.ar9170_calibration_target_power_legacy], [8 x %struct.ar9170_calibration_target_power_ht], [8 x %struct.ar9170_calibration_target_power_ht], [3 x %struct.ar9170_calibration_target_power_legacy], [4 x %struct.ar9170_calibration_target_power_legacy], [4 x %struct.ar9170_calibration_target_power_ht], [4 x %struct.ar9170_calibration_target_power_ht], [24 x i8], [24 x %struct.ar9170_calctl_data], i8, i16 }>
%struct.ar9170_eeprom_modal = type <{ [2 x i32], i32, [2 x i8], i8, [2 x i8], [2 x i8], i8, i8, [2 x i8], i8, i8, i8, i8, [2 x i8], i8, i8, [2 x i8], [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], [2 x i8], i8, [22 x i8], [5 x %struct.spur_channel] }>
%struct.spur_channel = type { i16, i8, i8 }
%struct.ar9170_calibration_data_per_freq = type { [4 x [5 x i8]], [4 x [5 x i8]] }
%struct.ar9170_calibration_target_power_legacy = type { i8, [4 x i8] }
%struct.ar9170_calibration_target_power_ht = type { i8, [8 x i8] }
%struct.ar9170_calctl_data = type { [2 x [8 x %struct.ar9170_calctl_edges]] }
%struct.ar9170_calctl_edges = type { i8, i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ar9170_rx_head = type { [12 x i8] }
%struct.anon.142 = type { i8, ptr, [32 x i8], [32 x i8] }
%struct.carl9170_debug = type { %struct.ath_stats, [64 x %struct.carl9170_debug_mem_rbe], %struct.mutex, i32, i32, %struct.delayed_work }
%struct.ath_stats = type { [3 x i32], [3 x i32], [8 x i32], [8 x i32], [6 x i32], [6 x i32], [12 x i32], [6 x i32], [2 x i32] }
%struct.carl9170_debug_mem_rbe = type { i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.144 = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.anon.145 = type { %struct.hwrng, i8, [31 x i8], [30 x i16], i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.carl9170_vif_info = type { %struct.list_head, i8, i32, ptr, i8 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.carl9170_sta_tid = type { %struct.list_head, %struct.list_head, %struct.spinlock, i32, i32, i8, i16, i16, i16, i16, [4 x i32], %struct.sk_buff_head, ptr, ptr }
%struct.carl9170_sta_info = type { i8, i8, %struct.atomic_t, i32, [16 x ptr], [16 x %struct.carl9170_ba_stats] }
%struct.carl9170_ba_stats = type { i8, i8, i8, i8 }
%struct.carl9170_tsf_rsp = type { %union.anon.141 }
%union.anon.141 = type { i64 }
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }

@__param_str_nohwcrypt = internal constant [19 x i8] c"carl9170.nohwcrypt\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@modparam_nohwcrypt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nohwcrypt = internal constant %struct.kernel_param { ptr @__param_str_nohwcrypt, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @modparam_nohwcrypt } }, section "__param", align 4
@__UNIQUE_ID_nohwcrypttype355 = internal constant [33 x i8] c"carl9170.parmtype=nohwcrypt:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nohwcrypt356 = internal constant [57 x i8] c"carl9170.parm=nohwcrypt:Disable hardware crypto offload.\00", section ".modinfo", align 1
@__param_str_noht = internal constant [14 x i8] c"carl9170.noht\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@modparam_noht = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_noht = internal constant %struct.kernel_param { ptr @__param_str_noht, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @modparam_noht } }, section "__param", align 4
@__UNIQUE_ID_nohttype357 = internal constant [27 x i8] c"carl9170.parmtype=noht:int\00", section ".modinfo", align 1
@__UNIQUE_ID_noht358 = internal constant [45 x i8] c"carl9170.parm=noht:Disable MPDU aggregation.\00", section ".modinfo", align 1
@__carl9170_ratetable = dso_local global [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 1, i16 20, i16 17, i16 0 }, %struct.ieee80211_rate { i32 1, i16 55, i16 34, i16 0 }, %struct.ieee80211_rate { i32 1, i16 110, i16 51, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 11, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 15, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 10, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 14, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 9, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 29, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 40, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 60, i16 0 }], align 4
@carl9170_restart.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"carl9170\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"carl9170_restart\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/ath/carl9170/main.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ignoring restart (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@carl9170_restart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 522, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"restart device (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@carl9170_restart._entry_ptr = internal global ptr @carl9170_restart._entry, section ".printk_index", align 4
@carl9170_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @carl9170_op_tx, ptr @carl9170_op_start, ptr @carl9170_op_stop, ptr null, ptr null, ptr null, ptr @carl9170_op_add_interface, ptr null, ptr @carl9170_op_remove_interface, ptr @carl9170_op_config, ptr @carl9170_op_bss_info_changed, ptr null, ptr null, ptr @carl9170_op_prepare_multicast, ptr @carl9170_op_configure_filter, ptr null, ptr null, ptr @carl9170_op_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @carl9170_op_get_stats, ptr null, ptr null, ptr null, ptr @carl9170_op_sta_add, ptr @carl9170_op_sta_remove, ptr null, ptr @carl9170_op_sta_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @carl9170_op_conf_tx, ptr @carl9170_op_get_tsf, ptr null, ptr null, ptr null, ptr null, ptr @carl9170_op_ampdu_action, ptr @carl9170_op_get_survey, ptr null, ptr null, ptr null, ptr null, ptr @carl9170_op_flush, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @carl9170_tx_frames_pending, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@carl9170_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ar->mutex\00", [21 x i8] zeroinitializer }, align 32
@carl9170_alloc.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ar->beacon_lock\00", [47 x i8] zeroinitializer }, align 32
@carl9170_alloc.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ar->cmd_lock\00", [18 x i8] zeroinitializer }, align 32
@carl9170_alloc.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ar->tx_stats_lock\00", [45 x i8] zeroinitializer }, align 32
@carl9170_alloc.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&ar->tx_ampdu_list_lock\00", [40 x i8] zeroinitializer }, align 32
@carl9170_alloc.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ar->mem_lock\00", [18 x i8] zeroinitializer }, align 32
@carl9170_alloc.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ar->state_lock\00", [16 x i8] zeroinitializer }, align 32
@carl9170_alloc.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ar->bar_list_lock[i]\00", [42 x i8] zeroinitializer }, align 32
@carl9170_alloc.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&ar->ps_work)\00", [32 x i8] zeroinitializer }, align 32
@carl9170_alloc.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&ar->ping_work)\00", [62 x i8] zeroinitializer }, align 32
@carl9170_alloc.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&ar->restart_work)\00", [59 x i8] zeroinitializer }, align 32
@carl9170_alloc.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&ar->ampdu_work)\00", [61 x i8] zeroinitializer }, align 32
@carl9170_alloc.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&ar->stat_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@carl9170_alloc.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&ar->stat_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@carl9170_alloc.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&ar->tx_janitor)->work)\00", [52 x i8] zeroinitializer }, align 32
@carl9170_alloc.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&ar->tx_janitor)->timer\00", [38 x i8] zeroinitializer }, align 32
@carl9170_band_2GHz = internal global { %struct.ieee80211_supported_band, [36 x i8] } { %struct.ieee80211_supported_band { ptr @carl9170_2ghz_chantable, ptr @__carl9170_ratetable, i32 0, i32 14, i32 12, %struct.ieee80211_sta_ht_cap <{ i16 6222, i8 1, i8 3, i8 6, %struct.ieee80211_mcs_info { [10 x i8] c"\FF\FF\00\00\01\00\00\00\00\00", i16 11265, i8 1, [3 x i8] zeroinitializer }, i8 undef }>, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@carl9170_band_5GHz = internal global { %struct.ieee80211_supported_band, [36 x i8] } { %struct.ieee80211_supported_band { ptr @carl9170_5ghz_chantable, ptr getelementptr (i8, ptr @__carl9170_ratetable, i64 48), i32 0, i32 35, i32 8, %struct.ieee80211_sta_ht_cap <{ i16 6222, i8 1, i8 3, i8 6, %struct.ieee80211_mcs_info { [10 x i8] c"\FF\FF\00\00\01\00\00\00\00\00", i16 11265, i8 1, [3 x i8] zeroinitializer }, i8 undef }>, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@carl9170_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 2036, ptr @.str.40, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Atheros AR9170 is registered as '%s'\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"carl9170_register\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@carl9170_register._entry_ptr = internal global ptr @carl9170_register._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@carl9170_zap_queues.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@carl9170_ampdu_gc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@carl9170_flush_ba.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@carl9170_get_main_vif.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/ath/carl9170/carl9170.h\00", [51 x i8] zeroinitializer }, align 32
@carl9170_init_interface.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@carl9170_op_remove_interface.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/cfg80211.h\00", [41 x i8] zeroinitializer }, align 32
@carl9170_op_bss_info_changed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@carl9170_op_bss_info_changed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@carl9170_op_sta_remove.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@carl9170_op_ampdu_action.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&tid_info->lock\00", [16 x i8] zeroinitializer }, align 32
@carl9170_op_ampdu_action.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@carl9170_op_ampdu_action.__warned.49 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@carl9170_op_ampdu_action.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@carl9170_ps_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@carl9170_restart_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 482, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to restart device (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"carl9170_restart_work\00", [42 x i8] zeroinitializer }, align 32
@carl9170_restart_work._entry_ptr = internal global ptr @carl9170_restart_work._entry, section ".printk_index", align 4
@carl9170_restart_work._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 484, ptr @.str.40, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"device restarted successfully.\0A\00", [32 x i8] zeroinitializer }, align 32
@carl9170_restart_work._entry_ptr.55 = internal global ptr @carl9170_restart_work._entry.53, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@carl9170_2ghz_chantable = internal global { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 0, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 1, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 2, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 3, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 4, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 5, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 6, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 7, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 8, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 9, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 10, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 11, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 12, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 13, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@carl9170_5ghz_chantable = internal global { [35 x %struct.ieee80211_channel], [504 x i8] } { [35 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 4920, i16 0, i16 14, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 4940, i16 0, i16 15, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 4960, i16 0, i16 16, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 4980, i16 0, i16 17, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5040, i16 0, i16 18, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5060, i16 0, i16 19, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5080, i16 0, i16 20, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5180, i16 0, i16 21, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5200, i16 0, i16 22, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5220, i16 0, i16 23, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5240, i16 0, i16 24, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5260, i16 0, i16 25, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5280, i16 0, i16 26, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5300, i16 0, i16 27, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5320, i16 0, i16 28, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5500, i16 0, i16 29, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5520, i16 0, i16 30, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5540, i16 0, i16 31, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5560, i16 0, i16 32, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5580, i16 0, i16 33, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5600, i16 0, i16 34, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5620, i16 0, i16 35, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5640, i16 0, i16 36, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5660, i16 0, i16 37, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5680, i16 0, i16 38, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5700, i16 0, i16 39, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5745, i16 0, i16 40, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5765, i16 0, i16 41, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5785, i16 0, i16 42, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5805, i16 0, i16 43, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5825, i16 0, i16 44, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5170, i16 0, i16 45, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5190, i16 0, i16 46, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5210, i16 0, i16 47, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5230, i16 0, i16 48, i32 0, i32 0, i32 18, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [504 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s WPS Button\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ieee80211/%s/input0\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_%s\00", [26 x i8] zeroinitializer }, align 32
@carl9170_register_hwrng._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 1612, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed to register the random number generator (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"carl9170_register_hwrng\00", [40 x i8] zeroinitializer }, align 32
@carl9170_register_hwrng._entry_ptr = internal global ptr @carl9170_register_hwrng._entry, section ".printk_index", align 4
@carl9170_rng_get.rng_load = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 7424, i32 7424, i32 7424, i32 7424, i32 7424, i32 7424, i32 7424, i32 7424, i32 7424, i32 7424, i32 7424, i32 7424, i32 7424, i32 7424, i32 7424], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"modparam_nohwcrypt\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 50, i32 13 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"modparam_noht\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 54, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 516, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 522, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [13 x i8] c"carl9170_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1734, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1795, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1796, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1797, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1798, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1799, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1800, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1801, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1809, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1811, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1812, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1813, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1814, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1815, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1816, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [19 x i8] c"carl9170_band_2GHz\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 168, i32 40 }
@___asan_gen_.199 = private unnamed_addr constant [19 x i8] c"carl9170_band_5GHz\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 176, i32 40 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 2035, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 313, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 695, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 723, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/ath/carl9170/carl9170.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 650, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [26 x i8] c"../include/net/cfg80211.h\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 778, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1346, i32 15 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1429, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1984, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 482, i32 5 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 484, i32 5 }
@___asan_gen_.262 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 87, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [24 x i8] c"carl9170_2ghz_chantable\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 95, i32 33 }
@___asan_gen_.271 = private unnamed_addr constant [24 x i8] c"carl9170_5ghz_chantable\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 112, i32 33 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1501, i32 47 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1505, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1601, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1611, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant [9 x i8] c"rng_load\00", align 1
@___asan_gen_.293 = private constant [44 x i8] c"../drivers/net/wireless/ath/carl9170/main.c\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1532, i32 22 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_noht358, ptr @__UNIQUE_ID_nohttype357, ptr @__UNIQUE_ID_nohwcrypt356, ptr @__UNIQUE_ID_nohwcrypttype355, ptr @__param_noht, ptr @__param_nohwcrypt, ptr @carl9170_register._entry, ptr @carl9170_register._entry_ptr, ptr @carl9170_register_hwrng._entry, ptr @carl9170_register_hwrng._entry_ptr, ptr @carl9170_restart._entry, ptr @carl9170_restart._entry_ptr, ptr @carl9170_restart_work._entry, ptr @carl9170_restart_work._entry.53, ptr @carl9170_restart_work._entry_ptr, ptr @carl9170_restart_work._entry_ptr.55, ptr @modparam_nohwcrypt, ptr @modparam_noht, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @carl9170_ops, ptr @carl9170_alloc.__key, ptr @.str.7, ptr @carl9170_alloc.__key.8, ptr @.str.9, ptr @carl9170_alloc.__key.10, ptr @.str.11, ptr @carl9170_alloc.__key.12, ptr @.str.13, ptr @carl9170_alloc.__key.14, ptr @.str.15, ptr @carl9170_alloc.__key.16, ptr @.str.17, ptr @carl9170_alloc.__key.18, ptr @.str.19, ptr @carl9170_alloc.__key.20, ptr @.str.21, ptr @carl9170_alloc.__key.22, ptr @.str.23, ptr @carl9170_alloc.__key.24, ptr @.str.25, ptr @carl9170_alloc.__key.26, ptr @.str.27, ptr @carl9170_alloc.__key.28, ptr @.str.29, ptr @carl9170_alloc.__key.30, ptr @.str.31, ptr @carl9170_alloc.__key.32, ptr @.str.33, ptr @carl9170_alloc.__key.34, ptr @.str.35, ptr @carl9170_alloc.__key.36, ptr @.str.37, ptr @carl9170_band_2GHz, ptr @carl9170_band_5GHz, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @carl9170_op_ampdu_action.__key, ptr @.str.48, ptr @skb_queue_head_init.__key, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @init_completion.__key, ptr @.str.56, ptr @carl9170_2ghz_chantable, ptr @carl9170_5ghz_chantable, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @carl9170_rng_get.rng_load], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_nohwcrypt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_noht to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_restart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_alloc.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_alloc.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_alloc.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_alloc.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_alloc.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_alloc.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_alloc.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_alloc.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_alloc.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_alloc.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_alloc.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_alloc.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_alloc.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_alloc.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_alloc.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_band_2GHz to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_band_5GHz to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_op_ampdu_action.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_restart_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_restart_work._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_2ghz_chantable to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_5ghz_chantable to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_register_hwrng._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_rng_get.rng_load to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_restart(ptr noundef %ar, i32 noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock.i) #13
  %state.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp5.not.i = icmp ult i32 %1, 3
  br i1 %cmp5.not.i, label %entry.carl9170_set_state_when.exit_crit_edge, label %if.then.i

entry.carl9170_set_state_when.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %carl9170_set_state_when.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %state.i, align 4
  br label %carl9170_set_state_when.exit

carl9170_set_state_when.exit:                     ; preds = %if.then.i, %entry.carl9170_set_state_when.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock.i, i32 noundef %call2.i) #13
  %pending_restarts = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 36
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_restarts, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !171
  tail call void @llvm.prefetch.p0(ptr %pending_restarts, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_restarts, ptr %pending_restarts, i32 1, ptr elementtype(i32) %pending_restarts) #13, !srcloc !172
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %carl9170_set_state_when.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @carl9170_restart.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@carl9170_restart, %if.then4)) #13
          to label %return [label %if.then4], !srcloc !174

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %udev = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @carl9170_restart.__UNIQUE_ID_ddebug372, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %r) #13
  br label %return

if.end5:                                          ; preds = %carl9170_set_state_when.exit
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %7) #13
  %udev8 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  %8 = ptrtoint ptr %udev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev8, align 4
  %dev9 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.4, i32 noundef %r) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r)
  %cmp10 = icmp eq i32 %r, 0
  br i1 %cmp10, label %do.end25, label %if.end5.if.then72_crit_edge, !prof !175

if.end5.if.then72_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then72

do.end25:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 524, i32 noundef 9, ptr noundef null) #13
  br label %if.then72

if.then72:                                        ; preds = %do.end25, %if.end5.if.then72_crit_edge
  %last_reason = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 5
  %10 = ptrtoint ptr %last_reason to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %r, ptr %last_reason, align 4
  %registered = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 6
  %11 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %registered, align 8, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool74.not = icmp eq i8 %12, 0
  br i1 %tobool74.not, label %if.then72.return_crit_edge, label %if.end76

if.then72.return_crit_edge:                       ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end76:                                         ; preds = %if.then72
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp77 = icmp ugt i32 %14, 1
  br i1 %cmp77, label %lor.lhs.false78, label %if.end76.if.then80_crit_edge

if.end76.if.then80_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then80

lor.lhs.false78:                                  ; preds = %if.end76
  %needs_full_reset = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 34
  %15 = ptrtoint ptr %needs_full_reset to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %needs_full_reset, align 8, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool79.not = icmp eq i8 %16, 0
  br i1 %tobool79.not, label %lor.lhs.false78.if.end81_crit_edge, label %lor.lhs.false78.if.then80_crit_edge

lor.lhs.false78.if.then80_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then80

lor.lhs.false78.if.end81_crit_edge:               ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then80:                                        ; preds = %lor.lhs.false78.if.then80_crit_edge, %if.end76.if.then80_crit_edge
  %force_usb_reset = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 35
  %17 = ptrtoint ptr %force_usb_reset to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %force_usb_reset, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %lor.lhs.false78.if.end81_crit_edge
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %restart_work = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 29
  tail call void @ieee80211_queue_work(ptr noundef %19, ptr noundef %restart_work) #13
  br label %return

return:                                           ; preds = %if.end81, %if.then72.return_crit_edge, %if.then4, %do.body
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @carl9170_set_state_when(ptr noundef %ar, i32 noundef %min, i32 noundef %newstate) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %state_lock = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock) #13
  %state = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %min)
  %cmp5.not = icmp ult i32 %1, %min
  br i1 %cmp5.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %newstate, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_ps_check(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %ps_work = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 120
  tail call void @ieee80211_queue_work(ptr noundef %1, ptr noundef %ps_work) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @carl9170_alloc(i32 noundef %priv_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 65535, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.err_nomem_crit_edge, label %if.end

entry.err_nomem_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_nomem

if.end:                                           ; preds = %entry
  %call.i280 = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef %priv_size, ptr noundef nonnull @carl9170_ops, ptr noundef null) #13
  %tobool2.not = icmp eq ptr %call.i280, null
  br i1 %tobool2.not, label %if.end.err_nomem_crit_edge, label %if.end4

if.end.err_nomem_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_nomem

if.end4:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i280, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hw5 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i280, ptr %hw5, align 4
  %rx_failover = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 112
  %3 = ptrtoint ptr %rx_failover to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %rx_failover, align 4
  %rx_plcp = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 110
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i280, i32 0, i32 11
  %4 = call ptr @memset(ptr %rx_plcp, i32 0, i32 13)
  %5 = ptrtoint ptr %queues to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4, ptr %queues, align 4
  %mutex = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @carl9170_alloc.__key) #13
  %beacon_lock = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 41
  tail call void @__raw_spin_lock_init(ptr noundef %beacon_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @carl9170_alloc.__key.8, i16 noundef signext 3) #13
  %cmd_lock = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 81
  tail call void @__raw_spin_lock_init(ptr noundef %cmd_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @carl9170_alloc.__key.10, i16 noundef signext 3) #13
  %tx_stats_lock = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 74
  tail call void @__raw_spin_lock_init(ptr noundef %tx_stats_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @carl9170_alloc.__key.12, i16 noundef signext 3) #13
  %tx_ampdu_list_lock = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 95
  tail call void @__raw_spin_lock_init(ptr noundef %tx_ampdu_list_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @carl9170_alloc.__key.14, i16 noundef signext 3) #13
  %mem_lock = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 106
  tail call void @__raw_spin_lock_init(ptr noundef %mem_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @carl9170_alloc.__key.16, i16 noundef signext 3) #13
  %state_lock = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %state_lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @carl9170_alloc.__key.18, i16 noundef signext 3) #13
  %pending_restarts = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 36
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_restarts, i32 noundef 4) #13
  %6 = ptrtoint ptr %pending_restarts to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %pending_restarts, align 4
  %vifs = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 39
  %7 = ptrtoint ptr %vifs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %vifs, align 4
  %8 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw5, align 4
  %queues31310 = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %queues31310 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %queues31310, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp312.not = icmp eq i16 %11, 0
  br i1 %cmp312.not, label %if.end4.do.body40_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.do.body40_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body40

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4.for.body_crit_edge
  %i.0313 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ar9170, ptr %1, i32 0, i32 90, i32 %i.0313
  %lock.i = getelementptr %struct.ar9170, ptr %1, i32 0, i32 90, i32 %i.0313, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.65, ptr %arrayidx, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr %struct.ar9170, ptr %1, i32 0, i32 90, i32 %i.0313, i32 1
  %14 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %qlen.i.i, align 4
  %arrayidx33 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 89, i32 %i.0313
  %lock.i281 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 89, i32 %i.0313, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i281, ptr noundef nonnull @.str.50, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %15 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx33, ptr %arrayidx33, align 4
  %prev.i.i282 = getelementptr inbounds %struct.anon.65, ptr %arrayidx33, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i282 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx33, ptr %prev.i.i282, align 4
  %qlen.i.i283 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 89, i32 %i.0313, i32 1
  %17 = ptrtoint ptr %qlen.i.i283 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %qlen.i.i283, align 4
  %arrayidx34 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 115, i32 %i.0313
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %arrayidx34, ptr %arrayidx34, align 4
  %prev.i = getelementptr %struct.ar9170, ptr %1, i32 0, i32 115, i32 %i.0313, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx34, ptr %prev.i, align 4
  %arrayidx36 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 116, i32 %i.0313
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx36, ptr noundef nonnull @.str.21, ptr noundef nonnull @carl9170_alloc.__key.20, i16 noundef signext 3) #13
  %inc = add nuw nsw i32 %i.0313, 1
  %20 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw5, align 4
  %queues31 = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %queues31 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %queues31, align 4
  %conv = zext i16 %23 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body40_crit_edge

for.body.do.body40_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body40

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body40:                                        ; preds = %for.body.do.body40_crit_edge, %if.end4.do.body40_crit_edge
  %ps_work = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 120
  tail call void @__init_work(ptr noundef %ps_work, i32 noundef 0) #13
  %24 = ptrtoint ptr %ps_work to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %ps_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 120, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.23, ptr noundef nonnull @carl9170_alloc.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry44 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 120, i32 1
  %25 = ptrtoint ptr %entry44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry44, ptr %entry44, align 4
  %prev.i284 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 120, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i284 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry44, ptr %prev.i284, align 4
  %func = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 120, i32 2
  %27 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @carl9170_ps_work, ptr %func, align 4
  %ping_work = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 30
  tail call void @__init_work(ptr noundef %ping_work, i32 noundef 0) #13
  %28 = ptrtoint ptr %ping_work to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -64, ptr %ping_work, align 8
  %lockdep_map54 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 30, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map54, ptr noundef nonnull @.str.25, ptr noundef nonnull @carl9170_alloc.__key.24, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry56 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 30, i32 1
  %29 = ptrtoint ptr %entry56 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %entry56, ptr %entry56, align 4
  %prev.i285 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 30, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i285 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry56, ptr %prev.i285, align 4
  %func58 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 30, i32 2
  %31 = ptrtoint ptr %func58 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @carl9170_ping_work, ptr %func58, align 4
  %restart_work = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 29
  tail call void @__init_work(ptr noundef %restart_work, i32 noundef 0) #13
  %32 = ptrtoint ptr %restart_work to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %restart_work, align 4
  %lockdep_map67 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 29, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map67, ptr noundef nonnull @.str.27, ptr noundef nonnull @carl9170_alloc.__key.26, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry69 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 29, i32 1
  %33 = ptrtoint ptr %entry69 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry69, ptr %entry69, align 4
  %prev.i286 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 29, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i286 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry69, ptr %prev.i286, align 4
  %func71 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 29, i32 2
  %35 = ptrtoint ptr %func71 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @carl9170_restart_work, ptr %func71, align 4
  %ampdu_work = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 94
  tail call void @__init_work(ptr noundef %ampdu_work, i32 noundef 0) #13
  %36 = ptrtoint ptr %ampdu_work to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -64, ptr %ampdu_work, align 8
  %lockdep_map80 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 94, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map80, ptr noundef nonnull @.str.29, ptr noundef nonnull @carl9170_alloc.__key.28, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry82 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 94, i32 1
  %37 = ptrtoint ptr %entry82 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %entry82, ptr %entry82, align 4
  %prev.i287 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 94, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i287 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entry82, ptr %prev.i287, align 4
  %func84 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 94, i32 2
  %39 = ptrtoint ptr %func84 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @carl9170_ampdu_work, ptr %func84, align 4
  %stat_work = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 63
  tail call void @__init_work(ptr noundef %stat_work, i32 noundef 0) #13
  %40 = ptrtoint ptr %stat_work to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -64, ptr %stat_work, align 8
  %lockdep_map96 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 63, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map96, ptr noundef nonnull @.str.31, ptr noundef nonnull @carl9170_alloc.__key.30, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry99 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 63, i32 0, i32 1
  %41 = ptrtoint ptr %entry99 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %entry99, ptr %entry99, align 4
  %prev.i288 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 63, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i288 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %entry99, ptr %prev.i288, align 4
  %func102 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 63, i32 0, i32 2
  %43 = ptrtoint ptr %func102 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @carl9170_stat_work, ptr %func102, align 4
  %timer = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 63, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.33, ptr noundef nonnull @carl9170_alloc.__key.32) #13
  %tx_janitor = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 91
  tail call void @__init_work(ptr noundef %tx_janitor, i32 noundef 0) #13
  %44 = ptrtoint ptr %tx_janitor to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -64, ptr %tx_janitor, align 4
  %lockdep_map121 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 91, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map121, ptr noundef nonnull @.str.35, ptr noundef nonnull @carl9170_alloc.__key.34, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry124 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 91, i32 0, i32 1
  %45 = ptrtoint ptr %entry124 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %entry124, ptr %entry124, align 4
  %prev.i289 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 91, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %prev.i289 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %entry124, ptr %prev.i289, align 4
  %func127 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 91, i32 0, i32 2
  %47 = ptrtoint ptr %func127 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @carl9170_tx_janitor, ptr %func127, align 4
  %timer132 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 91, i32 1
  tail call void @init_timer_key(ptr noundef %timer132, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.37, ptr noundef nonnull @carl9170_alloc.__key.36) #13
  %tx_ampdu_list = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 97
  %48 = ptrtoint ptr %tx_ampdu_list to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %tx_ampdu_list, ptr %tx_ampdu_list, align 4
  %prev.i290 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 97, i32 1
  %49 = ptrtoint ptr %prev.i290 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %tx_ampdu_list, ptr %prev.i290, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !177
  %tx_ampdu_iter164 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 96
  %50 = ptrtoint ptr %tx_ampdu_iter164 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %tx_ampdu_list, ptr %tx_ampdu_iter164, align 8
  %vif_bitmap = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 38
  %vif_num = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 26, i32 6
  %51 = ptrtoint ptr %vif_num to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vif_num, align 8
  %sub.i = add i32 %52, 31
  %53 = lshr i32 %sub.i, 3
  %mul.i = and i32 %53, 536870908
  %54 = call ptr @memset(ptr %vif_bitmap, i32 0, i32 %mul.i)
  %vif_list = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 37
  %55 = ptrtoint ptr %vif_list to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %vif_list, ptr %vif_list, align 4
  %prev.i291 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 37, i32 1
  %56 = ptrtoint ptr %prev.i291 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %vif_list, ptr %prev.i291, align 4
  %tx_flush = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 77
  %57 = ptrtoint ptr %tx_flush to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %tx_flush, align 4
  %wait.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 77, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @init_completion.__key) #13
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i280, i32 0, i32 1
  %58 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wiphy, align 8
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %interface_modes, align 4
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i280, i32 0, i32 4
  %61 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i, align 4
  %or.i.i307 = or i32 %62, 37817138
  store i32 %or.i.i307, ptr %flags.i, align 4
  %63 = load i32, ptr @modparam_noht, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool176.not = icmp eq i32 %63, 0
  br i1 %tobool176.not, label %if.then177, label %do.body40.if.end178_crit_edge

do.body40.if.end178_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end178

if.then177:                                       ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #15
  %or.i.i309 = or i32 %62, 37817266
  %64 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or.i.i309, ptr %flags.i, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %do.body40.if.end178_crit_edge
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i280, i32 0, i32 5
  %65 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 32, ptr %extra_tx_headroom, align 4
  %sta_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i280, i32 0, i32 8
  %66 = ptrtoint ptr %sta_data_size to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 140, ptr %sta_data_size, align 8
  %vif_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i280, i32 0, i32 7
  %67 = ptrtoint ptr %vif_data_size to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 24, ptr %vif_data_size, align 4
  %max_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i280, i32 0, i32 14
  %68 = ptrtoint ptr %max_rates to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 4, ptr %max_rates, align 1
  %max_rate_tries = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i280, i32 0, i32 16
  %69 = ptrtoint ptr %max_rate_tries to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 3, ptr %max_rate_tries, align 1
  %arrayidx183 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 57, i32 0
  %70 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -95, ptr %arrayidx183, align 4
  %arrayidx183.1 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 57, i32 1
  %71 = ptrtoint ptr %arrayidx183.1 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -95, ptr %arrayidx183.1, align 4
  %arrayidx183.2 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 57, i32 2
  %72 = ptrtoint ptr %arrayidx183.2 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -95, ptr %arrayidx183.2, align 4
  %arrayidx183.3 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 57, i32 3
  %73 = ptrtoint ptr %arrayidx183.3 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -95, ptr %arrayidx183.3, align 4
  %74 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wiphy, align 8
  %arrayidx.i = getelementptr %struct.wiphy, ptr %75, i32 0, i32 14, i32 1
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i, align 1
  %78 = or i8 %77, 32
  store i8 %78, ptr %arrayidx.i, align 1
  br label %cleanup

err_nomem:                                        ; preds = %if.end.err_nomem_crit_edge, %entry.err_nomem_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %call.i, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %err_nomem, %if.end178
  %retval.0 = phi ptr [ %1, %if.end178 ], [ inttoptr (i32 -12 to ptr), %err_nomem ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_ps_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %work, i32 -7484
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %state = getelementptr i8, ptr %work, i32 -7392
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -8356
  %off_override.i = getelementptr i8, ptr %work, i32 64
  %2 = ptrtoint ptr %off_override.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %off_override.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %hw.i = getelementptr i8, ptr %work, i32 -7488
  %4 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %extract.t.i = icmp ne i32 %8, 0
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %ps.0.off0.i = phi i1 [ false, %if.then.if.end.i_crit_edge ], [ %extract.t.i, %if.then.i ]
  %state.i = getelementptr i8, ptr %work, i32 68
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %state.i, align 8, !range !176
  %11 = zext i1 %ps.0.off0.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %11)
  %cmp.not.i = icmp eq i8 %10, %11
  br i1 %cmp.not.i, label %if.end.i.if.end38_crit_edge, label %if.then8.i

if.end.i.if.end38_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then8.i:                                       ; preds = %if.end.i
  %call.i = tail call i32 @carl9170_powersave(ptr noundef %add.ptr, i1 noundef zeroext %ps.0.off0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %land.rhs

if.end12.i:                                       ; preds = %if.then8.i
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %state.i, align 8, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not.i = icmp eq i8 %13, 0
  %brmerge.i = select i1 %tobool15.not.i, i1 true, i1 %ps.0.off0.i
  br i1 %brmerge.i, label %if.end12.i.if.end22.i_crit_edge, label %if.then18.i

if.end12.i.if.end22.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %last_action.i = getelementptr i8, ptr %work, i32 52
  %15 = ptrtoint ptr %last_action.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_action.i, align 8
  %sub.i = sub i32 %14, %16
  %call20.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i) #13
  %sleep_ms.i = getelementptr i8, ptr %work, i32 60
  %17 = ptrtoint ptr %sleep_ms.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call20.i, ptr %sleep_ms.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then18.i, %if.end12.i.if.end22.i_crit_edge
  br i1 %ps.0.off0.i, label %if.then24.i, label %if.end22.i.if.end26.i_crit_edge

if.end22.i.if.end26.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %last_slept.i = getelementptr i8, ptr %work, i32 56
  %19 = ptrtoint ptr %last_slept.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %last_slept.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end22.i.if.end26.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %last_action28.i = getelementptr i8, ptr %work, i32 52
  %21 = ptrtoint ptr %last_action28.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %last_action28.i, align 8
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %11, ptr %state.i, align 8
  br label %if.end38

land.rhs:                                         ; preds = %if.then8.i
  %.b45 = load i1, ptr @carl9170_ps_work.__already_done, align 1
  br i1 %.b45, label %land.rhs.if.end38_crit_edge, label %if.then8, !prof !178

land.rhs.if.end38_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_ps_work.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 851, i32 noundef 9, ptr noundef null) #13
  br label %if.end38

if.end38:                                         ; preds = %if.then8, %land.rhs.if.end38_crit_edge, %if.end26.i, %if.end.i.if.end38_crit_edge, %entry.if.end38_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_ping_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2112
  %state = getelementptr i8, ptr %work, i32 -1148
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %work, i32 -1240
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call = tail call i32 @carl9170_echo_test(ptr noundef %add.ptr, i32 noundef -559038737) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @carl9170_restart(ptr noundef %add.ptr, i32 noundef 5)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_restart_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2068
  %usedkeys = getelementptr i8, ptr %work, i32 268
  %0 = ptrtoint ptr %usedkeys to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %usedkeys, align 8
  %filter_state = getelementptr i8, ptr %work, i32 296
  %1 = ptrtoint ptr %filter_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %filter_state, align 4
  %stat_work.i = getelementptr i8, ptr %work, i32 388
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %stat_work.i) #13
  %tx_janitor.i = getelementptr i8, ptr %work, i32 4752
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %tx_janitor.i) #13
  %led_work.i = getelementptr i8, ptr %work, i32 536
  %call2.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %led_work.i) #13
  %ps_work.i = getelementptr i8, ptr %work, i32 6288
  %call3.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %ps_work.i) #13
  %ping_work.i = getelementptr i8, ptr %work, i32 44
  %call4.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %ping_work.i) #13
  %ampdu_work.i = getelementptr i8, ptr %work, i32 4860
  %call5.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %ampdu_work.i) #13
  %mutex = getelementptr i8, ptr %work, i32 -1196
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %force_usb_reset = getelementptr i8, ptr %work, i32 125
  %2 = ptrtoint ptr %force_usb_reset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %force_usb_reset, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then:                                          ; preds = %entry
  %call = tail call i32 @carl9170_usb_restart(ptr noundef %add.ptr) #13
  %call1 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end12_crit_edge, label %if.then3

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  %udev9 = getelementptr i8, ptr %work, i32 -1048
  %4 = ptrtoint ptr %udev9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev9, align 4
  %dev10 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  br i1 %tobool4.not, label %do.end8, label %do.end

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.51, i32 noundef %call) #16
  br label %if.end12

do.end8:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10, ptr noundef nonnull @.str.54) #16
  br label %if.end12

if.end12:                                         ; preds = %do.end8, %do.end, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %err.0 = phi i32 [ -5, %entry.if.end12_crit_edge ], [ -5, %do.end ], [ 0, %do.end8 ], [ %call, %if.then.if.end12_crit_edge ]
  tail call fastcc void @carl9170_zap_queues(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool14.not = icmp eq i32 %err.0, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.end12.if.else18_crit_edge

if.end12.if.else18_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else18

land.lhs.true:                                    ; preds = %if.end12
  %6 = ptrtoint ptr %force_usb_reset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %force_usb_reset, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool16.not = icmp eq i8 %7, 0
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true.if.else18_crit_edge

land.lhs.true.if.else18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else18

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %restart_counter = getelementptr i8, ptr %work, i32 88
  %8 = ptrtoint ptr %restart_counter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %restart_counter, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %restart_counter, align 4
  %pending_restarts = getelementptr i8, ptr %work, i32 128
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_restarts, i32 noundef 4) #13
  %10 = ptrtoint ptr %pending_restarts to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %pending_restarts, align 4
  %hw = getelementptr i8, ptr %work, i32 -1200
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_restart_hw(ptr noundef %12) #13
  br label %if.end19

if.else18:                                        ; preds = %land.lhs.true.if.else18_crit_edge, %if.end12.if.else18_crit_edge
  tail call void @carl9170_usb_reset(ptr noundef %add.ptr) #13
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.then17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_ampdu_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %work, i32 -5964
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %work, i32 -6928
  %mutex = getelementptr i8, ptr %work, i32 -6056
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  tail call fastcc void @carl9170_ampdu_gc(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_stat_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2456
  %mutex = getelementptr i8, ptr %work, i32 -1584
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call.i = tail call i32 @carl9170_get_noisefloor(ptr noundef %add.ptr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %carl9170_update_survey.exit.thread11

carl9170_update_survey.exit.thread11:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup

if.end4.i:                                        ; preds = %entry
  %hw_counters.i = getelementptr i8, ptr %work, i32 -433
  %0 = ptrtoint ptr %hw_counters.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_counters.i, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool5.not.i = icmp eq i8 %1, 0
  br i1 %tobool5.not.i, label %carl9170_update_survey.exit.thread, label %carl9170_update_survey.exit

carl9170_update_survey.exit.thread:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %if.end

carl9170_update_survey.exit:                      ; preds = %if.end4.i
  %call7.i = tail call i32 @carl9170_collect_tally(ptr noundef %add.ptr) #13
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not = icmp eq i32 %call7.i, 0
  br i1 %tobool.not, label %carl9170_update_survey.exit.if.end_crit_edge, label %carl9170_update_survey.exit.cleanup_crit_edge

carl9170_update_survey.exit.cleanup_crit_edge:    ; preds = %carl9170_update_survey.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

carl9170_update_survey.exit.if.end_crit_edge:     ; preds = %carl9170_update_survey.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %carl9170_update_survey.exit.if.end_crit_edge, %carl9170_update_survey.exit.thread
  %hw = getelementptr i8, ptr %work, i32 -1588
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %call3 = tail call i32 @round_jiffies(i32 noundef 3000) #13
  tail call void @ieee80211_queue_delayed_work(ptr noundef %3, ptr noundef %work, i32 noundef %call3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %carl9170_update_survey.exit.cleanup_crit_edge, %carl9170_update_survey.exit.thread11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_tx_janitor(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_register(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  %offsets.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %regulatory1 = getelementptr inbounds %struct.ath_common, ptr %ar, i32 0, i32 22
  %mem_bitmap = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 107
  %0 = ptrtoint ptr %mem_bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_bitmap, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end23, label %do.end, !prof !178

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1967, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  %mem_blocks = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 15
  %2 = ptrtoint ptr %mem_blocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_blocks, align 8
  %call = tail call ptr @bitmap_zalloc(i32 noundef %3, i32 noundef 3264) #13
  %4 = ptrtoint ptr %mem_bitmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %mem_bitmap, align 8
  %tobool26.not = icmp eq ptr %call, null
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %eeprom1.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %offsets.i) #13
  %5 = getelementptr inbounds [8 x i32], ptr %offsets.i, i32 0, i32 1
  %6 = getelementptr inbounds [8 x i32], ptr %offsets.i, i32 0, i32 2
  %7 = getelementptr inbounds [8 x i32], ptr %offsets.i, i32 0, i32 3
  %8 = getelementptr inbounds [8 x i32], ptr %offsets.i, i32 0, i32 4
  %9 = getelementptr inbounds [8 x i32], ptr %offsets.i, i32 0, i32 5
  %10 = getelementptr inbounds [8 x i32], ptr %offsets.i, i32 0, i32 6
  %11 = getelementptr inbounds [8 x i32], ptr %offsets.i, i32 0, i32 7
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.cond8.preheader.i.for.cond8.preheader.i_crit_edge, %if.end28
  %i.030.i = phi i32 [ 0, %if.end28 ], [ %inc15.i, %for.cond8.preheader.i.for.cond8.preheader.i_crit_edge ]
  %mul.i = shl i32 %i.030.i, 5
  %add.i = add nuw nsw i32 %mul.i, 5632
  %12 = call i32 @llvm.bswap.i32(i32 %add.i) #13
  %13 = ptrtoint ptr %offsets.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %offsets.i, align 4
  %add12.1.i = add nuw nsw i32 %mul.i, 5636
  %14 = call i32 @llvm.bswap.i32(i32 %add12.1.i) #13
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %5, align 4
  %add12.2.i = add nuw nsw i32 %mul.i, 5640
  %16 = call i32 @llvm.bswap.i32(i32 %add12.2.i) #13
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %6, align 4
  %add12.3.i = add nuw nsw i32 %mul.i, 5644
  %18 = call i32 @llvm.bswap.i32(i32 %add12.3.i) #13
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %7, align 4
  %add12.4.i = add nuw nsw i32 %mul.i, 5648
  %20 = call i32 @llvm.bswap.i32(i32 %add12.4.i) #13
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %8, align 4
  %add12.5.i = add nuw nsw i32 %mul.i, 5652
  %22 = call i32 @llvm.bswap.i32(i32 %add12.5.i) #13
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %9, align 4
  %add12.6.i = add nuw nsw i32 %mul.i, 5656
  %24 = call i32 @llvm.bswap.i32(i32 %add12.6.i) #13
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %10, align 4
  %add12.7.i = add nuw nsw i32 %mul.i, 5660
  %26 = call i32 @llvm.bswap.i32(i32 %add12.7.i) #13
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %11, align 4
  %add.ptr.i = getelementptr i8, ptr %eeprom1.i, i32 %mul.i
  %call.i = call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 0, i32 noundef 32, ptr noundef nonnull %offsets.i, i32 noundef 32, ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %inc15.i = add nuw nsw i32 %i.030.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 74, i32 %inc15.i)
  %exitcond.not.i = icmp eq i32 %inc15.i, 74
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %carl9170_read_eeprom.exit, label %for.cond8.preheader.i.for.cond8.preheader.i_crit_edge

for.cond8.preheader.i.for.cond8.preheader.i_crit_edge: ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond8.preheader.i

carl9170_read_eeprom.exit:                        ; preds = %for.cond8.preheader.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %offsets.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool30.not = icmp eq i32 %call.i, 0
  br i1 %tobool30.not, label %if.end32, label %carl9170_read_eeprom.exit.cleanup_crit_edge

carl9170_read_eeprom.exit.cleanup_crit_edge:      ; preds = %carl9170_read_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end32:                                         ; preds = %carl9170_read_eeprom.exit
  %28 = ptrtoint ptr %eeprom1.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %eeprom1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %29)
  %cmp.i = icmp eq i16 %29, -1
  br i1 %cmp.i, label %if.end32.cleanup_crit_edge, label %cond.false.i

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.false.i:                                     ; preds = %if.end32
  %rx_mask.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 7
  %30 = ptrtoint ptr %rx_mask.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rx_mask.i, align 2
  %conv79.i = zext i8 %31 to i32
  %call.i.i = call i32 @__sw_hweight8(i32 noundef %conv79.i) #13
  %tx_mask.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 8
  %32 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tx_mask.i, align 1
  %conv164.i = zext i8 %33 to i32
  %call.i298.i = call i32 @__sw_hweight8(i32 noundef %conv164.i) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %call.i298.i)
  %cmp168.not.i = icmp eq i32 %call.i.i, %call.i298.i
  br i1 %cmp168.not.i, label %cond.false.i.if.end206.i_crit_edge, label %if.then170.i

cond.false.i.if.end206.i_crit_edge:               ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end206.i

if.then170.i:                                     ; preds = %cond.false.i
  %34 = add i32 %call.i298.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %34)
  %35 = icmp ult i32 %34, -4
  br i1 %35, label %do.end.i, label %if.then170.i.if.end194.i_crit_edge, !prof !175

if.then170.i.if.end194.i_crit_edge:               ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end194.i

do.end.i:                                         ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1915, i32 noundef 9, ptr noundef null) #13
  br label %if.end194.i

if.end194.i:                                      ; preds = %do.end.i, %if.then170.i.if.end194.i_crit_edge
  %36 = load i8, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @carl9170_band_2GHz, i32 0, i32 5, i32 4, i32 2), align 1
  %cond167.tr.i = trunc i32 %call.i298.i to i8
  %37 = shl i8 %cond167.tr.i, 2
  %38 = add i8 %37, -4
  %conv202.i = or i8 %36, %38
  store i8 %conv202.i, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @carl9170_band_2GHz, i32 0, i32 5, i32 4, i32 2), align 1
  %39 = load i8, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @carl9170_band_5GHz, i32 0, i32 5, i32 4, i32 2), align 1
  %conv205.i = or i8 %39, %38
  store i8 %conv205.i, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @carl9170_band_5GHz, i32 0, i32 5, i32 4, i32 2), align 1
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.end194.i, %cond.false.i.if.end206.i_crit_edge
  %operating_flags.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 3
  %40 = ptrtoint ptr %operating_flags.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %operating_flags.i, align 2
  %42 = and i8 %41, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool210.not.i = icmp eq i8 %42, 0
  br i1 %tobool210.not.i, label %if.end214.i, label %if.end214.thread.i

if.end214.i:                                      ; preds = %if.end206.i
  %43 = and i8 %41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool219.not.i = icmp eq i8 %43, 0
  br i1 %tobool219.not.i, label %if.end214.i.cleanup_crit_edge, label %if.end214.i.if.end227.thread.i_crit_edge

if.end214.i.if.end227.thread.i_crit_edge:         ; preds = %if.end214.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end227.thread.i

if.end214.i.cleanup_crit_edge:                    ; preds = %if.end214.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end214.thread.i:                               ; preds = %if.end206.i
  %hw.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %44 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wiphy.i, align 8
  %bands212.i = getelementptr inbounds %struct.wiphy, ptr %47, i32 0, i32 53
  %48 = ptrtoint ptr %bands212.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @carl9170_band_2GHz, ptr %bands212.i, align 16
  %49 = load i32, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @carl9170_band_2GHz, i32 0, i32 3), align 4
  %50 = ptrtoint ptr %operating_flags.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %operating_flags.i, align 2
  %52 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool219.not311.i = icmp eq i8 %52, 0
  br i1 %tobool219.not311.i, label %if.end214.thread.i.if.end230.i_crit_edge, label %if.end214.thread.i.if.end227.thread.i_crit_edge

if.end214.thread.i.if.end227.thread.i_crit_edge:  ; preds = %if.end214.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end227.thread.i

if.end214.thread.i.if.end230.i_crit_edge:         ; preds = %if.end214.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end230.i

if.end227.thread.i:                               ; preds = %if.end214.thread.i.if.end227.thread.i_crit_edge, %if.end214.i.if.end227.thread.i_crit_edge
  %chans.0312.i = phi i32 [ %49, %if.end214.thread.i.if.end227.thread.i_crit_edge ], [ 0, %if.end214.i.if.end227.thread.i_crit_edge ]
  %hw221.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %53 = ptrtoint ptr %hw221.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw221.i, align 4
  %wiphy222.i = getelementptr inbounds %struct.ieee80211_hw, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %wiphy222.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wiphy222.i, align 8
  %arrayidx224.i = getelementptr %struct.wiphy, ptr %56, i32 0, i32 53, i32 1
  %57 = ptrtoint ptr %arrayidx224.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @carl9170_band_5GHz, ptr %arrayidx224.i, align 4
  %58 = load i32, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @carl9170_band_5GHz, i32 0, i32 3), align 4
  %add225.i = add i32 %58, %chans.0312.i
  br label %if.end230.i

if.end230.i:                                      ; preds = %if.end227.thread.i, %if.end214.thread.i.if.end230.i_crit_edge
  %chans.1302.i = phi i32 [ %add225.i, %if.end227.thread.i ], [ %49, %if.end214.thread.i.if.end230.i_crit_edge ]
  %59 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %chans.1302.i, i32 72) #13
  %60 = extractvalue { i32, i1 } %59, 1
  br i1 %60, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !175

kcalloc.exit.thread.i:                            ; preds = %if.end230.i
  call void @__sanitizer_cov_trace_pc() #15
  %survey304.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 64
  %61 = ptrtoint ptr %survey304.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %survey304.i, align 4
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %if.end230.i
  %62 = extractvalue { i32, i1 } %59, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %62, i32 noundef 3520) #17
  %survey.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 64
  %63 = ptrtoint ptr %survey.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call8.i.i.i, ptr %survey.i, align 4
  %tobool233.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool233.not.i, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end36

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end36:                                         ; preds = %if.end7.i.i.i
  %num_channels.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 56
  %64 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %chans.1302.i, ptr %num_channels.i, align 8
  %reg_domain.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 5
  %65 = ptrtoint ptr %reg_domain.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %reg_domain.i, align 4
  %67 = call i16 @llvm.bswap.i16(i16 %66) #13
  %current_rd.i = getelementptr inbounds %struct.ath_common, ptr %ar, i32 0, i32 22, i32 4
  %68 = ptrtoint ptr %current_rd.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %current_rd.i, align 4
  %hw238.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %69 = ptrtoint ptr %hw238.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw238.i, align 4
  %mac_address.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 6
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wiphy.i.i, align 8
  %perm_addr.i.i = getelementptr inbounds %struct.wiphy, ptr %72, i32 0, i32 1
  %73 = call ptr @memcpy(ptr %perm_addr.i.i, ptr %mac_address.i, i32 6)
  %74 = load ptr, ptr %hw238.i, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %wiphy, align 8
  %call37 = call i32 @ath_regd_init(ptr noundef %regulatory1, ptr noundef %76, ptr noundef nonnull @carl9170_reg_notifier) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %77 = load i32, ptr @modparam_noht, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool41.not = icmp eq i32 %77, 0
  br i1 %tobool41.not, label %if.end40.if.end43_crit_edge, label %if.then42

if.end40.if.end43_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  store i8 0, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @carl9170_band_2GHz, i32 0, i32 5, i32 1), align 2
  store i8 0, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @carl9170_band_5GHz, i32 0, i32 5, i32 1), align 2
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end40.if.end43_crit_edge
  %vif_num = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 6
  %78 = ptrtoint ptr %vif_num to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vif_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp124.not = icmp eq i32 %79, 0
  br i1 %cmp124.not, label %if.end43.for.end_crit_edge, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  br label %for.body

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end43.for.body_crit_edge
  %i.0125 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end43.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 40, i32 %i.0125
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %i.0125, ptr %arrayidx, align 8
  %vif = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 40, i32 %i.0125, i32 1
  %81 = ptrtoint ptr %vif to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %vif, align 4
  %inc = add nuw i32 %i.0125, 1
  %82 = ptrtoint ptr %vif_num to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %vif_num, align 8
  %cmp = icmp ult i32 %inc, %83
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end43.for.end_crit_edge
  %84 = ptrtoint ptr %hw238.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw238.i, align 4
  %call48 = call i32 @ieee80211_register_hw(ptr noundef %85) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end51:                                         ; preds = %for.end
  %registered = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 6
  %86 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %registered, align 8
  %call52 = call zeroext i1 @ath_is_world_regd(ptr noundef %regulatory1) #13
  br i1 %call52, label %if.end51.if.end57_crit_edge, label %if.then53

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %hw238.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw238.i, align 4
  %wiphy55 = getelementptr inbounds %struct.ieee80211_hw, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %wiphy55 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %wiphy55, align 8
  %call56 = call i32 @regulatory_hint(ptr noundef %90, ptr noundef %regulatory1) #13
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end51.if.end57_crit_edge
  call void @carl9170_debugfs_register(ptr noundef %ar) #13
  %call58 = call i32 @carl9170_led_init(ptr noundef %ar) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end57.err_unreg_crit_edge

if.end57.err_unreg_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_unreg

if.end61:                                         ; preds = %if.end57
  %call62 = call i32 @carl9170_led_register(ptr noundef %ar) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.err_unreg_crit_edge

if.end61.err_unreg_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_unreg

if.end65:                                         ; preds = %if.end61
  %call66 = call fastcc i32 @carl9170_register_wps_button(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.err_unreg_crit_edge

if.end65.err_unreg_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_unreg

if.end69:                                         ; preds = %if.end65
  %call70 = call fastcc i32 @carl9170_register_hwrng(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %do.end76, label %if.end69.err_unreg_crit_edge

if.end69.err_unreg_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_unreg

do.end76:                                         ; preds = %if.end69
  %udev = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  %91 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %92, i32 0, i32 15
  %93 = ptrtoint ptr %hw238.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw238.i, align 4
  %wiphy78 = getelementptr inbounds %struct.ieee80211_hw, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %wiphy78 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wiphy78, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %96, i32 0, i32 56, i32 3
  %97 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %98, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end76.wiphy_name.exit_crit_edge

do.end76.wiphy_name.exit_crit_edge:               ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %96, i32 0, i32 56
  %99 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %do.end76.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %100, %if.end.i.i ], [ %98, %do.end76.wiphy_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i.i) #16
  br label %cleanup

err_unreg:                                        ; preds = %if.end69.err_unreg_crit_edge, %if.end65.err_unreg_crit_edge, %if.end61.err_unreg_crit_edge, %if.end57.err_unreg_crit_edge
  %err.0 = phi i32 [ %call58, %if.end57.err_unreg_crit_edge ], [ %call62, %if.end61.err_unreg_crit_edge ], [ %call66, %if.end65.err_unreg_crit_edge ], [ %call70, %if.end69.err_unreg_crit_edge ]
  call void @carl9170_unregister(ptr noundef %ar)
  br label %cleanup

cleanup:                                          ; preds = %err_unreg, %wiphy_name.exit, %for.end.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end7.i.i.i.cleanup_crit_edge, %kcalloc.exit.thread.i, %if.end214.i.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %carl9170_read_eeprom.exit.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.0, %err_unreg ], [ 0, %wiphy_name.exit ], [ -12, %if.end23.cleanup_crit_edge ], [ %call.i, %carl9170_read_eeprom.exit.cleanup_crit_edge ], [ %call37, %if.end36.cleanup_crit_edge ], [ %call48, %for.end.cleanup_crit_edge ], [ -22, %if.end214.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread.i ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ -61, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_regd_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_reg_notifier(ptr noundef %wiphy, ptr noundef %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wiphy_to_ieee80211_hw(ptr noundef %wiphy) #13
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %regulatory = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 22
  tail call void @ath_reg_notifier_apply(ptr noundef %wiphy, ptr noundef %request, ptr noundef %regulatory) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath_is_world_regd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_hint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_debugfs_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_led_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_led_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @carl9170_register_wps_button(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 22
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @input_allocate_device() #13
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 117, i32 2
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end3.wiphy_name.exit_crit_edge

if.end3.wiphy_name.exit_crit_edge:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end3.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.end3.wiphy_name.exit_crit_edge ]
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.57, ptr noundef %retval.0.i.i)
  %phys = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 117, i32 3
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %wiphy9 = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy9, align 8
  %init_name.i.i46 = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56, i32 3
  %14 = ptrtoint ptr %init_name.i.i46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i46, align 8
  %tobool.not.i.i47 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i47, label %if.end.i.i49, label %wiphy_name.exit.wiphy_name.exit51_crit_edge

wiphy_name.exit.wiphy_name.exit51_crit_edge:      ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %wiphy_name.exit51

if.end.i.i49:                                     ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i48 = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  %16 = ptrtoint ptr %dev.i48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i48, align 4
  br label %wiphy_name.exit51

wiphy_name.exit51:                                ; preds = %if.end.i.i49, %wiphy_name.exit.wiphy_name.exit51_crit_edge
  %retval.0.i.i50 = phi ptr [ %17, %if.end.i.i49 ], [ %15, %wiphy_name.exit.wiphy_name.exit51_crit_edge ]
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.58, ptr noundef %retval.0.i.i50)
  %18 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %name, ptr %call, align 8
  %phys19 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %phys19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %phys, ptr %phys19, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3
  %20 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 3, ptr %id, align 4
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %wiphy21 = getelementptr inbounds %struct.ieee80211_hw, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %wiphy21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wiphy21, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %24, i32 0, i32 56
  %parent = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 1
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %parent, align 8
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 529) #13
  %call23 = tail call i32 @input_register_device(ptr noundef nonnull %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %wiphy_name.exit51
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @input_free_device(ptr noundef nonnull %call) #13
  br label %cleanup

if.end26:                                         ; preds = %wiphy_name.exit51
  call void @__sanitizer_cov_trace_pc() #15
  %pbc = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 117, i32 1
  %26 = ptrtoint ptr %pbc to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call, ptr %pbc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then25, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.then25 ], [ 0, %if.end26 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @carl9170_register_hwrng(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rng = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 122
  %name = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 122, i32 2
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 56, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.wiphy_name.exit_crit_edge

entry.wiphy_name.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 56
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %entry.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %entry.wiphy_name.exit_crit_edge ]
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 31, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str, ptr noundef %retval.0.i.i)
  %8 = ptrtoint ptr %rng to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %name, ptr %rng, align 4
  %data_read = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 122, i32 0, i32 4
  %9 = ptrtoint ptr %data_read to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @carl9170_rng_read, ptr %data_read, align 4
  %10 = ptrtoint ptr %ar to i32
  %priv = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 122, i32 0, i32 6
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %priv, align 4
  %initialized = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 122, i32 1
  %12 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %initialized, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.end34, label %do.end, !prof !178

do.end:                                           ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1606, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end34:                                         ; preds = %wiphy_name.exit
  %call37 = tail call i32 @hwrng_register(ptr noundef %rng) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end43, label %do.end42

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %udev = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  %14 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %call37) #16
  br label %cleanup

if.end43:                                         ; preds = %if.end34
  %16 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %initialized, align 4
  %call46 = tail call fastcc i32 @carl9170_rng_get(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end43.cleanup_crit_edge, label %if.then48

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then48:                                        ; preds = %if.end43
  %17 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %initialized, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.then48.cleanup_crit_edge, label %if.then.i

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @hwrng_unregister(ptr noundef %rng) #13
  %19 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %initialized, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then48.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %do.end42, %do.end
  %retval.0 = phi i32 [ -114, %do.end ], [ %call37, %do.end42 ], [ 0, %if.end43.cleanup_crit_edge ], [ %call46, %if.then48.cleanup_crit_edge ], [ %call46, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_unregister(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %registered = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 6
  %0 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %registered, align 8, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %registered, align 8
  tail call void @carl9170_led_unregister(ptr noundef %ar) #13
  tail call void @carl9170_debugfs_unregister(ptr noundef %ar) #13
  %pbc = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 117, i32 1
  %3 = ptrtoint ptr %pbc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pbc, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @input_unregister_device(ptr noundef nonnull %4) #13
  %5 = ptrtoint ptr %pbc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pbc, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %initialized.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 122, i32 1
  %6 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %initialized.i, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end8.carl9170_unregister_hwrng.exit_crit_edge, label %if.then.i

if.end8.carl9170_unregister_hwrng.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %carl9170_unregister_hwrng.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %rng.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 122
  tail call void @hwrng_unregister(ptr noundef %rng.i) #13
  %8 = ptrtoint ptr %initialized.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %initialized.i, align 4
  br label %carl9170_unregister_hwrng.exit

carl9170_unregister_hwrng.exit:                   ; preds = %if.then.i, %if.end8.carl9170_unregister_hwrng.exit_crit_edge
  %stat_work.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 63
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %stat_work.i) #13
  %tx_janitor.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 91
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %tx_janitor.i) #13
  %led_work.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 72
  %call2.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %led_work.i) #13
  %ps_work.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 120
  %call3.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %ps_work.i) #13
  %ping_work.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 30
  %call4.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %ping_work.i) #13
  %ampdu_work.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 94
  %call5.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %ampdu_work.i) #13
  %restart_work = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 29
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %restart_work) #13
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_unregister_hw(ptr noundef %10) #13
  br label %return

return:                                           ; preds = %carl9170_unregister_hwrng.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_led_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_debugfs_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_free(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %registered = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 6
  %0 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %registered, align 8, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !178

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2079, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end.if.end42_crit_edge, label %do.end36, !prof !178

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

do.end36:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2080, i32 noundef 9, ptr noundef null) #13
  br label %if.end42

if.end42:                                         ; preds = %do.end36, %if.end.if.end42_crit_edge
  %rx_failover = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 112
  %4 = ptrtoint ptr %rx_failover to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_failover, align 4
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #13
  %6 = ptrtoint ptr %rx_failover to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rx_failover, align 4
  %mem_bitmap = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 107
  %7 = ptrtoint ptr %mem_bitmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem_bitmap, align 8
  tail call void @bitmap_free(ptr noundef %8) #13
  %9 = ptrtoint ptr %mem_bitmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %mem_bitmap, align 8
  %survey = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 64
  %10 = ptrtoint ptr %survey to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %survey, align 4
  tail call void @kfree(ptr noundef %11) #13
  %12 = ptrtoint ptr %survey to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %survey, align 4
  %mutex = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %mutex) #13
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_free_hw(ptr noundef %14) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_op_tx(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_op_start(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %rx_filter.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  tail call fastcc void @carl9170_zap_queues(ptr noundef %1)
  %edcf = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 76
  %arrayidx = getelementptr %struct.ar9170, ptr %1, i32 0, i32 76, i32 3
  %aifs = getelementptr %struct.ar9170, ptr %1, i32 0, i32 76, i32 3, i32 3
  %2 = ptrtoint ptr %aifs to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %aifs, align 2
  %cw_min = getelementptr %struct.ar9170, ptr %1, i32 0, i32 76, i32 3, i32 1
  %3 = ptrtoint ptr %cw_min to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 3, ptr %cw_min, align 2
  %cw_max = getelementptr %struct.ar9170, ptr %1, i32 0, i32 76, i32 3, i32 2
  %4 = ptrtoint ptr %cw_max to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 7, ptr %cw_max, align 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 47, ptr %arrayidx, align 2
  %arrayidx9 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 76, i32 2
  %aifs10 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 76, i32 2, i32 3
  %6 = ptrtoint ptr %aifs10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %aifs10, align 2
  %cw_min13 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 76, i32 2, i32 1
  %7 = ptrtoint ptr %cw_min13 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 7, ptr %cw_min13, align 2
  %cw_max16 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 76, i32 2, i32 2
  %8 = ptrtoint ptr %cw_max16 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 15, ptr %cw_max16, align 4
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 94, ptr %arrayidx9, align 4
  %arrayidx24 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 76, i32 1
  %aifs25 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 76, i32 1, i32 3
  %10 = ptrtoint ptr %aifs25 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %aifs25, align 2
  %cw_min28 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 76, i32 1, i32 1
  %11 = ptrtoint ptr %cw_min28 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 15, ptr %cw_min28, align 2
  %cw_max31 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 76, i32 1, i32 2
  %12 = ptrtoint ptr %cw_max31 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1023, ptr %cw_max31, align 2
  %13 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %arrayidx24, align 2
  %aifs40 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 76, i32 0, i32 3
  %14 = ptrtoint ptr %aifs40 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 7, ptr %aifs40, align 2
  %cw_min43 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 76, i32 0, i32 1
  %15 = ptrtoint ptr %cw_min43 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 15, ptr %cw_min43, align 2
  %cw_max46 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 76, i32 0, i32 2
  %16 = ptrtoint ptr %cw_max46 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1023, ptr %cw_max46, align 4
  %17 = ptrtoint ptr %edcf to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %edcf, align 4
  %arrayidx54 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 76, i32 4
  %aifs55 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 76, i32 4, i32 3
  %18 = ptrtoint ptr %aifs55 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %aifs55, align 2
  %cw_min58 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 76, i32 4, i32 1
  %19 = ptrtoint ptr %cw_min58 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 3, ptr %cw_min58, align 2
  %cw_max61 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 76, i32 4, i32 2
  %20 = ptrtoint ptr %cw_max61 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 7, ptr %cw_max61, align 4
  %21 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %arrayidx54, align 4
  %current_density = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 103
  %22 = ptrtoint ptr %current_density to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %current_density, align 8
  %current_factor = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 104
  %23 = ptrtoint ptr %current_factor to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %current_factor, align 4
  %usedkeys = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 46
  %24 = ptrtoint ptr %usedkeys to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 1, ptr %usedkeys, align 8
  %filter_state = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 51
  %25 = ptrtoint ptr %filter_state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %filter_state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %last_action = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 121, i32 2
  %27 = ptrtoint ptr %last_action to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %last_action, align 8
  %28 = load volatile i32, ptr @jiffies, align 128
  %last_slept = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 121, i32 3
  %29 = ptrtoint ptr %last_slept to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %last_slept, align 4
  %erp_mode = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 54
  %30 = ptrtoint ptr %erp_mode to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %erp_mode, align 8
  %31 = load i8, ptr @modparam_nohwcrypt, align 1, !range !176
  %disable_offload_fw = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 26, i32 20
  %32 = ptrtoint ptr %disable_offload_fw to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %disable_offload_fw, align 1, !range !176
  %or198 = or i8 %33, %31
  %disable_offload = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 48
  %34 = ptrtoint ptr %disable_offload to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %or198, ptr %disable_offload, align 1
  %rx_software_decryption = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 47
  %35 = ptrtoint ptr %rx_software_decryption to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %or198, ptr %rx_software_decryption, align 8
  %hw74 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %hw74 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw74, align 4
  %queues199 = getelementptr inbounds %struct.ieee80211_hw, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %queues199 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %queues199, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp201.not = icmp eq i16 %39, 0
  br i1 %cmp201.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0202 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %arrayidx77 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 32, i32 %i.0202
  %41 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx77, align 4
  %arrayidx78 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 33, i32 %i.0202
  %42 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx78, align 4
  %inc = add nuw nsw i32 %i.0202, 1
  %43 = ptrtoint ptr %hw74 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw74, align 4
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %queues, align 4
  %conv75 = zext i16 %46 to i32
  %cmp = icmp ult i32 %inc, %conv75
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %mem_allocs = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 109
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mem_allocs, i32 noundef 4) #13
  %47 = ptrtoint ptr %mem_allocs to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 0, ptr %mem_allocs, align 4
  %call = tail call i32 @carl9170_usb_open(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool79.not = icmp eq i32 %call, 0
  br i1 %tobool79.not, label %if.end, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %for.end
  %call80 = tail call i32 @carl9170_init_mac(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end83:                                         ; preds = %if.end
  %call84 = tail call i32 @carl9170_set_qos(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end83.out_crit_edge

if.end83.out_crit_edge:                           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end87:                                         ; preds = %if.end83
  %rx_filter = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 26, i32 13
  %48 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rx_filter, align 2, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool89.not = icmp eq i8 %49, 0
  br i1 %tobool89.not, label %if.end87.if.end95_crit_edge, label %if.then90

if.end87.if.end95_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.then90:                                        ; preds = %if.end87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_filter.i) #13
  %50 = ptrtoint ptr %rx_filter.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 184549376, ptr %rx_filter.i, align 4
  %call.i = call i32 @carl9170_exec_cmd(ptr noundef %1, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %rx_filter.i, i32 noundef 0, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_filter.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool92.not = icmp eq i32 %call.i, 0
  br i1 %tobool92.not, label %if.then90.if.end95_crit_edge, label %if.then90.out_crit_edge

if.then90.out_crit_edge:                          ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then90.if.end95_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.end95:                                         ; preds = %if.then90.if.end95_crit_edge, %if.end87.if.end95_crit_edge
  %call96 = call i32 @carl9170_write_reg(ptr noundef %1, i32 noundef 1850672, i32 noundef 256) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end95.for.body103_crit_edge, label %if.end95.out_crit_edge

if.end95.out_crit_edge:                           ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end95.for.body103_crit_edge:                   ; preds = %if.end95
  br label %for.body103

for.body103:                                      ; preds = %for.inc123.for.body103_crit_edge, %if.end95.for.body103_crit_edge
  %i.1203 = phi i32 [ %inc124, %for.inc123.for.body103_crit_edge ], [ 0, %if.end95.for.body103_crit_edge ]
  %conv104 = trunc i32 %i.1203 to i8
  %call105 = call i32 @carl9170_upload_key(ptr noundef %1, i8 noundef zeroext %conv104, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %for.body103.out_crit_edge

for.body103.out_crit_edge:                        ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end108:                                        ; preds = %for.body103
  %call110 = call i32 @carl9170_upload_key(ptr noundef %1, i8 noundef zeroext %conv104, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end108.out_crit_edge

if.end108.out_crit_edge:                          ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end113:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.1203)
  %cmp114 = icmp ult i32 %i.1203, 64
  br i1 %cmp114, label %if.then116, label %if.end113.for.inc123_crit_edge

if.end113.for.inc123_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc123

if.then116:                                       ; preds = %if.end113
  %call118 = call i32 @carl9170_disable_key(ptr noundef %1, i8 noundef zeroext %conv104) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.then116.for.inc123_crit_edge, label %if.then116.out_crit_edge

if.then116.out_crit_edge:                         ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then116.for.inc123_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc123

for.inc123:                                       ; preds = %if.then116.for.inc123_crit_edge, %if.end113.for.inc123_crit_edge
  %inc124 = add nuw nsw i32 %i.1203, 1
  %exitcond.not = icmp eq i32 %inc124, 68
  br i1 %exitcond.not, label %for.end125, label %for.inc123.for.body103_crit_edge

for.inc123.for.body103_crit_edge:                 ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body103

for.end125:                                       ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @carl9170_set_state_when(ptr noundef %1, i32 noundef 2, i32 noundef 3)
  %51 = ptrtoint ptr %hw74 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw74, align 4
  %stat_work = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 63
  %call128 = call i32 @round_jiffies(i32 noundef 3000) #13
  call void @ieee80211_queue_delayed_work(ptr noundef %52, ptr noundef %stat_work, i32 noundef %call128) #13
  %53 = ptrtoint ptr %hw74 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw74, align 4
  call void @ieee80211_wake_queues(ptr noundef %54) #13
  br label %out

out:                                              ; preds = %for.end125, %if.then116.out_crit_edge, %if.end108.out_crit_edge, %for.body103.out_crit_edge, %if.end95.out_crit_edge, %if.then90.out_crit_edge, %if.end83.out_crit_edge, %if.end.out_crit_edge, %for.end.out_crit_edge
  %err.0 = phi i32 [ %call, %for.end.out_crit_edge ], [ %call80, %if.end.out_crit_edge ], [ %call84, %if.end83.out_crit_edge ], [ %call.i, %if.then90.out_crit_edge ], [ %call96, %if.end95.out_crit_edge ], [ 0, %for.end125 ], [ %call118, %if.then116.out_crit_edge ], [ %call110, %if.end108.out_crit_edge ], [ %call105, %for.body103.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #13
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_op_stop(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %state_lock.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock.i) #13
  %state.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp5.not.i = icmp ult i32 %3, 3
  br i1 %cmp5.not.i, label %entry.carl9170_set_state_when.exit_crit_edge, label %if.then.i

entry.carl9170_set_state_when.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %carl9170_set_state_when.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %state.i, align 4
  br label %carl9170_set_state_when.exit

carl9170_set_state_when.exit:                     ; preds = %if.then.i, %entry.carl9170_set_state_when.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock.i, i32 noundef %call2.i) #13
  %hw1 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw1, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %6) #13
  %mutex = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp ugt i32 %8, 1
  br i1 %cmp, label %do.body4, label %carl9170_set_state_when.exit.if.end_crit_edge

carl9170_set_state_when.exit.if.end_crit_edge:    ; preds = %carl9170_set_state_when.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body4:                                         ; preds = %carl9170_set_state_when.exit
  call void @__sanitizer_cov_trace_pc() #15
  %beacon_iter = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 44
  %9 = ptrtoint ptr %beacon_iter to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr null, ptr %beacon_iter, align 4
  %call = tail call i32 @carl9170_led_set_state(ptr noundef %1, i32 noundef 0) #13
  %call11 = tail call i32 @carl9170_write_reg(ptr noundef %1, i32 noundef 1850672, i32 noundef 0) #13
  tail call void @carl9170_usb_stop(ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %do.body4, %carl9170_set_state_when.exit.if.end_crit_edge
  tail call fastcc void @carl9170_zap_queues(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  %stat_work.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 63
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %stat_work.i) #13
  %tx_janitor.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 91
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %tx_janitor.i) #13
  %led_work.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 72
  %call2.i23 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %led_work.i) #13
  %ps_work.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 120
  %call3.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %ps_work.i) #13
  %ping_work.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 30
  %call4.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %ping_work.i) #13
  %ampdu_work.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 94
  %call5.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %ampdu_work.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_op_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !179
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 696, ptr noundef nonnull @.str.43) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %active = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %6 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %active, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  %id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %enable_beacon = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 7
  %10 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %enable_beacon, align 4
  %beacon_lock = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 41
  tail call void @_raw_spin_lock_bh(ptr noundef %beacon_lock) #13
  %beacon = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 4
  %11 = ptrtoint ptr %beacon to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %beacon, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %12, i32 noundef 1) #13
  %13 = ptrtoint ptr %beacon to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %beacon, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %beacon_lock) #13
  br label %init

if.end:                                           ; preds = %rcu_read_lock.exit
  %call.i264 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %tobool.not.i265 = icmp eq i32 %call.i264, 0
  br i1 %tobool.not.i265, label %land.lhs.true.i267, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i267:                               ; preds = %if.end
  %call1.i266 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i266)
  %tobool2.not.i = icmp eq i32 %call1.i266, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i267.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i267.do.end.i_crit_edge:            ; preds = %land.lhs.true.i267
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i267
  %.b27.i = load i1, ptr @carl9170_get_main_vif.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i268

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i268:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_get_main_vif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 650, ptr noundef nonnull @.str.41) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i268, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i267.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %vif_list.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 37
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %cvif.0.in.i = phi ptr [ %vif_list.i, %do.end.i ], [ %cvif.0.i, %for.body.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %cvif.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %cvif.0.i = load volatile ptr, ptr %cvif.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %cvif.0.i, %vif_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end18_crit_edge, label %for.body.i

for.cond.i.if.end18_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

for.body.i:                                       ; preds = %for.cond.i
  %active.i = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %active.i, align 4, !range !176
  %tobool10.not.i = icmp eq i8 %16, 0
  br i1 %tobool10.not.i, label %for.body.i.for.cond.i_crit_edge, label %carl9170_get_main_vif.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

carl9170_get_main_vif.exit:                       ; preds = %for.body.i
  %add.ptr.i.i = getelementptr i8, ptr %cvif.0.i, i32 -848
  %tobool3.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool3.not, label %carl9170_get_main_vif.exit.if.end18_crit_edge, label %if.then4

carl9170_get_main_vif.exit.if.end18_crit_edge:    ; preds = %carl9170_get_main_vif.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then4:                                         ; preds = %carl9170_get_main_vif.exit
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i, align 8
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %sw.default [
    i32 2, label %sw.bb
    i32 7, label %if.then4.sw.bb8_crit_edge
    i32 3, label %if.then4.sw.bb8_crit_edge391
  ]

if.then4.sw.bb8_crit_edge391:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb8

if.then4.sw.bb8_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb8

sw.bb:                                            ; preds = %if.then4
  %20 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp = icmp eq i32 %21, 2
  br i1 %cmp, label %sw.bb.if.end18_crit_edge, label %if.end7

sw.bb.if.end18_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.end7:                                          ; preds = %sw.bb
  %call.i269 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i269, label %if.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i272

if.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i272:                               ; preds = %if.end7
  %call1.i270 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i270)
  %tobool.not.i271 = icmp eq i32 %call1.i270, 0
  br i1 %tobool.not.i271, label %land.lhs.true.i272.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i274

land.lhs.true.i272.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i272
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i274:                              ; preds = %land.lhs.true.i272
  %.b4.i273 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i273, label %land.lhs.true2.i274.rcu_read_unlock.exit_crit_edge, label %if.then.i275

land.lhs.true2.i274.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i274
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i275:                                     ; preds = %land.lhs.true2.i274
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 724, ptr noundef nonnull @.str.44) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i275, %land.lhs.true2.i274.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i272.rcu_read_unlock.exit_crit_edge, %if.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  br label %if.else187.sink.split

sw.bb8:                                           ; preds = %if.then4.sw.bb8_crit_edge, %if.then4.sw.bb8_crit_edge391
  %22 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vif, align 8
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %23, label %if.end17 [
    i32 2, label %sw.bb8.if.end18_crit_edge
    i32 3, label %sw.bb8.if.end18_crit_edge392
    i32 7, label %sw.bb8.if.end18_crit_edge393
  ]

sw.bb8.if.end18_crit_edge393:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

sw.bb8.if.end18_crit_edge392:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

sw.bb8.if.end18_crit_edge:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.end17:                                         ; preds = %sw.bb8
  %call.i279 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i279, label %if.end17.rcu_read_unlock.exit290_crit_edge, label %land.lhs.true.i282

if.end17.rcu_read_unlock.exit290_crit_edge:       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit290

land.lhs.true.i282:                               ; preds = %if.end17
  %call1.i280 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i280)
  %tobool.not.i281 = icmp eq i32 %call1.i280, 0
  br i1 %tobool.not.i281, label %land.lhs.true.i282.rcu_read_unlock.exit290_crit_edge, label %land.lhs.true2.i284

land.lhs.true.i282.rcu_read_unlock.exit290_crit_edge: ; preds = %land.lhs.true.i282
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit290

land.lhs.true2.i284:                              ; preds = %land.lhs.true.i282
  %.b4.i283 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i283, label %land.lhs.true2.i284.rcu_read_unlock.exit290_crit_edge, label %if.then.i285

land.lhs.true2.i284.rcu_read_unlock.exit290_crit_edge: ; preds = %land.lhs.true2.i284
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit290

if.then.i285:                                     ; preds = %land.lhs.true2.i284
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 724, ptr noundef nonnull @.str.44) #13
  br label %rcu_read_unlock.exit290

rcu_read_unlock.exit290:                          ; preds = %if.then.i285, %land.lhs.true2.i284.rcu_read_unlock.exit290_crit_edge, %land.lhs.true.i282.rcu_read_unlock.exit290_crit_edge, %if.end17.rcu_read_unlock.exit290_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  br label %if.else187.sink.split

sw.default:                                       ; preds = %if.then4
  %call.i291 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i291, label %sw.default.rcu_read_unlock.exit302_crit_edge, label %land.lhs.true.i294

sw.default.rcu_read_unlock.exit302_crit_edge:     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit302

land.lhs.true.i294:                               ; preds = %sw.default
  %call1.i292 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i292)
  %tobool.not.i293 = icmp eq i32 %call1.i292, 0
  br i1 %tobool.not.i293, label %land.lhs.true.i294.rcu_read_unlock.exit302_crit_edge, label %land.lhs.true2.i296

land.lhs.true.i294.rcu_read_unlock.exit302_crit_edge: ; preds = %land.lhs.true.i294
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit302

land.lhs.true2.i296:                              ; preds = %land.lhs.true.i294
  %.b4.i295 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i295, label %land.lhs.true2.i296.rcu_read_unlock.exit302_crit_edge, label %if.then.i297

land.lhs.true2.i296.rcu_read_unlock.exit302_crit_edge: ; preds = %land.lhs.true2.i296
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit302

if.then.i297:                                     ; preds = %land.lhs.true2.i296
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 724, ptr noundef nonnull @.str.44) #13
  br label %rcu_read_unlock.exit302

rcu_read_unlock.exit302:                          ; preds = %if.then.i297, %land.lhs.true2.i296.rcu_read_unlock.exit302_crit_edge, %land.lhs.true.i294.rcu_read_unlock.exit302_crit_edge, %sw.default.rcu_read_unlock.exit302_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  br label %if.else187.sink.split

if.end18:                                         ; preds = %sw.bb8.if.end18_crit_edge, %sw.bb8.if.end18_crit_edge392, %sw.bb8.if.end18_crit_edge393, %sw.bb.if.end18_crit_edge, %carl9170_get_main_vif.exit.if.end18_crit_edge, %for.cond.i.if.end18_crit_edge
  %vif_bitmap = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 38
  %vif_num = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 26, i32 6
  %25 = ptrtoint ptr %vif_num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vif_num, align 8
  %call19 = tail call i32 @bitmap_find_free_region(ptr noundef %vif_bitmap, i32 noundef %26, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %do.body

if.then21:                                        ; preds = %if.end18
  %call.i303 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i303, label %if.then21.rcu_read_unlock.exit314_crit_edge, label %land.lhs.true.i306

if.then21.rcu_read_unlock.exit314_crit_edge:      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit314

land.lhs.true.i306:                               ; preds = %if.then21
  %call1.i304 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i304)
  %tobool.not.i305 = icmp eq i32 %call1.i304, 0
  br i1 %tobool.not.i305, label %land.lhs.true.i306.rcu_read_unlock.exit314_crit_edge, label %land.lhs.true2.i308

land.lhs.true.i306.rcu_read_unlock.exit314_crit_edge: ; preds = %land.lhs.true.i306
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit314

land.lhs.true2.i308:                              ; preds = %land.lhs.true.i306
  %.b4.i307 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i307, label %land.lhs.true2.i308.rcu_read_unlock.exit314_crit_edge, label %if.then.i309

land.lhs.true2.i308.rcu_read_unlock.exit314_crit_edge: ; preds = %land.lhs.true2.i308
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit314

if.then.i309:                                     ; preds = %land.lhs.true2.i308
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 724, ptr noundef nonnull @.str.44) #13
  br label %rcu_read_unlock.exit314

rcu_read_unlock.exit314:                          ; preds = %if.then.i309, %land.lhs.true2.i308.rcu_read_unlock.exit314_crit_edge, %land.lhs.true.i306.rcu_read_unlock.exit314_crit_edge, %if.then21.rcu_read_unlock.exit314_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  br label %if.else187.sink.split

do.body:                                          ; preds = %if.end18
  %arrayidx = getelementptr %struct.ar9170, ptr %1, i32 0, i32 40, i32 %call19
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %call19)
  %cmp25.not = icmp eq i32 %28, %call19
  br i1 %cmp25.not, label %do.end35, label %do.body29, !prof !178

do.body29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/carl9170/main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 671, 0\0A.popsection", ""() #13, !srcloc !181
  unreachable

do.end35:                                         ; preds = %do.body
  %29 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %active, align 4
  %id37 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %30 = ptrtoint ptr %id37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call19, ptr %id37, align 4
  %enable_beacon38 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 7
  %31 = ptrtoint ptr %enable_beacon38 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %enable_beacon38, align 4
  %vifs = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 39
  %32 = ptrtoint ptr %vifs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vifs, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %vifs, align 4
  %prev.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 37, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %drv_priv, ptr noundef %35, ptr noundef %vif_list.i) #13
  br i1 %call.i.i, label %if.end.i.i, label %do.end35.list_add_tail_rcu.exit_crit_edge

do.end35.list_add_tail_rcu.exit_crit_edge:        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %vif_list.i, ptr %drv_priv, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %drv_priv, i32 0, i32 1
  %37 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !182
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %drv_priv, ptr %35, align 4
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %drv_priv, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %do.end35.list_add_tail_rcu.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  %vif75 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 40, i32 %call19, i32 1
  %40 = ptrtoint ptr %vif75 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %vif, ptr %vif75, align 4
  br label %init

init:                                             ; preds = %list_add_tail_rcu.exit, %if.then
  %vif_id.0 = phi i32 [ %9, %if.then ], [ %call19, %list_add_tail_rcu.exit ]
  %call.i315 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i315)
  %tobool.not.i316 = icmp eq i32 %call.i315, 0
  br i1 %tobool.not.i316, label %land.lhs.true.i319, label %init.do.end.i324_crit_edge

init.do.end.i324_crit_edge:                       ; preds = %init
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i324

land.lhs.true.i319:                               ; preds = %init
  %call1.i317 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i317)
  %tobool2.not.i318 = icmp eq i32 %call1.i317, 0
  br i1 %tobool2.not.i318, label %land.lhs.true.i319.do.end.i324_crit_edge, label %land.lhs.true3.i321

land.lhs.true.i319.do.end.i324_crit_edge:         ; preds = %land.lhs.true.i319
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i324

land.lhs.true3.i321:                              ; preds = %land.lhs.true.i319
  %.b27.i320 = load i1, ptr @carl9170_get_main_vif.__warned, align 1
  br i1 %.b27.i320, label %land.lhs.true3.i321.do.end.i324_crit_edge, label %if.then.i322

land.lhs.true3.i321.do.end.i324_crit_edge:        ; preds = %land.lhs.true3.i321
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i324

if.then.i322:                                     ; preds = %land.lhs.true3.i321
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_get_main_vif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 650, ptr noundef nonnull @.str.41) #13
  br label %do.end.i324

do.end.i324:                                      ; preds = %if.then.i322, %land.lhs.true3.i321.do.end.i324_crit_edge, %land.lhs.true.i319.do.end.i324_crit_edge, %init.do.end.i324_crit_edge
  %vif_list.i323 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 37
  br label %for.cond.i328

for.cond.i328:                                    ; preds = %for.body.i331.for.cond.i328_crit_edge, %do.end.i324
  %cvif.0.in.i325 = phi ptr [ %vif_list.i323, %do.end.i324 ], [ %cvif.0.i326, %for.body.i331.for.cond.i328_crit_edge ]
  %41 = ptrtoint ptr %cvif.0.in.i325 to i32
  call void @__asan_load4_noabort(i32 %41)
  %cvif.0.i326 = load volatile ptr, ptr %cvif.0.in.i325, align 4
  %cmp.not.i327 = icmp eq ptr %cvif.0.i326, %vif_list.i323
  br i1 %cmp.not.i327, label %for.cond.i328.carl9170_get_main_vif.exit335_crit_edge, label %for.body.i331

for.cond.i328.carl9170_get_main_vif.exit335_crit_edge: ; preds = %for.cond.i328
  call void @__sanitizer_cov_trace_pc() #15
  br label %carl9170_get_main_vif.exit335

for.body.i331:                                    ; preds = %for.cond.i328
  %active.i329 = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.0.i326, i32 0, i32 1
  %42 = ptrtoint ptr %active.i329 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %active.i329, align 4, !range !176
  %tobool10.not.i330 = icmp eq i8 %43, 0
  br i1 %tobool10.not.i330, label %for.body.i331.for.cond.i328_crit_edge, label %if.then11.i333

for.body.i331.for.cond.i328_crit_edge:            ; preds = %for.body.i331
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i328

if.then11.i333:                                   ; preds = %for.body.i331
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i332 = getelementptr i8, ptr %cvif.0.i326, i32 -848
  br label %carl9170_get_main_vif.exit335

carl9170_get_main_vif.exit335:                    ; preds = %if.then11.i333, %for.cond.i328.carl9170_get_main_vif.exit335_crit_edge
  %retval.0.i334 = phi ptr [ %add.ptr.i.i332, %if.then11.i333 ], [ null, %for.cond.i328.carl9170_get_main_vif.exit335_crit_edge ]
  %cmp88 = icmp eq ptr %retval.0.i334, %vif
  br i1 %cmp88, label %do.body90, label %if.else145

do.body90:                                        ; preds = %carl9170_get_main_vif.exit335
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !184
  %beacon_iter118 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 44
  %44 = ptrtoint ptr %beacon_iter118 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %drv_priv, ptr %beacon_iter118, align 4
  %call.i336 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i336, label %do.body90.rcu_read_unlock.exit347_crit_edge, label %land.lhs.true.i339

do.body90.rcu_read_unlock.exit347_crit_edge:      ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit347

land.lhs.true.i339:                               ; preds = %do.body90
  %call1.i337 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i337)
  %tobool.not.i338 = icmp eq i32 %call1.i337, 0
  br i1 %tobool.not.i338, label %land.lhs.true.i339.rcu_read_unlock.exit347_crit_edge, label %land.lhs.true2.i341

land.lhs.true.i339.rcu_read_unlock.exit347_crit_edge: ; preds = %land.lhs.true.i339
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit347

land.lhs.true2.i341:                              ; preds = %land.lhs.true.i339
  %.b4.i340 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i340, label %land.lhs.true2.i341.rcu_read_unlock.exit347_crit_edge, label %if.then.i342

land.lhs.true2.i341.rcu_read_unlock.exit347_crit_edge: ; preds = %land.lhs.true2.i341
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit347

if.then.i342:                                     ; preds = %land.lhs.true2.i341
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 724, ptr noundef nonnull @.str.44) #13
  br label %rcu_read_unlock.exit347

rcu_read_unlock.exit347:                          ; preds = %if.then.i342, %land.lhs.true2.i341.rcu_read_unlock.exit347_crit_edge, %land.lhs.true.i339.rcu_read_unlock.exit347_crit_edge, %do.body90.rcu_read_unlock.exit347_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  %45 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i343 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i343 to ptr
  %preempt_count.i.i.i.i344 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i344 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i344, align 4
  %sub.i.i.i345 = add i32 %48, -1
  store volatile i32 %sub.i.i.i345, ptr %preempt_count.i.i.i.i344, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %tobool.not.i348 = icmp eq ptr %vif, null
  br i1 %tobool.not.i348, label %if.then.i349, label %carl9170_init_interface.exit

if.then.i349:                                     ; preds = %rcu_read_unlock.exit347
  %state.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.i = icmp ugt i32 %50, 2
  br i1 %cmp.i, label %land.rhs.i, label %if.then.i349.if.end152_crit_edge

if.then.i349.if.end152_crit_edge:                 ; preds = %if.then.i349
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

land.rhs.i:                                       ; preds = %if.then.i349
  %.b72.i = load i1, ptr @carl9170_init_interface.__already_done, align 1
  br i1 %.b72.i, label %land.rhs.i.if.end152_crit_edge, label %if.then9.i, !prof !178

land.rhs.i.if.end152_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

if.then9.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_init_interface.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 565, i32 noundef 9, ptr noundef null) #13
  br label %if.end152

carl9170_init_interface.exit:                     ; preds = %rcu_read_unlock.exit347
  %macaddr.i = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 9
  %addr.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %51 = call ptr @memcpy(ptr %macaddr.i, ptr %addr.i, i32 6)
  %52 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vif, align 8
  %54 = add i32 %53, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %54)
  %55 = icmp ult i32 %54, -2
  %56 = zext i1 %55 to i8
  %disable_offload.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 48
  %57 = ptrtoint ptr %disable_offload.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %disable_offload.i, align 1, !range !176
  %or.i = or i8 %58, %56
  store i8 %or.i, ptr %disable_offload.i, align 1
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %59 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %p2p.i, align 2, !range !176
  %61 = or i8 %or.i, %60
  store i8 %61, ptr %disable_offload.i, align 1
  %rx_software_decryption.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 47
  %62 = ptrtoint ptr %rx_software_decryption.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %rx_software_decryption.i, align 8
  %call.i350 = tail call i32 @carl9170_set_operating_mode(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i350)
  %tobool142.not = icmp eq i32 %call.i350, 0
  br i1 %tobool142.not, label %carl9170_init_interface.exit.if.end152_crit_edge, label %carl9170_init_interface.exit.unlock_crit_edge

carl9170_init_interface.exit.unlock_crit_edge:    ; preds = %carl9170_init_interface.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

carl9170_init_interface.exit.if.end152_crit_edge: ; preds = %carl9170_init_interface.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

if.else145:                                       ; preds = %carl9170_get_main_vif.exit335
  %call.i352 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i352, label %if.else145.rcu_read_unlock.exit363_crit_edge, label %land.lhs.true.i355

if.else145.rcu_read_unlock.exit363_crit_edge:     ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit363

land.lhs.true.i355:                               ; preds = %if.else145
  %call1.i353 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i353)
  %tobool.not.i354 = icmp eq i32 %call1.i353, 0
  br i1 %tobool.not.i354, label %land.lhs.true.i355.rcu_read_unlock.exit363_crit_edge, label %land.lhs.true2.i357

land.lhs.true.i355.rcu_read_unlock.exit363_crit_edge: ; preds = %land.lhs.true.i355
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit363

land.lhs.true2.i357:                              ; preds = %land.lhs.true.i355
  %.b4.i356 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i356, label %land.lhs.true2.i357.rcu_read_unlock.exit363_crit_edge, label %if.then.i358

land.lhs.true2.i357.rcu_read_unlock.exit363_crit_edge: ; preds = %land.lhs.true2.i357
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit363

if.then.i358:                                     ; preds = %land.lhs.true2.i357
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 724, ptr noundef nonnull @.str.44) #13
  br label %rcu_read_unlock.exit363

rcu_read_unlock.exit363:                          ; preds = %if.then.i358, %land.lhs.true2.i357.rcu_read_unlock.exit363_crit_edge, %land.lhs.true.i355.rcu_read_unlock.exit363_crit_edge, %if.else145.rcu_read_unlock.exit363_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  %63 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i359 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i359 to ptr
  %preempt_count.i.i.i.i360 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i360 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i360, align 4
  %sub.i.i.i361 = add i32 %66, -1
  store volatile i32 %sub.i.i.i361, ptr %preempt_count.i.i.i.i360, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %addr146 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %call148 = tail call i32 @carl9170_mod_virtual_mac(ptr noundef %1, i32 noundef %vif_id.0, ptr noundef %addr146) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %rcu_read_unlock.exit363.if.end152_crit_edge, label %rcu_read_unlock.exit363.unlock_crit_edge

rcu_read_unlock.exit363.unlock_crit_edge:         ; preds = %rcu_read_unlock.exit363
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

rcu_read_unlock.exit363.if.end152_crit_edge:      ; preds = %rcu_read_unlock.exit363
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

if.end152:                                        ; preds = %rcu_read_unlock.exit363.if.end152_crit_edge, %carl9170_init_interface.exit.if.end152_crit_edge, %if.then9.i, %land.rhs.i.if.end152_crit_edge, %if.then.i349.if.end152_crit_edge
  %tx_seq_table = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 26, i32 18
  %67 = ptrtoint ptr %tx_seq_table to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_seq_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool154.not = icmp eq i32 %68, 0
  br i1 %tobool154.not, label %if.end152.if.else187_crit_edge, label %if.then155

if.end152.if.else187_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else187

if.then155:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl i32 %vif_id.0, 2
  %add = add i32 %68, %mul
  %call158 = tail call i32 @carl9170_write_reg(ptr noundef %1, i32 noundef %add, i32 noundef 0) #13
  br label %unlock

unlock:                                           ; preds = %if.then155, %rcu_read_unlock.exit363.unlock_crit_edge, %carl9170_init_interface.exit.unlock_crit_edge
  %err.1 = phi i32 [ %call.i350, %carl9170_init_interface.exit.unlock_crit_edge ], [ %call158, %if.then155 ], [ %call148, %rcu_read_unlock.exit363.unlock_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool163.not = icmp ne i32 %err.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vif_id.0)
  %cmp165 = icmp sgt i32 %vif_id.0, -1
  %or.cond = select i1 %tobool163.not, i1 %cmp165, i1 false
  br i1 %or.cond, label %if.then166, label %unlock.if.else187_crit_edge

unlock.if.else187_crit_edge:                      ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else187

if.then166:                                       ; preds = %unlock
  %69 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %active, align 4
  %vif_bitmap168 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 38
  tail call void @bitmap_release_region(ptr noundef %vif_bitmap168, i32 noundef %vif_id.0, i32 noundef 0) #13
  %vifs169 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 39
  %70 = ptrtoint ptr %vifs169 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %vifs169, align 4
  %dec = add i32 %71, -1
  store i32 %dec, ptr %vifs169, align 4
  %vif178 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 40, i32 %vif_id.0, i32 1
  %72 = ptrtoint ptr %vif178 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr null, ptr %vif178, align 4
  %call.i.i364 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %drv_priv) #13
  br i1 %call.i.i364, label %if.end.i.i365, label %if.then166.list_del_rcu.exit_crit_edge

if.then166.list_del_rcu.exit_crit_edge:           ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_rcu.exit

if.end.i.i365:                                    ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %drv_priv, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i, align 4
  %75 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %drv_priv, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev1.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %74, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i365, %if.then166.list_del_rcu.exit_crit_edge
  %prev.i366 = getelementptr inbounds %struct.list_head, ptr %drv_priv, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i366 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i366, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  tail call void @synchronize_rcu() #13
  br label %cleanup194

if.else187.sink.split:                            ; preds = %rcu_read_unlock.exit314, %rcu_read_unlock.exit302, %rcu_read_unlock.exit290, %rcu_read_unlock.exit
  %err.1377.ph = phi i32 [ 0, %rcu_read_unlock.exit302 ], [ -28, %rcu_read_unlock.exit314 ], [ -16, %rcu_read_unlock.exit290 ], [ -16, %rcu_read_unlock.exit ]
  %80 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i298 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i298 to ptr
  %preempt_count.i.i.i.i299 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i.i.i299 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i.i.i299, align 4
  %sub.i.i.i = add i32 %83, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i299, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %if.else187

if.else187:                                       ; preds = %if.else187.sink.split, %unlock.if.else187_crit_edge, %if.end152.if.else187_crit_edge
  %err.1377 = phi i32 [ %err.1, %unlock.if.else187_crit_edge ], [ 0, %if.end152.if.else187_crit_edge ], [ %err.1377.ph, %if.else187.sink.split ]
  %vifs188 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 39
  %84 = ptrtoint ptr %vifs188 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vifs188, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp189 = icmp ugt i32 %85, 1
  br i1 %cmp189, label %if.then190, label %if.else187.if.end191_crit_edge

if.else187.if.end191_crit_edge:                   ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end191

if.then190:                                       ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #15
  %off_override = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 121, i32 5
  %86 = ptrtoint ptr %off_override to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %off_override, align 4
  %or = or i32 %87, 1
  store i32 %or, ptr %off_override, align 4
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %if.else187.if.end191_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup194

cleanup194:                                       ; preds = %if.end191, %list_del_rcu.exit
  %err.1376 = phi i32 [ %err.1, %list_del_rcu.exit ], [ %err.1377, %if.end191 ]
  ret i32 %err.1376
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_op_remove_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %active = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.rhs, label %if.end39.critedge

land.rhs:                                         ; preds = %entry
  %.b204 = load i1, ptr @carl9170_op_remove_interface.__already_done, align 1
  br i1 %.b204, label %land.rhs.unlock_crit_edge, label %if.then, !prof !178

land.rhs.unlock_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_op_remove_interface.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 759, i32 noundef 9, ptr noundef null) #13
  br label %unlock

if.end39.critedge:                                ; preds = %entry
  %vifs = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %vifs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vifs, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %vifs, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !179
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end39.critedge.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end39.critedge.rcu_read_lock.exit_crit_edge:   ; preds = %if.end39.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end39.critedge
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 696, ptr noundef nonnull @.str.43) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end39.critedge.rcu_read_lock.exit_crit_edge
  %call.i206 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %tobool.not.i207 = icmp eq i32 %call.i206, 0
  br i1 %tobool.not.i207, label %land.lhs.true.i209, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i209:                               ; preds = %rcu_read_lock.exit
  %call1.i208 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i208)
  %tobool2.not.i = icmp eq i32 %call1.i208, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i209.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i209.do.end.i_crit_edge:            ; preds = %land.lhs.true.i209
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i209
  %.b27.i = load i1, ptr @carl9170_get_main_vif.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i210

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i210:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_get_main_vif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 650, ptr noundef nonnull @.str.41) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i210, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i209.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %vif_list.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 37
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %cvif.0.in.i = phi ptr [ %vif_list.i, %do.end.i ], [ %cvif.0.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %cvif.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cvif.0.i = load volatile ptr, ptr %cvif.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %cvif.0.i, %vif_list.i
  br i1 %cmp.not.i, label %for.cond.i.carl9170_get_main_vif.exit_crit_edge, label %for.body.i

for.cond.i.carl9170_get_main_vif.exit_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %carl9170_get_main_vif.exit

for.body.i:                                       ; preds = %for.cond.i
  %active.i = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %active.i, align 4, !range !176
  %tobool10.not.i = icmp eq i8 %12, 0
  br i1 %tobool10.not.i, label %for.body.i.for.cond.i_crit_edge, label %if.then11.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

if.then11.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i = getelementptr i8, ptr %cvif.0.i, i32 -848
  br label %carl9170_get_main_vif.exit

carl9170_get_main_vif.exit:                       ; preds = %if.then11.i, %for.cond.i.carl9170_get_main_vif.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i.i, %if.then11.i ], [ null, %for.cond.i.carl9170_get_main_vif.exit_crit_edge ]
  %id40 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %id40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id40, align 4
  %15 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %active, align 4
  %enable_beacon = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 7
  %16 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enable_beacon, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool43.not = icmp eq i8 %17, 0
  br i1 %tobool43.not, label %carl9170_get_main_vif.exit.if.end65_crit_edge, label %do.end59, !prof !178

carl9170_get_main_vif.exit.if.end65_crit_edge:    ; preds = %carl9170_get_main_vif.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

do.end59:                                         ; preds = %carl9170_get_main_vif.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 770, i32 noundef 9, ptr noundef null) #13
  br label %if.end65

if.end65:                                         ; preds = %do.end59, %carl9170_get_main_vif.exit.if.end65_crit_edge
  %18 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %enable_beacon, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %drv_priv) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end65.list_del_rcu.exit_crit_edge

if.end65.list_del_rcu.exit_crit_edge:             ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %drv_priv, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drv_priv, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end65.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %drv_priv, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %vif81 = getelementptr %struct.ar9170, ptr %1, i32 0, i32 40, i32 %14, i32 1
  %26 = ptrtoint ptr %vif81 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr null, ptr %vif81, align 4
  %cmp = icmp eq ptr %retval.0.i, %vif
  %call.i211 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %cmp, label %if.then88, label %if.else127

if.then88:                                        ; preds = %list_del_rcu.exit
  br i1 %call.i211, label %if.then88.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i214

if.then88.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i214:                               ; preds = %if.then88
  %call1.i212 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i212)
  %tobool.not.i213 = icmp eq i32 %call1.i212, 0
  br i1 %tobool.not.i213, label %land.lhs.true.i214.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i216

land.lhs.true.i214.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i214
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i216:                              ; preds = %land.lhs.true.i214
  %.b4.i215 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i215, label %land.lhs.true2.i216.rcu_read_unlock.exit_crit_edge, label %if.then.i217

land.lhs.true2.i216.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i216
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i217:                                     ; preds = %land.lhs.true2.i216
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 724, ptr noundef nonnull @.str.44) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i217, %land.lhs.true2.i216.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i214.rcu_read_unlock.exit_crit_edge, %if.then88.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  %27 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i218 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i218 to ptr
  %preempt_count.i.i.i.i219 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i219 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i219, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i219, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %31 = ptrtoint ptr %vifs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vifs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool90.not = icmp eq i32 %32, 0
  br i1 %tobool90.not, label %if.else, label %if.then91

if.then91:                                        ; preds = %rcu_read_unlock.exit
  %call.i221 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %tobool.not.i222 = icmp eq i32 %call.i221, 0
  br i1 %tobool.not.i222, label %land.lhs.true.i225, label %if.then91.for.cond.i234.preheader_crit_edge

if.then91.for.cond.i234.preheader_crit_edge:      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i234.preheader

land.lhs.true.i225:                               ; preds = %if.then91
  %call1.i223 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i223)
  %tobool2.not.i224 = icmp eq i32 %call1.i223, 0
  br i1 %tobool2.not.i224, label %land.lhs.true.i225.for.cond.i234.preheader_crit_edge, label %land.lhs.true3.i227

land.lhs.true.i225.for.cond.i234.preheader_crit_edge: ; preds = %land.lhs.true.i225
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i234.preheader

land.lhs.true3.i227:                              ; preds = %land.lhs.true.i225
  %.b27.i226 = load i1, ptr @carl9170_get_main_vif.__warned, align 1
  br i1 %.b27.i226, label %land.lhs.true3.i227.for.cond.i234.preheader_crit_edge, label %if.then.i228

land.lhs.true3.i227.for.cond.i234.preheader_crit_edge: ; preds = %land.lhs.true3.i227
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i234.preheader

if.then.i228:                                     ; preds = %land.lhs.true3.i227
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_get_main_vif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 650, ptr noundef nonnull @.str.41) #13
  br label %for.cond.i234.preheader

for.cond.i234.preheader:                          ; preds = %if.then.i228, %land.lhs.true3.i227.for.cond.i234.preheader_crit_edge, %land.lhs.true.i225.for.cond.i234.preheader_crit_edge, %if.then91.for.cond.i234.preheader_crit_edge
  br label %for.cond.i234

for.cond.i234:                                    ; preds = %for.body.i237.for.cond.i234_crit_edge, %for.cond.i234.preheader
  %cvif.0.in.i231 = phi ptr [ %cvif.0.i232, %for.body.i237.for.cond.i234_crit_edge ], [ %vif_list.i, %for.cond.i234.preheader ]
  %33 = ptrtoint ptr %cvif.0.in.i231 to i32
  call void @__asan_load4_noabort(i32 %33)
  %cvif.0.i232 = load volatile ptr, ptr %cvif.0.in.i231, align 4
  %cmp.not.i233 = icmp eq ptr %cvif.0.i232, %vif_list.i
  br i1 %cmp.not.i233, label %for.cond.i234.if.then.i243_crit_edge, label %for.body.i237

for.cond.i234.if.then.i243_crit_edge:             ; preds = %for.cond.i234
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i243

for.body.i237:                                    ; preds = %for.cond.i234
  %active.i235 = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.0.i232, i32 0, i32 1
  %34 = ptrtoint ptr %active.i235 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %active.i235, align 4, !range !176
  %tobool10.not.i236 = icmp eq i8 %35, 0
  br i1 %tobool10.not.i236, label %for.body.i237.for.cond.i234_crit_edge, label %carl9170_get_main_vif.exit241

for.body.i237.for.cond.i234_crit_edge:            ; preds = %for.body.i237
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i234

carl9170_get_main_vif.exit241:                    ; preds = %for.body.i237
  %add.ptr.i.i238 = getelementptr i8, ptr %cvif.0.i232, i32 -848
  %tobool.not.i242 = icmp eq ptr %add.ptr.i.i238, null
  br i1 %tobool.not.i242, label %carl9170_get_main_vif.exit241.if.then.i243_crit_edge, label %carl9170_init_interface.exit

carl9170_get_main_vif.exit241.if.then.i243_crit_edge: ; preds = %carl9170_get_main_vif.exit241
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i243

if.then.i243:                                     ; preds = %carl9170_get_main_vif.exit241.if.then.i243_crit_edge, %for.cond.i234.if.then.i243_crit_edge
  %state.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp.i = icmp ugt i32 %37, 2
  br i1 %cmp.i, label %land.rhs.i, label %if.then.i243.if.end160_crit_edge

if.then.i243.if.end160_crit_edge:                 ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end160

land.rhs.i:                                       ; preds = %if.then.i243
  %.b72.i = load i1, ptr @carl9170_init_interface.__already_done, align 1
  br i1 %.b72.i, label %land.rhs.i.if.end160_crit_edge, label %if.then9.i, !prof !178

land.rhs.i.if.end160_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end160

if.then9.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_init_interface.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 565, i32 noundef 9, ptr noundef null) #13
  br label %if.end160

carl9170_init_interface.exit:                     ; preds = %carl9170_get_main_vif.exit241
  %macaddr.i = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 9
  %addr.i = getelementptr i8, ptr %cvif.0.i232, i32 -48
  %38 = call ptr @memcpy(ptr %macaddr.i, ptr %addr.i, i32 6)
  %39 = ptrtoint ptr %add.ptr.i.i238 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i238, align 8
  %41 = add i32 %40, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %41)
  %42 = icmp ult i32 %41, -2
  %43 = zext i1 %42 to i8
  %disable_offload.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 48
  %44 = ptrtoint ptr %disable_offload.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %disable_offload.i, align 1, !range !176
  %or.i = or i8 %45, %43
  store i8 %or.i, ptr %disable_offload.i, align 1
  %p2p.i = getelementptr i8, ptr %cvif.0.i232, i32 -42
  %46 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %p2p.i, align 2, !range !176
  %48 = or i8 %or.i, %47
  store i8 %48, ptr %disable_offload.i, align 1
  %rx_software_decryption.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 47
  %49 = ptrtoint ptr %rx_software_decryption.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %rx_software_decryption.i, align 8
  %call.i244 = tail call i32 @carl9170_set_operating_mode(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244)
  %tobool95.not = icmp eq i32 %call.i244, 0
  br i1 %tobool95.not, label %carl9170_init_interface.exit.if.end160_crit_edge, label %do.end111, !prof !178

carl9170_init_interface.exit.if.end160_crit_edge: ; preds = %carl9170_init_interface.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end160

do.end111:                                        ; preds = %carl9170_init_interface.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 780, i32 noundef 9, ptr noundef null) #13
  br label %if.end160

if.else:                                          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call125 = tail call i32 @carl9170_set_operating_mode(ptr noundef %1) #13
  br label %if.end160

if.else127:                                       ; preds = %list_del_rcu.exit
  br i1 %call.i211, label %if.else127.rcu_read_unlock.exit257_crit_edge, label %land.lhs.true.i249

if.else127.rcu_read_unlock.exit257_crit_edge:     ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit257

land.lhs.true.i249:                               ; preds = %if.else127
  %call1.i247 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i247)
  %tobool.not.i248 = icmp eq i32 %call1.i247, 0
  br i1 %tobool.not.i248, label %land.lhs.true.i249.rcu_read_unlock.exit257_crit_edge, label %land.lhs.true2.i251

land.lhs.true.i249.rcu_read_unlock.exit257_crit_edge: ; preds = %land.lhs.true.i249
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit257

land.lhs.true2.i251:                              ; preds = %land.lhs.true.i249
  %.b4.i250 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i250, label %land.lhs.true2.i251.rcu_read_unlock.exit257_crit_edge, label %if.then.i252

land.lhs.true2.i251.rcu_read_unlock.exit257_crit_edge: ; preds = %land.lhs.true2.i251
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit257

if.then.i252:                                     ; preds = %land.lhs.true2.i251
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 724, ptr noundef nonnull @.str.44) #13
  br label %rcu_read_unlock.exit257

rcu_read_unlock.exit257:                          ; preds = %if.then.i252, %land.lhs.true2.i251.rcu_read_unlock.exit257_crit_edge, %land.lhs.true.i249.rcu_read_unlock.exit257_crit_edge, %if.else127.rcu_read_unlock.exit257_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  %50 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i253 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i253 to ptr
  %preempt_count.i.i.i.i254 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i254 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i254, align 4
  %sub.i.i.i255 = add i32 %53, -1
  store volatile i32 %sub.i.i.i255, ptr %preempt_count.i.i.i.i254, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %call129 = tail call i32 @carl9170_mod_virtual_mac(ptr noundef %1, i32 noundef %14, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %rcu_read_unlock.exit257.if.end160_crit_edge, label %do.end146, !prof !178

rcu_read_unlock.exit257.if.end160_crit_edge:      ; preds = %rcu_read_unlock.exit257
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end160

do.end146:                                        ; preds = %rcu_read_unlock.exit257
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 787, i32 noundef 9, ptr noundef null) #13
  br label %if.end160

if.end160:                                        ; preds = %do.end146, %rcu_read_unlock.exit257.if.end160_crit_edge, %if.else, %do.end111, %carl9170_init_interface.exit.if.end160_crit_edge, %if.then9.i, %land.rhs.i.if.end160_crit_edge, %if.then.i243.if.end160_crit_edge
  %call161 = tail call i32 @carl9170_update_beacon(ptr noundef %1, i1 noundef zeroext false) #13
  %call.i258 = tail call i32 @carl9170_bcn_ctrl(ptr noundef %1, i32 noundef %14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %beacon_lock = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 41
  tail call void @_raw_spin_lock_bh(ptr noundef %beacon_lock) #13
  %beacon = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 4
  %54 = ptrtoint ptr %beacon to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %beacon, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %55, i32 noundef 1) #13
  %56 = ptrtoint ptr %beacon to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %beacon, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %beacon_lock) #13
  %vif_bitmap = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 38
  tail call void @bitmap_release_region(ptr noundef %vif_bitmap, i32 noundef %14, i32 noundef 0) #13
  %call165 = tail call i32 @carl9170_set_beacon_timers(ptr noundef %1) #13
  %57 = ptrtoint ptr %vifs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vifs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp167 = icmp eq i32 %58, 1
  br i1 %cmp167, label %if.then168, label %if.end160.unlock_crit_edge

if.end160.unlock_crit_edge:                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

if.then168:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #15
  %off_override = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 121, i32 5
  %59 = ptrtoint ptr %off_override to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %off_override, align 4
  %and = and i32 %60, -2
  store i32 %and, ptr %off_override, align 4
  br label %unlock

unlock:                                           ; preds = %if.then168, %if.end160.unlock_crit_edge, %if.then, %land.rhs.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  tail call void @synchronize_rcu() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_op_config(ptr nocapture noundef readonly %hw, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %and1 = and i32 %changed, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %entry.if.end7_crit_edge, label %if.then3

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then3:                                         ; preds = %entry
  %off_override.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 121, i32 5
  %2 = ptrtoint ptr %off_override.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %off_override.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then3.if.end.i_crit_edge

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %hw.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %extract.t.i = icmp ne i32 %8, 0
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then3.if.end.i_crit_edge
  %ps.0.off0.i = phi i1 [ false, %if.then3.if.end.i_crit_edge ], [ %extract.t.i, %if.then.i ]
  %state.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 121, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %state.i, align 8, !range !176
  %11 = zext i1 %ps.0.off0.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %11)
  %cmp.not.i = icmp eq i8 %10, %11
  br i1 %cmp.not.i, label %if.end.i.if.end7_crit_edge, label %if.then8.i

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then8.i:                                       ; preds = %if.end.i
  %call.i = tail call i32 @carl9170_powersave(ptr noundef %1, i1 noundef zeroext %ps.0.off0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.then8.i.out_crit_edge

if.then8.i.out_crit_edge:                         ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end12.i:                                       ; preds = %if.then8.i
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %state.i, align 8, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not.i = icmp eq i8 %13, 0
  %brmerge.i = select i1 %tobool15.not.i, i1 true, i1 %ps.0.off0.i
  br i1 %brmerge.i, label %if.end12.i.if.end22.i_crit_edge, label %if.then18.i

if.end12.i.if.end22.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %last_action.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 121, i32 2
  %15 = ptrtoint ptr %last_action.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_action.i, align 8
  %sub.i = sub i32 %14, %16
  %call20.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i) #13
  %sleep_ms.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 121, i32 4
  %17 = ptrtoint ptr %sleep_ms.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call20.i, ptr %sleep_ms.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then18.i, %if.end12.i.if.end22.i_crit_edge
  br i1 %ps.0.off0.i, label %if.then24.i, label %if.end22.i.if.end26.i_crit_edge

if.end22.i.if.end26.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %last_slept.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 121, i32 3
  %19 = ptrtoint ptr %last_slept.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %last_slept.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end22.i.if.end26.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %last_action28.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 121, i32 2
  %21 = ptrtoint ptr %last_action28.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %last_action28.i, align 8
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %11, ptr %state.i, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end26.i, %if.end.i.if.end7_crit_edge, %entry.if.end7_crit_edge
  %and12 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end7.if.end42_crit_edge, label %if.then14

if.end7.if.end42_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then14:                                        ; preds = %if.end7
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %width.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %24, label %do.end.i [
    i32 0, label %if.then14.cfg80211_get_chandef_type.exit_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

if.then14.cfg80211_get_chandef_type.exit_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cfg80211_get_chandef_type.exit

sw.bb1.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cfg80211_get_chandef_type.exit

sw.bb2.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %center_freq1.i = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7, i32 2
  %26 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %center_freq1.i, align 4
  %28 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chandef, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %center_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %31)
  %cmp.i = icmp ugt i32 %27, %31
  %..i = select i1 %cmp.i, i32 3, i32 2
  br label %cfg80211_get_chandef_type.exit

do.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 778, i32 noundef 9, ptr noundef null) #13
  br label %cfg80211_get_chandef_type.exit

cfg80211_get_chandef_type.exit:                   ; preds = %do.end.i, %sw.bb2.i, %sw.bb1.i, %if.then14.cfg80211_get_chandef_type.exit_crit_edge
  %retval.0.i82 = phi i32 [ 0, %do.end.i ], [ 1, %sw.bb1.i ], [ %24, %if.then14.cfg80211_get_chandef_type.exit_crit_edge ], [ %..i, %sw.bb2.i ]
  %call16 = tail call i32 @carl9170_set_slot_time(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %cfg80211_get_chandef_type.exit.out_crit_edge

cfg80211_get_chandef_type.exit.out_crit_edge:     ; preds = %cfg80211_get_chandef_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end19:                                         ; preds = %cfg80211_get_chandef_type.exit
  %hw_counters.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 26, i32 14
  %32 = ptrtoint ptr %hw_counters.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hw_counters.i, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool5.not.i = icmp eq i8 %33, 0
  br i1 %tobool5.not.i, label %if.end19.if.end23_crit_edge, label %if.then6.i

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then6.i:                                       ; preds = %if.end19
  %call7.i = tail call i32 @carl9170_collect_tally(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then6.i.if.end23_crit_edge, label %if.then6.i.out_crit_edge

if.then6.i.out_crit_edge:                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then6.i.if.end23_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.end23:                                         ; preds = %if.then6.i.if.end23_crit_edge, %if.end19.if.end23_crit_edge
  %tally.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 62
  %34 = call ptr @memset(ptr %tally.i, i32 0, i32 40)
  %35 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chandef, align 4
  %call26 = tail call i32 @carl9170_set_channel(ptr noundef %1, ptr noundef %36, i32 noundef %retval.0.i82) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end29:                                         ; preds = %if.end23
  %call30 = tail call fastcc i32 @carl9170_update_survey(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.out_crit_edge

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end33:                                         ; preds = %if.end29
  %call34 = tail call i32 @carl9170_set_dyn_sifs_ack(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.out_crit_edge

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end37:                                         ; preds = %if.end33
  %call38 = tail call i32 @carl9170_set_rts_cts_rate(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end37.if.end42_crit_edge, label %if.end37.out_crit_edge

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.end42:                                         ; preds = %if.end37.if.end42_crit_edge, %if.end7.if.end42_crit_edge
  %and43 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.out_crit_edge, label %if.then45

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  %hw46 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %hw46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw46, align 4
  %chandef48 = getelementptr inbounds %struct.ieee80211_conf, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %chandef48 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chandef48, align 4
  %call50 = tail call i32 @carl9170_set_mac_tpc(ptr noundef %1, ptr noundef %40) #13
  br label %out

out:                                              ; preds = %if.then45, %if.end42.out_crit_edge, %if.end37.out_crit_edge, %if.end33.out_crit_edge, %if.end29.out_crit_edge, %if.end23.out_crit_edge, %if.then6.i.out_crit_edge, %cfg80211_get_chandef_type.exit.out_crit_edge, %if.then8.i.out_crit_edge
  %err.5 = phi i32 [ %call50, %if.then45 ], [ 0, %if.end42.out_crit_edge ], [ %call.i, %if.then8.i.out_crit_edge ], [ %call7.i, %if.then6.i.out_crit_edge ], [ %call38, %if.end37.out_crit_edge ], [ %call34, %if.end33.out_crit_edge ], [ %call30, %if.end29.out_crit_edge ], [ %call26, %if.end23.out_crit_edge ], [ %call16, %cfg80211_get_chandef_type.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret i32 %err.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_op_bss_info_changed(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr nocapture noundef %bss_conf, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call.i247 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i247)
  %tobool.not.i248 = icmp eq i32 %call.i247, 0
  br i1 %tobool.not.i248, label %land.lhs.true.i250, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i250:                               ; preds = %entry
  %call1.i249 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i249)
  %tobool2.not.i = icmp eq i32 %call1.i249, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i250.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i250.do.end.i_crit_edge:            ; preds = %land.lhs.true.i250
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i250
  %.b27.i = load i1, ptr @carl9170_get_main_vif.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i251

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i251:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_get_main_vif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 650, ptr noundef nonnull @.str.41) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i251, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i250.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %vif_list.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 37
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %cvif.0.in.i = phi ptr [ %vif_list.i, %do.end.i ], [ %cvif.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %cvif.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %cvif.0.i = load volatile ptr, ptr %cvif.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %cvif.0.i, %vif_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end187.sink.split_crit_edge, label %for.body.i

for.cond.i.if.end187.sink.split_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end187.sink.split

for.body.i:                                       ; preds = %for.cond.i
  %active.i = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %active.i, align 4, !range !176
  %tobool10.not.i = icmp eq i8 %4, 0
  br i1 %tobool10.not.i, label %for.body.i.for.cond.i_crit_edge, label %carl9170_get_main_vif.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

carl9170_get_main_vif.exit:                       ; preds = %for.body.i
  %add.ptr.i.i = getelementptr i8, ptr %cvif.0.i, i32 -848
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %carl9170_get_main_vif.exit.if.end187.sink.split_crit_edge, label %if.end24.critedge, !prof !175

carl9170_get_main_vif.exit.if.end187.sink.split_crit_edge: ; preds = %carl9170_get_main_vif.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end187.sink.split

if.end24.critedge:                                ; preds = %carl9170_get_main_vif.exit
  %and = and i32 %changed, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end24.critedge.if.end61_crit_edge, label %if.then26

if.end24.critedge.if.end61_crit_edge:             ; preds = %if.end24.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then26:                                        ; preds = %if.end24.critedge
  %enable_beacon = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 17
  %5 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable_beacon, align 1, !range !176
  %enable_beacon28 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 7
  %7 = ptrtoint ptr %enable_beacon28 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %enable_beacon28, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !179
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.then26.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then26.rcu_read_lock.exit_crit_edge:           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then26
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 696, ptr noundef nonnull @.str.43) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then26.rcu_read_lock.exit_crit_edge
  %call30 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end39_crit_edge

rcu_read_lock.exit.do.end39_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call32 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true.do.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true
  %.b245 = load i1, ptr @carl9170_op_bss_info_changed.__warned, align 1
  br i1 %.b245, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_op_bss_info_changed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1055, ptr noundef nonnull @.str.41) #13
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true.do.end39_crit_edge, %rcu_read_lock.exit.do.end39_crit_edge
  %12 = ptrtoint ptr %vif_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %iter.0273 = load volatile ptr, ptr %vif_list.i, align 4
  %cmp.not274 = icmp eq ptr %iter.0273, %vif_list.i
  br i1 %cmp.not274, label %do.end39.for.end_crit_edge, label %do.end39.for.body_crit_edge

do.end39.for.body_crit_edge:                      ; preds = %do.end39
  br label %for.body

do.end39.for.end_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end39.for.body_crit_edge
  %iter.0276 = phi ptr [ %iter.0, %for.inc.for.body_crit_edge ], [ %iter.0273, %do.end39.for.body_crit_edge ]
  %i.0275 = phi i32 [ %i.1, %for.inc.for.body_crit_edge ], [ 0, %do.end39.for.body_crit_edge ]
  %active = getelementptr inbounds %struct.carl9170_vif_info, ptr %iter.0276, i32 0, i32 1
  %13 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %active, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool46.not = icmp eq i8 %14, 0
  br i1 %tobool46.not, label %for.body.for.inc_crit_edge, label %land.lhs.true47

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true47:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %enable_beacon48 = getelementptr inbounds %struct.carl9170_vif_info, ptr %iter.0276, i32 0, i32 4
  %15 = ptrtoint ptr %enable_beacon48 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %enable_beacon48, align 4, !range !176
  %17 = zext i8 %16 to i32
  %spec.select = add i32 %i.0275, %17
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true47, %for.body.for.inc_crit_edge
  %i.1 = phi i32 [ %i.0275, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true47 ]
  %18 = ptrtoint ptr %iter.0276 to i32
  call void @__asan_load4_noabort(i32 %18)
  %iter.0 = load volatile ptr, ptr %iter.0276, align 4
  %cmp.not = icmp eq ptr %iter.0, %vif_list.i
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end39.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %do.end39.for.end_crit_edge ], [ %i.1, %for.inc.for.end_crit_edge ]
  %call.i252 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i252, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i255

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i255:                               ; preds = %for.end
  %call1.i253 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i253)
  %tobool.not.i254 = icmp eq i32 %call1.i253, 0
  br i1 %tobool.not.i254, label %land.lhs.true.i255.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i257

land.lhs.true.i255.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i255
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i257:                              ; preds = %land.lhs.true.i255
  %.b4.i256 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i256, label %land.lhs.true2.i257.rcu_read_unlock.exit_crit_edge, label %if.then.i258

land.lhs.true2.i257.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i257
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i258:                                     ; preds = %land.lhs.true2.i257
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 724, ptr noundef nonnull @.str.44) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i258, %land.lhs.true2.i257.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i255.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  %19 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i259 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i259 to ptr
  %preempt_count.i.i.i.i260 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i260 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i260, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i260, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %beacon_enabled = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 45
  %23 = ptrtoint ptr %beacon_enabled to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %i.0.lcssa, ptr %beacon_enabled, align 8
  br label %if.end61

if.end61:                                         ; preds = %rcu_read_unlock.exit, %if.end24.critedge.if.end61_crit_edge
  %and62 = and i32 %changed, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.if.end69_crit_edge, label %if.then64

if.end61.if.end69_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then64:                                        ; preds = %if.end61
  %call65 = tail call i32 @carl9170_update_beacon(ptr noundef %1, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then64.if.end69_crit_edge, label %if.then64.land.rhs_crit_edge

if.then64.land.rhs_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

if.then64.if.end69_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.end69:                                         ; preds = %if.then64.if.end69_crit_edge, %if.end61.if.end69_crit_edge
  %and70 = and i32 %changed, 832
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.if.end93_crit_edge, label %if.then72

if.end69.if.end93_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

if.then72:                                        ; preds = %if.end69
  %cmp73.not = icmp eq ptr %add.ptr.i.i, %vif
  br i1 %cmp73.not, label %if.then72.if.end79_crit_edge, label %if.then74

if.then72.if.end79_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then74:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  %beacon_int = getelementptr i8, ptr %cvif.0.i, i32 -814
  %24 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %beacon_int, align 2
  %beacon_int76 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 19
  %26 = ptrtoint ptr %beacon_int76 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %beacon_int76, align 2
  %dtim_period = getelementptr i8, ptr %cvif.0.i, i32 -816
  %27 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dtim_period, align 8
  %dtim_period78 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 18
  %29 = ptrtoint ptr %dtim_period78 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %dtim_period78, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %if.then72.if.end79_crit_edge
  %30 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp80.not = icmp eq i32 %31, 2
  br i1 %cmp80.not, label %if.end79.if.end88_crit_edge, label %land.lhs.true81

if.end79.if.end88_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

land.lhs.true81:                                  ; preds = %if.end79
  %beacon_int82 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 19
  %32 = ptrtoint ptr %beacon_int82 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %beacon_int82, align 2
  %conv = zext i16 %33 to i32
  %dtim_period83 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 18
  %34 = ptrtoint ptr %dtim_period83 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dtim_period83, align 8
  %conv84 = zext i8 %35 to i32
  %mul = mul nuw nsw i32 %conv84, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 2749, i32 %mul)
  %cmp85 = icmp ugt i32 %mul, 2749
  br i1 %cmp85, label %land.lhs.true81.land.rhs_crit_edge, label %land.lhs.true81.if.end88_crit_edge

land.lhs.true81.if.end88_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

land.lhs.true81.land.rhs_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

if.end88:                                         ; preds = %land.lhs.true81.if.end88_crit_edge, %if.end79.if.end88_crit_edge
  %call89 = tail call i32 @carl9170_set_beacon_timers(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end88.if.end93_crit_edge, label %if.end88.land.rhs_crit_edge

if.end88.land.rhs_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

if.end88.if.end93_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

if.end93:                                         ; preds = %if.end88.if.end93_crit_edge, %if.end69.if.end93_crit_edge
  %cmp101.not = icmp eq ptr %add.ptr.i.i, %vif
  br i1 %cmp101.not, label %if.end104, label %if.end93.if.end187_crit_edge

if.end93.if.end187_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end187

if.end104:                                        ; preds = %if.end93
  %and105 = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end104.if.end113_crit_edge, label %if.then107

if.end104.if.end113_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end113

if.then107:                                       ; preds = %if.end104
  %curbssid = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 10
  %36 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bss_conf, align 8
  %38 = call ptr @memcpy(ptr %curbssid, ptr %37, i32 6)
  %call109 = tail call i32 @carl9170_set_operating_mode(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then107.if.end113_crit_edge, label %if.then107.land.rhs_crit_edge

if.then107.land.rhs_crit_edge:                    ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

if.then107.if.end113_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end113

if.end113:                                        ; preds = %if.then107.if.end113_crit_edge, %if.end104.if.end113_crit_edge
  %and114 = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end113.if.end122_crit_edge, label %if.then116

if.end113.if.end122_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end122

if.then116:                                       ; preds = %if.end113
  %aid = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 13
  %39 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %aid, align 2
  %curaid = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 8
  %41 = ptrtoint ptr %curaid to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %curaid, align 2
  %call118 = tail call i32 @carl9170_set_beacon_timers(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.then116.if.end122_crit_edge, label %if.then116.land.rhs_crit_edge

if.then116.land.rhs_crit_edge:                    ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

if.then116.if.end122_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end122

if.end122:                                        ; preds = %if.then116.if.end122_crit_edge, %if.end113.if.end122_crit_edge
  %and123 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end122.if.end130_crit_edge, label %if.then125

if.end122.if.end130_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

if.then125:                                       ; preds = %if.end122
  %call126 = tail call i32 @carl9170_set_slot_time(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.then125.if.end130_crit_edge, label %if.then125.land.rhs_crit_edge

if.then125.land.rhs_crit_edge:                    ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

if.then125.if.end130_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

if.end130:                                        ; preds = %if.then125.if.end130_crit_edge, %if.end122.if.end130_crit_edge
  %and131 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end130.if.end187_crit_edge, label %out

if.end130.if.end187_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end187

out:                                              ; preds = %if.end130
  %call134 = tail call i32 @carl9170_set_mac_rates(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool139.not = icmp eq i32 %call134, 0
  br i1 %tobool139.not, label %out.if.end187_crit_edge, label %out.land.rhs_crit_edge

out.land.rhs_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

out.if.end187_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end187

land.rhs:                                         ; preds = %out.land.rhs_crit_edge, %if.then125.land.rhs_crit_edge, %if.then116.land.rhs_crit_edge, %if.then107.land.rhs_crit_edge, %if.end88.land.rhs_crit_edge, %land.lhs.true81.land.rhs_crit_edge, %if.then64.land.rhs_crit_edge
  %state = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp140 = icmp ugt i32 %43, 2
  br i1 %cmp140, label %land.rhs149, label %land.rhs.if.end187_crit_edge

land.rhs.if.end187_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end187

land.rhs149:                                      ; preds = %land.rhs
  %.b243244 = load i1, ptr @carl9170_op_bss_info_changed.__already_done, align 1
  br i1 %.b243244, label %land.rhs149.if.end187_crit_edge, label %if.then160, !prof !178

land.rhs149.if.end187_crit_edge:                  ; preds = %land.rhs149
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end187

if.then160:                                       ; preds = %land.rhs149
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_op_bss_info_changed.__already_done, align 1
  br label %if.end187.sink.split

if.end187.sink.split:                             ; preds = %if.then160, %carl9170_get_main_vif.exit.if.end187.sink.split_crit_edge, %for.cond.i.if.end187.sink.split_crit_edge
  %.sink = phi i32 [ 1137, %if.then160 ], [ 1046, %carl9170_get_main_vif.exit.if.end187.sink.split_crit_edge ], [ 1046, %for.cond.i.if.end187.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #13
  br label %if.end187

if.end187:                                        ; preds = %if.end187.sink.split, %land.rhs149.if.end187_crit_edge, %land.rhs.if.end187_crit_edge, %out.if.end187_crit_edge, %if.end130.if.end187_crit_edge, %if.end93.if.end187_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i64 @carl9170_op_prepare_multicast(ptr nocapture noundef readnone %hw, ptr noundef readonly %mc_list) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %ha.012 = load ptr, ptr %mc_list, align 4
  %cmp.not13 = icmp eq ptr %ha.012, %mc_list
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ha.015 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.012, %entry.for.body_crit_edge ]
  %mchash.014 = phi i64 [ %or, %for.body.for.body_crit_edge ], [ -9223372036854775808, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.netdev_hw_addr, ptr %ha.015, i32 0, i32 2, i32 5
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = lshr i8 %2, 2
  %sh_prom = zext i8 %3 to i64
  %shl = shl nuw i64 1, %sh_prom
  %or = or i64 %shl, %mchash.014
  %4 = ptrtoint ptr %ha.015 to i32
  call void @__asan_load4_noabort(i32 %4)
  %ha.0 = load ptr, ptr %ha.015, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %mchash.0.lcssa = phi i64 [ -9223372036854775808, %entry.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  ret i64 %mchash.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_op_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %new_flags, i64 noundef %multicast) #0 align 64 {
entry:
  %rx_filter.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %rx_filter_caps = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %rx_filter_caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_filter_caps, align 8
  %or = or i32 %3, 2
  %4 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %new_flags, align 4
  %and = and i32 %5, %or
  store i32 %and, ptr %new_flags, align 4
  %state = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %8 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %new_flags, align 4
  %filter_state = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 51
  %10 = ptrtoint ptr %filter_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %filter_state, align 4
  %11 = load i32, ptr %new_flags, align 4
  %and1 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %spec.select = select i1 %tobool.not, i64 %multicast, i64 -1
  %cur_mc_hash = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 49
  %12 = ptrtoint ptr %cur_mc_hash to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %cur_mc_hash, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select, i64 %13)
  %cmp4.not = icmp eq i64 %spec.select, %13
  br i1 %cmp4.not, label %if.end.if.end28_crit_edge, label %if.then5

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then5:                                         ; preds = %if.end
  %call = tail call i32 @carl9170_update_multicast(ptr noundef %1, i64 noundef %spec.select) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then5.if.end28_crit_edge, label %do.end, !prof !178

if.then5.if.end28_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 997, i32 noundef 9, ptr noundef null) #13
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.then5.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %and29 = and i32 %changed_flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end70_crit_edge, label %if.then31

if.end28.if.end70_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then31:                                        ; preds = %if.end28
  %14 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %new_flags, align 4
  %sniffer_enabled = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 53
  %16 = trunc i32 %15 to i8
  %17 = lshr i8 %16, 6
  %18 = and i8 %17, 1
  %19 = ptrtoint ptr %sniffer_enabled to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %sniffer_enabled, align 4
  %call39 = tail call i32 @carl9170_set_operating_mode(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then31.if.end70_crit_edge, label %do.end56, !prof !178

if.then31.if.end70_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

do.end56:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1002, i32 noundef 9, ptr noundef null) #13
  br label %if.end70

if.end70:                                         ; preds = %do.end56, %if.then31.if.end70_crit_edge, %if.end28.if.end70_crit_edge
  %rx_filter = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 26, i32 13
  %20 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rx_filter, align 2, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool71.not = icmp eq i8 %21, 0
  br i1 %tobool71.not, label %if.end70.if.end135_crit_edge, label %land.lhs.true

if.end70.if.end135_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135

land.lhs.true:                                    ; preds = %if.end70
  %22 = ptrtoint ptr %rx_filter_caps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_filter_caps, align 8
  %and73 = and i32 %23, %changed_flags
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %land.lhs.true.if.end135_crit_edge, label %if.then75

land.lhs.true.if.end135_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135

if.then75:                                        ; preds = %land.lhs.true
  %ba_filter = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 26, i32 19
  %24 = ptrtoint ptr %ba_filter to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ba_filter, align 8, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool78.not = icmp eq i8 %25, 0
  %26 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %new_flags, align 4
  %and82 = and i32 %27, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %or85 = zext i1 %tobool83.not to i32
  %and87 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  %28 = select i1 %tobool88.not, i1 true, i1 %tobool78.not
  %rx_filter76.2.v = select i1 %28, i32 8, i32 0
  %rx_filter76.2 = or i32 %rx_filter76.2.v, %or85
  %and92 = lshr i32 %27, 3
  %29 = and i32 %and92, 16
  %30 = or i32 %rx_filter76.2, %29
  %and97 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_filter.i) #13
  %31 = shl nuw nsw i32 %30, 24
  %32 = xor i32 %31, 268435456
  %33 = or i32 %32, 100663296
  %34 = select i1 %tobool98.not, i32 %33, i32 %32
  %35 = ptrtoint ptr %rx_filter.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %rx_filter.i, align 4
  %call.i = call i32 @carl9170_exec_cmd(ptr noundef %1, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %rx_filter.i, i32 noundef 0, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_filter.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool105.not = icmp eq i32 %call.i, 0
  br i1 %tobool105.not, label %if.then75.if.end135_crit_edge, label %do.end121, !prof !178

if.then75.if.end135_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135

do.end121:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1025, i32 noundef 9, ptr noundef null) #13
  br label %if.end135

if.end135:                                        ; preds = %do.end121, %if.then75.if.end135_crit_edge, %land.lhs.true.if.end135_crit_edge, %if.end70.if.end135_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_op_set_key(ptr nocapture noundef readonly %hw, i32 noundef %cmd, ptr noundef readonly %vif, ptr noundef %sta, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %disable_offload = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %disable_offload to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disable_offload, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  %tobool1.not = icmp eq ptr %vif, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !179
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.end.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.rcu_read_lock.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 696, ptr noundef nonnull @.str.43) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.rcu_read_lock.exit.i_crit_edge
  %call.i1.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i2.i, label %land.lhs.true.i4.i, label %rcu_read_lock.exit.i.do.end.i.i_crit_edge

rcu_read_lock.exit.i.do.end.i.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

land.lhs.true.i4.i:                               ; preds = %rcu_read_lock.exit.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i4.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i4.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i4.i
  %.b27.i.i = load i1, ptr @carl9170_get_main_vif.__warned, align 1
  br i1 %.b27.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i5.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.then.i5.i:                                     ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_get_main_vif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 650, ptr noundef nonnull @.str.41) #13
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i5.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i4.i.do.end.i.i_crit_edge, %rcu_read_lock.exit.i.do.end.i.i_crit_edge
  %vif_list.i.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 37
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %do.end.i.i
  %cvif.0.in.i.i = phi ptr [ %vif_list.i.i, %do.end.i.i ], [ %cvif.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %8 = ptrtoint ptr %cvif.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %cvif.0.i.i = load volatile ptr, ptr %cvif.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %cvif.0.i.i, %vif_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.carl9170_get_main_vif.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.carl9170_get_main_vif.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %carl9170_get_main_vif.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %active.i.i = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.0.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %active.i.i, align 4, !range !176
  %tobool10.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool10.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %if.then11.i.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

if.then11.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i.i = getelementptr i8, ptr %cvif.0.i.i, i32 -848
  br label %carl9170_get_main_vif.exit.i

carl9170_get_main_vif.exit.i:                     ; preds = %if.then11.i.i, %for.cond.i.i.carl9170_get_main_vif.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i.i, %if.then11.i.i ], [ null, %for.cond.i.i.carl9170_get_main_vif.exit.i_crit_edge ]
  %call.i6.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i6.i, label %carl9170_get_main_vif.exit.i.is_main_vif.exit_crit_edge, label %land.lhs.true.i9.i

carl9170_get_main_vif.exit.i.is_main_vif.exit_crit_edge: ; preds = %carl9170_get_main_vif.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_main_vif.exit

land.lhs.true.i9.i:                               ; preds = %carl9170_get_main_vif.exit.i
  %call1.i7.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %tobool.not.i8.i = icmp eq i32 %call1.i7.i, 0
  br i1 %tobool.not.i8.i, label %land.lhs.true.i9.i.is_main_vif.exit_crit_edge, label %land.lhs.true2.i11.i

land.lhs.true.i9.i.is_main_vif.exit_crit_edge:    ; preds = %land.lhs.true.i9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_main_vif.exit

land.lhs.true2.i11.i:                             ; preds = %land.lhs.true.i9.i
  %.b4.i10.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10.i, label %land.lhs.true2.i11.i.is_main_vif.exit_crit_edge, label %if.then.i12.i

land.lhs.true2.i11.i.is_main_vif.exit_crit_edge:  ; preds = %land.lhs.true2.i11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_main_vif.exit

if.then.i12.i:                                    ; preds = %land.lhs.true2.i11.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 724, ptr noundef nonnull @.str.44) #13
  br label %is_main_vif.exit

is_main_vif.exit:                                 ; preds = %if.then.i12.i, %land.lhs.true2.i11.i.is_main_vif.exit_crit_edge, %land.lhs.true.i9.i.is_main_vif.exit_crit_edge, %carl9170_get_main_vif.exit.i.is_main_vif.exit_crit_edge
  %cmp.i = icmp eq ptr %retval.0.i.i, %vif
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  %11 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i13.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i13.i to ptr
  %preempt_count.i.i.i.i14.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i14.i, align 4
  %sub.i.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i14.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br i1 %cmp.i, label %if.end3, label %if.then2

if.then2:                                         ; preds = %is_main_vif.exit
  call void @__sanitizer_cov_trace_pc() #15
  %mutex = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  br label %err_softw

if.end3:                                          ; preds = %is_main_vif.exit
  %15 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vif, align 8
  %.off = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end3.if.end9_crit_edge, label %land.lhs.true6

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true6:                                   ; preds = %if.end3
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags, align 8
  %19 = and i16 %18, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool7.not = icmp eq i16 %19, 0
  br i1 %tobool7.not, label %land.lhs.true6.cleanup_crit_edge, label %land.lhs.true6.if.end9_crit_edge

land.lhs.true6.if.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true6.if.end9_crit_edge, %if.end3.if.end9_crit_edge
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %20 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cipher, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %21, label %if.end9.cleanup_crit_edge [
    i32 1027073, label %if.end9.sw.epilog_crit_edge
    i32 1027077, label %sw.bb10
    i32 1027074, label %sw.bb11
    i32 1027076, label %sw.bb12
  ]

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb10:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %flags13 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %23 = ptrtoint ptr %flags13 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags13, align 8
  %25 = or i16 %24, 16
  store i16 %25, ptr %flags13, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb11, %sw.bb10, %if.end9.sw.epilog_crit_edge
  %ktype.0 = phi i8 [ 4, %sw.bb12 ], [ 2, %sw.bb11 ], [ 5, %sw.bb10 ], [ 1, %if.end9.sw.epilog_crit_edge ]
  %mutex16 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex16, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp17 = icmp eq i32 %cmd, 0
  %state = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp20 = icmp ugt i32 %27, 2
  br i1 %cmp17, label %if.then19, label %if.else96

if.then19:                                        ; preds = %sw.epilog
  br i1 %cmp20, label %if.end23, label %if.then19.cleanup.sink.split_crit_edge

if.then19.cleanup.sink.split_crit_edge:           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end23:                                         ; preds = %if.then19
  %flags24 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %28 = ptrtoint ptr %flags24 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags24, align 8
  %30 = and i16 %29, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool27.not = icmp eq i16 %30, 0
  br i1 %tobool27.not, label %if.then28, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end23
  %usedkeys = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 46
  %31 = ptrtoint ptr %usedkeys to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %usedkeys, align 8
  br label %for.body

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %33 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %keyidx, align 1
  %conv29 = sext i8 %34 to i32
  %add = add nsw i32 %conv29, 64
  br label %if.end41

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0206 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0206
  %conv32 = zext i32 %shl to i64
  %and33 = and i64 %32, %conv32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33)
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %for.body.if.end41_crit_edge, label %for.inc

for.body.if.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0206, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc.err_softw_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.err_softw_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_softw

if.end41:                                         ; preds = %for.body.if.end41_crit_edge, %if.then28
  %sta.addr.0 = phi ptr [ null, %if.then28 ], [ %sta, %for.body.if.end41_crit_edge ]
  %i.1 = phi i32 [ %add, %if.then28 ], [ %i.0206, %for.body.if.end41_crit_edge ]
  %conv42 = trunc i32 %i.1 to i8
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %35 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv42, ptr %hw_key_idx, align 2
  %tobool44.not = icmp eq ptr %sta.addr.0, null
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta.addr.0, i32 0, i32 1
  %spec.select = select i1 %tobool44.not, ptr null, ptr %addr
  %key45 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %36 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %keylen, align 2
  %38 = tail call i8 @llvm.umin.i8(i8 %37, i8 16)
  %cond56 = zext i8 %38 to i32
  %call57 = tail call i32 @carl9170_upload_key(ptr noundef %1, i8 noundef zeroext %conv42, ptr noundef %spec.select, i8 noundef zeroext %ktype.0, i8 noundef zeroext 0, ptr noundef %key45, i32 noundef %cond56) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end41.cleanup.sink.split_crit_edge

if.end41.cleanup.sink.split_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end60:                                         ; preds = %if.end41
  %39 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %40)
  %cmp62 = icmp eq i32 %40, 1027074
  br i1 %cmp62, label %if.then64, label %if.end60.if.end83_crit_edge

if.end60.if.end83_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.then64:                                        ; preds = %if.end60
  %add.ptr = getelementptr i8, ptr %key45, i32 16
  %call75 = tail call i32 @carl9170_upload_key(ptr noundef %1, i8 noundef zeroext %conv42, ptr noundef %spec.select, i8 noundef zeroext %ktype.0, i8 noundef zeroext 1, ptr noundef %add.ptr, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.then64.cleanup.sink.split_crit_edge

if.then64.cleanup.sink.split_crit_edge:           ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end78:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %flags24 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %flags24, align 8
  %43 = or i16 %42, 4
  store i16 %43, ptr %flags24, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.end78, %if.end60.if.end83_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.1)
  %cmp84 = icmp slt i32 %i.1, 64
  br i1 %cmp84, label %if.then86, label %if.end83.if.end91_crit_edge

if.end83.if.end91_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  %shl87 = shl nuw i32 1, %i.1
  %conv88 = zext i32 %shl87 to i64
  %usedkeys89 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 46
  %44 = ptrtoint ptr %usedkeys89 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %usedkeys89, align 8
  %or90 = or i64 %45, %conv88
  store i64 %or90, ptr %usedkeys89, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %if.end83.if.end91_crit_edge
  %46 = ptrtoint ptr %flags24 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %flags24, align 8
  %48 = or i16 %47, 2
  store i16 %48, ptr %flags24, align 8
  br label %cleanup.sink.split

if.else96:                                        ; preds = %sw.epilog
  br i1 %cmp20, label %if.end101, label %if.else96.cleanup.sink.split_crit_edge

if.else96.cleanup.sink.split_crit_edge:           ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end101:                                        ; preds = %if.else96
  %hw_key_idx102 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %49 = ptrtoint ptr %hw_key_idx102 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %hw_key_idx102, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %50)
  %cmp104 = icmp ult i8 %50, 64
  br i1 %cmp104, label %if.then106, label %if.else113

if.then106:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  %conv103 = zext i8 %50 to i32
  %shl109 = shl nuw i32 1, %conv103
  %neg = xor i32 %shl109, -1
  %conv110 = zext i32 %neg to i64
  %usedkeys111 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 46
  %51 = ptrtoint ptr %usedkeys111 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %usedkeys111, align 8
  %and112 = and i64 %52, %conv110
  store i64 %and112, ptr %usedkeys111, align 8
  br label %if.end129

if.else113:                                       ; preds = %if.end101
  %call115 = tail call i32 @carl9170_upload_key(ptr noundef %1, i8 noundef zeroext %50, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %if.else113.cleanup.sink.split_crit_edge

if.else113.cleanup.sink.split_crit_edge:          ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end118:                                        ; preds = %if.else113
  %53 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %54)
  %cmp120 = icmp eq i32 %54, 1027074
  br i1 %cmp120, label %if.then122, label %if.end118.if.end129_crit_edge

if.end118.if.end129_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end129

if.then122:                                       ; preds = %if.end118
  %55 = ptrtoint ptr %hw_key_idx102 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %hw_key_idx102, align 2
  %call124 = tail call i32 @carl9170_upload_key(ptr noundef %1, i8 noundef zeroext %56, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.then122.if.end129_crit_edge, label %if.then122.cleanup.sink.split_crit_edge

if.then122.cleanup.sink.split_crit_edge:          ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then122.if.end129_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end129

if.end129:                                        ; preds = %if.then122.if.end129_crit_edge, %if.end118.if.end129_crit_edge, %if.then106
  %57 = ptrtoint ptr %hw_key_idx102 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %hw_key_idx102, align 2
  %call131 = tail call i32 @carl9170_disable_key(ptr noundef %1, i8 noundef zeroext %58) #13
  br label %cleanup.sink.split

err_softw:                                        ; preds = %for.inc.err_softw_crit_edge, %if.then2
  %rx_software_decryption = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 47
  %59 = ptrtoint ptr %rx_software_decryption to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %rx_software_decryption, align 8, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool137.not = icmp eq i8 %60, 0
  br i1 %tobool137.not, label %if.then138, label %err_softw.if.end141_crit_edge

err_softw.if.end141_crit_edge:                    ; preds = %err_softw
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

if.then138:                                       ; preds = %err_softw
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %rx_software_decryption to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %rx_software_decryption, align 8
  %call140 = tail call i32 @carl9170_set_operating_mode(ptr noundef %1) #13
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %err_softw.if.end141_crit_edge
  %mutex142 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end141, %if.end129, %if.then122.cleanup.sink.split_crit_edge, %if.else113.cleanup.sink.split_crit_edge, %if.else96.cleanup.sink.split_crit_edge, %if.end91, %if.then64.cleanup.sink.split_crit_edge, %if.end41.cleanup.sink.split_crit_edge, %if.then19.cleanup.sink.split_crit_edge
  %mutex142.sink = phi ptr [ %mutex142, %if.end141 ], [ %mutex16, %if.else96.cleanup.sink.split_crit_edge ], [ %mutex16, %if.then19.cleanup.sink.split_crit_edge ], [ %mutex16, %if.end129 ], [ %mutex16, %if.end91 ], [ %mutex16, %if.then122.cleanup.sink.split_crit_edge ], [ %mutex16, %if.else113.cleanup.sink.split_crit_edge ], [ %mutex16, %if.then64.cleanup.sink.split_crit_edge ], [ %mutex16, %if.end41.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -28, %if.end141 ], [ 0, %if.else96.cleanup.sink.split_crit_edge ], [ -95, %if.then19.cleanup.sink.split_crit_edge ], [ %call131, %if.end129 ], [ 0, %if.end91 ], [ %call124, %if.then122.cleanup.sink.split_crit_edge ], [ %call115, %if.else113.cleanup.sink.split_crit_edge ], [ %call75, %if.then64.cleanup.sink.split_crit_edge ], [ %call57, %if.end41.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex142.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %land.lhs.true6.cleanup_crit_edge ], [ -95, %if.end9.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @carl9170_op_get_stats(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %stats) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = call ptr @memset(ptr %stats, i32 0, i32 16)
  %tx_ack_failures = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 85
  %3 = ptrtoint ptr %tx_ack_failures to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_ack_failures, align 8
  %5 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %stats, align 4
  %tx_fcs_errors = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 86
  %6 = ptrtoint ptr %tx_fcs_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_fcs_errors, align 4
  %dot11FCSErrorCount = getelementptr inbounds %struct.ieee80211_low_level_stats, ptr %stats, i32 0, i32 2
  %8 = ptrtoint ptr %dot11FCSErrorCount to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dot11FCSErrorCount, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_op_sta_add(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %pending_frames = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_frames, i32 noundef 4) #13
  %0 = ptrtoint ptr %pending_frames to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %pending_frames, align 4
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ht_supported, align 2, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  %ampdu_density = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %ampdu_density to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ampdu_density, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %cmp = icmp ugt i8 %4, 6
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %for.cond.preheader

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %agg = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %agg to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr null, ptr %agg, align 4
  %arrayidx.1 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 5
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr null, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 4
  %9 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr null, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 3
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr null, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 3
  %11 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr null, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr null, ptr %arrayidx.7, align 4
  %arrayidx.8 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 7
  %13 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr null, ptr %arrayidx.8, align 4
  %arrayidx.9 = getelementptr [16 x ptr], ptr %agg, i32 0, i32 9
  %14 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr null, ptr %arrayidx.9, align 4
  %arrayidx.10 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 3, i32 2
  %15 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr null, ptr %arrayidx.10, align 4
  %arrayidx.11 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 5
  %16 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr null, ptr %arrayidx.11, align 4
  %arrayidx.12 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 1
  %17 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr null, ptr %arrayidx.12, align 4
  %arrayidx.13 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2
  %18 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr null, ptr %arrayidx.13, align 4
  %arrayidx.14 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr null, ptr %arrayidx.14, align 4
  %arrayidx.15 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 6
  %20 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr null, ptr %arrayidx.15, align 4
  %ampdu_factor = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ampdu_factor, align 1
  %conv16 = zext i8 %22 to i32
  %shl = shl i32 8, %conv16
  %ampdu_max_len = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %ampdu_max_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl, ptr %ampdu_max_len, align 4
  %24 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %drv_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.cond.preheader, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_op_sta_remove(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ht_supported, align 2, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %if.then

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then:                                          ; preds = %entry
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %drv_priv, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !179
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 696, ptr noundef nonnull @.str.43) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %agg = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 3
  %tx_ampdu_list_lock = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 95
  br label %for.body

for.body:                                         ; preds = %cleanup33.for.body_crit_edge, %rcu_read_lock.exit
  %cleanup.0.off064 = phi i1 [ false, %rcu_read_lock.exit ], [ %cleanup.1.off0, %cleanup33.for.body_crit_edge ]
  %i.063 = phi i32 [ 0, %rcu_read_lock.exit ], [ %inc, %cleanup33.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr %agg, i32 0, i32 %i.063
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true, label %for.body.do.end9_crit_edge

for.body.do.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true:                                    ; preds = %for.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true5

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b53 = load i1, ptr @carl9170_op_sta_remove.__warned, align 1
  br i1 %.b53, label %land.lhs.true5.do.end9_crit_edge, label %if.then7

land.lhs.true5.do.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_op_sta_remove.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1346, ptr noundef nonnull @.str.47) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %land.lhs.true5.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %for.body.do.end9_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr null, ptr %arrayidx, align 4
  %tobool25.not = icmp eq ptr %10, null
  br i1 %tobool25.not, label %do.end9.cleanup33_crit_edge, label %if.end27

do.end9.cleanup33_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup33

if.end27:                                         ; preds = %do.end9
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ampdu_list_lock) #13
  %state = getelementptr inbounds %struct.carl9170_sta_tid, ptr %10, i32 0, i32 4
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp28 = icmp ugt i32 %13, 2
  br i1 %cmp28, label %if.then29, label %if.end27.if.end31_crit_edge

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %state, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27.if.end31_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ampdu_list_lock) #13
  br label %cleanup33

cleanup33:                                        ; preds = %if.end31, %do.end9.cleanup33_crit_edge
  %cleanup.1.off0 = phi i1 [ true, %if.end31 ], [ %cleanup.0.off064, %do.end9.cleanup33_crit_edge ]
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %cleanup33.for.body_crit_edge

cleanup33.for.body_crit_edge:                     ; preds = %cleanup33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %cleanup33
  %call.i54 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i54, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i57

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i57:                                ; preds = %for.end
  %call1.i55 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i59

land.lhs.true.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i59:                               ; preds = %land.lhs.true.i57
  %.b4.i58 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i58, label %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, label %if.then.i60

land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i60:                                      ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 724, ptr noundef nonnull @.str.44) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i60, %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  %15 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i61 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i61 to ptr
  %preempt_count.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i62, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i62, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br i1 %cleanup.1.off0, label %if.then35, label %rcu_read_unlock.exit.if.end37_crit_edge

rcu_read_unlock.exit.if.end37_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then35:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @carl9170_ampdu_gc(ptr noundef %1)
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %rcu_read_unlock.exit.if.end37_crit_edge, %entry.if.end37_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_op_sta_notify(ptr noundef %hw, ptr nocapture noundef readnone %vif, i32 noundef %cmd, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %sleeping = getelementptr inbounds %struct.carl9170_sta_info, ptr %drv_priv, i32 0, i32 1
  %1 = ptrtoint ptr %sleeping to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %sleeping, align 1
  %pending_frames = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_frames, i32 noundef 4) #13
  %2 = ptrtoint ptr %pending_frames to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %pending_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ieee80211_sta_block_awake(ptr noundef %hw, ptr noundef %sta, i1 noundef zeroext true) #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sleeping2 = getelementptr inbounds %struct.carl9170_sta_info, ptr %drv_priv, i32 0, i32 1
  %4 = ptrtoint ptr %sleeping2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %sleeping2, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_op_conf_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i16 noundef zeroext %queue, ptr nocapture noundef readonly %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %2 = sub i16 3, %queue
  %3 = and i16 %2, 255
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr %struct.ar9170, ptr %1, i32 0, i32 76, i32 %idxprom
  %4 = call ptr @memcpy(ptr %arrayidx, ptr %param, i32 14)
  %call1 = tail call i32 @carl9170_set_qos(ptr noundef %1) #13
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @carl9170_op_get_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #0 align 64 {
entry:
  %tsf = alloca %struct.carl9170_tsf_rsp, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tsf) #13
  %2 = ptrtoint ptr %tsf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %tsf, align 8, !annotation !185
  %mutex = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call = call i32 @carl9170_exec_cmd(ptr noundef %1, i32 noundef 6, i32 noundef 0, ptr noundef null, i32 noundef 8, ptr noundef nonnull %tsf) #13
  call void @mutex_unlock(ptr noundef %mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end23, label %do.end, !prof !178

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1152, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %tsf to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tsf, align 8
  %5 = call i64 @llvm.bswap.i64(i64 %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i64 [ 0, %do.end ], [ %5, %if.end23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tsf) #13
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_op_ampdu_action(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sta1 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %sta1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sta1, align 4
  %tid3 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %2 = ptrtoint ptr %tid3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tid3, align 4
  %ssn4 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 3
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %6 = load i32, ptr @modparam_noht, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %params, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %8, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %if.end.sw.bb57_crit_edge
    i32 4, label %if.end.sw.bb57_crit_edge279
    i32 5, label %if.end.sw.bb57_crit_edge280
    i32 6, label %sw.bb105
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %if.end.sw.epilog_crit_edge281
  ]

if.end.sw.epilog_crit_edge281:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.bb57_crit_edge280:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb57

if.end.sw.bb57_crit_edge279:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb57

if.end.sw.bb57_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb57

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %10 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %drv_priv, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %sw.bb.cleanup_crit_edge, label %if.end7

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2848, i32 noundef 160) #18
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %ssn4 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ssn4, align 2
  %snx = getelementptr inbounds %struct.carl9170_sta_tid, ptr %call7.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %snx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %snx, align 8
  %bsn = getelementptr inbounds %struct.carl9170_sta_tid, ptr %call7.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %bsn to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %14, ptr %bsn, align 4
  %hsn = getelementptr inbounds %struct.carl9170_sta_tid, ptr %call7.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %hsn to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %14, ptr %hsn, align 2
  %state = getelementptr inbounds %struct.carl9170_sta_tid, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %state, align 8
  %conv = trunc i16 %3 to i8
  %tid11 = getelementptr inbounds %struct.carl9170_sta_tid, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %tid11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %tid11, align 4
  %ampdu_max_len = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %ampdu_max_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ampdu_max_len, align 4
  %conv12 = trunc i32 %21 to i16
  %max = getelementptr inbounds %struct.carl9170_sta_tid, ptr %call7.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %max to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv12, ptr %max, align 2
  %sta13 = getelementptr inbounds %struct.carl9170_sta_tid, ptr %call7.i.i, i32 0, i32 12
  %23 = ptrtoint ptr %sta13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %1, ptr %sta13, align 8
  %vif14 = getelementptr inbounds %struct.carl9170_sta_tid, ptr %call7.i.i, i32 0, i32 13
  %24 = ptrtoint ptr %vif14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %vif, ptr %vif14, align 4
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %tmp_list = getelementptr inbounds %struct.carl9170_sta_tid, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %tmp_list, ptr %tmp_list, align 8
  %prev.i258 = getelementptr inbounds %struct.carl9170_sta_tid, ptr %call7.i.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i258 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %tmp_list, ptr %prev.i258, align 4
  %queue = getelementptr inbounds %struct.carl9170_sta_tid, ptr %call7.i.i, i32 0, i32 11
  %lock.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %call7.i.i, i32 0, i32 11, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %29 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %queue, ptr %queue, align 8
  %prev.i.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %call7.i.i, i32 0, i32 11, i32 1
  %31 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %qlen.i.i, align 8
  %lock = getelementptr inbounds %struct.carl9170_sta_tid, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.48, ptr noundef nonnull @carl9170_op_ampdu_action.__key, i16 noundef signext 3) #13
  %tx_ampdu_list_lock = getelementptr inbounds %struct.ar9170, ptr %5, i32 0, i32 95
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ampdu_list_lock) #13
  %tx_ampdu_list_len = getelementptr inbounds %struct.ar9170, ptr %5, i32 0, i32 102
  %32 = ptrtoint ptr %tx_ampdu_list_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_ampdu_list_len, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %tx_ampdu_list_len, align 4
  %tx_ampdu_list = getelementptr inbounds %struct.ar9170, ptr %5, i32 0, i32 97
  tail call fastcc void @list_add_tail_rcu(ptr noundef nonnull %call7.i.i, ptr noundef %tx_ampdu_list)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !186
  %agg42 = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 0, i32 3
  %idxprom43 = zext i16 %3 to i32
  %arrayidx44 = getelementptr [16 x ptr], ptr %agg42, i32 0, i32 %idxprom43
  %34 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call7.i.i, ptr %arrayidx44, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ampdu_list_lock) #13
  br label %cleanup

sw.bb57:                                          ; preds = %if.end.sw.bb57_crit_edge, %if.end.sw.bb57_crit_edge279, %if.end.sw.bb57_crit_edge280
  %35 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %38, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !179
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %sw.bb57.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

sw.bb57.rcu_read_lock.exit_crit_edge:             ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %sw.bb57
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 696, ptr noundef nonnull @.str.43) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %sw.bb57.rcu_read_lock.exit_crit_edge
  %agg61 = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 0, i32 3
  %idxprom62 = zext i16 %3 to i32
  %arrayidx63 = getelementptr [16 x ptr], ptr %agg61, i32 0, i32 %idxprom62
  %39 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %arrayidx63, align 4
  %call65 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.lhs.true67, label %rcu_read_lock.exit.do.end75_crit_edge

rcu_read_lock.exit.do.end75_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end75

land.lhs.true67:                                  ; preds = %rcu_read_lock.exit
  %call68 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true67.do.end75_crit_edge, label %land.lhs.true70

land.lhs.true67.do.end75_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end75

land.lhs.true70:                                  ; preds = %land.lhs.true67
  %.b245 = load i1, ptr @carl9170_op_ampdu_action.__warned, align 1
  br i1 %.b245, label %land.lhs.true70.do.end75_crit_edge, label %if.then72

land.lhs.true70.do.end75_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end75

if.then72:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_op_ampdu_action.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1443, ptr noundef nonnull @.str.47) #13
  br label %do.end75

do.end75:                                         ; preds = %if.then72, %land.lhs.true70.do.end75_crit_edge, %land.lhs.true67.do.end75_crit_edge, %rcu_read_lock.exit.do.end75_crit_edge
  %tobool77.not = icmp eq ptr %40, null
  br i1 %tobool77.not, label %do.end75.do.body93_crit_edge, label %if.then78

do.end75.do.body93_crit_edge:                     ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body93

if.then78:                                        ; preds = %do.end75
  %tx_ampdu_list_lock79 = getelementptr inbounds %struct.ar9170, ptr %5, i32 0, i32 95
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ampdu_list_lock79) #13
  %state80 = getelementptr inbounds %struct.carl9170_sta_tid, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %state80 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %state80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp81 = icmp ugt i32 %42, 2
  br i1 %cmp81, label %if.then83, label %if.then78.if.end85_crit_edge

if.then78.if.end85_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then83:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %state80 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %state80, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.then78.if.end85_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ampdu_list_lock79) #13
  br label %do.body93

do.body93:                                        ; preds = %if.end85, %do.end75.do.body93_crit_edge
  %44 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr null, ptr %arrayidx63, align 4
  %call.i259 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i259, label %do.body93.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i262

do.body93.rcu_read_unlock.exit_crit_edge:         ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i262:                               ; preds = %do.body93
  %call1.i260 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i260)
  %tobool.not.i261 = icmp eq i32 %call1.i260, 0
  br i1 %tobool.not.i261, label %land.lhs.true.i262.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i264

land.lhs.true.i262.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i262
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i264:                              ; preds = %land.lhs.true.i262
  %.b4.i263 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i263, label %land.lhs.true2.i264.rcu_read_unlock.exit_crit_edge, label %if.then.i265

land.lhs.true2.i264.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i264
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i265:                                     ; preds = %land.lhs.true2.i264
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 724, ptr noundef nonnull @.str.44) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i265, %land.lhs.true2.i264.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i262.rcu_read_unlock.exit_crit_edge, %do.body93.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  %45 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i266 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i266 to ptr
  %preempt_count.i.i.i.i267 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i267 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i267, align 4
  %sub.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i267, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 1
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %addr, i16 noundef zeroext %3) #13
  %hw104 = getelementptr inbounds %struct.ar9170, ptr %5, i32 0, i32 1
  %49 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw104, align 4
  %ampdu_work = getelementptr inbounds %struct.ar9170, ptr %5, i32 0, i32 94
  tail call void @ieee80211_queue_work(ptr noundef %50, ptr noundef %ampdu_work) #13
  br label %sw.epilog

sw.bb105:                                         ; preds = %if.end
  %51 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i247 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i247 to ptr
  %preempt_count.i.i.i.i248 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i248 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i248, align 4
  %add.i.i.i249 = add i32 %54, 1
  store volatile i32 %add.i.i.i249, ptr %preempt_count.i.i.i.i248, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !179
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i250 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i250, label %sw.bb105.rcu_read_lock.exit257_crit_edge, label %land.lhs.true.i253

sw.bb105.rcu_read_lock.exit257_crit_edge:         ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit257

land.lhs.true.i253:                               ; preds = %sw.bb105
  %call1.i251 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i251)
  %tobool.not.i252 = icmp eq i32 %call1.i251, 0
  br i1 %tobool.not.i252, label %land.lhs.true.i253.rcu_read_lock.exit257_crit_edge, label %land.lhs.true2.i255

land.lhs.true.i253.rcu_read_lock.exit257_crit_edge: ; preds = %land.lhs.true.i253
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit257

land.lhs.true2.i255:                              ; preds = %land.lhs.true.i253
  %.b4.i254 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i254, label %land.lhs.true2.i255.rcu_read_lock.exit257_crit_edge, label %if.then.i256

land.lhs.true2.i255.rcu_read_lock.exit257_crit_edge: ; preds = %land.lhs.true2.i255
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit257

if.then.i256:                                     ; preds = %land.lhs.true2.i255
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 696, ptr noundef nonnull @.str.43) #13
  br label %rcu_read_lock.exit257

rcu_read_lock.exit257:                            ; preds = %if.then.i256, %land.lhs.true2.i255.rcu_read_lock.exit257_crit_edge, %land.lhs.true.i253.rcu_read_lock.exit257_crit_edge, %sw.bb105.rcu_read_lock.exit257_crit_edge
  %agg110 = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 0, i32 3
  %idxprom111 = zext i16 %3 to i32
  %arrayidx112 = getelementptr [16 x ptr], ptr %agg110, i32 0, i32 %idxprom111
  %55 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %arrayidx112, align 4
  %call114 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %land.lhs.true116, label %rcu_read_lock.exit257.do.end124_crit_edge

rcu_read_lock.exit257.do.end124_crit_edge:        ; preds = %rcu_read_lock.exit257
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end124

land.lhs.true116:                                 ; preds = %rcu_read_lock.exit257
  %call117 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %land.lhs.true116.do.end124_crit_edge, label %land.lhs.true119

land.lhs.true116.do.end124_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end124

land.lhs.true119:                                 ; preds = %land.lhs.true116
  %.b241244 = load i1, ptr @carl9170_op_ampdu_action.__warned.49, align 1
  br i1 %.b241244, label %land.lhs.true119.do.end124_crit_edge, label %if.then121

land.lhs.true119.do.end124_crit_edge:             ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end124

if.then121:                                       ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_op_ampdu_action.__warned.49, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1460, ptr noundef nonnull @.str.47) #13
  br label %do.end124

do.end124:                                        ; preds = %if.then121, %land.lhs.true119.do.end124_crit_edge, %land.lhs.true116.do.end124_crit_edge, %rcu_read_lock.exit257.do.end124_crit_edge
  %stats = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 6, i32 1, i32 0, i32 3
  %clear = getelementptr [16 x %struct.carl9170_ba_stats], ptr %stats, i32 0, i32 %idxprom111, i32 2
  %57 = ptrtoint ptr %clear to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %clear, align 2
  %req = getelementptr [16 x %struct.carl9170_ba_stats], ptr %stats, i32 0, i32 %idxprom111, i32 3
  %58 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %req, align 1
  %tobool131.not = icmp eq ptr %56, null
  br i1 %tobool131.not, label %land.rhs.critedge, label %if.then132

if.then132:                                       ; preds = %do.end124
  %bitmap = getelementptr inbounds %struct.carl9170_sta_tid, ptr %56, i32 0, i32 10
  %59 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %bitmap, align 4
  %state134 = getelementptr inbounds %struct.carl9170_sta_tid, ptr %56, i32 0, i32 4
  %60 = ptrtoint ptr %state134 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 5, ptr %state134, align 4
  %call.i268 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i268, label %if.then132.rcu_read_unlock.exit278_crit_edge, label %land.lhs.true.i271

if.then132.rcu_read_unlock.exit278_crit_edge:     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit278

land.lhs.true.i271:                               ; preds = %if.then132
  %call1.i269 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i269)
  %tobool.not.i270 = icmp eq i32 %call1.i269, 0
  br i1 %tobool.not.i270, label %land.lhs.true.i271.rcu_read_unlock.exit278_crit_edge, label %land.lhs.true2.i273

land.lhs.true.i271.rcu_read_unlock.exit278_crit_edge: ; preds = %land.lhs.true.i271
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit278

land.lhs.true2.i273:                              ; preds = %land.lhs.true.i271
  %.b4.i272 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i272, label %land.lhs.true2.i273.rcu_read_unlock.exit278_crit_edge, label %if.then.i274

land.lhs.true2.i273.rcu_read_unlock.exit278_crit_edge: ; preds = %land.lhs.true2.i273
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit278

if.then.i274:                                     ; preds = %land.lhs.true2.i273
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 724, ptr noundef nonnull @.str.44) #13
  br label %rcu_read_unlock.exit278

rcu_read_unlock.exit278:                          ; preds = %if.then.i274, %land.lhs.true2.i273.rcu_read_unlock.exit278_crit_edge, %land.lhs.true.i271.rcu_read_unlock.exit278_crit_edge, %if.then132.rcu_read_unlock.exit278_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  %61 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i275 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i275 to ptr
  %preempt_count.i.i.i.i276 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i276 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i276, align 4
  %sub.i.i.i277 = add i32 %64, -1
  store volatile i32 %sub.i.i.i277, ptr %preempt_count.i.i.i.i276, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %sw.epilog

land.rhs.critedge:                                ; preds = %do.end124
  tail call fastcc void @rcu_read_unlock()
  %.b242243 = load i1, ptr @carl9170_op_ampdu_action.__already_done, align 1
  br i1 %.b242243, label %land.rhs.critedge.cleanup_crit_edge, label %if.then146, !prof !178

land.rhs.critedge.cleanup_crit_edge:              ; preds = %land.rhs.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then146:                                       ; preds = %land.rhs.critedge
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_op_ampdu_action.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1471, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

sw.epilog:                                        ; preds = %rcu_read_unlock.exit278, %rcu_read_unlock.exit, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge281
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then146, %land.rhs.critedge.cleanup_crit_edge, %if.end10, %if.end7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %if.end10 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ -14, %if.then146 ], [ -95, %if.end.cleanup_crit_edge ], [ -14, %land.rhs.critedge.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_op_get_survey(ptr nocapture noundef readonly %hw, i32 noundef %idx, ptr nocapture noundef %survey) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %channel = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %idx)
  %cmp = icmp eq i32 %conv, %idx
  br i1 %cmp, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %mutex = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call.i = tail call i32 @carl9170_get_noisefloor(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %carl9170_update_survey.exit.thread77

carl9170_update_survey.exit.thread77:             ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup

if.end4.i:                                        ; preds = %if.then2
  %hw_counters.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 26, i32 14
  %6 = ptrtoint ptr %hw_counters.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw_counters.i, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not.i = icmp eq i8 %7, 0
  br i1 %tobool5.not.i, label %carl9170_update_survey.exit.thread, label %carl9170_update_survey.exit

carl9170_update_survey.exit.thread:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %if.end7

carl9170_update_survey.exit:                      ; preds = %if.end4.i
  %call7.i = tail call i32 @carl9170_collect_tally(ptr noundef %1) #13
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool4.not = icmp eq i32 %call7.i, 0
  br i1 %tobool4.not, label %carl9170_update_survey.exit.if.end7_crit_edge, label %carl9170_update_survey.exit.cleanup_crit_edge

carl9170_update_survey.exit.cleanup_crit_edge:    ; preds = %carl9170_update_survey.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

carl9170_update_survey.exit.if.end7_crit_edge:    ; preds = %carl9170_update_survey.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end7:                                          ; preds = %carl9170_update_survey.exit.if.end7_crit_edge, %carl9170_update_survey.exit.thread, %if.end.if.end7_crit_edge
  %hw10 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %hw10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw10, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy, align 8
  %arrayidx = getelementptr %struct.wiphy, ptr %11, i32 0, i32 53, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %if.end7.for.inc27_crit_edge, label %for.cond14.preheader

if.end7.for.inc27_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27

for.cond14.preheader:                             ; preds = %if.end7
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1581 = icmp sgt i32 %15, 0
  br i1 %cmp1581, label %for.body17.lr.ph, label %for.cond14.preheader.for.inc27_crit_edge

for.cond14.preheader.for.inc27_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27

for.body17.lr.ph:                                 ; preds = %for.cond14.preheader
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  br label %for.body17

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %for.body17.lr.ph
  %i.082 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc, %for.inc.for.body17_crit_edge ]
  %hw_value19 = getelementptr %struct.ieee80211_channel, ptr %17, i32 %i.082, i32 3
  %18 = ptrtoint ptr %hw_value19 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hw_value19, align 2
  %conv20 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv20, i32 %idx)
  %cmp21 = icmp eq i32 %conv20, %idx
  br i1 %cmp21, label %for.body17.if.then23_crit_edge, label %for.inc

for.body17.if.then23_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

if.then23:                                        ; preds = %for.body17.5.if.then23_crit_edge, %for.body17.4.if.then23_crit_edge, %for.body17.3.if.then23_crit_edge, %for.body17.2.if.then23_crit_edge, %for.body17.1.if.then23_crit_edge, %for.body17.if.then23_crit_edge
  %.lcssa = phi ptr [ %66, %for.body17.5.if.then23_crit_edge ], [ %58, %for.body17.4.if.then23_crit_edge ], [ %50, %for.body17.3.if.then23_crit_edge ], [ %42, %for.body17.2.if.then23_crit_edge ], [ %34, %for.body17.1.if.then23_crit_edge ], [ %17, %for.body17.if.then23_crit_edge ]
  %i.082.lcssa = phi i32 [ %i.082.5, %for.body17.5.if.then23_crit_edge ], [ %i.082.4, %for.body17.4.if.then23_crit_edge ], [ %i.082.3, %for.body17.3.if.then23_crit_edge ], [ %i.082.2, %for.body17.2.if.then23_crit_edge ], [ %i.082.1, %for.body17.1.if.then23_crit_edge ], [ %i.082, %for.body17.if.then23_crit_edge ]
  %arrayidx18 = getelementptr %struct.ieee80211_channel, ptr %.lcssa, i32 %i.082.lcssa
  %survey30 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 64
  %20 = ptrtoint ptr %survey30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %survey30, align 4
  %arrayidx31 = getelementptr %struct.survey_info, ptr %21, i32 %idx
  %22 = call ptr @memcpy(ptr %survey, ptr %arrayidx31, i32 72)
  %23 = ptrtoint ptr %survey to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx18, ptr %survey, align 8
  %filled = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 8
  %24 = ptrtoint ptr %filled to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %filled, align 8
  %25 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %channel, align 4
  %cmp34 = icmp eq ptr %26, %arrayidx18
  %spec.store.select = select i1 %cmp34, i32 3, i32 1
  store i32 %spec.store.select, ptr %filled, align 8
  %hw_counters = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 26, i32 14
  %27 = ptrtoint ptr %hw_counters to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hw_counters, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool39.not = icmp eq i8 %28, 0
  br i1 %tobool39.not, label %if.then23.cleanup_crit_edge, label %if.then40

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %for.body17
  %inc = add nuw nsw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, %15
  br i1 %exitcond.not, label %for.inc.for.inc27_crit_edge, label %for.inc.for.body17_crit_edge

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17

for.inc.for.inc27_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27

for.inc27:                                        ; preds = %for.inc.for.inc27_crit_edge, %for.cond14.preheader.for.inc27_crit_edge, %if.end7.for.inc27_crit_edge
  %arrayidx.1 = getelementptr %struct.wiphy, ptr %11, i32 0, i32 53, i32 1
  %29 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.1, align 4
  %tobool11.not.1 = icmp eq ptr %30, null
  br i1 %tobool11.not.1, label %for.inc27.for.inc27.1_crit_edge, label %for.cond14.preheader.1

for.inc27.for.inc27.1_crit_edge:                  ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.1

for.cond14.preheader.1:                           ; preds = %for.inc27
  %n_channels.1 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %n_channels.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_channels.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp1581.1 = icmp sgt i32 %32, 0
  br i1 %cmp1581.1, label %for.body17.lr.ph.1, label %for.cond14.preheader.1.for.inc27.1_crit_edge

for.cond14.preheader.1.for.inc27.1_crit_edge:     ; preds = %for.cond14.preheader.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.1

for.body17.lr.ph.1:                               ; preds = %for.cond14.preheader.1
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  br label %for.body17.1

for.body17.1:                                     ; preds = %for.inc.1.for.body17.1_crit_edge, %for.body17.lr.ph.1
  %i.082.1 = phi i32 [ 0, %for.body17.lr.ph.1 ], [ %inc.1, %for.inc.1.for.body17.1_crit_edge ]
  %hw_value19.1 = getelementptr %struct.ieee80211_channel, ptr %34, i32 %i.082.1, i32 3
  %35 = ptrtoint ptr %hw_value19.1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %hw_value19.1, align 2
  %conv20.1 = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv20.1, i32 %idx)
  %cmp21.1 = icmp eq i32 %conv20.1, %idx
  br i1 %cmp21.1, label %for.body17.1.if.then23_crit_edge, label %for.inc.1

for.body17.1.if.then23_crit_edge:                 ; preds = %for.body17.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

for.inc.1:                                        ; preds = %for.body17.1
  %inc.1 = add nuw nsw i32 %i.082.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, %32
  br i1 %exitcond.1.not, label %for.inc.1.for.inc27.1_crit_edge, label %for.inc.1.for.body17.1_crit_edge

for.inc.1.for.body17.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.1

for.inc.1.for.inc27.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.1

for.inc27.1:                                      ; preds = %for.inc.1.for.inc27.1_crit_edge, %for.cond14.preheader.1.for.inc27.1_crit_edge, %for.inc27.for.inc27.1_crit_edge
  %arrayidx.2 = getelementptr %struct.wiphy, ptr %11, i32 0, i32 53, i32 2
  %37 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.2, align 4
  %tobool11.not.2 = icmp eq ptr %38, null
  br i1 %tobool11.not.2, label %for.inc27.1.for.inc27.2_crit_edge, label %for.cond14.preheader.2

for.inc27.1.for.inc27.2_crit_edge:                ; preds = %for.inc27.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.2

for.cond14.preheader.2:                           ; preds = %for.inc27.1
  %n_channels.2 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %n_channels.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_channels.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp1581.2 = icmp sgt i32 %40, 0
  br i1 %cmp1581.2, label %for.body17.lr.ph.2, label %for.cond14.preheader.2.for.inc27.2_crit_edge

for.cond14.preheader.2.for.inc27.2_crit_edge:     ; preds = %for.cond14.preheader.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.2

for.body17.lr.ph.2:                               ; preds = %for.cond14.preheader.2
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  br label %for.body17.2

for.body17.2:                                     ; preds = %for.inc.2.for.body17.2_crit_edge, %for.body17.lr.ph.2
  %i.082.2 = phi i32 [ 0, %for.body17.lr.ph.2 ], [ %inc.2, %for.inc.2.for.body17.2_crit_edge ]
  %hw_value19.2 = getelementptr %struct.ieee80211_channel, ptr %42, i32 %i.082.2, i32 3
  %43 = ptrtoint ptr %hw_value19.2 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %hw_value19.2, align 2
  %conv20.2 = zext i16 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv20.2, i32 %idx)
  %cmp21.2 = icmp eq i32 %conv20.2, %idx
  br i1 %cmp21.2, label %for.body17.2.if.then23_crit_edge, label %for.inc.2

for.body17.2.if.then23_crit_edge:                 ; preds = %for.body17.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

for.inc.2:                                        ; preds = %for.body17.2
  %inc.2 = add nuw nsw i32 %i.082.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, %40
  br i1 %exitcond.2.not, label %for.inc.2.for.inc27.2_crit_edge, label %for.inc.2.for.body17.2_crit_edge

for.inc.2.for.body17.2_crit_edge:                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.2

for.inc.2.for.inc27.2_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.2

for.inc27.2:                                      ; preds = %for.inc.2.for.inc27.2_crit_edge, %for.cond14.preheader.2.for.inc27.2_crit_edge, %for.inc27.1.for.inc27.2_crit_edge
  %arrayidx.3 = getelementptr %struct.wiphy, ptr %11, i32 0, i32 53, i32 3
  %45 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.3, align 4
  %tobool11.not.3 = icmp eq ptr %46, null
  br i1 %tobool11.not.3, label %for.inc27.2.for.inc27.3_crit_edge, label %for.cond14.preheader.3

for.inc27.2.for.inc27.3_crit_edge:                ; preds = %for.inc27.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.3

for.cond14.preheader.3:                           ; preds = %for.inc27.2
  %n_channels.3 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %n_channels.3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n_channels.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp1581.3 = icmp sgt i32 %48, 0
  br i1 %cmp1581.3, label %for.body17.lr.ph.3, label %for.cond14.preheader.3.for.inc27.3_crit_edge

for.cond14.preheader.3.for.inc27.3_crit_edge:     ; preds = %for.cond14.preheader.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.3

for.body17.lr.ph.3:                               ; preds = %for.cond14.preheader.3
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %46, align 4
  br label %for.body17.3

for.body17.3:                                     ; preds = %for.inc.3.for.body17.3_crit_edge, %for.body17.lr.ph.3
  %i.082.3 = phi i32 [ 0, %for.body17.lr.ph.3 ], [ %inc.3, %for.inc.3.for.body17.3_crit_edge ]
  %hw_value19.3 = getelementptr %struct.ieee80211_channel, ptr %50, i32 %i.082.3, i32 3
  %51 = ptrtoint ptr %hw_value19.3 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %hw_value19.3, align 2
  %conv20.3 = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv20.3, i32 %idx)
  %cmp21.3 = icmp eq i32 %conv20.3, %idx
  br i1 %cmp21.3, label %for.body17.3.if.then23_crit_edge, label %for.inc.3

for.body17.3.if.then23_crit_edge:                 ; preds = %for.body17.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

for.inc.3:                                        ; preds = %for.body17.3
  %inc.3 = add nuw nsw i32 %i.082.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, %48
  br i1 %exitcond.3.not, label %for.inc.3.for.inc27.3_crit_edge, label %for.inc.3.for.body17.3_crit_edge

for.inc.3.for.body17.3_crit_edge:                 ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.3

for.inc.3.for.inc27.3_crit_edge:                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.3

for.inc27.3:                                      ; preds = %for.inc.3.for.inc27.3_crit_edge, %for.cond14.preheader.3.for.inc27.3_crit_edge, %for.inc27.2.for.inc27.3_crit_edge
  %arrayidx.4 = getelementptr %struct.wiphy, ptr %11, i32 0, i32 53, i32 4
  %53 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.4, align 4
  %tobool11.not.4 = icmp eq ptr %54, null
  br i1 %tobool11.not.4, label %for.inc27.3.for.inc27.4_crit_edge, label %for.cond14.preheader.4

for.inc27.3.for.inc27.4_crit_edge:                ; preds = %for.inc27.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.4

for.cond14.preheader.4:                           ; preds = %for.inc27.3
  %n_channels.4 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %n_channels.4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %n_channels.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp1581.4 = icmp sgt i32 %56, 0
  br i1 %cmp1581.4, label %for.body17.lr.ph.4, label %for.cond14.preheader.4.for.inc27.4_crit_edge

for.cond14.preheader.4.for.inc27.4_crit_edge:     ; preds = %for.cond14.preheader.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.4

for.body17.lr.ph.4:                               ; preds = %for.cond14.preheader.4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  br label %for.body17.4

for.body17.4:                                     ; preds = %for.inc.4.for.body17.4_crit_edge, %for.body17.lr.ph.4
  %i.082.4 = phi i32 [ 0, %for.body17.lr.ph.4 ], [ %inc.4, %for.inc.4.for.body17.4_crit_edge ]
  %hw_value19.4 = getelementptr %struct.ieee80211_channel, ptr %58, i32 %i.082.4, i32 3
  %59 = ptrtoint ptr %hw_value19.4 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %hw_value19.4, align 2
  %conv20.4 = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv20.4, i32 %idx)
  %cmp21.4 = icmp eq i32 %conv20.4, %idx
  br i1 %cmp21.4, label %for.body17.4.if.then23_crit_edge, label %for.inc.4

for.body17.4.if.then23_crit_edge:                 ; preds = %for.body17.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

for.inc.4:                                        ; preds = %for.body17.4
  %inc.4 = add nuw nsw i32 %i.082.4, 1
  %exitcond.4.not = icmp eq i32 %inc.4, %56
  br i1 %exitcond.4.not, label %for.inc.4.for.inc27.4_crit_edge, label %for.inc.4.for.body17.4_crit_edge

for.inc.4.for.body17.4_crit_edge:                 ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.4

for.inc.4.for.inc27.4_crit_edge:                  ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.4

for.inc27.4:                                      ; preds = %for.inc.4.for.inc27.4_crit_edge, %for.cond14.preheader.4.for.inc27.4_crit_edge, %for.inc27.3.for.inc27.4_crit_edge
  %arrayidx.5 = getelementptr %struct.wiphy, ptr %11, i32 0, i32 53, i32 5
  %61 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.5, align 4
  %tobool11.not.5 = icmp eq ptr %62, null
  br i1 %tobool11.not.5, label %for.inc27.4.cleanup_crit_edge, label %for.cond14.preheader.5

for.inc27.4.cleanup_crit_edge:                    ; preds = %for.inc27.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond14.preheader.5:                           ; preds = %for.inc27.4
  %n_channels.5 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %n_channels.5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %n_channels.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp1581.5 = icmp sgt i32 %64, 0
  br i1 %cmp1581.5, label %for.body17.lr.ph.5, label %for.cond14.preheader.5.cleanup_crit_edge

for.cond14.preheader.5.cleanup_crit_edge:         ; preds = %for.cond14.preheader.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body17.lr.ph.5:                               ; preds = %for.cond14.preheader.5
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %62, align 4
  br label %for.body17.5

for.body17.5:                                     ; preds = %for.inc.5.for.body17.5_crit_edge, %for.body17.lr.ph.5
  %i.082.5 = phi i32 [ 0, %for.body17.lr.ph.5 ], [ %inc.5, %for.inc.5.for.body17.5_crit_edge ]
  %hw_value19.5 = getelementptr %struct.ieee80211_channel, ptr %66, i32 %i.082.5, i32 3
  %67 = ptrtoint ptr %hw_value19.5 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %hw_value19.5, align 2
  %conv20.5 = zext i16 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv20.5, i32 %idx)
  %cmp21.5 = icmp eq i32 %conv20.5, %idx
  br i1 %cmp21.5, label %for.body17.5.if.then23_crit_edge, label %for.inc.5

for.body17.5.if.then23_crit_edge:                 ; preds = %for.body17.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

for.inc.5:                                        ; preds = %for.body17.5
  %inc.5 = add nuw nsw i32 %i.082.5, 1
  %exitcond.5.not = icmp eq i32 %inc.5, %64
  br i1 %exitcond.5.not, label %for.inc.5.cleanup_crit_edge, label %for.inc.5.for.body17.5_crit_edge

for.inc.5.for.body17.5_crit_edge:                 ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.5

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then40:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  %or42 = or i32 %spec.store.select, 76
  %69 = ptrtoint ptr %filled to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or42, ptr %filled, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %for.inc.5.cleanup_crit_edge, %for.cond14.preheader.5.cleanup_crit_edge, %for.inc27.4.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %carl9170_update_survey.exit.cleanup_crit_edge, %carl9170_update_survey.exit.thread77, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call7.i, %carl9170_update_survey.exit.cleanup_crit_edge ], [ 0, %if.then40 ], [ 0, %if.then23.cleanup_crit_edge ], [ %call.i, %carl9170_update_survey.exit.thread77 ], [ -2, %for.cond14.preheader.5.cleanup_crit_edge ], [ -2, %for.inc27.4.cleanup_crit_edge ], [ -2, %for.inc.5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_op_flush(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i32 noundef %queues, i1 noundef zeroext %drop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %vif_bitmap = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 38
  %vif_num = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 26, i32 6
  %2 = ptrtoint ptr %vif_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif_num, align 8
  %call = tail call i32 @_find_next_bit_be(ptr noundef %vif_bitmap, i32 noundef %3, i32 noundef 0) #13
  %4 = ptrtoint ptr %vif_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif_num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp19 = icmp ult i32 %call, %5
  br i1 %cmp19, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %vid.020 = phi i32 [ %call7, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call.i = tail call i32 @carl9170_bcn_ctrl(ptr noundef %1, i32 noundef %vid.020, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %6 = ptrtoint ptr %vif_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vif_num, align 8
  %add = add nuw i32 %vid.020, 1
  %call7 = tail call i32 @_find_next_bit_be(ptr noundef %vif_bitmap, i32 noundef %7, i32 noundef %add) #13
  %8 = ptrtoint ptr %vif_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vif_num, align 8
  %cmp = icmp ult i32 %call7, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call fastcc void @carl9170_flush(ptr noundef %1, i1 noundef zeroext %drop)
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @carl9170_tx_frames_pending(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tx_total_queued = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 101
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_total_queued, i32 noundef 4) #13
  %2 = ptrtoint ptr %tx_total_queued to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tx_total_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @carl9170_zap_queues(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  %free.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @carl9170_ampdu_gc(ptr noundef %ar)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %free.i) #13
  %0 = getelementptr inbounds i8, ptr %free.i, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %free.i, ptr %free.i, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.65, ptr %free.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %free.i, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %free.i, i32 0, i32 1
  %4 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i.i, align 4
  %5 = call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !179
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i113 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i113, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 696, ptr noundef nonnull @.str.43) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %tx_ampdu_list_lock.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 95
  call void @_raw_spin_lock_bh(ptr noundef %tx_ampdu_list_lock.i) #13
  %call.i114 = call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool.not.i115 = icmp eq i32 %call.i114, 0
  br i1 %tobool.not.i115, label %land.lhs.true.i117, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i117:                               ; preds = %rcu_read_lock.exit.i
  %call1.i116 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i116)
  %tobool2.not.i = icmp eq i32 %call1.i116, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i117.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i117.do.end.i_crit_edge:            ; preds = %land.lhs.true.i117
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i117
  %.b43.i = load i1, ptr @carl9170_flush_ba.__warned, align 1
  br i1 %.b43.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i118

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i118:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_flush_ba.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 259, ptr noundef nonnull @.str.41) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i118, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i117.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %tx_ampdu_list.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 97
  %9 = ptrtoint ptr %tx_ampdu_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %tid_info.070.i = load volatile ptr, ptr %tx_ampdu_list.i, align 4
  %cmp.not71.i = icmp eq ptr %tid_info.070.i, %tx_ampdu_list.i
  br i1 %cmp.not71.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %tid_info.072.i = phi ptr [ %tid_info.0.i, %for.inc.i.for.body.i_crit_edge ], [ %tid_info.070.i, %do.end.i.for.body.i_crit_edge ]
  %state.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %tid_info.072.i, i32 0, i32 4
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp10.i = icmp ugt i32 %11, 3
  br i1 %cmp10.i, label %if.then11.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then11.i:                                      ; preds = %for.body.i
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %state.i, align 4
  %lock.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %tid_info.072.i, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock.i) #13
  %queue.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %tid_info.072.i, i32 0, i32 11
  %13 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue.i, align 4
  %cmp.i.i67.i = icmp eq ptr %14, %queue.i
  %tobool.not.i446568.i = icmp eq ptr %14, null
  %tobool.not.i4469.i = or i1 %cmp.i.i67.i, %tobool.not.i446568.i
  br i1 %tobool.not.i4469.i, label %if.then11.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.then11.i.while.end.i_crit_edge:                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then11.i
  %qlen.i.i.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %tid_info.072.i, i32 0, i32 11, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %15 = phi ptr [ %14, %while.body.lr.ph.i ], [ %30, %while.body.i.while.body.i_crit_edge ]
  %16 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.44, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %15, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.44, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %21, ptr %prev17.i.i.i, align 4
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %19, ptr %21, align 8
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  store volatile ptr %free.i, ptr %15, align 8
  store volatile ptr %25, ptr %prev9.i.i.i, align 4
  store volatile ptr %15, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %15, ptr %25, align 4
  %27 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i46.i = add i32 %28, 1
  store volatile i32 %add.i.i.i46.i, ptr %qlen.i.i, align 4
  %29 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %queue.i, align 4
  %cmp.i.i.i = icmp eq ptr %30, %queue.i
  %tobool.not.i4465.i = icmp eq ptr %30, null
  %tobool.not.i44.i = or i1 %cmp.i.i.i, %tobool.not.i4465.i
  br i1 %tobool.not.i44.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.then11.i.while.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %while.end.i, %for.body.i.for.inc.i_crit_edge
  %31 = ptrtoint ptr %tid_info.072.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %tid_info.0.i = load volatile ptr, ptr %tid_info.072.i, align 4
  %cmp.not.i = icmp eq ptr %tid_info.0.i, %tx_ampdu_list.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tx_ampdu_list_lock.i) #13
  %call.i47.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i47.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i50.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true.i50.i:                              ; preds = %for.end.i
  %call1.i48.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48.i)
  %tobool.not.i49.i = icmp eq i32 %call1.i48.i, 0
  br i1 %tobool.not.i49.i, label %land.lhs.true.i50.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i52.i

land.lhs.true.i50.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i52.i:                             ; preds = %land.lhs.true.i50.i
  %.b4.i51.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51.i, label %land.lhs.true2.i52.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i53.i

land.lhs.true2.i52.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

if.then.i53.i:                                    ; preds = %land.lhs.true2.i52.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 724, ptr noundef nonnull @.str.44) #13
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i53.i, %land.lhs.true2.i52.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i50.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  %32 = call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i54.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i54.i to ptr
  %preempt_count.i.i.i.i55.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i55.i, align 4
  %sub.i.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i55.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %36 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %free.i, align 4
  %cmp.i.i5673.i = icmp eq ptr %37, %free.i
  %tobool.not.i586674.i = icmp eq ptr %37, null
  %tobool.not.i5875.i = or i1 %cmp.i.i5673.i, %tobool.not.i586674.i
  br i1 %tobool.not.i5875.i, label %rcu_read_unlock.exit.i.carl9170_flush_ba.exit_crit_edge, label %rcu_read_unlock.exit.i.while.body30.i_crit_edge

rcu_read_unlock.exit.i.while.body30.i_crit_edge:  ; preds = %rcu_read_unlock.exit.i
  br label %while.body30.i

rcu_read_unlock.exit.i.carl9170_flush_ba.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %carl9170_flush_ba.exit

while.body30.i:                                   ; preds = %while.body30.i.while.body30.i_crit_edge, %rcu_read_unlock.exit.i.while.body30.i_crit_edge
  %38 = phi ptr [ %48, %while.body30.i.while.body30.i_crit_edge ], [ %37, %rcu_read_unlock.exit.i.while.body30.i_crit_edge ]
  %39 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i60.i = add i32 %40, -1
  store volatile i32 %sub.i.i60.i, ptr %qlen.i.i, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 8
  %prev9.i.i61.i = getelementptr inbounds %struct.anon.44, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %prev9.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev9.i.i61.i, align 4
  store ptr null, ptr %prev9.i.i61.i, align 4
  store ptr null, ptr %38, align 8
  %prev17.i.i62.i = getelementptr inbounds %struct.anon.44, ptr %42, i32 0, i32 1
  %45 = ptrtoint ptr %prev17.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %44, ptr %prev17.i.i62.i, align 4
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %42, ptr %44, align 8
  call void @carl9170_tx_status(ptr noundef %ar, ptr noundef nonnull %38, i1 noundef zeroext false) #13
  %47 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %free.i, align 4
  %cmp.i.i56.i = icmp eq ptr %48, %free.i
  %tobool.not.i5866.i = icmp eq ptr %48, null
  %tobool.not.i58.i = or i1 %cmp.i.i56.i, %tobool.not.i5866.i
  br i1 %tobool.not.i58.i, label %while.body30.i.carl9170_flush_ba.exit_crit_edge, label %while.body30.i.while.body30.i_crit_edge

while.body30.i.while.body30.i_crit_edge:          ; preds = %while.body30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body30.i

while.body30.i.carl9170_flush_ba.exit_crit_edge:  ; preds = %while.body30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %carl9170_flush_ba.exit

carl9170_flush_ba.exit:                           ; preds = %while.body30.i.carl9170_flush_ba.exit_crit_edge, %rcu_read_unlock.exit.i.carl9170_flush_ba.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %free.i) #13
  call fastcc void @carl9170_flush(ptr noundef %ar, i1 noundef zeroext true)
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw, align 4
  %queues132 = getelementptr inbounds %struct.ieee80211_hw, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %queues132 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %queues132, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %cmp134.not = icmp eq i16 %52, 0
  br i1 %cmp134.not, label %carl9170_flush_ba.exit.do.end22_crit_edge, label %carl9170_flush_ba.exit.for.body_crit_edge

carl9170_flush_ba.exit.for.body_crit_edge:        ; preds = %carl9170_flush_ba.exit
  br label %for.body

carl9170_flush_ba.exit.do.end22_crit_edge:        ; preds = %carl9170_flush_ba.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

for.body:                                         ; preds = %while.end.for.body_crit_edge, %carl9170_flush_ba.exit.for.body_crit_edge
  %i.0135 = phi i32 [ %inc, %while.end.for.body_crit_edge ], [ 0, %carl9170_flush_ba.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 90, i32 %i.0135
  %lock = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 90, i32 %i.0135, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx, align 4
  %cmp.i131 = icmp eq ptr %54, %arrayidx
  br i1 %cmp.i131, label %for.body.while.end_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body.while.body_crit_edge
  %55 = phi ptr [ %57, %while.body.while.body_crit_edge ], [ %54, %for.body.while.body_crit_edge ]
  call void @carl9170_tx_get_skb(ptr noundef %55) #13
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  call void @carl9170_tx_drop(ptr noundef %ar, ptr noundef %55) #13
  call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %call13 = call i32 @carl9170_tx_put_skb(ptr noundef %55) #13
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp eq ptr %57, %arrayidx
  br i1 %cmp.i, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.body.while.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  %inc = add nuw nsw i32 %i.0135, 1
  %58 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw, align 4
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %59, i32 0, i32 11
  %60 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %queues, align 4
  %conv = zext i16 %61 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %while.end.for.body_crit_edge, label %while.end.do.end22_crit_edge

while.end.do.end22_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.end22:                                         ; preds = %while.end.do.end22_crit_edge, %carl9170_flush_ba.exit.do.end22_crit_edge
  %tx_stats = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 75
  %62 = call ptr @memset(ptr %tx_stats, i32 0, i32 48)
  %63 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw, align 4
  %queues25136 = getelementptr inbounds %struct.ieee80211_hw, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %queues25136 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %queues25136, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cmp27138.not = icmp eq i16 %66, 0
  br i1 %cmp27138.not, label %do.end22.for.end34_crit_edge, label %do.end22.for.body29_crit_edge

do.end22.for.body29_crit_edge:                    ; preds = %do.end22
  br label %for.body29

do.end22.for.end34_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end34

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %do.end22.for.body29_crit_edge
  %i.1139 = phi i32 [ %inc33, %for.body29.for.body29_crit_edge ], [ 0, %do.end22.for.body29_crit_edge ]
  %limit = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 75, i32 %i.1139, i32 1
  %67 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 48, ptr %limit, align 4
  %inc33 = add nuw nsw i32 %i.1139, 1
  %68 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw, align 4
  %queues25 = getelementptr inbounds %struct.ieee80211_hw, ptr %69, i32 0, i32 11
  %70 = ptrtoint ptr %queues25 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %queues25, align 4
  %conv26 = zext i16 %71 to i32
  %cmp27 = icmp ult i32 %inc33, %conv26
  br i1 %cmp27, label %for.body29.for.body29_crit_edge, label %for.body29.for.end34_crit_edge

for.body29.for.end34_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end34

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body29

for.end34:                                        ; preds = %for.body29.for.end34_crit_edge, %do.end22.for.end34_crit_edge
  %mem_bitmap = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 107
  %72 = ptrtoint ptr %mem_bitmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mem_bitmap, align 8
  %mem_blocks = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 15
  %74 = ptrtoint ptr %mem_blocks to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mem_blocks, align 8
  %sub.i = add i32 %75, 31
  %76 = lshr i32 %sub.i, 3
  %mul.i = and i32 %76, 536870908
  %77 = call ptr @memset(ptr %73, i32 0, i32 %mul.i)
  %78 = call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %81, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !179
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %for.end34.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.end34.rcu_read_lock.exit_crit_edge:           ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.end34
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 696, ptr noundef nonnull @.str.43) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.end34.rcu_read_lock.exit_crit_edge
  %call36 = call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end43_crit_edge

rcu_read_lock.exit.do.end43_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end43

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call38 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true.do.end43_crit_edge, label %land.lhs.true40

land.lhs.true.do.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end43

land.lhs.true40:                                  ; preds = %land.lhs.true
  %.b108 = load i1, ptr @carl9170_zap_queues.__warned, align 1
  br i1 %.b108, label %land.lhs.true40.do.end43_crit_edge, label %if.then

land.lhs.true40.do.end43_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end43

if.then:                                          ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_zap_queues.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 313, ptr noundef nonnull @.str.41) #13
  br label %do.end43

do.end43:                                         ; preds = %if.then, %land.lhs.true40.do.end43_crit_edge, %land.lhs.true.do.end43_crit_edge, %rcu_read_lock.exit.do.end43_crit_edge
  %vif_list = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 37
  %82 = ptrtoint ptr %vif_list to i32
  call void @__asan_load4_noabort(i32 %82)
  %cvif.0140 = load volatile ptr, ptr %vif_list, align 4
  %cmp50.not141 = icmp eq ptr %cvif.0140, %vif_list
  br i1 %cmp50.not141, label %do.end43.for.end65_crit_edge, label %for.body52.lr.ph

do.end43.for.end65_crit_edge:                     ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end65

for.body52.lr.ph:                                 ; preds = %do.end43
  %beacon_lock = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 41
  br label %for.body52

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %for.body52.lr.ph
  %cvif.0142 = phi ptr [ %cvif.0140, %for.body52.lr.ph ], [ %cvif.0, %for.body52.for.body52_crit_edge ]
  call void @_raw_spin_lock_bh(ptr noundef %beacon_lock) #13
  %beacon = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.0142, i32 0, i32 3
  %83 = ptrtoint ptr %beacon to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %beacon, align 4
  call void @__dev_kfree_skb_any(ptr noundef %84, i32 noundef 1) #13
  %85 = ptrtoint ptr %beacon to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %beacon, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %beacon_lock) #13
  %86 = ptrtoint ptr %cvif.0142 to i32
  call void @__asan_load4_noabort(i32 %86)
  %cvif.0 = load volatile ptr, ptr %cvif.0142, align 4
  %cmp50.not = icmp eq ptr %cvif.0, %vif_list
  br i1 %cmp50.not, label %for.body52.for.end65_crit_edge, label %for.body52.for.body52_crit_edge

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body52

for.body52.for.end65_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end65

for.end65:                                        ; preds = %for.body52.for.end65_crit_edge, %do.end43.for.end65_crit_edge
  %call.i120 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i120, label %for.end65.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i123

for.end65.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i123:                               ; preds = %for.end65
  %call1.i121 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i121)
  %tobool.not.i122 = icmp eq i32 %call1.i121, 0
  br i1 %tobool.not.i122, label %land.lhs.true.i123.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i125

land.lhs.true.i123.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i123
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i125:                              ; preds = %land.lhs.true.i123
  %.b4.i124 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i124, label %land.lhs.true2.i125.rcu_read_unlock.exit_crit_edge, label %if.then.i126

land.lhs.true2.i125.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i125
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i126:                                     ; preds = %land.lhs.true2.i125
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 724, ptr noundef nonnull @.str.44) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i126, %land.lhs.true2.i125.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i123.rcu_read_unlock.exit_crit_edge, %for.end65.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  %87 = call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i127 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i127 to ptr
  %preempt_count.i.i.i.i128 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i128, align 4
  %sub.i.i.i129 = add i32 %90, -1
  store volatile i32 %sub.i.i.i129, ptr %preempt_count.i.i.i.i128, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %tx_ampdu_upload = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 98
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_ampdu_upload, i32 noundef 4) #13
  %91 = ptrtoint ptr %tx_ampdu_upload to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 0, ptr %tx_ampdu_upload, align 4
  %tx_ampdu_scheduler = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 99
  %call.i.i109 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_ampdu_scheduler, i32 noundef 4) #13
  %92 = ptrtoint ptr %tx_ampdu_scheduler to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 0, ptr %tx_ampdu_scheduler, align 4
  %tx_total_pending = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 100
  %call.i.i110 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_total_pending, i32 noundef 4) #13
  %93 = ptrtoint ptr %tx_total_pending to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 0, ptr %tx_total_pending, align 4
  %tx_total_queued = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 101
  %call.i.i111 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_total_queued, i32 noundef 4) #13
  %94 = ptrtoint ptr %tx_total_queued to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 0, ptr %tx_total_queued, align 4
  %mem_free_blocks = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 108
  %95 = ptrtoint ptr %mem_blocks to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mem_blocks, align 8
  %call.i.i112 = call zeroext i1 @__kasan_check_write(ptr noundef %mem_free_blocks, i32 noundef 4) #13
  %97 = ptrtoint ptr %mem_free_blocks to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 %96, ptr %mem_free_blocks, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_usb_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_init_mac(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_set_qos(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_write_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_upload_key(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_disable_key(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @carl9170_ampdu_gc(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  %tid_gc = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tid_gc) #13
  %0 = getelementptr inbounds %struct.list_head, ptr %tid_gc, i32 0, i32 1
  %1 = ptrtoint ptr %tid_gc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tid_gc, ptr %tid_gc, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tid_gc, ptr %0, align 4
  %3 = call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !179
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 696, ptr noundef nonnull @.str.43) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b91 = load i1, ptr @carl9170_ampdu_gc.__warned, align 1
  br i1 %.b91, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @carl9170_ampdu_gc.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 190, ptr noundef nonnull @.str.41) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %tx_ampdu_list = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 97
  %7 = ptrtoint ptr %tx_ampdu_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %tid_info.0111 = load volatile ptr, ptr %tx_ampdu_list, align 4
  %cmp.not112 = icmp eq ptr %tid_info.0111, %tx_ampdu_list
  br i1 %cmp.not112, label %do.end.do.body26_crit_edge, label %for.body.lr.ph

do.end.do.body26_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body26

for.body.lr.ph:                                   ; preds = %do.end
  %tx_ampdu_list_lock = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 95
  %tx_ampdu_list_len = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 102
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.body.lr.ph
  %tid_info.0113 = phi ptr [ %tid_info.0111, %for.body.lr.ph ], [ %tid_info.0, %if.end15.for.body_crit_edge ]
  call void @_raw_spin_lock_bh(ptr noundef %tx_ampdu_list_lock) #13
  %state = getelementptr inbounds %struct.carl9170_sta_tid, ptr %tid_info.0113, i32 0, i32 4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp11 = icmp eq i32 %9, 2
  br i1 %cmp11, label %if.then12, label %for.body.if.end15_crit_edge

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then12:                                        ; preds = %for.body
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %state, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %tid_info.0113) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then12.list_del_rcu.exit_crit_edge

if.then12.list_del_rcu.exit_crit_edge:            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tid_info.0113, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %tid_info.0113 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tid_info.0113, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then12.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tid_info.0113, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %18 = ptrtoint ptr %tx_ampdu_list_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_ampdu_list_len, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %tx_ampdu_list_len, align 4
  %tmp_list = getelementptr inbounds %struct.carl9170_sta_tid, ptr %tid_info.0113, i32 0, i32 1
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %0, align 4
  %call.i.i93 = call zeroext i1 @__list_add_valid(ptr noundef %tmp_list, ptr noundef %21, ptr noundef nonnull %tid_gc) #13
  br i1 %call.i.i93, label %if.end.i.i94, label %list_del_rcu.exit.if.end15_crit_edge

list_del_rcu.exit.if.end15_crit_edge:             ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end.i.i94:                                     ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %tmp_list, ptr %0, align 4
  %23 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tid_gc, ptr %tmp_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %tid_info.0113, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %tmp_list, ptr %21, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end.i.i94, %list_del_rcu.exit.if.end15_crit_edge, %for.body.if.end15_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tx_ampdu_list_lock) #13
  %26 = ptrtoint ptr %tid_info.0113 to i32
  call void @__asan_load4_noabort(i32 %26)
  %tid_info.0 = load volatile ptr, ptr %tid_info.0113, align 4
  %cmp.not = icmp eq ptr %tid_info.0, %tx_ampdu_list
  br i1 %cmp.not, label %if.end15.do.body26_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end15.do.body26_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body26

do.body26:                                        ; preds = %if.end15.do.body26_crit_edge, %do.end.do.body26_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !187
  %tx_ampdu_iter52 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 96
  %27 = ptrtoint ptr %tx_ampdu_iter52 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %tx_ampdu_list, ptr %tx_ampdu_iter52, align 8
  %call.i95 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i95, label %do.body26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i98

do.body26.rcu_read_unlock.exit_crit_edge:         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i98:                                ; preds = %do.body26
  %call1.i96 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i96)
  %tobool.not.i97 = icmp eq i32 %call1.i96, 0
  br i1 %tobool.not.i97, label %land.lhs.true.i98.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i100

land.lhs.true.i98.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i100:                              ; preds = %land.lhs.true.i98
  %.b4.i99 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i99, label %land.lhs.true2.i100.rcu_read_unlock.exit_crit_edge, label %if.then.i101

land.lhs.true2.i100.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i101:                                     ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 724, ptr noundef nonnull @.str.44) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i101, %land.lhs.true2.i100.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i98.rcu_read_unlock.exit_crit_edge, %do.body26.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  %28 = call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i102 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i102 to ptr
  %preempt_count.i.i.i.i103 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i103, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i103, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @synchronize_rcu() #13
  %32 = ptrtoint ptr %tid_gc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %tid_gc, align 4
  %cmp.i.not117 = icmp eq ptr %33, %tid_gc
  br i1 %cmp.i.not117, label %rcu_read_unlock.exit.while.end75_crit_edge, label %rcu_read_unlock.exit.while.body_crit_edge

rcu_read_unlock.exit.while.body_crit_edge:        ; preds = %rcu_read_unlock.exit
  br label %while.body

rcu_read_unlock.exit.while.end75_crit_edge:       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end75

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %rcu_read_unlock.exit.while.body_crit_edge
  %34 = phi ptr [ %57, %list_del_init.exit.while.body_crit_edge ], [ %33, %rcu_read_unlock.exit.while.body_crit_edge ]
  %add.ptr69 = getelementptr i8, ptr %34, i32 -8
  %queue = getelementptr i8, ptr %34, i32 88
  %35 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %queue, align 4
  %cmp.i.i114 = icmp eq ptr %36, %queue
  %tobool.not.i104110115 = icmp eq ptr %36, null
  %tobool.not.i104116 = or i1 %cmp.i.i114, %tobool.not.i104110115
  br i1 %tobool.not.i104116, label %while.body.while.end_crit_edge, label %while.body73.lr.ph

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body73.lr.ph:                               ; preds = %while.body
  %qlen.i.i = getelementptr i8, ptr %34, i32 96
  br label %while.body73

while.body73:                                     ; preds = %while.body73.while.body73_crit_edge, %while.body73.lr.ph
  %37 = phi ptr [ %36, %while.body73.lr.ph ], [ %47, %while.body73.while.body73_crit_edge ]
  %38 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.44, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %37, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.44, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %43, ptr %prev17.i.i, align 4
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %41, ptr %43, align 8
  call void @carl9170_tx_status(ptr noundef %ar, ptr noundef nonnull %37, i1 noundef zeroext false) #13
  %46 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %queue, align 4
  %cmp.i.i = icmp eq ptr %47, %queue
  %tobool.not.i104110 = icmp eq ptr %47, null
  %tobool.not.i104 = or i1 %cmp.i.i, %tobool.not.i104110
  br i1 %tobool.not.i104, label %while.body73.while.end_crit_edge, label %while.body73.while.body73_crit_edge

while.body73.while.body73_crit_edge:              ; preds = %while.body73
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body73

while.body73.while.end_crit_edge:                 ; preds = %while.body73
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body73.while.end_crit_edge, %while.body.while.end_crit_edge
  %call.i.i106 = call zeroext i1 @__list_del_entry_valid(ptr noundef %34) #13
  br i1 %call.i.i106, label %if.end.i.i109, label %while.end.list_del_init.exit_crit_edge

while.end.list_del_init.exit_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i109:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i107 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i107 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i107, align 4
  %50 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %34, align 4
  %prev1.i.i.i108 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i108 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i108, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i109, %while.end.list_del_init.exit_crit_edge
  %54 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %34, ptr %34, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %34, ptr %prev.i3.i, align 4
  call void @kfree(ptr noundef %add.ptr69) #13
  %56 = ptrtoint ptr %tid_gc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %tid_gc, align 4
  %cmp.i.not = icmp eq ptr %57, %tid_gc
  br i1 %cmp.i.not, label %list_del_init.exit.while.end75_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_del_init.exit.while.end75_crit_edge:         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end75

while.end75:                                      ; preds = %list_del_init.exit.while.end75_crit_edge, %rcu_read_unlock.exit.while.end75_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tid_gc) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @carl9170_flush(ptr noundef %ar, i1 noundef zeroext %drop_queued) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %drop_queued, label %for.cond.preheader, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

for.cond.preheader:                               ; preds = %entry
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %queues48 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %queues48 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queues48, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp50.not = icmp eq i16 %3, 0
  br i1 %cmp50.not, label %for.cond.preheader.if.end6_crit_edge, label %while.cond.preheader.lr.ph

for.cond.preheader.if.end6_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

while.cond.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %tx_ampdu_upload = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 98
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.end.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %i.051 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %inc, %while.end.while.cond.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 89, i32 %i.051
  %call45 = tail call ptr @skb_dequeue(ptr noundef %arrayidx) #13
  %tobool2.not46 = icmp eq ptr %call45, null
  br i1 %tobool2.not46, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call47 = phi ptr [ %call, %if.end.while.body_crit_edge ], [ %call45, %while.cond.preheader.while.body_crit_edge ]
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call47, i32 0, i32 3
  %4 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb.i, align 8
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %while.body.if.end_crit_edge, label %if.then5

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_ampdu_upload, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %tx_ampdu_upload, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_ampdu_upload, ptr %tx_ampdu_upload, i32 1, ptr elementtype(i32) %tx_ampdu_upload) #13, !srcloc !188
  br label %if.end

if.end:                                           ; preds = %if.then5, %while.body.if.end_crit_edge
  tail call void @carl9170_tx_status(ptr noundef %ar, ptr noundef nonnull %call47, i1 noundef zeroext false) #13
  %call = tail call ptr @skb_dequeue(ptr noundef %arrayidx) #13
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %inc = add nuw nsw i32 %i.051, 1
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %queues, align 4
  %conv = zext i16 %10 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %while.end.while.cond.preheader_crit_edge, label %while.end.if.end6_crit_edge

while.end.if.end6_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

while.end.while.cond.preheader_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.preheader

if.end6:                                          ; preds = %while.end.if.end6_crit_edge, %for.cond.preheader.if.end6_crit_edge, %entry.if.end6_crit_edge
  %tx_total_queued = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 101
  %call.i.i44 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_total_queued, i32 noundef 4) #13
  %11 = ptrtoint ptr %tx_total_queued to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %tx_total_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %if.end6.if.end34_crit_edge, label %if.then9

if.end6.if.end34_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then9:                                         ; preds = %if.end6
  %tx_flush = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 77
  %call10 = tail call i32 @wait_for_completion_timeout(ptr noundef %tx_flush, i32 noundef 100) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %do.end, label %if.then9.if.end34_crit_edge, !prof !175

if.then9.if.end34_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 246, i32 noundef 9, ptr noundef null) #13
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.then9.if.end34_crit_edge, %if.end6.if.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_tx_get_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_tx_drop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_tx_put_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 724, ptr noundef nonnull @.str.44) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  %0 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_tx_status(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_exec_cmd(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_led_set_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_usb_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %1, ptr noundef %head) #13
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !182
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %1, align 4
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_mod_virtual_mac(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_set_operating_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_update_beacon(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_set_beacon_timers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_bcn_ctrl(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_set_slot_time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @carl9170_update_survey(ptr noundef %ar, i1 noundef zeroext %flush, i1 noundef zeroext %noise) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %noise, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 @carl9170_get_noisefloor(ptr noundef %ar) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %hw_counters = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 14
  %0 = ptrtoint ptr %hw_counters to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_counters, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool5.not = icmp eq i8 %1, 0
  br i1 %tobool5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 @carl9170_collect_tally(ptr noundef %ar) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %2 = and i1 %tobool8.not, %flush
  br i1 %2, label %if.then6.if.then13_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6.if.then13_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.end11:                                         ; preds = %if.end4
  br i1 %flush, label %if.end11.if.then13_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.then13:                                        ; preds = %if.end11.if.then13_crit_edge, %if.then6.if.then13_crit_edge
  %tally = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 62
  %3 = call ptr @memset(ptr %tally, i32 0, i32 40)
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end11.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call7, %if.then6.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_set_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_set_dyn_sifs_ack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_set_rts_cts_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_set_mac_tpc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_powersave(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_get_noisefloor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_collect_tally(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_set_mac_rates(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_update_multicast(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_block_awake(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_echo_test(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_usb_restart(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_restart_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_usb_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_to_ieee80211_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_reg_notifier_apply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_rng_read(ptr nocapture noundef readonly %rng, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  %2 = inttoptr i32 %1 to ptr
  %mutex = getelementptr inbounds %struct.ar9170, ptr %2, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %cache_idx = getelementptr inbounds %struct.ar9170, ptr %2, i32 0, i32 122, i32 4
  %3 = ptrtoint ptr %cache_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cache_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %4)
  %cmp = icmp ugt i32 %4, 29
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @carl9170_rng_get(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %5 = ptrtoint ptr %cache_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cache_idx, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %cache_idx, align 4
  %arrayidx = getelementptr %struct.ar9170, ptr %2, i32 0, i32 122, i32 3, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %8 to i32
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end4 ], [ %call, %if.then.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrng_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @carl9170_rng_get(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [15 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf) #13
  %0 = call ptr @memset(ptr %buf, i32 255, i32 60)
  %state = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %initialized = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 122, i32 1
  %3 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %initialized, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %while.body.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.preheader:                             ; preds = %lor.lhs.false
  %call = call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 0, i32 noundef 60, ptr noundef nonnull @carl9170_rng_get.rng_load, i32 noundef 60, ptr noundef nonnull %buf) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %for.end, label %while.body.preheader.cleanup_crit_edge

while.body.preheader.cleanup_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end:                                          ; preds = %while.body.preheader
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buf, align 4
  %conv = trunc i32 %6 to i16
  %arrayidx8 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 0
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %arrayidx8, align 2
  %arrayidx.1 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1, align 4
  %conv.136 = trunc i32 %9 to i16
  %arrayidx8.137 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx8.137 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.136, ptr %arrayidx8.137, align 2
  %arrayidx.2 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.2, align 4
  %conv.2 = trunc i32 %12 to i16
  %arrayidx8.2 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 2
  %13 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.2, ptr %arrayidx8.2, align 2
  %arrayidx.3 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.3, align 4
  %conv.3 = trunc i32 %15 to i16
  %arrayidx8.3 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 3
  %16 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.3, ptr %arrayidx8.3, align 2
  %arrayidx.4 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 4
  %17 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.4, align 4
  %conv.4 = trunc i32 %18 to i16
  %arrayidx8.4 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 4
  %19 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.4, ptr %arrayidx8.4, align 2
  %arrayidx.5 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.5, align 4
  %conv.5 = trunc i32 %21 to i16
  %arrayidx8.5 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 5
  %22 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.5, ptr %arrayidx8.5, align 2
  %arrayidx.6 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 6
  %23 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.6, align 4
  %conv.6 = trunc i32 %24 to i16
  %arrayidx8.6 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 6
  %25 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.6, ptr %arrayidx8.6, align 2
  %arrayidx.7 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 7
  %26 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.7, align 4
  %conv.7 = trunc i32 %27 to i16
  %arrayidx8.7 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 7
  %28 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.7, ptr %arrayidx8.7, align 2
  %arrayidx.8 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 8
  %29 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.8, align 4
  %conv.8 = trunc i32 %30 to i16
  %arrayidx8.8 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 8
  %31 = ptrtoint ptr %arrayidx8.8 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.8, ptr %arrayidx8.8, align 2
  %arrayidx.9 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 9
  %32 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.9, align 4
  %conv.9 = trunc i32 %33 to i16
  %arrayidx8.9 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 9
  %34 = ptrtoint ptr %arrayidx8.9 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.9, ptr %arrayidx8.9, align 2
  %arrayidx.10 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 10
  %35 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.10, align 4
  %conv.10 = trunc i32 %36 to i16
  %arrayidx8.10 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 10
  %37 = ptrtoint ptr %arrayidx8.10 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.10, ptr %arrayidx8.10, align 2
  %arrayidx.11 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 11
  %38 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.11, align 4
  %conv.11 = trunc i32 %39 to i16
  %arrayidx8.11 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 11
  %40 = ptrtoint ptr %arrayidx8.11 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.11, ptr %arrayidx8.11, align 2
  %arrayidx.12 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 12
  %41 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.12, align 4
  %conv.12 = trunc i32 %42 to i16
  %arrayidx8.12 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 12
  %43 = ptrtoint ptr %arrayidx8.12 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.12, ptr %arrayidx8.12, align 2
  %arrayidx.13 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 13
  %44 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.13, align 4
  %conv.13 = trunc i32 %45 to i16
  %arrayidx8.13 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 13
  %46 = ptrtoint ptr %arrayidx8.13 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.13, ptr %arrayidx8.13, align 2
  %arrayidx.14 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 14
  %47 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.14, align 4
  %conv.14 = trunc i32 %48 to i16
  %arrayidx8.14 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 14
  %49 = ptrtoint ptr %arrayidx8.14 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.14, ptr %arrayidx8.14, align 2
  %call.1 = call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 0, i32 noundef 60, ptr noundef nonnull @carl9170_rng_get.rng_load, i32 noundef 60, ptr noundef nonnull %buf) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool2.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool2.not.1, label %for.end.1, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end.1:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %buf, align 4
  %conv.1 = trunc i32 %51 to i16
  %arrayidx8.1 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 15
  %52 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.1, ptr %arrayidx8.1, align 2
  %arrayidx.1.1 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx.1.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.1.1, align 4
  %conv.1.1 = trunc i32 %54 to i16
  %arrayidx8.1.1 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 16
  %55 = ptrtoint ptr %arrayidx8.1.1 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.1.1, ptr %arrayidx8.1.1, align 2
  %arrayidx.1.2 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 2
  %56 = ptrtoint ptr %arrayidx.1.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.1.2, align 4
  %conv.1.2 = trunc i32 %57 to i16
  %arrayidx8.1.2 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 17
  %58 = ptrtoint ptr %arrayidx8.1.2 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.1.2, ptr %arrayidx8.1.2, align 2
  %arrayidx.1.3 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 3
  %59 = ptrtoint ptr %arrayidx.1.3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.1.3, align 4
  %conv.1.3 = trunc i32 %60 to i16
  %arrayidx8.1.3 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 18
  %61 = ptrtoint ptr %arrayidx8.1.3 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.1.3, ptr %arrayidx8.1.3, align 2
  %arrayidx.1.4 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 4
  %62 = ptrtoint ptr %arrayidx.1.4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.1.4, align 4
  %conv.1.4 = trunc i32 %63 to i16
  %arrayidx8.1.4 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 19
  %64 = ptrtoint ptr %arrayidx8.1.4 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.1.4, ptr %arrayidx8.1.4, align 2
  %arrayidx.1.5 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 5
  %65 = ptrtoint ptr %arrayidx.1.5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.1.5, align 4
  %conv.1.5 = trunc i32 %66 to i16
  %arrayidx8.1.5 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 20
  %67 = ptrtoint ptr %arrayidx8.1.5 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.1.5, ptr %arrayidx8.1.5, align 2
  %arrayidx.1.6 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 6
  %68 = ptrtoint ptr %arrayidx.1.6 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.1.6, align 4
  %conv.1.6 = trunc i32 %69 to i16
  %arrayidx8.1.6 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 21
  %70 = ptrtoint ptr %arrayidx8.1.6 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.1.6, ptr %arrayidx8.1.6, align 2
  %arrayidx.1.7 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 7
  %71 = ptrtoint ptr %arrayidx.1.7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.1.7, align 4
  %conv.1.7 = trunc i32 %72 to i16
  %arrayidx8.1.7 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 22
  %73 = ptrtoint ptr %arrayidx8.1.7 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv.1.7, ptr %arrayidx8.1.7, align 2
  %arrayidx.1.8 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 8
  %74 = ptrtoint ptr %arrayidx.1.8 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.1.8, align 4
  %conv.1.8 = trunc i32 %75 to i16
  %arrayidx8.1.8 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 23
  %76 = ptrtoint ptr %arrayidx8.1.8 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.1.8, ptr %arrayidx8.1.8, align 2
  %arrayidx.1.9 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 9
  %77 = ptrtoint ptr %arrayidx.1.9 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.1.9, align 4
  %conv.1.9 = trunc i32 %78 to i16
  %arrayidx8.1.9 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 24
  %79 = ptrtoint ptr %arrayidx8.1.9 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv.1.9, ptr %arrayidx8.1.9, align 2
  %arrayidx.1.10 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 10
  %80 = ptrtoint ptr %arrayidx.1.10 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.1.10, align 4
  %conv.1.10 = trunc i32 %81 to i16
  %arrayidx8.1.10 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 25
  %82 = ptrtoint ptr %arrayidx8.1.10 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv.1.10, ptr %arrayidx8.1.10, align 2
  %arrayidx.1.11 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 11
  %83 = ptrtoint ptr %arrayidx.1.11 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.1.11, align 4
  %conv.1.11 = trunc i32 %84 to i16
  %arrayidx8.1.11 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 26
  %85 = ptrtoint ptr %arrayidx8.1.11 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.1.11, ptr %arrayidx8.1.11, align 2
  %arrayidx.1.12 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 12
  %86 = ptrtoint ptr %arrayidx.1.12 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.1.12, align 4
  %conv.1.12 = trunc i32 %87 to i16
  %arrayidx8.1.12 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 27
  %88 = ptrtoint ptr %arrayidx8.1.12 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv.1.12, ptr %arrayidx8.1.12, align 2
  %arrayidx.1.13 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 13
  %89 = ptrtoint ptr %arrayidx.1.13 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.1.13, align 4
  %conv.1.13 = trunc i32 %90 to i16
  %arrayidx8.1.13 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 28
  %91 = ptrtoint ptr %arrayidx8.1.13 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv.1.13, ptr %arrayidx8.1.13, align 2
  %arrayidx.1.14 = getelementptr inbounds [15 x i32], ptr %buf, i32 0, i32 14
  %92 = ptrtoint ptr %arrayidx.1.14 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.1.14, align 4
  %conv.1.14 = trunc i32 %93 to i16
  %arrayidx8.1.14 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 122, i32 3, i32 29
  %94 = ptrtoint ptr %arrayidx8.1.14 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv.1.14, ptr %arrayidx8.1.14, align 2
  %cache_idx = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 122, i32 4
  %95 = ptrtoint ptr %cache_idx to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %cache_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end.1, %for.end.cleanup_crit_edge, %while.body.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.1 ], [ -11, %lor.lhs.false.cleanup_crit_edge ], [ -11, %entry.cleanup_crit_edge ], [ %call, %while.body.preheader.cleanup_crit_edge ], [ %call.1, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrng_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !76, !78, !80, !81, !82, !84, !86, !87, !89, !91, !93, !94, !95, !97, !98, !100, !101, !103, !105, !107, !109, !111, !113, !114, !116, !117, !119, !121, !123, !125, !126, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !142, !144, !146, !148, !150, !152, !154, !156, !157, !158, !159}
!llvm.named.register.sp = !{!161}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @__param_nohwcrypt, !1, !"__param_nohwcrypt", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 51, i32 1}
!2 = !{ptr @__UNIQUE_ID_nohwcrypttype355, !1, !"__UNIQUE_ID_nohwcrypttype355", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nohwcrypt356, !4, !"__UNIQUE_ID_nohwcrypt356", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 52, i32 1}
!5 = !{ptr @__param_noht, !6, !"__param_noht", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 55, i32 1}
!7 = !{ptr @__UNIQUE_ID_nohttype357, !6, !"__UNIQUE_ID_nohttype357", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_noht358, !9, !"__UNIQUE_ID_noht358", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 56, i32 1}
!10 = !{ptr @__carl9170_ratetable, !11, !"__carl9170_ratetable", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 64, i32 23}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 516, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @carl9170_restart.__UNIQUE_ID_ddebug372, !13, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 522, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @carl9170_restart._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @carl9170_restart._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @carl9170_alloc.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1795, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @carl9170_alloc.__key.8, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1796, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @carl9170_alloc.__key.10, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1797, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @carl9170_alloc.__key.12, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1798, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @carl9170_alloc.__key.14, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1799, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @carl9170_alloc.__key.16, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1800, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @carl9170_alloc.__key.18, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1801, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @carl9170_alloc.__key.20, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1809, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @carl9170_alloc.__key.22, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1811, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @carl9170_alloc.__key.24, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1812, i32 2}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @carl9170_alloc.__key.26, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1813, i32 2}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @carl9170_alloc.__key.28, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1814, i32 2}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @carl9170_alloc.__key.30, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1815, i32 2}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @carl9170_alloc.__key.32, !61, !"__key", i1 false, i1 false}
!64 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @carl9170_alloc.__key.34, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1816, i32 2}
!67 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @carl9170_alloc.__key.36, !66, !"__key", i1 false, i1 false}
!69 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 2035, i32 2}
!72 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @carl9170_register._entry, !71, !"_entry", i1 false, i1 false}
!75 = !{ptr @carl9170_register._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @modparam_nohwcrypt, !77, !"modparam_nohwcrypt", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 50, i32 13}
!78 = !{ptr @modparam_noht, !79, !"modparam_noht", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 54, i32 5}
!80 = !{ptr @__param_str_nohwcrypt, !1, !"__param_str_nohwcrypt", i1 false, i1 false}
!81 = !{ptr @__param_str_noht, !6, !"__param_str_noht", i1 false, i1 false}
!82 = !{ptr @carl9170_ops, !83, !"carl9170_ops", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1734, i32 35}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 313, i32 2}
!86 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 190, i32 2}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 259, i32 2}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!93 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!97 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/carl9170/carl9170.h", i32 650, i32 2}
!100 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 565, i32 3}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 759, i32 6}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/net/cfg80211.h", i32 778, i32 3}
!107 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1055, i32 3}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1137, i32 2}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1346, i32 15}
!113 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @carl9170_op_ampdu_action.__key, !115, !"__key", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1429, i32 3}
!116 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!117 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1443, i32 14}
!119 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1460, i32 14}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1471, i32 7}
!123 = !{ptr @skb_queue_head_init.__key, !124, !"__key", i1 false, i1 false}
!124 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!125 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 851, i32 3}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 482, i32 5}
!130 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @carl9170_restart_work._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @carl9170_restart_work._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 484, i32 5}
!135 = !{ptr @carl9170_restart_work._entry.53, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @carl9170_restart_work._entry_ptr.55, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @init_completion.__key, !138, !"__key", i1 false, i1 false}
!138 = !{!"../include/linux/completion.h", i32 87, i32 2}
!139 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @carl9170_band_2GHz, !141, !"carl9170_band_2GHz", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 168, i32 40}
!142 = !{ptr @carl9170_2ghz_chantable, !143, !"carl9170_2ghz_chantable", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 95, i32 33}
!144 = !{ptr @carl9170_band_5GHz, !145, !"carl9170_band_5GHz", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 176, i32 40}
!146 = !{ptr @carl9170_5ghz_chantable, !147, !"carl9170_5ghz_chantable", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 112, i32 33}
!148 = !{ptr @.str.57, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1501, i32 47}
!150 = !{ptr @.str.58, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1505, i32 4}
!152 = !{ptr @.str.59, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1601, i32 4}
!154 = !{ptr @.str.60, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1611, i32 3}
!156 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @carl9170_register_hwrng._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @carl9170_register_hwrng._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @carl9170_rng_get.rng_load, !160, !"rng_load", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/ath/carl9170/main.c", i32 1532, i32 22}
!161 = !{!"sp"}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{i64 2148713651}
!172 = !{i64 2148628936, i64 2148628968, i64 2148628997, i64 2148629031, i64 2148629062, i64 2148629085}
!173 = !{i64 2148713880}
!174 = !{i64 2148248942, i64 2148248947, i64 2148248960, i64 2148249004, i64 2148249038, i64 2148249059}
!175 = !{!"branch_weights", i32 1, i32 2000}
!176 = !{i8 0, i8 2}
!177 = !{i64 2158123547}
!178 = !{!"branch_weights", i32 2000, i32 1}
!179 = !{i64 2149965087}
!180 = !{i64 2149965353}
!181 = !{i64 2157991450, i64 2157991955, i64 2157991487, i64 2157991543, i64 2157991577, i64 2157991601, i64 2157991642, i64 2157991663, i64 2157991691, i64 2157991725}
!182 = !{i64 2151467599}
!183 = !{i64 2157998501}
!184 = !{i64 2158006511}
!185 = !{!"auto-init"}
!186 = !{i64 2158088044}
!187 = !{i64 2157888660}
!188 = !{i64 2148630681, i64 2148630707, i64 2148630736, i64 2148630770, i64 2148630801, i64 2148630824}
