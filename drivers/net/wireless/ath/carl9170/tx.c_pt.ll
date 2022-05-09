; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/carl9170/tx.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/carl9170/tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.107, %union.anon.108, [48 x i8], %union.anon.109, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.111, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { i64 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, ptr }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.113, i32, i32, i32, i16, i16, %union.anon.115, i32, %union.anon.116, %union.anon.117, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.113 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ar9170 = type { %struct.ath_common, ptr, %struct.mutex, i32, %struct.spinlock, i32, i8, ptr, ptr, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.tasklet_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i8, %struct.completion, %struct.completion, %struct.anon.130, [1 x %struct.ieee80211_iface_limit], [1 x %struct.ieee80211_iface_combination], %struct.work_struct, %struct.work_struct, i32, [4 x i32], [4 x i32], i8, i8, %struct.atomic_t, %struct.list_head, i32, i32, [7 x %struct.carl9170_vif], %struct.spinlock, i32, i32, ptr, i32, i64, i8, i8, i64, i32, i32, i32, i8, i32, ptr, i32, [4 x i32], i32, i32, i8, i8, %struct.anon.134, %struct.delayed_work, ptr, [4 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], %struct.delayed_work, [2 x %struct.carl9170_led], %struct.spinlock, [4 x %struct.carl9170_tx_queue_stats], [5 x %struct.ieee80211_tx_queue_params], %struct.completion, i32, i32, ptr, %struct.spinlock, %struct.completion, %union.anon.135, i32, i32, i32, i32, %struct.ar9170_eeprom, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], %struct.delayed_work, i32, i8, %struct.work_struct, %struct.spinlock, ptr, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, %struct.spinlock, ptr, %struct.atomic_t, %struct.atomic_t, %struct.ar9170_rx_head, i8, ptr, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.anon.142, %struct.carl9170_debug, ptr, %struct.work_struct, %struct.anon.144, %struct.anon.145 }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
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
%struct._carl9170_tx_superdesc = type { i16, i8, i8, i8, i8, i8, i8, [4 x i8], [3 x i32] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
%struct._carl9170_tx_superframe = type { %struct._carl9170_tx_superdesc, %struct._ar9170_tx_hwdesc, [0 x i8] }
%struct._ar9170_tx_hwdesc = type { i16, i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.carl9170_bar_list_entry = type { %struct.list_head, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_bar = type { i16, i16, [6 x i8], [6 x i8], i16, i16 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.carl9170_sta_tid = type { %struct.list_head, %struct.list_head, %struct.spinlock, i32, i32, i8, i16, i16, i16, i16, [4 x i32], %struct.sk_buff_head, ptr, ptr }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.carl9170_ba_stats = type { i8, i8, i8, i8 }
%struct.anon.137 = type { i8, i8, i8, i8 }
%struct.carl9170_rsp = type { %struct.carl9170_cmd_head, %union.anon.140 }
%struct.carl9170_cmd_head = type { %union.anon.136 }
%union.anon.136 = type { i32 }
%union.anon.140 = type <{ %struct.carl9170_tsf_rsp, [52 x i8] }>
%struct.carl9170_tsf_rsp = type { %union.anon.141 }
%union.anon.141 = type { i64 }
%struct._carl9170_tx_status = type { i8, i8 }
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
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.146 }
%union.anon.146 = type { %struct.anon.150, [32 x i8] }
%struct.anon.150 = type { i64 }
%struct.carl9170_sta_info = type { i8, i8, %struct.atomic_t, i32, [16 x ptr], [16 x %struct.carl9170_ba_stats] }
%struct.carl9170_vif_info = type { %struct.list_head, i8, i32, ptr, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.103, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.possible_net_t = type { ptr }
%struct.anon.103 = type { i64, i64, i8 }
%struct.carl9170_cmd = type { %struct.carl9170_cmd_head, %union.anon.138 }
%union.anon.138 = type { %struct.carl9170_wol_cmd }
%struct.carl9170_wol_cmd = type { i32, [6 x i8], [6 x i8], i32, i32, i32, [32 x i8] }
%struct.anon.139 = type { i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/carl9170/tx.c\00", [57 x i8] zeroinitializer }, align 32
@carl9170_tx_process_status.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"carl9170\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"carl9170_tx_process_status\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UU:\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@carl9170_update_beacon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 1646, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"beacon does not fit into device memory!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"carl9170_update_beacon\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@carl9170_update_beacon._entry_ptr = internal global ptr @carl9170_update_beacon._entry, section ".printk_index", align 4
@carl9170_update_beacon._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str, i32 1656, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"no support for beacons bigger than %d (yours:%d).\0A\00", [45 x i8] zeroinitializer }, align 32
@carl9170_update_beacon._entry_ptr.11 = internal global ptr @carl9170_update_beacon._entry.9, section ".printk_index", align 4
@carl9170_tx_release.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@carl9170_tx_bar_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"bar not found in %d - ra:%pM ta:%pM c:%x ssn:%x\0A\00", [47 x i8] zeroinitializer }, align 32
@carl9170_tx_status_process_ampdu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__carl9170_get_tx_sta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__carl9170_get_tx_sta.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@carl9170_tx_shift_bm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@carl9170_tx_shift_bm.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@carl9170_tx_shift_bm.__already_done.16 = internal unnamed_addr global i1 false, section ".data.once", align 1
@carl9170_tx_ampdu_timeout.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@carl9170_release_dev_space.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@carl9170_release_dev_space.__already_done.17 = internal unnamed_addr global i1 false, section ".data.once", align 1
@modparam_noht = external dso_local local_unnamed_addr global i32, align 4
@carl9170_tx_ampdu_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@carl9170_tx_ampdu_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@carl9170_tx_ampdu_queue.__already_done.18 = internal unnamed_addr global i1 false, section ".data.once", align 1
@carl9170_tx_ampdu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@carl9170_tx_ampdu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__carl9170_ratetable = external dso_local global [0 x %struct.ieee80211_rate], align 4
@carl9170_bar_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@carl9170_pick_beaconing_vif.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.22 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 695, i32 7 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 696, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 1645, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 1654, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 458, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 468, i32 3 }
@___asan_gen_.68 = private constant [42 x i8] c"../drivers/net/wireless/ath/carl9170/tx.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 400, i32 13 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 695, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 723, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @carl9170_update_beacon._entry, ptr @carl9170_update_beacon._entry.9, ptr @carl9170_update_beacon._entry_ptr, ptr @carl9170_update_beacon._entry_ptr.11, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_update_beacon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_update_beacon._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_tx_get_skb(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #10, !srcloc !76
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !77

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !78

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_tx_put_skb(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #10, !srcloc !80
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !78

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !81
  %add.ptr3.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3
  %ar7.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %1 = ptrtoint ptr %ar7.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ar7.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.end47.i.i

land.rhs.i.i:                                     ; preds = %if.then.i
  %.b100.i.i = load i1, ptr @carl9170_tx_release.__already_done, align 1
  br i1 %.b100.i.i, label %land.rhs.i.i.kref_put.exit_crit_edge, label %if.then.i.i, !prof !78

land.rhs.i.i.kref_put.exit_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @carl9170_tx_release.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #10
  br label %kref_put.exit

if.end47.i.i:                                     ; preds = %if.then.i
  %add.ptr49.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %3 = call ptr @memset(ptr %add.ptr49.i.i, i32 0, i32 28)
  %tx_total_queued.i.i = getelementptr inbounds %struct.ar9170, ptr %2, i32 0, i32 101
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_total_queued.i.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %tx_total_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %tx_total_queued.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool50.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool50.not.i.i, label %if.end47.i.i.if.end52.i.i_crit_edge, label %if.then51.i.i

if.end47.i.i.if.end52.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i.i

if.then51.i.i:                                    ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_schedule.i.i = getelementptr inbounds %struct.ar9170, ptr %2, i32 0, i32 93
  %6 = ptrtoint ptr %tx_schedule.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %tx_schedule.i.i, align 4
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.then51.i.i, %if.end47.i.i.if.end52.i.i_crit_edge
  %7 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr3.i.i, align 8
  %and.i.i = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool53.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool53.not.i.i, label %if.end52.i.i.if.end74.i.i_crit_edge, label %if.then54.i.i

if.end52.i.i.if.end74.i.i_crit_edge:              ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i.i

if.then54.i.i:                                    ; preds = %if.end52.i.i
  %tx_ampdu_upload.i.i = getelementptr inbounds %struct.ar9170, ptr %2, i32 0, i32 98
  %call.i.i102.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_ampdu_upload.i.i, i32 noundef 4) #10
  %9 = ptrtoint ptr %tx_ampdu_upload.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %tx_ampdu_upload.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool56.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool56.not.i.i, label %if.then57.i.i, label %if.then54.i.i.if.end58.i.i_crit_edge

if.then54.i.i.if.end58.i.i_crit_edge:             ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i.i

if.then57.i.i:                                    ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_ampdu_schedule.i.i = getelementptr inbounds %struct.ar9170, ptr %2, i32 0, i32 105
  %11 = ptrtoint ptr %tx_ampdu_schedule.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %tx_ampdu_schedule.i.i, align 8
  br label %if.end58.i.i

if.end58.i.i:                                     ; preds = %if.then57.i.i, %if.then54.i.i.if.end58.i.i_crit_edge
  %12 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr3.i.i, align 8
  %and60.i.i = and i32 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i)
  %tobool61.not.i.i = icmp eq i32 %and60.i.i, 0
  br i1 %tobool61.not.i.i, label %if.else.i.i, label %if.then62.i.i

if.then62.i.i:                                    ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %rix.i.i = getelementptr inbounds %struct._carl9170_tx_superdesc, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %rix.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rix.i.i, align 2
  %ampdu_len.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 25
  %18 = ptrtoint ptr %ampdu_len.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %ampdu_len.i.i, align 1
  %cnt.i.i = getelementptr inbounds %struct._carl9170_tx_superdesc, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cnt.i.i, align 1
  %ampdu_ack_len.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %21 = ptrtoint ptr %ampdu_ack_len.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %ampdu_ack_len.i.i, align 8
  br label %if.end74.i.i

if.else.i.i:                                      ; preds = %if.end58.i.i
  %22 = and i32 %13, 513
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %22)
  %23 = icmp eq i32 %22, 512
  br i1 %23, label %if.then70.i.i, label %if.else.i.i.if.end74.i.i_crit_edge

if.else.i.i.if.end74.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i.i

if.then70.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %hw.i.i = getelementptr inbounds %struct.ar9170, ptr %2, i32 0, i32 1
  %24 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw.i.i, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %25, ptr noundef %skb) #10
  br label %kref_put.exit

if.end74.i.i:                                     ; preds = %if.else.i.i.if.end74.i.i_crit_edge, %if.then62.i.i, %if.end52.i.i.if.end74.i.i_crit_edge
  %call75.i.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 32) #10
  %hw76.i.i = getelementptr inbounds %struct.ar9170, ptr %2, i32 0, i32 1
  %26 = ptrtoint ptr %hw76.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw76.i.i, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %27, ptr noundef %skb) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.end74.i.i, %if.then70.i.i, %if.then.i.i, %land.rhs.i.i.kref_put.exit_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %land.rhs.i.i.kref_put.exit_crit_edge ], [ 1, %if.then.i.i ], [ 1, %if.then70.i.i ], [ 1, %if.end74.i.i ], [ 0, %if.end5.i.i.i.i.kref_put.exit_crit_edge ], [ 0, %if.then10.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_tx_status(ptr noundef %ar, ptr noundef %skb, i1 noundef zeroext %success) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i.i, align 8
  %conv.i = zext i16 %1 to i32
  %tx_stats_lock.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 74
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_stats_lock.i) #10
  %len.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 75, i32 %conv.i, i32 2
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %dec.i = add i32 %3, -1
  store i32 %dec.i, ptr %len.i, align 4
  %mem_block_size.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 16
  %4 = ptrtoint ptr %mem_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_block_size.i.i, align 4
  %sub.i.i = add i32 %5, 2351
  %div.i.i = udiv i32 %sub.i.i, %5
  %mem_free_blocks.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 108
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mem_free_blocks.i.i, i32 noundef 4) #10
  %6 = ptrtoint ptr %mem_free_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %mem_free_blocks.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %7)
  %cmp.i.i = icmp ugt i32 %div.i.i, %7
  br i1 %cmp.i.i, label %entry.if.end23.i_crit_edge, label %for.cond.preheader.i

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.cond.preheader.i:                             ; preds = %entry
  %hw.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %8 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw.i, align 4
  %queues48.i = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %queues48.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %queues48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp50.not.i = icmp eq i16 %11, 0
  br i1 %cmp50.not.i, label %for.cond.preheader.i.if.end23.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end23.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %12 = phi ptr [ %24, %for.inc.i.for.body.i_crit_edge ], [ %9, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.051.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %len6.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 75, i32 %i.051.i, i32 2
  %13 = ptrtoint ptr %len6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %14)
  %cmp7.i = icmp ugt i32 %14, 31
  br i1 %cmp7.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call11.i = tail call i32 @ieee80211_queue_stopped(ptr noundef %12, i32 noundef %i.051.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end21.i_crit_edge, label %if.then12.i

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %arrayidx13.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 32, i32 %i.051.i
  %16 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx13.i, align 4
  %sub.i = sub i32 %15, %17
  %arrayidx14.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 33, i32 %i.051.i
  %18 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %19)
  %cmp15.i = icmp ugt i32 %sub.i, %19
  br i1 %cmp15.i, label %if.then17.i, label %if.then12.i.if.end21.i_crit_edge

if.then12.i.if.end21.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.i, ptr %arrayidx14.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.then12.i.if.end21.i_crit_edge, %if.end.i.if.end21.i_crit_edge
  %21 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_wake_queue(ptr noundef %22, i32 noundef %i.051.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end21.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.051.i, 1
  %23 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw.i, align 4
  %queues.i = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %queues.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %queues.i, align 4
  %conv2.i = zext i16 %26 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv2.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end23.i_crit_edge

for.inc.i.if.end23.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end23.i:                                       ; preds = %for.inc.i.if.end23.i_crit_edge, %for.cond.preheader.i.if.end23.i_crit_edge, %entry.if.end23.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_stats_lock.i) #10
  %tx_total_queued.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 101
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_total_queued.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %tx_total_queued.i, i32 1, i32 3, i32 1) #10
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_total_queued.i, ptr %tx_total_queued.i, i32 1, ptr elementtype(i32) %tx_total_queued.i) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then26.i, label %if.end23.i.carl9170_tx_accounting_free.exit_crit_edge

if.end23.i.carl9170_tx_accounting_free.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_accounting_free.exit

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_flush.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 77
  tail call void @complete(ptr noundef %tx_flush.i) #10
  br label %carl9170_tx_accounting_free.exit

carl9170_tx_accounting_free.exit:                 ; preds = %if.then26.i, %if.end23.i.carl9170_tx_accounting_free.exit_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %frame_data.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %frame_data.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %frame_data.i, align 1
  %32 = and i16 %31, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31744, i16 %32)
  %cmp.i.i18 = icmp eq i16 %32, -31744
  br i1 %cmp.i.i18, label %land.lhs.true.i, label %carl9170_tx_accounting_free.exit.carl9170_tx_bar_status.exit_crit_edge, !prof !77

carl9170_tx_accounting_free.exit.carl9170_tx_bar_status.exit_crit_edge: ; preds = %carl9170_tx_accounting_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_bar_status.exit

land.lhs.true.i:                                  ; preds = %carl9170_tx_accounting_free.exit
  %33 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cb.i, align 8
  %and.i = and i32 %34, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i.carl9170_tx_bar_status.exit_crit_edge

land.lhs.true.i.carl9170_tx_bar_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_bar_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %35 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %queue_mapping.i.i, align 8
  %conv.i20 = zext i16 %36 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.then.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.i.rcu_read_lock.exit.i_crit_edge
  %call5.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true7.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %rcu_read_lock.exit.i
  %call8.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %land.lhs.true10.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true10.i:                                ; preds = %land.lhs.true7.i
  %.b96.i = load i1, ptr @carl9170_tx_bar_status.__warned, align 1
  br i1 %.b96.i, label %land.lhs.true10.i.do.end.i_crit_edge, label %if.then12.i21

land.lhs.true10.i.do.end.i_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then12.i21:                                    ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @carl9170_tx_bar_status.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 458, ptr noundef nonnull @.str.12) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then12.i21, %land.lhs.true10.i.do.end.i_crit_edge, %land.lhs.true7.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 115, i32 %conv.i20
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i22.for.cond.i_crit_edge, %do.end.i
  %entry3.0.in.i = phi ptr [ %arrayidx.i, %do.end.i ], [ %entry3.0.i, %for.body.i22.for.cond.i_crit_edge ]
  %41 = ptrtoint ptr %entry3.0.in.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %entry3.0.i = load volatile ptr, ptr %entry3.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry3.0.i, %arrayidx.i
  br i1 %cmp.not.i, label %do.end58.i, label %for.body.i22

for.body.i22:                                     ; preds = %for.cond.i
  %skb20.i = getelementptr inbounds %struct.carl9170_bar_list_entry, ptr %entry3.0.i, i32 0, i32 2
  %42 = ptrtoint ptr %skb20.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skb20.i, align 4
  %cmp21.i = icmp eq ptr %43, %skb
  br i1 %cmp21.i, label %if.then23.i, label %for.body.i22.for.cond.i_crit_edge

for.body.i22.for.cond.i_crit_edge:                ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then23.i:                                      ; preds = %for.body.i22
  %arrayidx24.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 116, i32 %conv.i20
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx24.i) #10
  %call.i.i.i23 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry3.0.i) #10
  br i1 %call.i.i.i23, label %if.end.i.i.i, label %if.then23.i.list_del_rcu.exit.i_crit_edge

if.then23.i.list_del_rcu.exit.i_crit_edge:        ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry3.0.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i, align 4
  %46 = ptrtoint ptr %entry3.0.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %entry3.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.then23.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry3.0.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx24.i) #10
  %tobool29.not.i = icmp eq ptr %entry3.0.i, null
  br i1 %tobool29.not.i, label %list_del_rcu.exit.i.out.i_crit_edge, label %do.end33.i

list_del_rcu.exit.i.out.i_crit_edge:              ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

do.end33.i:                                       ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %head.i = getelementptr inbounds %struct.carl9170_bar_list_entry, ptr %entry3.0.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %head.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #10
  br label %out.i

do.end58.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %ra.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %29, i32 1, i32 0, i32 3
  %ta.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %29, i32 1, i32 0, i32 7, i32 2
  %control.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %29, i32 1, i32 0, i32 8, i32 1
  %51 = ptrtoint ptr %control.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %control.i, align 1
  %conv61.i = zext i16 %52 to i32
  %start_seq_num.i = getelementptr inbounds %struct.ieee80211_bar, ptr %frame_data.i, i32 0, i32 5
  %53 = ptrtoint ptr %start_seq_num.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %start_seq_num.i, align 1
  %conv62.i = zext i16 %54 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 470, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %conv.i20, ptr noundef %ra.i, ptr noundef %ta.i, i32 noundef %conv61.i, i32 noundef %conv62.i) #10
  br label %out.i

out.i:                                            ; preds = %do.end58.i, %do.end33.i, %list_del_rcu.exit.i.out.i_crit_edge
  %call.i65 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i65, label %out.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i67

out.i.rcu_read_unlock.exit_crit_edge:             ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i67:                                ; preds = %out.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i66 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i66, label %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i67.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i67
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i68

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i68:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i68, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, %out.i.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %55 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i69 = add i32 %58, -1
  store volatile i32 %sub.i.i.i69, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %carl9170_tx_bar_status.exit

carl9170_tx_bar_status.exit:                      ; preds = %rcu_read_unlock.exit, %land.lhs.true.i.carl9170_tx_bar_status.exit_crit_edge, %carl9170_tx_accounting_free.exit.carl9170_tx_bar_status.exit_crit_edge
  br i1 %success, label %if.then, label %if.else

if.then:                                          ; preds = %carl9170_tx_bar_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cb.i, align 8
  %or = or i32 %60, 512
  store i32 %or, ptr %cb.i, align 8
  br label %if.end

if.else:                                          ; preds = %carl9170_tx_bar_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  %tx_ack_failures = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 85
  %61 = ptrtoint ptr %tx_ack_failures to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_ack_failures, align 8
  %inc = add i32 %62, 1
  store i32 %inc, ptr %tx_ack_failures, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %63 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cb.i, align 8
  %and = and i32 %64, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %65 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i, align 4
  %frame_data.i25 = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %66, i32 0, i32 2
  %67 = and i32 %64, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %67)
  %68 = icmp eq i32 %67, 64
  br i1 %68, label %if.end.i30, label %if.then3.if.end4_crit_edge

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.i30:                                       ; preds = %if.then3
  %69 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i.i26 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i.i.i.i27, align 4
  %add.i.i.i.i28 = add i32 %72, 1
  store volatile i32 %add.i.i.i.i28, ptr %preempt_count.i.i.i.i.i27, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i29 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i29, label %if.end.i30.rcu_read_lock.exit.i37_crit_edge, label %land.lhs.true.i.i33

if.end.i30.rcu_read_lock.exit.i37_crit_edge:      ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i37

land.lhs.true.i.i33:                              ; preds = %if.end.i30
  %call1.i.i31 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i31)
  %tobool.not.i.i32 = icmp eq i32 %call1.i.i31, 0
  br i1 %tobool.not.i.i32, label %land.lhs.true.i.i33.rcu_read_lock.exit.i37_crit_edge, label %land.lhs.true2.i.i35

land.lhs.true.i.i33.rcu_read_lock.exit.i37_crit_edge: ; preds = %land.lhs.true.i.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i37

land.lhs.true2.i.i35:                             ; preds = %land.lhs.true.i.i33
  %.b4.i.i34 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i34, label %land.lhs.true2.i.i35.rcu_read_lock.exit.i37_crit_edge, label %if.then.i.i36

land.lhs.true2.i.i35.rcu_read_lock.exit.i37_crit_edge: ; preds = %land.lhs.true2.i.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i37

if.then.i.i36:                                    ; preds = %land.lhs.true2.i.i35
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #10
  br label %rcu_read_lock.exit.i37

rcu_read_lock.exit.i37:                           ; preds = %if.then.i.i36, %land.lhs.true2.i.i35.rcu_read_lock.exit.i37_crit_edge, %land.lhs.true.i.i33.rcu_read_lock.exit.i37_crit_edge, %if.end.i30.rcu_read_lock.exit.i37_crit_edge
  %call.i = tail call fastcc ptr @__carl9170_get_tx_sta(ptr noundef %ar, ptr noundef %skb) #10
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %rcu_read_lock.exit.i37.out_rcu.i_crit_edge, label %if.end9.i, !prof !77

rcu_read_lock.exit.i37.out_rcu.i_crit_edge:       ; preds = %rcu_read_lock.exit.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rcu.i

if.end9.i:                                        ; preds = %rcu_read_lock.exit.i37
  %73 = ptrtoint ptr %frame_data.i25 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %frame_data.i25, align 2
  %75 = and i16 %74, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %75)
  %cmp.i.i.i.i = icmp eq i16 %75, 3
  %retval.0.v.i.i.i = select i1 %cmp.i.i.i.i, i32 30, i32 24
  %retval.0.i.i.i = getelementptr i8, ptr %frame_data.i25, i32 %retval.0.v.i.i.i
  %76 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %retval.0.i.i.i, align 1
  %78 = and i8 %77, 15
  %agg.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call.i, i32 1, i32 0, i32 3
  %idxprom.i = zext i8 %78 to i32
  %arrayidx.i38 = getelementptr [16 x ptr], ptr %agg.i, i32 0, i32 %idxprom.i
  %79 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %arrayidx.i38, align 4
  %call13.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true.i39, label %if.end9.i.do.end22.i_crit_edge

if.end9.i.do.end22.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

land.lhs.true.i39:                                ; preds = %if.end9.i
  %call15.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i39.do.end22.i_crit_edge, label %land.lhs.true17.i

land.lhs.true.i39.do.end22.i_crit_edge:           ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

land.lhs.true17.i:                                ; preds = %land.lhs.true.i39
  %.b151.i = load i1, ptr @carl9170_tx_status_process_ampdu.__warned, align 1
  br i1 %.b151.i, label %land.lhs.true17.i.do.end22.i_crit_edge, label %if.then19.i

land.lhs.true17.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

if.then19.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @carl9170_tx_status_process_ampdu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 400, ptr noundef nonnull @.str.14) #10
  br label %do.end22.i

do.end22.i:                                       ; preds = %if.then19.i, %land.lhs.true17.i.do.end22.i_crit_edge, %land.lhs.true.i39.do.end22.i_crit_edge, %if.end9.i.do.end22.i_crit_edge
  %tobool24.not.i = icmp eq ptr %80, null
  br i1 %tobool24.not.i, label %do.end22.i.out_rcu.i_crit_edge, label %if.end26.i

do.end22.i.out_rcu.i_crit_edge:                   ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rcu.i

if.end26.i:                                       ; preds = %do.end22.i
  %lock.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %80, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %state.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %82)
  %cmp.i40 = icmp ugt i32 %82, 4
  br i1 %cmp.i40, label %if.then33.i, label %if.end26.i.if.end35.i_crit_edge, !prof !78

if.end26.i.if.end35.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

if.then33.i:                                      ; preds = %if.end26.i
  %seq_ctrl.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %frame_data.i25, i32 0, i32 5
  %83 = ptrtoint ptr %seq_ctrl.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %seq_ctrl.i.i, align 2
  %85 = tail call i16 @llvm.bswap.i16(i16 %84) #10
  %86 = lshr i16 %85, 4
  %bsn.i.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %80, i32 0, i32 9
  %87 = ptrtoint ptr %bsn.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %bsn.i.i, align 4
  %sub.i.i41 = sub i16 %86, %88
  %and.i.i = and i16 %sub.i.i41, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %and.i.i)
  %cmp.i.i42 = icmp ugt i16 %and.i.i, 127
  br i1 %cmp.i.i42, label %land.rhs.i.i, label %if.end42.i.i

land.rhs.i.i:                                     ; preds = %if.then33.i
  %.b3.i.i = load i1, ptr @carl9170_tx_shift_bm.__already_done, align 1
  br i1 %.b3.i.i, label %land.rhs.i.i.if.end35.i_crit_edge, label %if.then.i152.i, !prof !78

land.rhs.i.i.if.end35.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

if.then.i152.i:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @carl9170_tx_shift_bm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 353, i32 noundef 9, ptr noundef null) #10
  br label %if.end35.i

if.end42.i.i:                                     ; preds = %if.then33.i
  %conv3.i.i = zext i16 %and.i.i to i32
  %bitmap.i.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %80, i32 0, i32 10
  %call.i153.i = tail call i32 @_test_and_clear_bit(i32 noundef %conv3.i.i, ptr noundef %bitmap.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153.i)
  %tobool45.not.i.i = icmp eq i32 %call.i153.i, 0
  br i1 %tobool45.not.i.i, label %land.rhs55.i.i, label %if.end42.i.i.if.end93.i.i_crit_edge

if.end42.i.i.if.end93.i.i_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.i.i

land.rhs55.i.i:                                   ; preds = %if.end42.i.i
  %.b2122.i.i = load i1, ptr @carl9170_tx_shift_bm.__already_done.15, align 1
  br i1 %.b2122.i.i, label %land.rhs55.i.i.if.end93.i.i_crit_edge, label %if.then66.i.i, !prof !78

land.rhs55.i.i.if.end93.i.i_crit_edge:            ; preds = %land.rhs55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.i.i

if.then66.i.i:                                    ; preds = %land.rhs55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @carl9170_tx_shift_bm.__already_done.15, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 362, i32 noundef 9, ptr noundef null) #10
  br label %if.end93.i.i

if.end93.i.i:                                     ; preds = %if.then66.i.i, %land.rhs55.i.i.if.end93.i.i_crit_edge, %if.end42.i.i.if.end93.i.i_crit_edge
  %snx.i.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %80, i32 0, i32 7
  %89 = ptrtoint ptr %snx.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %snx.i.i, align 4
  %91 = ptrtoint ptr %bsn.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %bsn.i.i, align 4
  %sub104.i.i = sub i16 %90, %92
  %and105.i.i = and i16 %sub104.i.i, 4095
  %conv108.i.i = zext i16 %and105.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %and105.i.i)
  %cmp109.i.i = icmp ugt i16 %and105.i.i, 127
  br i1 %cmp109.i.i, label %land.rhs118.i.i, label %bitmap_empty.exit.i.i

land.rhs118.i.i:                                  ; preds = %if.end93.i.i
  %.b2131.i.i = load i1, ptr @carl9170_tx_shift_bm.__already_done.16, align 1
  br i1 %.b2131.i.i, label %land.rhs118.i.i.if.end35.i_crit_edge, label %if.then129.i.i, !prof !78

land.rhs118.i.i.if.end35.i_crit_edge:             ; preds = %land.rhs118.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

if.then129.i.i:                                   ; preds = %land.rhs118.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @carl9170_tx_shift_bm.__already_done.16, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 365, i32 noundef 9, ptr noundef null) #10
  br label %if.end35.i

bitmap_empty.exit.i.i:                            ; preds = %if.end93.i.i
  %call.i.i.i43 = tail call i32 @_find_first_bit_be(ptr noundef %bitmap.i.i, i32 noundef %conv108.i.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i43, i32 %conv108.i.i)
  %cmp4.i.i.i = icmp eq i32 %call.i.i.i43, %conv108.i.i
  br i1 %cmp4.i.i.i, label %bitmap_empty.exit.i.i.if.end177.i.i_crit_edge, label %if.then171.i.i

bitmap_empty.exit.i.i.if.end177.i.i_crit_edge:    ; preds = %bitmap_empty.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177.i.i

if.then171.i.i:                                   ; preds = %bitmap_empty.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call175.i.i = tail call i32 @_find_first_bit_be(ptr noundef %bitmap.i.i, i32 noundef %conv108.i.i) #10
  %conv176.i.i = trunc i32 %call175.i.i to i16
  %.pre.i.i = and i32 %call175.i.i, 65535
  br label %if.end177.i.i

if.end177.i.i:                                    ; preds = %if.then171.i.i, %bitmap_empty.exit.i.i.if.end177.i.i_crit_edge
  %conv178.pre-phi.i.i = phi i32 [ %.pre.i.i, %if.then171.i.i ], [ %conv108.i.i, %bitmap_empty.exit.i.i.if.end177.i.i_crit_edge ]
  %off.0.i.i = phi i16 [ %conv176.i.i, %if.then171.i.i ], [ %and105.i.i, %bitmap_empty.exit.i.i.if.end177.i.i_crit_edge ]
  %93 = ptrtoint ptr %bsn.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %bsn.i.i, align 4
  %add.i.i = add i16 %94, %off.0.i.i
  %95 = and i16 %add.i.i, 4095
  store i16 %95, ptr %bsn.i.i, align 4
  tail call void @__bitmap_shift_right(ptr noundef %bitmap.i.i, ptr noundef %bitmap.i.i, i32 noundef %conv178.pre-phi.i.i, i32 noundef 128) #10
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end177.i.i, %if.then129.i.i, %land.rhs118.i.i.if.end35.i_crit_edge, %if.then.i152.i, %land.rhs.i.i.if.end35.i_crit_edge, %if.end26.i.if.end35.i_crit_edge
  %stats.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call.i, i32 1, i32 6, i32 1, i32 0, i32 3
  %arrayidx37.i = getelementptr [16 x %struct.carl9170_ba_stats], ptr %stats.i, i32 0, i32 %idxprom.i
  %clear.i = getelementptr [16 x %struct.carl9170_ba_stats], ptr %stats.i, i32 0, i32 %idxprom.i, i32 2
  %96 = ptrtoint ptr %clear.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %clear.i, align 2, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool38.not.i = icmp eq i8 %97, 0
  br i1 %tobool38.not.i, label %if.end35.i.if.end53.i_crit_edge, label %if.then39.i

if.end35.i.if.end53.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

if.then39.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %arrayidx37.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then39.i, %if.end35.i.if.end53.i_crit_edge
  %99 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx37.i, align 4
  %inc.i44 = add i8 %100, 1
  store i8 %inc.i44, ptr %arrayidx37.i, align 4
  %count.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %101 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  %bf.lshr.mask.i = and i16 %bf.load.i, -2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.lshr.mask.i)
  %cmp59.i = icmp eq i16 %bf.lshr.mask.i, 2048
  br i1 %cmp59.i, label %if.then61.i, label %if.end53.i.if.end67.i_crit_edge

if.end53.i.if.end67.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i

if.then61.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  %ampdu_ack_len65.i = getelementptr [16 x %struct.carl9170_ba_stats], ptr %stats.i, i32 0, i32 %idxprom.i, i32 1
  %102 = ptrtoint ptr %ampdu_ack_len65.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %ampdu_ack_len65.i, align 1
  %inc66.i = add i8 %103, 1
  store i8 %inc66.i, ptr %ampdu_ack_len65.i, align 1
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then61.i, %if.end53.i.if.end67.i_crit_edge
  %104 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cb.i, align 8
  %and69.i = and i32 %105, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %if.then71.i, label %if.end67.i.if.end76.i_crit_edge

if.end67.i.if.end76.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76.i

if.then71.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  %req75.i = getelementptr [16 x %struct.carl9170_ba_stats], ptr %stats.i, i32 0, i32 %idxprom.i, i32 3
  %106 = ptrtoint ptr %req75.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %req75.i, align 1
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then71.i, %if.end67.i.if.end76.i_crit_edge
  %mac_control.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %66, i32 0, i32 1, i32 1
  %107 = ptrtoint ptr %mac_control.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %mac_control.i, align 2
  %109 = and i16 %108, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool79.not.i = icmp eq i16 %109, 0
  br i1 %tobool79.not.i, label %if.end76.i.if.end104.i_crit_edge, label %if.then80.i

if.end76.i.if.end104.i_crit_edge:                 ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104.i

if.then80.i:                                      ; preds = %if.end76.i
  %110 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx37.i, align 4
  %rix.i = getelementptr inbounds %struct._carl9170_tx_superdesc, ptr %66, i32 0, i32 1
  %112 = ptrtoint ptr %rix.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %rix.i, align 2
  %ampdu_ack_len88.i = getelementptr [16 x %struct.carl9170_ba_stats], ptr %stats.i, i32 0, i32 %idxprom.i, i32 1
  %113 = ptrtoint ptr %ampdu_ack_len88.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %ampdu_ack_len88.i, align 1
  %cnt.i = getelementptr inbounds %struct._carl9170_tx_superdesc, ptr %66, i32 0, i32 2
  %115 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %cnt.i, align 1
  %116 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cb.i, align 8
  %or.i = or i32 %117, 1024
  store i32 %or.i, ptr %cb.i, align 8
  %req94.i = getelementptr [16 x %struct.carl9170_ba_stats], ptr %stats.i, i32 0, i32 %idxprom.i, i32 3
  %118 = ptrtoint ptr %req94.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %req94.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool95.not.i = icmp eq i8 %119, 0
  br i1 %tobool95.not.i, label %if.then80.i.if.end99.i_crit_edge, label %if.then96.i

if.then80.i.if.end99.i_crit_edge:                 ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99.i

if.then96.i:                                      ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #12
  %or98.i = or i32 %117, 3072
  %120 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %or98.i, ptr %cb.i, align 8
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then96.i, %if.then80.i.if.end99.i_crit_edge
  %121 = ptrtoint ptr %clear.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %clear.i, align 2
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.end99.i, %if.end76.i.if.end104.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %out_rcu.i

out_rcu.i:                                        ; preds = %if.end104.i, %do.end22.i.out_rcu.i_crit_edge, %rcu_read_lock.exit.i37.out_rcu.i_crit_edge
  %call.i154.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i154.i, label %out_rcu.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i157.i

out_rcu.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %out_rcu.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i157.i:                             ; preds = %out_rcu.i
  %call1.i155.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i155.i)
  %tobool.not.i156.i = icmp eq i32 %call1.i155.i, 0
  br i1 %tobool.not.i156.i, label %land.lhs.true.i157.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i159.i

land.lhs.true.i157.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i157.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i159.i:                            ; preds = %land.lhs.true.i157.i
  %.b4.i158.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i158.i, label %land.lhs.true2.i159.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i160.i

land.lhs.true2.i159.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i159.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i160.i:                                   ; preds = %land.lhs.true2.i159.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i160.i, %land.lhs.true2.i159.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i157.i.rcu_read_unlock.exit.i_crit_edge, %out_rcu.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %122 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i161.i = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i.i.i161.i to ptr
  %preempt_count.i.i.i.i162.i = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %preempt_count.i.i.i.i162.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %preempt_count.i.i.i.i162.i, align 4
  %sub.i.i.i.i = add i32 %125, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i162.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %if.end4

if.end4:                                          ; preds = %rcu_read_unlock.exit.i, %if.then3.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %126 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i.i45 = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i.i.i.i45 to ptr
  %preempt_count.i.i.i.i.i46 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %preempt_count.i.i.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %preempt_count.i.i.i.i.i46, align 4
  %add.i.i.i.i47 = add i32 %129, 1
  store volatile i32 %add.i.i.i.i47, ptr %preempt_count.i.i.i.i.i46, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i48 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i48, label %if.end4.rcu_read_lock.exit.i57_crit_edge, label %land.lhs.true.i.i51

if.end4.rcu_read_lock.exit.i57_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i57

land.lhs.true.i.i51:                              ; preds = %if.end4
  %call1.i.i49 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i49)
  %tobool.not.i.i50 = icmp eq i32 %call1.i.i49, 0
  br i1 %tobool.not.i.i50, label %land.lhs.true.i.i51.rcu_read_lock.exit.i57_crit_edge, label %land.lhs.true2.i.i53

land.lhs.true.i.i51.rcu_read_lock.exit.i57_crit_edge: ; preds = %land.lhs.true.i.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i57

land.lhs.true2.i.i53:                             ; preds = %land.lhs.true.i.i51
  %.b4.i.i52 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i52, label %land.lhs.true2.i.i53.rcu_read_lock.exit.i57_crit_edge, label %if.then.i.i54

land.lhs.true2.i.i53.rcu_read_lock.exit.i57_crit_edge: ; preds = %land.lhs.true2.i.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i57

if.then.i.i54:                                    ; preds = %land.lhs.true2.i.i53
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #10
  br label %rcu_read_lock.exit.i57

rcu_read_lock.exit.i57:                           ; preds = %if.then.i.i54, %land.lhs.true2.i.i53.rcu_read_lock.exit.i57_crit_edge, %land.lhs.true.i.i51.rcu_read_lock.exit.i57_crit_edge, %if.end4.rcu_read_lock.exit.i57_crit_edge
  %call.i55 = tail call fastcc ptr @__carl9170_get_tx_sta(ptr noundef %ar, ptr noundef %skb) #10
  %tobool.not.i56 = icmp eq ptr %call.i55, null
  br i1 %tobool.not.i56, label %rcu_read_lock.exit.i57.out_rcu.i62_crit_edge, label %if.end.i60, !prof !77

rcu_read_lock.exit.i57.out_rcu.i62_crit_edge:     ; preds = %rcu_read_lock.exit.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rcu.i62

if.end.i60:                                       ; preds = %rcu_read_lock.exit.i57
  %pending_frames.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call.i55, i32 1, i32 0, i32 1
  %call.i.i.i58 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_frames.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %pending_frames.i, i32 1, i32 3, i32 1) #10
  %130 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_frames.i, ptr %pending_frames.i, i32 1, ptr elementtype(i32) %pending_frames.i) #10, !srcloc !83
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %130, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i59 = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i59, label %if.then5.i, label %if.end.i60.out_rcu.i62_crit_edge

if.end.i60.out_rcu.i62_crit_edge:                 ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rcu.i62

if.then5.i:                                       ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #12
  %hw.i61 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %131 = ptrtoint ptr %hw.i61 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hw.i61, align 4
  tail call void @ieee80211_sta_block_awake(ptr noundef %132, ptr noundef nonnull %call.i55, i1 noundef zeroext false) #10
  br label %out_rcu.i62

out_rcu.i62:                                      ; preds = %if.then5.i, %if.end.i60.out_rcu.i62_crit_edge, %rcu_read_lock.exit.i57.out_rcu.i62_crit_edge
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10.i, label %out_rcu.i62.carl9170_tx_ps_unblock.exit_crit_edge, label %land.lhs.true.i13.i

out_rcu.i62.carl9170_tx_ps_unblock.exit_crit_edge: ; preds = %out_rcu.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_ps_unblock.exit

land.lhs.true.i13.i:                              ; preds = %out_rcu.i62
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.carl9170_tx_ps_unblock.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.carl9170_tx_ps_unblock.exit_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_ps_unblock.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.carl9170_tx_ps_unblock.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.carl9170_tx_ps_unblock.exit_crit_edge: ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_ps_unblock.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #10
  br label %carl9170_tx_ps_unblock.exit

carl9170_tx_ps_unblock.exit:                      ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.carl9170_tx_ps_unblock.exit_crit_edge, %land.lhs.true.i13.i.carl9170_tx_ps_unblock.exit_crit_edge, %out_rcu.i62.carl9170_tx_ps_unblock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %133 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i17.i = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i63 = add i32 %136, -1
  store volatile i32 %sub.i.i.i.i63, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %call5 = tail call i32 @carl9170_tx_put_skb(ptr noundef %skb)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_tx_callback(ptr noundef %ar, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %tx_total_pending = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 100
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_total_pending, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tx_total_pending, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_total_pending, ptr %tx_total_pending, i32 1, ptr elementtype(i32) %tx_total_pending) #10, !srcloc !88
  %1 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cb.i, align 8
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tx_ampdu_upload = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 98
  %call.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_ampdu_upload, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tx_ampdu_upload, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_ampdu_upload, ptr %tx_ampdu_upload, i32 1, ptr elementtype(i32) %tx_ampdu_upload) #10, !srcloc !88
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call i32 @carl9170_tx_put_skb(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %state.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 16, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then3.if.end4_crit_edge

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %usb_tasklet = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 16
  tail call void @__tasklet_hi_schedule(ptr noundef %usb_tasklet) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then.i, %if.then3.if.end4_crit_edge, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_tx_janitor(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %work, i32 -5856
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -6820
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %tx_janitor_last_run = getelementptr i8, ptr %work, i32 100
  %3 = ptrtoint ptr %tx_janitor_last_run to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tx_janitor_last_run, align 8
  %hw.i = getelementptr i8, ptr %work, i32 -5952
  %4 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw.i, align 4
  %queues30.i = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %queues30.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %queues30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp32.not.i = icmp eq i16 %7, 0
  br i1 %cmp32.not.i, label %if.end.carl9170_check_queue_stop_timeout.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.carl9170_check_queue_stop_timeout.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_check_queue_stop_timeout.exit

for.body.i:                                       ; preds = %next.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %restart.0.off034.i = phi i1 [ %restart.1.off0.i, %next.i.for.body.i_crit_edge ], [ false, %if.end.for.body.i_crit_edge ]
  %i.033.i = phi i32 [ %inc.i, %next.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ar9170, ptr %add.ptr, i32 0, i32 90, i32 %i.033.i
  %lock.i = getelementptr %struct.ar9170, ptr %add.ptr, i32 0, i32 90, i32 %i.033.i, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.i = icmp eq ptr %9, %arrayidx.i
  %tobool.not29.i = icmp eq ptr %9, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not29.i
  br i1 %tobool.not.i, label %for.body.i.next.i_crit_edge, label %if.end.i

for.body.i.next.i_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %next.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %rate_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 24
  %10 = ptrtoint ptr %rate_driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate_driver_data.i, align 4
  %add.i = add i32 %11, 550
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp6.i = icmp slt i32 %sub.i, 0
  %spec.select.i = select i1 %cmp6.i, i1 true, i1 %restart.0.off034.i
  br label %next.i

next.i:                                           ; preds = %if.end.i, %for.body.i.next.i_crit_edge
  %restart.1.off0.i = phi i1 [ %restart.0.off034.i, %for.body.i.next.i_crit_edge ], [ %spec.select.i, %if.end.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %13 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw.i, align 4
  %queues.i = getelementptr inbounds %struct.ieee80211_hw, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %queues.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %queues.i, align 4
  %conv.i = zext i16 %16 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %next.i.for.body.i_crit_edge, label %for.end.i

next.i.for.body.i_crit_edge:                      ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %next.i
  br i1 %restart.1.off0.i, label %if.then16.i, label %for.end.i.carl9170_check_queue_stop_timeout.exit_crit_edge

for.end.i.carl9170_check_queue_stop_timeout.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_check_queue_stop_timeout.exit

if.then16.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @carl9170_restart(ptr noundef %add.ptr, i32 noundef 4) #10
  br label %carl9170_check_queue_stop_timeout.exit

carl9170_check_queue_stop_timeout.exit:           ; preds = %if.then16.i, %for.end.i.carl9170_check_queue_stop_timeout.exit_crit_edge, %if.end.carl9170_check_queue_stop_timeout.exit_crit_edge
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i10 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i10, label %carl9170_check_queue_stop_timeout.exit.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

carl9170_check_queue_stop_timeout.exit.rcu_read_lock.exit.i_crit_edge: ; preds = %carl9170_check_queue_stop_timeout.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %carl9170_check_queue_stop_timeout.exit
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %carl9170_check_queue_stop_timeout.exit.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i11 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b75.i = load i1, ptr @carl9170_tx_ampdu_timeout.__warned, align 1
  br i1 %.b75.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @carl9170_tx_ampdu_timeout.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 612, ptr noundef nonnull @.str.12) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %tx_ampdu_list.i = getelementptr i8, ptr %work, i32 200
  %21 = ptrtoint ptr %tx_ampdu_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %iter.086.i = load volatile ptr, ptr %tx_ampdu_list.i, align 4
  %cmp.not87.i = icmp eq ptr %iter.086.i, %tx_ampdu_list.i
  br i1 %cmp.not87.i, label %do.end.i.for.end.i18_crit_edge, label %do.end.i.for.body.i12_crit_edge

do.end.i.for.body.i12_crit_edge:                  ; preds = %do.end.i
  br label %for.body.i12

do.end.i.for.end.i18_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i18

for.body.i12:                                     ; preds = %for.inc.i.for.body.i12_crit_edge, %do.end.i.for.body.i12_crit_edge
  %iter.088.i = phi ptr [ %iter.0.i, %for.inc.i.for.body.i12_crit_edge ], [ %iter.086.i, %do.end.i.for.body.i12_crit_edge ]
  %state.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %iter.088.i, i32 0, i32 4
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %cmp10.i = icmp ult i32 %23, 5
  br i1 %cmp10.i, label %for.body.i12.for.inc.i_crit_edge, label %if.end12.i

for.body.i12.for.inc.i_crit_edge:                 ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end12.i:                                       ; preds = %for.body.i12
  %lock.i13 = getelementptr inbounds %struct.carl9170_sta_tid, ptr %iter.088.i, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i13) #10
  %queue.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %iter.088.i, i32 0, i32 11
  %24 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %queue.i, align 4
  %cmp.i.i14 = icmp eq ptr %25, %queue.i
  %tobool14.not85.i = icmp eq ptr %25, null
  %tobool14.not.i = or i1 %cmp.i.i14, %tobool14.not85.i
  br i1 %tobool14.not.i, label %if.end12.i.unlock.i_crit_edge, label %if.end16.i

if.end12.i.unlock.i_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i

if.end16.i:                                       ; preds = %if.end12.i
  %rate_driver_data.i15 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 3, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %27 = ptrtoint ptr %rate_driver_data.i15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate_driver_data.i15, align 4
  %add.neg.i = add i32 %26, -26
  %sub.i16 = sub i32 %add.neg.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i16)
  %cmp19.i = icmp slt i32 %sub.i16, 0
  br i1 %cmp19.i, label %if.end16.i.unlock.i_crit_edge, label %if.end21.i

if.end16.i.unlock.i_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i

if.end21.i:                                       ; preds = %if.end16.i
  %sta22.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %iter.088.i, i32 0, i32 12
  %29 = ptrtoint ptr %sta22.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sta22.i, align 4
  %tobool23.not.i = icmp eq ptr %30, null
  br i1 %tobool23.not.i, label %do.end36.i, label %if.end52.critedge.i, !prof !77

do.end36.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 628, i32 noundef 9, ptr noundef null) #10
  br label %unlock.i

if.end52.critedge.i:                              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %tid.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %iter.088.i, i32 0, i32 5
  %31 = ptrtoint ptr %tid.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tid.i, align 4
  %conv.i17 = zext i8 %32 to i16
  %call53.i = tail call i32 @ieee80211_stop_tx_ba_session(ptr noundef nonnull %30, i16 noundef zeroext %conv.i17) #10
  br label %unlock.i

unlock.i:                                         ; preds = %if.end52.critedge.i, %do.end36.i, %if.end16.i.unlock.i_crit_edge, %if.end12.i.unlock.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i13) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %unlock.i, %for.body.i12.for.inc.i_crit_edge
  %33 = ptrtoint ptr %iter.088.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %iter.0.i = load volatile ptr, ptr %iter.088.i, align 4
  %cmp.not.i = icmp eq ptr %iter.0.i, %tx_ampdu_list.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i18_crit_edge, label %for.inc.i.for.body.i12_crit_edge

for.inc.i.for.body.i12_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i12

for.inc.i.for.end.i18_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i18

for.end.i18:                                      ; preds = %for.inc.i.for.end.i18_crit_edge, %do.end.i.for.end.i18_crit_edge
  %call.i76.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i76.i, label %for.end.i18.carl9170_tx_ampdu_timeout.exit_crit_edge, label %land.lhs.true.i79.i

for.end.i18.carl9170_tx_ampdu_timeout.exit_crit_edge: ; preds = %for.end.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_ampdu_timeout.exit

land.lhs.true.i79.i:                              ; preds = %for.end.i18
  %call1.i77.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77.i)
  %tobool.not.i78.i = icmp eq i32 %call1.i77.i, 0
  br i1 %tobool.not.i78.i, label %land.lhs.true.i79.i.carl9170_tx_ampdu_timeout.exit_crit_edge, label %land.lhs.true2.i81.i

land.lhs.true.i79.i.carl9170_tx_ampdu_timeout.exit_crit_edge: ; preds = %land.lhs.true.i79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_ampdu_timeout.exit

land.lhs.true2.i81.i:                             ; preds = %land.lhs.true.i79.i
  %.b4.i80.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i80.i, label %land.lhs.true2.i81.i.carl9170_tx_ampdu_timeout.exit_crit_edge, label %if.then.i82.i

land.lhs.true2.i81.i.carl9170_tx_ampdu_timeout.exit_crit_edge: ; preds = %land.lhs.true2.i81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_ampdu_timeout.exit

if.then.i82.i:                                    ; preds = %land.lhs.true2.i81.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #10
  br label %carl9170_tx_ampdu_timeout.exit

carl9170_tx_ampdu_timeout.exit:                   ; preds = %if.then.i82.i, %land.lhs.true2.i81.i.carl9170_tx_ampdu_timeout.exit_crit_edge, %land.lhs.true.i79.i.carl9170_tx_ampdu_timeout.exit_crit_edge, %for.end.i18.carl9170_tx_ampdu_timeout.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %34 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i83.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i83.i to ptr
  %preempt_count.i.i.i.i84.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i84.i, align 4
  %sub.i.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i84.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tx_total_queued = getelementptr i8, ptr %work, i32 220
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_total_queued, i32 noundef 4) #10
  %38 = ptrtoint ptr %tx_total_queued to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %tx_total_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not = icmp eq i32 %39, 0
  br i1 %tobool.not, label %carl9170_tx_ampdu_timeout.exit.cleanup_crit_edge, label %if.end2

carl9170_tx_ampdu_timeout.exit.cleanup_crit_edge: ; preds = %carl9170_tx_ampdu_timeout.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %carl9170_tx_ampdu_timeout.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %41, ptr noundef %work, i32 noundef 250) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %carl9170_tx_ampdu_timeout.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_tx_process_status(ptr noundef %ar, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ext = getelementptr inbounds %struct.anon.137, ptr %cmd, i32 0, i32 3
  %0 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ext, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp57.not = icmp eq i8 %1, 0
  br i1 %cmp57.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds %struct.carl9170_rsp, ptr %cmd, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end43.for.body_crit_edge ]
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cmd, align 4
  %5 = lshr i8 %4, 1
  %narrow = add nuw i8 %5, 1
  %add = zext i8 %narrow to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.058, i32 %add)
  %cmp4 = icmp ugt i32 %i.058, %add
  br i1 %cmp4, label %do.end, label %if.end43, !prof !77

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 695, i32 noundef 9, ptr noundef null) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @carl9170_tx_process_status.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@carl9170_tx_process_status, %if.then35)) #10
          to label %for.end [label %if.then35], !srcloc !89

if.then35:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd, align 4
  %conv38 = zext i8 %7 to i32
  %add39 = add nuw nsw i32 %conv38, 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %cmd, i32 noundef %add39, i1 noundef zeroext true) #10
  br label %for.end

if.end43:                                         ; preds = %for.body
  %arrayidx = getelementptr [0 x %struct._carl9170_tx_status], ptr %2, i32 0, i32 %i.058
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 2
  %info = getelementptr [0 x %struct._carl9170_tx_status], ptr %2, i32 0, i32 %i.058, i32 1
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %info, align 1
  tail call fastcc void @__carl9170_tx_process_status(ptr noundef %ar, i8 noundef zeroext %9, i8 noundef zeroext %11)
  %inc = add nuw nsw i32 %i.058, 1
  %12 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ext, align 1
  %conv = zext i8 %13 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end43.for.body_crit_edge, label %if.end43.for.end_crit_edge

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end43.for.end_crit_edge, %if.then35, %do.end, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__carl9170_tx_process_status(ptr noundef %ar, i8 noundef zeroext %cookie, i8 noundef zeroext %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %info to i32
  %and = and i8 %info, 3
  %sub.i = xor i8 %and, 3
  %conv2 = zext i8 %sub.i to i32
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 90, i32 %conv2
  %lock.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 90, i32 %conv2, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %skb.0.in.i = phi ptr [ %arrayidx, %entry ], [ %skb.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %skb.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %skb.0.i = load ptr, ptr %skb.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %skb.0.i, %arrayidx
  br i1 %cmp.not.i, label %carl9170_get_queued_skb.exit.thread, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %cookie1.i = getelementptr inbounds %struct._carl9170_tx_superdesc, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cookie1.i, align 4
  %cmp3.not.i = icmp eq i8 %4, %cookie
  br i1 %cmp3.not.i, label %carl9170_get_queued_skb.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

carl9170_get_queued_skb.exit.thread:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %cleanup

carl9170_get_queued_skb.exit:                     ; preds = %for.body.i
  %qlen.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 90, i32 %conv2, i32 1
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %7 = ptrtoint ptr %skb.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb.0.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon, ptr %skb.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %skb.0.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %prev17.i.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %10, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  tail call fastcc void @carl9170_release_dev_space(ptr noundef %ar, ptr noundef %skb.0.i) #10
  %tobool.not = icmp eq ptr %skb.0.i, null
  br i1 %tobool.not, label %carl9170_get_queued_skb.exit.cleanup_crit_edge, label %if.end

carl9170_get_queued_skb.exit.cleanup_crit_edge:   ; preds = %carl9170_get_queued_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %carl9170_get_queued_skb.exit
  %and6 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp ne i32 %and6, 0
  %and11 = lshr i32 %conv, 2
  %13 = and i32 %and11, 3
  %14 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp1.i = icmp slt i8 %16, 0
  br i1 %cmp1.i, label %if.end.for.body14.i.preheader_crit_edge, label %if.end.i

if.end.for.body14.i.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i.preheader

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3.i = icmp eq i32 %13, 0
  br i1 %cmp3.i, label %if.end.i.for.end.i29_crit_edge, label %for.inc.i

if.end.i.for.end.i29_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i29

for.inc.i:                                        ; preds = %if.end.i
  %arrayidx.1.i = getelementptr %struct.sk_buff, ptr %skb.0.i, i32 0, i32 3, i32 11
  %17 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp1.1.i = icmp slt i8 %18, 0
  br i1 %cmp1.1.i, label %for.inc.i.for.body14.i.preheader_crit_edge, label %if.end.1.i

for.inc.i.for.body14.i.preheader_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i.preheader

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp3.1.i = icmp eq i32 %13, 1
  br i1 %cmp3.1.i, label %if.end.1.i.for.end.i29_crit_edge, label %for.inc.1.i

if.end.1.i.for.end.i29_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i29

for.inc.1.i:                                      ; preds = %if.end.1.i
  %arrayidx.2.i = getelementptr %struct.sk_buff, ptr %skb.0.i, i32 0, i32 3, i32 14
  %19 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp1.2.i = icmp slt i8 %20, 0
  br i1 %cmp1.2.i, label %for.inc.1.i.for.body14.i.preheader_crit_edge, label %if.end.2.i

for.inc.1.i.for.body14.i.preheader_crit_edge:     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i.preheader

if.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp3.2.i = icmp eq i32 %13, 2
  br i1 %cmp3.2.i, label %if.end.2.i.for.end.i29_crit_edge, label %for.inc.2.i

if.end.2.i.for.end.i29_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i29

for.inc.2.i:                                      ; preds = %if.end.2.i
  %arrayidx.3.i = getelementptr %struct.sk_buff, ptr %skb.0.i, i32 0, i32 3, i32 17
  %21 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp1.3.i = icmp slt i8 %22, 0
  br i1 %cmp1.3.i, label %for.inc.2.i.for.body14.i.preheader_crit_edge, label %for.inc.2.i.for.end.i29_crit_edge

for.inc.2.i.for.end.i29_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i29

for.inc.2.i.for.body14.i.preheader_crit_edge:     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i.preheader

for.end.i29:                                      ; preds = %for.inc.2.i.for.end.i29_crit_edge, %if.end.2.i.for.end.i29_crit_edge, %if.end.1.i.for.end.i29_crit_edge, %if.end.i.for.end.i29_crit_edge
  %23 = lshr i8 %info, 4
  %24 = and i8 %23, 7
  %conv6.i = zext i8 %24 to i16
  %count.i = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %14, i32 0, i32 %13, i32 1
  %25 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  %bf.shl.i = shl nuw nsw i16 %conv6.i, 11
  %bf.clear.i = and i16 %bf.load.i, 2047
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  store i16 %bf.set.i, ptr %count.i, align 1
  %inc.i = add nuw nsw i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp123.i.not = icmp eq i32 %13, 3
  br i1 %cmp123.i.not, label %for.end.i29.carl9170_tx_fill_rateinfo.exit_crit_edge, label %for.end.i29.for.body14.i.preheader_crit_edge

for.end.i29.for.body14.i.preheader_crit_edge:     ; preds = %for.end.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i.preheader

for.end.i29.carl9170_tx_fill_rateinfo.exit_crit_edge: ; preds = %for.end.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_fill_rateinfo.exit

for.body14.i.preheader:                           ; preds = %for.end.i29.for.body14.i.preheader_crit_edge, %for.inc.2.i.for.body14.i.preheader_crit_edge, %for.inc.1.i.for.body14.i.preheader_crit_edge, %for.inc.i.for.body14.i.preheader_crit_edge, %if.end.for.body14.i.preheader_crit_edge
  %i.24.i.ph = phi i32 [ 0, %if.end.for.body14.i.preheader_crit_edge ], [ 1, %for.inc.i.for.body14.i.preheader_crit_edge ], [ 2, %for.inc.1.i.for.body14.i.preheader_crit_edge ], [ 3, %for.inc.2.i.for.body14.i.preheader_crit_edge ], [ %inc.i, %for.end.i29.for.body14.i.preheader_crit_edge ]
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.body14.i.for.body14.i_crit_edge, %for.body14.i.preheader
  %i.24.i = phi i32 [ %inc25.i, %for.body14.i.for.body14.i_crit_edge ], [ %i.24.i.ph, %for.body14.i.preheader ]
  %arrayidx16.i = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %14, i32 0, i32 %i.24.i
  %26 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %arrayidx16.i, align 1
  %count20.i = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %14, i32 0, i32 %i.24.i, i32 1
  %27 = ptrtoint ptr %count20.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %bf.load21.i = load i16, ptr %count20.i, align 1
  %bf.clear22.i = and i16 %bf.load21.i, 2047
  store i16 %bf.clear22.i, ptr %count20.i, align 1
  %inc25.i = add i32 %i.24.i, 1
  %exitcond.not.i = icmp eq i32 %inc25.i, 4
  br i1 %exitcond.not.i, label %for.body14.i.carl9170_tx_fill_rateinfo.exit_crit_edge, label %for.body14.i.for.body14.i_crit_edge

for.body14.i.for.body14.i_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i

for.body14.i.carl9170_tx_fill_rateinfo.exit_crit_edge: ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_fill_rateinfo.exit

carl9170_tx_fill_rateinfo.exit:                   ; preds = %for.body14.i.carl9170_tx_fill_rateinfo.exit_crit_edge, %for.end.i29.carl9170_tx_fill_rateinfo.exit_crit_edge
  tail call void @carl9170_tx_status(ptr noundef %ar, ptr noundef nonnull %skb.0.i, i1 noundef zeroext %tobool7.not)
  br label %cleanup

cleanup:                                          ; preds = %carl9170_tx_fill_rateinfo.exit, %carl9170_get_queued_skb.exit.cleanup_crit_edge, %carl9170_get_queued_skb.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_tx_drop(ptr noundef %ar, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_dropped = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 84
  %0 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %tx_dropped, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %4 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %queue_mapping.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @modparam_noht to i32))
  %6 = load i32, ptr @modparam_noht, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  %7 = trunc i16 %5 to i8
  %.op = sub i8 3, %7
  %.op.op = and i8 %.op, 3
  %8 = select i1 %tobool.not.i.i, i8 1, i8 %.op.op, !prof !78
  %cookie = getelementptr inbounds %struct._carl9170_tx_superdesc, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %cookie to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cookie, align 4
  tail call fastcc void @__carl9170_tx_process_status(ptr noundef %ar, i8 noundef zeroext %10, i8 noundef zeroext %8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_op_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %control, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %control, align 4
  %state = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ult i32 %5, 3
  br i1 %cmp, label %entry.err_free_crit_edge, label %if.end, !prof !77

entry.err_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end:                                           ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %vif4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %6 = ptrtoint ptr %vif4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vif4, align 8
  %queue_mapping.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %8 = ptrtoint ptr %queue_mapping.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %queue_mapping.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @modparam_noht to i32))
  %10 = load i32, ptr @modparam_noht, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  %11 = trunc i16 %9 to i8
  %.op.i = sub i8 3, %11
  %sub.i.i = select i1 %tobool.not.i.i.i, i8 1, i8 %.op.i, !prof !78
  %conv11.i = zext i8 %sub.i.i to i16
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len13.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %call18.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 32) #10
  %16 = call ptr @memset(ptr %call18.i, i32 0, i32 32)
  %misc.i = getelementptr inbounds %struct._carl9170_tx_superdesc, ptr %call18.i, i32 0, i32 5
  %and20.i = and i8 %sub.i.i, 3
  %17 = ptrtoint ptr %misc.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %and20.i, ptr %misc.i, align 2
  br i1 %tobool.not.i, label %if.end.if.end42.i_crit_edge, label %if.then31.i, !prof !77

if.end.if.end42.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

if.then31.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %id.i = getelementptr inbounds %struct.ieee80211_vif, ptr %7, i32 1, i32 1, i32 1
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i, align 4
  %.tr.i = trunc i32 %19 to i8
  %20 = shl i8 %.tr.i, 3
  %21 = and i8 %20, 56
  %conv39.i = or i8 %21, %and20.i
  %22 = ptrtoint ptr %misc.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv39.i, ptr %misc.i, align 2
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then31.i, %if.end.if.end42.i_crit_edge
  %23 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cb.i, align 8
  %and43.i = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.end42.i.if.end57.i_crit_edge, label %if.then51.i, !prof !78

if.end42.i.if.end57.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i

if.then51.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %misc.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %misc.i, align 2
  %27 = or i8 %26, -128
  store i8 %27, ptr %misc.i, align 2
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then51.i, %if.end42.i.if.end57.i_crit_edge
  %28 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cb.i, align 8
  %and59.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %if.end57.i.if.end73.i_crit_edge, label %if.then67.i, !prof !78

if.end57.i.if.end73.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.i

if.then67.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %misc.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %misc.i, align 2
  %32 = or i8 %31, 4
  store i8 %32, ptr %misc.i, align 2
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then67.i, %if.end57.i.if.end73.i_crit_edge
  %33 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %13, align 2
  %35 = and i16 %34, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %35)
  %cmp.i.i = icmp eq i16 %35, 20480
  br i1 %cmp.i.i, label %if.then81.i, label %if.end73.i.if.end87.i_crit_edge, !prof !77

if.end73.i.if.end87.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i

if.then81.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %misc.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %misc.i, align 2
  %38 = or i8 %37, 64
  store i8 %38, ptr %misc.i, align 2
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then81.i, %if.end73.i.if.end87.i_crit_edge
  %39 = shl nuw nsw i16 %conv11.i, 2
  %40 = and i16 %39, 12
  %or93.i = or i16 %40, 2050
  %41 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cb.i, align 8
  %and96.i = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i)
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  br i1 %tobool97.not.i, label %if.end87.i.if.end108.i_crit_edge, label %if.then104.i, !prof !78

if.end87.i.if.end108.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108.i

if.then104.i:                                     ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = or i16 %40, 3074
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then104.i, %if.end87.i.if.end108.i_crit_edge
  %mac_tmp.0.i = phi i16 [ %43, %if.then104.i ], [ %or93.i, %if.end87.i.if.end108.i_crit_edge ]
  %hw_key.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %44 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw_key.i, align 4
  %tobool109.not.i = icmp eq ptr %45, null
  br i1 %tobool109.not.i, label %if.end108.i.if.end147.i_crit_edge, label %if.then110.i

if.end108.i.if.end147.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147.i

if.then110.i:                                     ; preds = %if.end108.i
  %icv_len.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %icv_len.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %icv_len.i, align 4
  %conv112.i = zext i8 %47 to i32
  %conv113.i = and i32 %15, 65535
  %add.i = add nuw nsw i32 %conv113.i, %conv112.i
  %cipher.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cipher.i, align 8
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i32 %49, label %do.end134.i [
    i32 1027073, label %if.then110.i.sw.bb.i_crit_edge
    i32 1027077, label %if.then110.i.sw.bb.i_crit_edge80
    i32 1027074, label %if.then110.i.sw.bb.i_crit_edge81
    i32 1027076, label %sw.bb119.i
  ]

if.then110.i.sw.bb.i_crit_edge81:                 ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then110.i.sw.bb.i_crit_edge80:                 ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then110.i.sw.bb.i_crit_edge:                   ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then110.i.sw.bb.i_crit_edge, %if.then110.i.sw.bb.i_crit_edge80, %if.then110.i.sw.bb.i_crit_edge81
  %51 = or i16 %mac_tmp.0.i, 16384
  br label %if.end147.i

sw.bb119.i:                                       ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = or i16 %mac_tmp.0.i, -16384
  br label %if.end147.i

do.end134.i:                                      ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1036, i32 noundef 9, ptr noundef null) #10
  br label %carl9170_tx_prepare.exit

if.end147.i:                                      ; preds = %sw.bb119.i, %sw.bb.i, %if.end108.i.if.end147.i_crit_edge
  %mac_tmp.1.i = phi i16 [ %52, %sw.bb119.i ], [ %51, %sw.bb.i ], [ %mac_tmp.0.i, %if.end108.i.if.end147.i_crit_edge ]
  %len.0.i = phi i32 [ %add.i, %sw.bb119.i ], [ %add.i, %sw.bb.i ], [ %15, %if.end108.i.if.end147.i_crit_edge ]
  %and149.i = and i32 %42, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i)
  %tobool150.not.i = icmp eq i32 %and149.i, 0
  br i1 %tobool150.not.i, label %if.end147.i.if.end14_crit_edge, label %if.then151.i

if.end147.i.if.end14_crit_edge:                   ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then151.i:                                     ; preds = %if.end147.i
  %tobool152.not.i = icmp eq ptr %3, null
  %spec.select.i = select i1 %tobool152.not.i, i1 true, i1 %tobool.not.i, !prof !77
  br i1 %spec.select.i, label %if.then151.i.carl9170_tx_prepare.exit_crit_edge, label %cleanup.thread.i, !prof !77

if.then151.i.carl9170_tx_prepare.exit_crit_edge:  ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_prepare.exit

cleanup.thread.i:                                 ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #12
  %ampdu_factor.i = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 3, i32 2
  %53 = ptrtoint ptr %ampdu_factor.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ampdu_factor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp.i = icmp ugt i8 %54, 1
  %phi.bo.i = shl i8 %54, 3
  %phi.bo270.i = and i8 %phi.bo.i, 24
  %cond.i = select i1 %cmp.i, i8 8, i8 %phi.bo270.i
  %ampdu_density.i = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 3, i32 3
  %55 = ptrtoint ptr %ampdu_density.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ampdu_density.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool169.not.i = icmp eq i8 %56, 0
  %add171.i = add i8 %56, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %56)
  %cmp173.inv.i = icmp ult i8 %56, 7
  %ampdu_settings.i = getelementptr inbounds %struct._carl9170_tx_superdesc, ptr %call18.i, i32 0, i32 4
  %57 = ptrtoint ptr %ampdu_settings.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ampdu_settings.i, align 1
  %59 = and i8 %58, -32
  %add171.op.i = and i8 %add171.i, 7
  %cond178.op.i = select i1 %cmp173.inv.i, i8 7, i8 %add171.op.i
  %60 = select i1 %tobool169.not.i, i8 0, i8 %cond178.op.i
  %conv186.i = or i8 %cond.i, %59
  %or195.i = or i8 %conv186.i, %60
  store i8 %or195.i, ptr %ampdu_settings.i, align 1
  br label %if.end14

carl9170_tx_prepare.exit:                         ; preds = %if.then151.i.carl9170_tx_prepare.exit_crit_edge, %do.end134.i
  %call211.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 32) #10
  br label %err_free

if.end14:                                         ; preds = %cleanup.thread.i, %if.end147.i.if.end14_crit_edge
  %61 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len13.i, align 4
  %conv202.i = trunc i32 %62 to i16
  %63 = tail call i16 @llvm.bswap.i16(i16 %conv202.i) #10
  %64 = ptrtoint ptr %call18.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %call18.i, align 4
  %65 = trunc i32 %len.0.i to i16
  %conv207.i = add i16 %65, 4
  %66 = tail call i16 @llvm.bswap.i16(i16 %conv207.i) #10
  %f.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %call18.i, i32 0, i32 1
  %67 = ptrtoint ptr %f.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %f.i, align 4
  %mac_control.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %call18.i, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %mac_control.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %mac_tmp.1.i, ptr %mac_control.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %70 = ptrtoint ptr %vif4 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %vif4, align 4
  %71 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %1, ptr %hw_key.i, align 4
  %ref.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #10
  %72 = ptrtoint ptr %ref.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 1, ptr %ref.i, align 4
  %tx_total_queued.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 101
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_total_queued.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tx_total_queued.i, i32 1, i32 3, i32 1) #10
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_total_queued.i, ptr %tx_total_queued.i, i32 1, ptr elementtype(i32) %tx_total_queued.i) #10, !srcloc !90
  %74 = ptrtoint ptr %queue_mapping.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %queue_mapping.i.i.i, align 8
  %conv.i = zext i16 %75 to i32
  %tx_stats_lock.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 74
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_stats_lock.i) #10
  %arrayidx.i = getelementptr %struct.ar9170, ptr %1, i32 0, i32 75, i32 %conv.i
  %len.i = getelementptr %struct.ar9170, ptr %1, i32 0, i32 75, i32 %conv.i, i32 2
  %76 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len.i, align 4
  %inc.i = add i32 %77, 1
  store i32 %inc.i, ptr %len.i, align 4
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i, align 4
  %inc3.i = add i32 %79, 1
  store i32 %inc3.i, ptr %arrayidx.i, align 4
  %mem_block_size.i.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 26, i32 16
  %80 = ptrtoint ptr %mem_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mem_block_size.i.i, align 4
  %sub.i.i56 = add i32 %81, 2351
  %div.i.i = udiv i32 %sub.i.i56, %81
  %mem_free_blocks.i.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 108
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mem_free_blocks.i.i, i32 noundef 4) #10
  %82 = ptrtoint ptr %mem_free_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %mem_free_blocks.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %83)
  %cmp.i.i57 = icmp ugt i32 %div.i.i, %83
  %hw.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 1
  %84 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw.i, align 4
  %queues35.i = getelementptr inbounds %struct.ieee80211_hw, ptr %85, i32 0, i32 11
  %86 = ptrtoint ptr %queues35.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %queues35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %cmp37.not.i = icmp eq i16 %87, 0
  br i1 %cmp37.not.i, label %if.end14.carl9170_tx_accounting.exit_crit_edge, label %if.end14.for.body.i_crit_edge

if.end14.for.body.i_crit_edge:                    ; preds = %if.end14
  br label %for.body.i

if.end14.carl9170_tx_accounting.exit_crit_edge:   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_accounting.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end14.for.body.i_crit_edge
  %88 = phi ptr [ %96, %for.inc.i.for.body.i_crit_edge ], [ %85, %if.end14.for.body.i_crit_edge ]
  %i.038.i = phi i32 [ %inc17.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end14.for.body.i_crit_edge ]
  br i1 %cmp.i.i57, label %for.body.i.if.then.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %len10.i = getelementptr %struct.ar9170, ptr %1, i32 0, i32 75, i32 %i.038.i, i32 2
  %89 = ptrtoint ptr %len10.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len10.i, align 4
  %limit.i = getelementptr %struct.ar9170, ptr %1, i32 0, i32 75, i32 %i.038.i, i32 1
  %91 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp13.not.i = icmp ult i32 %90, %92
  br i1 %cmp13.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  tail call void @ieee80211_stop_queue(ptr noundef %88, i32 noundef %i.038.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %arrayidx16.i = getelementptr %struct.ar9170, ptr %1, i32 0, i32 32, i32 %i.038.i
  %94 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx16.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %inc17.i = add nuw nsw i32 %i.038.i, 1
  %95 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw.i, align 4
  %queues.i = getelementptr inbounds %struct.ieee80211_hw, ptr %96, i32 0, i32 11
  %97 = ptrtoint ptr %queues.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %queues.i, align 4
  %conv5.i = zext i16 %98 to i32
  %cmp.i58 = icmp ult i32 %inc17.i, %conv5.i
  br i1 %cmp.i58, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.carl9170_tx_accounting.exit_crit_edge

for.inc.i.carl9170_tx_accounting.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_accounting.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

carl9170_tx_accounting.exit:                      ; preds = %for.inc.i.carl9170_tx_accounting.exit_crit_edge, %if.end14.carl9170_tx_accounting.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_stats_lock.i) #10
  %tobool15.not = icmp eq ptr %3, null
  br i1 %tobool15.not, label %carl9170_tx_accounting.exit.if.end17_crit_edge, label %if.then16

carl9170_tx_accounting.exit.if.end17_crit_edge:   ; preds = %carl9170_tx_accounting.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %carl9170_tx_accounting.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pending_frames = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_frames, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %pending_frames, i32 1, i32 3, i32 1) #10
  %99 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_frames, ptr %pending_frames, i32 1, ptr elementtype(i32) %pending_frames) #10, !srcloc !90
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %carl9170_tx_accounting.exit.if.end17_crit_edge
  %100 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cb.i, align 8
  %and = and i32 %101, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end17
  %102 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data.i, align 4
  %frame_data.i.i.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %frame_data.i.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %frame_data.i.i.i, align 2
  %106 = and i16 %105, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %106)
  %cmp.i.i.i.i.i = icmp eq i16 %106, 3
  %retval.0.v.i.i.i.i = select i1 %cmp.i.i.i.i.i, i32 30, i32 24
  %retval.0.i.i.i.i = getelementptr i8, ptr %frame_data.i.i.i, i32 %retval.0.v.i.i.i.i
  %107 = ptrtoint ptr %retval.0.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %retval.0.i.i.i.i, align 1
  %109 = and i8 %108, 15
  %seq_ctrl.i.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %frame_data.i.i.i, i32 0, i32 5
  %110 = ptrtoint ptr %seq_ctrl.i.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %seq_ctrl.i.i.i, align 2
  %112 = tail call i16 @llvm.bswap.i16(i16 %111) #10
  %113 = lshr i16 %112, 4
  %114 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i.i = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %117, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i59 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i59, label %if.then19.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then19.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then19
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then19.rcu_read_lock.exit.i_crit_edge
  %agg2.i = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 1, i32 0, i32 3
  %idxprom.i = zext i8 %109 to i32
  %arrayidx.i60 = getelementptr [16 x ptr], ptr %agg2.i, i32 0, i32 %idxprom.i
  %118 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile ptr, ptr %arrayidx.i60, align 4
  %call4.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i61 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i61, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b264.i = load i1, ptr @carl9170_tx_ampdu_queue.__warned, align 1
  br i1 %.b264.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i62

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

if.then.i62:                                      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @carl9170_tx_ampdu_queue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1410, ptr noundef nonnull @.str.14) #10
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i62, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %tobool12.not.i = icmp eq ptr %119, null
  br i1 %tobool12.not.i, label %do.end10.i.err_unlock_rcu.i_crit_edge, label %if.end14.i

do.end10.i.err_unlock_rcu.i_crit_edge:            ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unlock_rcu.i

if.end14.i:                                       ; preds = %do.end10.i
  %lock.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %119, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %state.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %121)
  %cmp.i63 = icmp ult i32 %121, 5
  br i1 %cmp.i63, label %if.end14.i.err_unlock.i_crit_edge, label %if.end18.i, !prof !77

if.end14.i.err_unlock.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unlock.i

if.end18.i:                                       ; preds = %if.end14.i
  %conv.i64 = zext i16 %113 to i32
  %bsn.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %119, i32 0, i32 9
  %122 = ptrtoint ptr %bsn.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %bsn.i, align 4
  %conv19.i = zext i16 %123 to i32
  %sub.i = sub nsw i32 %conv.i64, %conv19.i
  %and.i = and i32 %sub.i, 3968
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp20.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp20.not.i, label %if.end31.i, label %if.end18.i.err_unlock.i_crit_edge, !prof !78

if.end18.i.err_unlock.i_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unlock.i

if.end31.i:                                       ; preds = %if.end18.i
  %snx.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %119, i32 0, i32 7
  %124 = ptrtoint ptr %snx.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %snx.i, align 4
  %conv33.i = zext i16 %125 to i32
  %sub34.i = sub nsw i32 %conv.i64, %conv33.i
  %and35.i = and i32 %sub34.i, 3968
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %cmp36.not.i = icmp eq i32 %and35.i, 0
  br i1 %cmp36.not.i, label %if.end91.critedge.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end31.i
  %.b260263.i = load i1, ptr @carl9170_tx_ampdu_queue.__already_done, align 1
  br i1 %.b260263.i, label %land.rhs.i.err_unlock.i_crit_edge, label %land.rhs.i.err_unlock.sink.split.i_crit_edge, !prof !78

land.rhs.i.err_unlock.sink.split.i_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unlock.sink.split.i

land.rhs.i.err_unlock.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unlock.i

if.end91.critedge.i:                              ; preds = %if.end31.i
  %sub95.i = sub i16 %113, %123
  %and96.i65 = and i16 %sub95.i, 4095
  %conv99.i = zext i16 %and96.i65 to i32
  %bitmap.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %119, i32 0, i32 10
  %call101.i = tail call i32 @_test_and_set_bit(i32 noundef %conv99.i, ptr noundef %bitmap.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101.i)
  %tobool102.not.i = icmp eq i32 %call101.i, 0
  br i1 %tobool102.not.i, label %if.end158.critedge.i, label %land.rhs110.i

land.rhs110.i:                                    ; preds = %if.end91.critedge.i
  %.b261262.i = load i1, ptr @carl9170_tx_ampdu_queue.__already_done.18, align 1
  br i1 %.b261262.i, label %land.rhs110.i.err_unlock.i_crit_edge, label %land.rhs110.i.err_unlock.sink.split.i_crit_edge, !prof !78

land.rhs110.i.err_unlock.sink.split.i_crit_edge:  ; preds = %land.rhs110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unlock.sink.split.i

land.rhs110.i.err_unlock.i_crit_edge:             ; preds = %land.rhs110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unlock.i

if.end158.critedge.i:                             ; preds = %if.end91.critedge.i
  %hsn.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %119, i32 0, i32 8
  %126 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %hsn.i, align 2
  %conv160.i = zext i16 %127 to i32
  %sub161.i = sub nsw i32 %conv.i64, %conv160.i
  %and162.i = and i32 %sub161.i, 3968
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162.i)
  %cmp163.i = icmp eq i32 %and162.i, 0
  %queue.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %119, i32 0, i32 11
  %prev.i.i.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %119, i32 0, i32 11, i32 0, i32 0, i32 1
  %128 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %prev.i.i.i, align 4
  br i1 %cmp163.i, label %if.then171.i, label %if.end173.i, !prof !78

if.then171.i:                                     ; preds = %if.end158.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %queue.i, ptr %skb, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 1
  %131 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %129, ptr %prev10.i.i.i.i, align 4
  %132 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %skb, ptr %prev.i.i.i, align 4
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %skb, ptr %129, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %119, i32 0, i32 11, i32 1
  %134 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i270.i = add i32 %135, 1
  store volatile i32 %add.i.i.i270.i, ptr %qlen.i.i.i.i, align 4
  %136 = ptrtoint ptr %hsn.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %113, ptr %hsn.i, align 2
  br label %queued.i

if.end173.i:                                      ; preds = %if.end158.critedge.i
  %cmp176.not302.i = icmp eq ptr %129, %queue.i
  br i1 %cmp176.not302.i, label %if.end173.i.for.end.i_crit_edge, label %if.end173.i.for.body.i66_crit_edge

if.end173.i.for.body.i66_crit_edge:               ; preds = %if.end173.i
  br label %for.body.i66

if.end173.i.for.end.i_crit_edge:                  ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i66:                                     ; preds = %for.inc.i67.for.body.i66_crit_edge, %if.end173.i.for.body.i66_crit_edge
  %iter.0303.i = phi ptr [ %iter.0.i, %for.inc.i67.for.body.i66_crit_edge ], [ %129, %if.end173.i.for.body.i66_crit_edge ]
  %data.i.i271.i = getelementptr inbounds %struct.sk_buff, ptr %iter.0303.i, i32 0, i32 19
  %137 = ptrtoint ptr %data.i.i271.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data.i.i271.i, align 4
  %frame_data.i.i272.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %138, i32 0, i32 2
  %seq_ctrl.i.i273.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %frame_data.i.i272.i, i32 0, i32 5
  %139 = ptrtoint ptr %seq_ctrl.i.i273.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %seq_ctrl.i.i273.i, align 2
  %141 = tail call i16 @llvm.bswap.i16(i16 %140) #10
  %142 = lshr i16 %141, 4
  %conv180.i = zext i16 %142 to i32
  %sub181.i = sub nsw i32 %conv.i64, %conv180.i
  %and182.i = and i32 %sub181.i, 3968
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182.i)
  %cmp183.i = icmp eq i32 %and182.i, 0
  br i1 %cmp183.i, label %if.then185.i, label %for.inc.i67

if.then185.i:                                     ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #12
  %143 = ptrtoint ptr %iter.0303.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %iter.0303.i, align 4
  %145 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %144, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 1
  %146 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %iter.0303.i, ptr %prev10.i.i.i, align 4
  %prev17.i.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %144, i32 0, i32 1
  %147 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %skb, ptr %prev17.i.i.i, align 4
  store volatile ptr %skb, ptr %iter.0303.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %119, i32 0, i32 11, i32 1
  %148 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %149, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %queued.i

for.inc.i67:                                      ; preds = %for.body.i66
  %prev188.i = getelementptr inbounds %struct.anon, ptr %iter.0303.i, i32 0, i32 1
  %150 = ptrtoint ptr %prev188.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %iter.0.i = load ptr, ptr %prev188.i, align 4
  %cmp176.not.i = icmp eq ptr %iter.0.i, %queue.i
  br i1 %cmp176.not.i, label %for.inc.i67.for.end.i_crit_edge, label %for.inc.i67.for.body.i66_crit_edge

for.inc.i67.for.body.i66_crit_edge:               ; preds = %for.inc.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i66

for.inc.i67.for.end.i_crit_edge:                  ; preds = %for.inc.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i67.for.end.i_crit_edge, %if.end173.i.for.end.i_crit_edge
  %151 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %queue.i, align 4
  %153 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile ptr %152, ptr %skb, align 8
  %prev10.i.i.i274.i = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 1
  %154 = ptrtoint ptr %prev10.i.i.i274.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %queue.i, ptr %prev10.i.i.i274.i, align 4
  %prev17.i.i.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %152, i32 0, i32 1
  %155 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %skb, ptr %prev17.i.i.i.i, align 4
  store volatile ptr %skb, ptr %queue.i, align 4
  %qlen.i.i.i275.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %119, i32 0, i32 11, i32 1
  %156 = ptrtoint ptr %qlen.i.i.i275.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %qlen.i.i.i275.i, align 4
  %add.i.i.i276.i = add i32 %157, 1
  store volatile i32 %add.i.i.i276.i, ptr %qlen.i.i.i275.i, align 4
  br label %queued.i

queued.i:                                         ; preds = %for.end.i, %if.then185.i, %if.then171.i
  %158 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %159)
  %cmp191.not.i = icmp eq i32 %159, 6
  br i1 %cmp191.not.i, label %queued.i.if.end211.i_crit_edge, label %if.then199.i, !prof !78

queued.i.if.end211.i_crit_edge:                   ; preds = %queued.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211.i

if.then199.i:                                     ; preds = %queued.i
  %160 = ptrtoint ptr %snx.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %snx.i, align 4
  %162 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %queue.i, align 4
  %cmp.i.i68 = icmp eq ptr %163, %queue.i
  %spec.store.select.i.i = select i1 %cmp.i.i68, ptr null, ptr %163
  %data.i.i277.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 19
  %164 = ptrtoint ptr %data.i.i277.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %data.i.i277.i, align 4
  %frame_data.i.i278.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %165, i32 0, i32 2
  %seq_ctrl.i.i279.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %frame_data.i.i278.i, i32 0, i32 5
  %166 = ptrtoint ptr %seq_ctrl.i.i279.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %seq_ctrl.i.i279.i, align 2
  %168 = tail call i16 @llvm.bswap.i16(i16 %167) #10
  %169 = lshr i16 %168, 4
  call void @__sanitizer_cov_trace_cmp2(i16 %161, i16 %169)
  %cmp206.i = icmp eq i16 %161, %169
  br i1 %cmp206.i, label %if.then208.i, label %if.then199.i.if.end211.i_crit_edge

if.then199.i.if.end211.i_crit_edge:               ; preds = %if.then199.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211.i

if.then208.i:                                     ; preds = %if.then199.i
  call void @__sanitizer_cov_trace_pc() #12
  %170 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 6, ptr %state.i, align 4
  br label %if.end211.i

if.end211.i:                                      ; preds = %if.then208.i, %if.then199.i.if.end211.i_crit_edge, %queued.i.if.end211.i_crit_edge
  %run.0.off0.i = phi i1 [ true, %if.then208.i ], [ false, %if.then199.i.if.end211.i_crit_edge ], [ false, %queued.i.if.end211.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %call.i280.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i280.i, label %if.end211.i.carl9170_tx_ampdu_queue.exit_crit_edge, label %land.lhs.true.i283.i

if.end211.i.carl9170_tx_ampdu_queue.exit_crit_edge: ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_ampdu_queue.exit

land.lhs.true.i283.i:                             ; preds = %if.end211.i
  %call1.i281.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i281.i)
  %tobool.not.i282.i = icmp eq i32 %call1.i281.i, 0
  br i1 %tobool.not.i282.i, label %land.lhs.true.i283.i.carl9170_tx_ampdu_queue.exit_crit_edge, label %land.lhs.true2.i285.i

land.lhs.true.i283.i.carl9170_tx_ampdu_queue.exit_crit_edge: ; preds = %land.lhs.true.i283.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_ampdu_queue.exit

land.lhs.true2.i285.i:                            ; preds = %land.lhs.true.i283.i
  %.b4.i284.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i284.i, label %land.lhs.true2.i285.i.carl9170_tx_ampdu_queue.exit_crit_edge, label %if.then.i286.i

land.lhs.true2.i285.i.carl9170_tx_ampdu_queue.exit_crit_edge: ; preds = %land.lhs.true2.i285.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_ampdu_queue.exit

if.then.i286.i:                                   ; preds = %land.lhs.true2.i285.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #10
  br label %carl9170_tx_ampdu_queue.exit

err_unlock.sink.split.i:                          ; preds = %land.rhs110.i.err_unlock.sink.split.i_crit_edge, %land.rhs.i.err_unlock.sink.split.i_crit_edge
  %carl9170_tx_ampdu_queue.__already_done.18.sink.i = phi ptr [ @carl9170_tx_ampdu_queue.__already_done, %land.rhs.i.err_unlock.sink.split.i_crit_edge ], [ @carl9170_tx_ampdu_queue.__already_done.18, %land.rhs110.i.err_unlock.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 1423, %land.rhs.i.err_unlock.sink.split.i_crit_edge ], [ 1427, %land.rhs110.i.err_unlock.sink.split.i_crit_edge ]
  %171 = ptrtoint ptr %carl9170_tx_ampdu_queue.__already_done.18.sink.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i1 true, ptr %carl9170_tx_ampdu_queue.__already_done.18.sink.i, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #10
  br label %err_unlock.i

err_unlock.i:                                     ; preds = %err_unlock.sink.split.i, %land.rhs110.i.err_unlock.i_crit_edge, %land.rhs.i.err_unlock.i_crit_edge, %if.end18.i.err_unlock.i_crit_edge, %if.end14.i.err_unlock.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %err_unlock_rcu.i

err_unlock_rcu.i:                                 ; preds = %err_unlock.i, %do.end10.i.err_unlock_rcu.i_crit_edge
  %call.i289.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i289.i, label %err_unlock_rcu.i.carl9170_tx_ampdu_queue.exit.thread_crit_edge, label %land.lhs.true.i292.i

err_unlock_rcu.i.carl9170_tx_ampdu_queue.exit.thread_crit_edge: ; preds = %err_unlock_rcu.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_ampdu_queue.exit.thread

land.lhs.true.i292.i:                             ; preds = %err_unlock_rcu.i
  %call1.i290.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i290.i)
  %tobool.not.i291.i = icmp eq i32 %call1.i290.i, 0
  br i1 %tobool.not.i291.i, label %land.lhs.true.i292.i.carl9170_tx_ampdu_queue.exit.thread_crit_edge, label %land.lhs.true2.i294.i

land.lhs.true.i292.i.carl9170_tx_ampdu_queue.exit.thread_crit_edge: ; preds = %land.lhs.true.i292.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_ampdu_queue.exit.thread

land.lhs.true2.i294.i:                            ; preds = %land.lhs.true.i292.i
  %.b4.i293.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i293.i, label %land.lhs.true2.i294.i.carl9170_tx_ampdu_queue.exit.thread_crit_edge, label %if.then.i295.i

land.lhs.true2.i294.i.carl9170_tx_ampdu_queue.exit.thread_crit_edge: ; preds = %land.lhs.true2.i294.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_ampdu_queue.exit.thread

if.then.i295.i:                                   ; preds = %land.lhs.true2.i294.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #10
  br label %carl9170_tx_ampdu_queue.exit.thread

carl9170_tx_ampdu_queue.exit.thread:              ; preds = %if.then.i295.i, %land.lhs.true2.i294.i.carl9170_tx_ampdu_queue.exit.thread_crit_edge, %land.lhs.true.i292.i.carl9170_tx_ampdu_queue.exit.thread_crit_edge, %err_unlock_rcu.i.carl9170_tx_ampdu_queue.exit.thread_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %172 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i296.i = and i32 %172, -16384
  %173 = inttoptr i32 %and.i.i.i.i.i296.i to ptr
  %preempt_count.i.i.i.i297.i = getelementptr inbounds %struct.thread_info, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %preempt_count.i.i.i.i297.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %preempt_count.i.i.i.i297.i, align 4
  %sub.i.i.i298.i = add i32 %175, -1
  store volatile i32 %sub.i.i.i298.i, ptr %preempt_count.i.i.i.i297.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %176 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %cb.i, align 8
  %and215.i = and i32 %177, -65
  store i32 %and215.i, ptr %cb.i, align 8
  tail call void @carl9170_tx_status(ptr noundef %1, ptr noundef %skb, i1 noundef zeroext false) #10
  %tx_dropped.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 84
  %178 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %tx_dropped.i, align 4
  %inc.i69 = add i32 %179, 1
  store i32 %inc.i69, ptr %tx_dropped.i, align 4
  br label %if.end25

carl9170_tx_ampdu_queue.exit:                     ; preds = %if.then.i286.i, %land.lhs.true2.i285.i.carl9170_tx_ampdu_queue.exit_crit_edge, %land.lhs.true.i283.i.carl9170_tx_ampdu_queue.exit_crit_edge, %if.end211.i.carl9170_tx_ampdu_queue.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %180 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i287.i = and i32 %180, -16384
  %181 = inttoptr i32 %and.i.i.i.i.i287.i to ptr
  %preempt_count.i.i.i.i288.i = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %preempt_count.i.i.i.i288.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %preempt_count.i.i.i.i288.i, align 4
  %sub.i.i.i.i = add i32 %183, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i288.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br i1 %run.0.off0.i, label %if.then22, label %carl9170_tx_ampdu_queue.exit.if.end25_crit_edge

carl9170_tx_ampdu_queue.exit.if.end25_crit_edge:  ; preds = %carl9170_tx_ampdu_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then22:                                        ; preds = %carl9170_tx_ampdu_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @carl9170_tx_ampdu(ptr noundef %1)
  br label %if.end25

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %184 = ptrtoint ptr %queue_mapping.i.i.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %queue_mapping.i.i.i, align 8
  %conv = zext i16 %185 to i32
  %186 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  tail call void @ieee80211_get_tx_rates(ptr noundef %7, ptr noundef %3, ptr noundef %skb, ptr noundef %186, i32 noundef 4) #10
  tail call fastcc void @carl9170_tx_apply_rateset(ptr noundef %1, ptr noundef %cb.i, ptr noundef %skb)
  %arrayidx = getelementptr %struct.ar9170, ptr %1, i32 0, i32 89, i32 %conv
  tail call void @skb_queue_tail(ptr noundef %arrayidx, ptr noundef %skb) #10
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then22, %carl9170_tx_ampdu_queue.exit.if.end25_crit_edge, %carl9170_tx_ampdu_queue.exit.thread
  tail call fastcc void @carl9170_tx(ptr noundef %1)
  br label %cleanup

err_free:                                         ; preds = %carl9170_tx_prepare.exit, %entry.err_free_crit_edge
  %tx_dropped = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 84
  %187 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %188, 1
  store i32 %inc, ptr %tx_dropped, align 4
  %hw26 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 1
  %189 = ptrtoint ptr %hw26 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %hw26, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %190, ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @carl9170_tx_ampdu(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  %agg = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %agg) #10
  %0 = getelementptr inbounds i8, ptr %agg, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %tx_ampdu_scheduler = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 99
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_ampdu_scheduler, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tx_ampdu_scheduler, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_ampdu_scheduler, ptr %tx_ampdu_scheduler, i32 1, ptr elementtype(i32) %tx_ampdu_scheduler) #10, !srcloc !90
  %tx_ampdu_schedule = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 105
  %3 = ptrtoint ptr %tx_ampdu_schedule to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %tx_ampdu_schedule, align 8
  %tx_ampdu_upload = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 98
  %call.i.i330 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_ampdu_upload, i32 noundef 4) #10
  %4 = ptrtoint ptr %tx_ampdu_upload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %tx_ampdu_upload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_ampdu_list_len = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 102
  %6 = ptrtoint ptr %tx_ampdu_list_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_ampdu_list_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %agg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %agg, ptr %agg, align 4
  %prev.i = getelementptr inbounds %struct.anon.52, ptr %agg, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %agg, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %agg, i32 0, i32 1
  %10 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i, align 4
  %11 = call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end3.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end3.rcu_read_lock.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end3
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end3.rcu_read_lock.exit_crit_edge
  %tx_ampdu_iter = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 96
  %15 = ptrtoint ptr %tx_ampdu_iter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %tx_ampdu_iter, align 8
  %call5 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end14_crit_edge

rcu_read_lock.exit.do.end14_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call7 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b327 = load i1, ptr @carl9170_tx_ampdu.__warned, align 1
  br i1 %.b327, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @carl9170_tx_ampdu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1149, ptr noundef nonnull @.str.14) #10
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true.do.end14_crit_edge, %rcu_read_lock.exit.do.end14_crit_edge
  %tobool16.not = icmp eq ptr %16, null
  br i1 %tobool16.not, label %land.rhs, label %retry.preheader

retry.preheader:                                  ; preds = %do.end14
  %tx_ampdu_list = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 97
  %current_density.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 103
  %current_factor.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 104
  %tx_schedule = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 93
  br label %retry

land.rhs:                                         ; preds = %do.end14
  %.b325326 = load i1, ptr @carl9170_tx_ampdu.__already_done, align 1
  br i1 %.b325326, label %land.rhs.if.then60_crit_edge, label %if.then25, !prof !78

land.rhs.if.then60_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then60

if.then25:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @carl9170_tx_ampdu.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1150, i32 noundef 9, ptr noundef null) #10
  br label %if.then60

if.then60:                                        ; preds = %if.then25, %land.rhs.if.then60_crit_edge
  %call.i332 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i332, label %if.then60.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i335

if.then60.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i335:                               ; preds = %if.then60
  %call1.i333 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i333)
  %tobool.not.i334 = icmp eq i32 %call1.i333, 0
  br i1 %tobool.not.i334, label %land.lhs.true.i335.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i337

land.lhs.true.i335.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i335
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i337:                              ; preds = %land.lhs.true.i335
  %.b4.i336 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i336, label %land.lhs.true2.i337.rcu_read_unlock.exit_crit_edge, label %if.then.i338

land.lhs.true2.i337.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i337
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i338:                                     ; preds = %land.lhs.true2.i337
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i338, %land.lhs.true2.i337.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i335.rcu_read_unlock.exit_crit_edge, %if.then60.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  br label %cleanup.sink.split

retry:                                            ; preds = %for.end.retry_crit_edge, %retry.preheader
  %done_ampdus.0 = phi i32 [ 1, %for.end.retry_crit_edge ], [ 0, %retry.preheader ]
  %tid_info.0 = phi ptr [ %tx_ampdu_list, %for.end.retry_crit_edge ], [ %16, %retry.preheader ]
  %17 = ptrtoint ptr %tid_info.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %tid_info.1380 = load volatile ptr, ptr %tid_info.0, align 4
  %cmp.not381 = icmp eq ptr %tid_info.1380, %tx_ampdu_list
  br i1 %cmp.not381, label %retry.for.end_crit_edge, label %retry.for.body_crit_edge

retry.for.body_crit_edge:                         ; preds = %retry
  br label %for.body

retry.for.end_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %retry.for.body_crit_edge
  %tid_info.1384 = phi ptr [ %tid_info.1, %for.inc.for.body_crit_edge ], [ %tid_info.1380, %retry.for.body_crit_edge ]
  %i.1383 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %done_ampdus.0, %retry.for.body_crit_edge ]
  %done_ampdus.1382 = phi i32 [ %done_ampdus.3, %for.inc.for.body_crit_edge ], [ %done_ampdus.0, %retry.for.body_crit_edge ]
  %inc = add i32 %i.1383, 1
  %state = getelementptr inbounds %struct.carl9170_sta_tid, ptr %tid_info.1384, i32 0, i32 4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp68 = icmp ult i32 %19, 4
  br i1 %cmp68, label %for.body.for.inc_crit_edge, label %if.end70

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end70:                                         ; preds = %for.body
  %tid = getelementptr inbounds %struct.carl9170_sta_tid, ptr %tid_info.1384, i32 0, i32 5
  %20 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tid, align 4
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %21, label %lor.rhs [
    i8 0, label %if.end70.cond.end97_crit_edge
    i8 3, label %if.end70.cond.end97_crit_edge389
    i8 1, label %cond.end97.fold.split
    i8 2, label %cond.end97.fold.split329
    i8 4, label %if.end70.lor.end_crit_edge
    i8 5, label %if.end70.lor.end_crit_edge390
  ]

if.end70.lor.end_crit_edge390:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

if.end70.lor.end_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

if.end70.cond.end97_crit_edge389:                 ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end97

if.end70.cond.end97_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end97

lor.rhs:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end70.lor.end_crit_edge, %if.end70.lor.end_crit_edge390
  %23 = phi i32 [ 0, %lor.rhs ], [ 1, %if.end70.lor.end_crit_edge ], [ 1, %if.end70.lor.end_crit_edge390 ]
  br label %cond.end97

cond.end97.fold.split:                            ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end97

cond.end97.fold.split329:                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end97

cond.end97:                                       ; preds = %cond.end97.fold.split329, %cond.end97.fold.split, %lor.end, %if.end70.cond.end97_crit_edge, %if.end70.cond.end97_crit_edge389
  %cond98 = phi i32 [ 2, %if.end70.cond.end97_crit_edge ], [ %23, %lor.end ], [ 2, %if.end70.cond.end97_crit_edge389 ], [ 3, %cond.end97.fold.split ], [ 3, %cond.end97.fold.split329 ]
  %lock = getelementptr inbounds %struct.carl9170_sta_tid, ptr %tid_info.1384, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %cmp101.not = icmp eq i32 %25, 6
  br i1 %cmp101.not, label %if.end104, label %cond.end97.processed_crit_edge

cond.end97.processed_crit_edge:                   ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %processed

if.end104:                                        ; preds = %cond.end97
  %counter = getelementptr inbounds %struct.carl9170_sta_tid, ptr %tid_info.1384, i32 0, i32 3
  %26 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %counter, align 4
  %inc105 = add i32 %27, 1
  store i32 %inc105, ptr %counter, align 4
  %queue106 = getelementptr inbounds %struct.carl9170_sta_tid, ptr %tid_info.1384, i32 0, i32 11
  %28 = ptrtoint ptr %queue106 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %queue106, align 4
  %cmp.i = icmp eq ptr %29, %queue106
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %29
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 19
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i, align 4
  %frame_data.i.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %31, i32 0, i32 2
  %seq_ctrl.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %frame_data.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %seq_ctrl.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %seq_ctrl.i.i, align 2
  %34 = call i16 @llvm.bswap.i16(i16 %33) #10
  %35 = lshr i16 %34, 4
  %snx = getelementptr inbounds %struct.carl9170_sta_tid, ptr %tid_info.1384, i32 0, i32 7
  %36 = ptrtoint ptr %snx to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %snx, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp111.not = icmp eq i16 %35, %37
  br i1 %cmp111.not, label %while.cond.preheader, label %if.then119, !prof !78

while.cond.preheader:                             ; preds = %if.end104
  %bsn = getelementptr inbounds %struct.carl9170_sta_tid, ptr %tid_info.1384, i32 0, i32 9
  %max = getelementptr inbounds %struct.carl9170_sta_tid, ptr %tid_info.1384, i32 0, i32 6
  %vif = getelementptr inbounds %struct.carl9170_sta_tid, ptr %tid_info.1384, i32 0, i32 13
  %sta = getelementptr inbounds %struct.carl9170_sta_tid, ptr %tid_info.1384, i32 0, i32 12
  %38 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 3, i32 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 3
  %qlen.i346 = getelementptr inbounds %struct.carl9170_sta_tid, ptr %tid_info.1384, i32 0, i32 11, i32 1
  br label %while.cond

if.then119:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 5, ptr %state, align 4
  br label %processed

while.cond:                                       ; preds = %if.end156.while.cond_crit_edge, %while.cond.preheader
  %seq.0 = phi i16 [ %60, %if.end156.while.cond_crit_edge ], [ %35, %while.cond.preheader ]
  %tx_info_first.0 = phi ptr [ %tx_info_first.1, %if.end156.while.cond_crit_edge ], [ null, %while.cond.preheader ]
  %40 = ptrtoint ptr %queue106 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %queue106, align 4
  %cmp.i341 = icmp eq ptr %41, %queue106
  %tobool124.not379 = icmp eq ptr %41, null
  %tobool124.not = or i1 %cmp.i341, %tobool124.not379
  br i1 %tobool124.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.cond
  %data.i.i343 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 19
  %42 = ptrtoint ptr %data.i.i343 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i343, align 4
  %frame_data.i.i344 = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %43, i32 0, i32 2
  %seq_ctrl.i.i345 = getelementptr inbounds %struct.ieee80211_hdr, ptr %frame_data.i.i344, i32 0, i32 5
  %44 = ptrtoint ptr %seq_ctrl.i.i345 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %seq_ctrl.i.i345, align 2
  %46 = call i16 @llvm.bswap.i16(i16 %45) #10
  %47 = lshr i16 %46, 4
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %seq.0)
  %cmp128.not = icmp eq i16 %47, %seq.0
  br i1 %cmp128.not, label %if.end137, label %while.body.while.end_crit_edge, !prof !78

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end137:                                        ; preds = %while.body
  %48 = ptrtoint ptr %snx to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %snx, align 4
  %conv139 = zext i16 %49 to i32
  %50 = ptrtoint ptr %bsn to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %bsn, align 4
  %conv140 = zext i16 %51 to i32
  %sub = sub nsw i32 %conv139, %conv140
  %and = and i32 %sub, 4095
  %52 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %max, align 2
  %conv141 = zext i16 %53 to i32
  %sub142 = add nsw i32 %conv141, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %sub142)
  %cmp143.not = icmp slt i32 %and, %sub142
  br i1 %cmp143.not, label %if.end152, label %if.end137.while.end_crit_edge, !prof !78

if.end137.while.end_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end152:                                        ; preds = %if.end137
  %tobool153.not = icmp eq ptr %tx_info_first.0, null
  br i1 %tobool153.not, label %if.then154, label %if.end152.if.end156_crit_edge

if.end152.if.end156_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end156

if.then154:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vif, align 4
  %56 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sta, align 4
  call void @ieee80211_get_tx_rates(ptr noundef %55, ptr noundef %57, ptr noundef %spec.store.select.i, ptr noundef %38, i32 noundef 4) #10
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %if.end152.if.end156_crit_edge
  %tx_info_first.1 = phi ptr [ %tx_info_first.0, %if.end152.if.end156_crit_edge ], [ %cb.i, %if.then154 ]
  call fastcc void @carl9170_tx_apply_rateset(ptr noundef %ar, ptr noundef %tx_info_first.1, ptr noundef nonnull %41)
  %call.i.i331 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_ampdu_upload, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %tx_ampdu_upload, i32 1, i32 3, i32 1) #10
  %58 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_ampdu_upload, ptr %tx_ampdu_upload, i32 1, ptr elementtype(i32) %tx_ampdu_upload) #10, !srcloc !90
  %59 = add nuw nsw i16 %seq.0, 1
  %60 = and i16 %59, 4095
  %61 = ptrtoint ptr %snx to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %snx, align 4
  %62 = ptrtoint ptr %qlen.i346 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %qlen.i346, align 4
  %sub.i = add i32 %63, -1
  store volatile i32 %sub.i, ptr %qlen.i346, align 4
  %64 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %41, align 8
  %prev9.i = getelementptr inbounds %struct.anon, ptr %41, i32 0, i32 1
  %66 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %41, align 8
  %prev17.i = getelementptr inbounds %struct.anon, ptr %65, i32 0, i32 1
  %68 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %67, ptr %prev17.i, align 4
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %65, ptr %67, align 8
  %70 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i, align 4
  store volatile ptr %agg, ptr %41, align 8
  store volatile ptr %71, ptr %prev9.i, align 4
  store volatile ptr %41, ptr %prev.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %41, ptr %71, align 4
  %73 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %qlen.i, align 4
  %add.i.i.i347 = add i32 %74, 1
  store volatile i32 %add.i.i.i347, ptr %qlen.i, align 4
  %cmp164 = icmp ugt i32 %add.i.i.i347, 29
  br i1 %cmp164, label %if.end156.while.end_crit_edge, label %if.end156.while.cond_crit_edge

if.end156.while.cond_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end156.while.end_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end156.while.end_crit_edge, %if.end137.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %75 = ptrtoint ptr %queue106 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %queue106, align 4
  %cmp.i349 = icmp eq ptr %76, %queue106
  br i1 %cmp.i349, label %while.end.if.then180_crit_edge, label %lor.lhs.false171

while.end.if.then180_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then180

lor.lhs.false171:                                 ; preds = %while.end
  %data.i.i352 = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 19
  %77 = ptrtoint ptr %data.i.i352 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i.i352, align 4
  %frame_data.i.i353 = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %78, i32 0, i32 2
  %seq_ctrl.i.i354 = getelementptr inbounds %struct.ieee80211_hdr, ptr %frame_data.i.i353, i32 0, i32 5
  %79 = ptrtoint ptr %seq_ctrl.i.i354 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %seq_ctrl.i.i354, align 2
  %81 = call i16 @llvm.bswap.i16(i16 %80) #10
  %82 = lshr i16 %81, 4
  %83 = ptrtoint ptr %snx to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %snx, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %82, i16 %84)
  %cmp178.not = icmp eq i16 %82, %84
  br i1 %cmp178.not, label %lor.lhs.false171.if.end182_crit_edge, label %lor.lhs.false171.if.then180_crit_edge

lor.lhs.false171.if.then180_crit_edge:            ; preds = %lor.lhs.false171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then180

lor.lhs.false171.if.end182_crit_edge:             ; preds = %lor.lhs.false171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end182

if.then180:                                       ; preds = %lor.lhs.false171.if.then180_crit_edge, %while.end.if.then180_crit_edge
  %85 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 5, ptr %state, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %lor.lhs.false171.if.end182_crit_edge
  %inc183 = add i32 %done_ampdus.1382, 1
  br label %processed

processed:                                        ; preds = %if.end182, %if.then119, %cond.end97.processed_crit_edge
  %done_ampdus.2 = phi i32 [ %done_ampdus.1382, %cond.end97.processed_crit_edge ], [ %done_ampdus.1382, %if.then119 ], [ %inc183, %if.end182 ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %86 = ptrtoint ptr %agg to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %agg, align 4
  %cmp.i355 = icmp eq ptr %87, %agg
  br i1 %cmp.i355, label %processed.for.inc_crit_edge, label %if.end188

processed.for.inc_crit_edge:                      ; preds = %processed
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end188:                                        ; preds = %processed
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %87, i32 0, i32 19
  %88 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data.i, align 4
  %ampdu_settings.i = getelementptr inbounds %struct._carl9170_tx_superdesc, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %ampdu_settings.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ampdu_settings.i, align 1
  %92 = and i8 %91, 7
  %and.i = zext i8 %92 to i32
  %93 = ptrtoint ptr %current_density.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %current_density.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %and.i)
  %cmp.not.i = icmp eq i32 %94, %and.i
  br i1 %cmp.not.i, label %if.end188.if.end.i_crit_edge, label %if.then.i359

if.end188.if.end.i_crit_edge:                     ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i359:                                     ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %current_density.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %and.i, ptr %current_density.i, align 8
  %96 = ptrtoint ptr %ampdu_settings.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %ampdu_settings.i, align 1
  %98 = or i8 %97, 32
  store i8 %98, ptr %ampdu_settings.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i359, %if.end188.if.end.i_crit_edge
  %99 = ptrtoint ptr %ampdu_settings.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ampdu_settings.i, align 1
  %101 = shl i8 %100, 3
  %102 = and i8 %101, -64
  %shl11.i = zext i8 %102 to i32
  %103 = ptrtoint ptr %current_factor.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %current_factor.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %shl11.i)
  %cmp12.not.i = icmp eq i32 %104, %shl11.i
  br i1 %cmp12.not.i, label %if.end.i.carl9170_set_ampdu_params.exit_crit_edge, label %if.then14.i

if.end.i.carl9170_set_ampdu_params.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_set_ampdu_params.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %current_factor.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %shl11.i, ptr %current_factor.i, align 4
  %106 = ptrtoint ptr %ampdu_settings.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %ampdu_settings.i, align 1
  %108 = or i8 %107, 64
  store i8 %108, ptr %ampdu_settings.i, align 1
  br label %carl9170_set_ampdu_params.exit

carl9170_set_ampdu_params.exit:                   ; preds = %if.then14.i, %if.end.i.carl9170_set_ampdu_params.exit_crit_edge
  %109 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i361 = icmp eq ptr %110, %agg
  %spec.store.select.i362 = select i1 %cmp.i361, ptr null, ptr %110
  %data.i363 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i362, i32 0, i32 19
  %111 = ptrtoint ptr %data.i363 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data.i363, align 4
  %mac_control.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %112, i32 0, i32 1, i32 1
  %113 = ptrtoint ptr %mac_control.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %mac_control.i, align 2
  %115 = or i16 %114, 64
  store i16 %115, ptr %mac_control.i, align 2
  %lock191 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 89, i32 %cond98, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %lock191) #10
  %116 = ptrtoint ptr %agg to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %agg, align 4
  %cmp.i.not.i = icmp eq ptr %117, %agg
  br i1 %cmp.i.not.i, label %carl9170_set_ampdu_params.exit.skb_queue_splice_tail_init.exit_crit_edge, label %if.then.i366

carl9170_set_ampdu_params.exit.skb_queue_splice_tail_init.exit_crit_edge: ; preds = %carl9170_set_ampdu_params.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_queue_splice_tail_init.exit

if.then.i366:                                     ; preds = %carl9170_set_ampdu_params.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 89, i32 %cond98
  %prev.i364 = getelementptr inbounds %struct.anon.52, ptr %arrayidx, i32 0, i32 1
  %118 = ptrtoint ptr %prev.i364 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %prev.i364, align 4
  %120 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon, ptr %117, i32 0, i32 1
  %122 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %119, ptr %prev5.i.i, align 4
  %123 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %117, ptr %119, align 8
  %124 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %arrayidx, ptr %121, align 8
  store volatile ptr %121, ptr %prev.i364, align 4
  %125 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %qlen.i, align 4
  %qlen1.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 89, i32 %cond98, i32 1
  %127 = ptrtoint ptr %qlen1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %qlen1.i, align 4
  %add.i = add i32 %128, %126
  store i32 %add.i, ptr %qlen1.i, align 4
  %129 = ptrtoint ptr %agg to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %agg, ptr %agg, align 4
  store ptr %agg, ptr %prev.i, align 4
  store i32 0, ptr %qlen.i, align 4
  br label %skb_queue_splice_tail_init.exit

skb_queue_splice_tail_init.exit:                  ; preds = %if.then.i366, %carl9170_set_ampdu_params.exit.skb_queue_splice_tail_init.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock191) #10
  %130 = ptrtoint ptr %tx_schedule to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %tx_schedule, align 4
  br label %for.inc

for.inc:                                          ; preds = %skb_queue_splice_tail_init.exit, %processed.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %done_ampdus.3 = phi i32 [ %done_ampdus.1382, %for.body.for.inc_crit_edge ], [ %done_ampdus.2, %processed.for.inc_crit_edge ], [ %done_ampdus.2, %skb_queue_splice_tail_init.exit ]
  %131 = ptrtoint ptr %tid_info.1384 to i32
  call void @__asan_load4_noabort(i32 %131)
  %tid_info.1 = load volatile ptr, ptr %tid_info.1384, align 4
  %cmp.not = icmp eq ptr %tid_info.1, %tx_ampdu_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %retry.for.end_crit_edge
  %done_ampdus.1.lcssa = phi i32 [ %done_ampdus.0, %retry.for.end_crit_edge ], [ %done_ampdus.3, %for.inc.for.end_crit_edge ]
  %i.1.lcssa = phi i32 [ %done_ampdus.0, %retry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done_ampdus.1.lcssa)
  %cmp209 = icmp eq i32 %done_ampdus.1.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.lcssa)
  %cmp213 = icmp eq i32 %i.1.lcssa, 0
  %or.cond = select i1 %cmp209, i1 %cmp213, i1 false
  br i1 %or.cond, label %for.end.retry_crit_edge, label %do.body217

for.end.retry_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry

do.body217:                                       ; preds = %for.end
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !91
  %132 = ptrtoint ptr %tx_ampdu_iter to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %tx_ampdu_list, ptr %tx_ampdu_iter, align 8
  %call.i368 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i368, label %do.body217.rcu_read_unlock.exit378_crit_edge, label %land.lhs.true.i371

do.body217.rcu_read_unlock.exit378_crit_edge:     ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit378

land.lhs.true.i371:                               ; preds = %do.body217
  %call1.i369 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i369)
  %tobool.not.i370 = icmp eq i32 %call1.i369, 0
  br i1 %tobool.not.i370, label %land.lhs.true.i371.rcu_read_unlock.exit378_crit_edge, label %land.lhs.true2.i373

land.lhs.true.i371.rcu_read_unlock.exit378_crit_edge: ; preds = %land.lhs.true.i371
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit378

land.lhs.true2.i373:                              ; preds = %land.lhs.true.i371
  %.b4.i372 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i372, label %land.lhs.true2.i373.rcu_read_unlock.exit378_crit_edge, label %if.then.i374

land.lhs.true2.i373.rcu_read_unlock.exit378_crit_edge: ; preds = %land.lhs.true2.i373
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit378

if.then.i374:                                     ; preds = %land.lhs.true2.i373
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #10
  br label %rcu_read_unlock.exit378

rcu_read_unlock.exit378:                          ; preds = %if.then.i374, %land.lhs.true2.i373.rcu_read_unlock.exit378_crit_edge, %land.lhs.true.i371.rcu_read_unlock.exit378_crit_edge, %do.body217.rcu_read_unlock.exit378_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rcu_read_unlock.exit378, %rcu_read_unlock.exit
  %133 = call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i339 = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i.i.i.i339 to ptr
  %preempt_count.i.i.i.i340 = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %preempt_count.i.i.i.i340 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %preempt_count.i.i.i.i340, align 4
  %sub.i.i.i377 = add i32 %136, -1
  store volatile i32 %sub.i.i.i377, ptr %preempt_count.i.i.i.i340, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %agg) #10
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @carl9170_tx_apply_rateset(ptr nocapture noundef readonly %ar, ptr nocapture noundef readonly %sinfo, ptr nocapture noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cb.i, align 8
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4 = icmp ne i32 %and3, 0
  %4 = ptrtoint ptr %sinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sinfo, align 8
  %and9 = and i32 %5, 4096
  %or = or i32 %and9, %3
  %6 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %cb.i, align 8
  %7 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %sinfo, i32 0, i32 2
  %band.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %power_5G_ht40.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 69
  %power_2G_ht40.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 71
  %power_5G_ht20.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 68
  %power_2G_ht20.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 70
  %power_5G_leg.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 65
  %power_2G_ofdm.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 67
  %power_2G_cck.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 66
  %tx_mask.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 8
  %hw.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %phy_control = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %1, i32 0, i32 1, i32 2
  %erp_mode.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 54
  %mac_control = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %1, i32 0, i32 1, i32 1
  %flags19 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %7, i32 0, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0179 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %7, i32 0, i32 %i.0179
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp11 = icmp slt i8 %9, 0
  br i1 %cmp11, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %for.body
  %flags.i = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %7, i32 0, i32 %i.0179, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %bf.load.i = load i16, ptr %flags.i, align 1
  %11 = and i16 %bf.load.i, 32
  %12 = zext i16 %11 to i32
  %13 = shl nuw nsw i32 %12, 23
  %14 = and i16 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool6.not.i = icmp eq i16 %14, 0
  %tmp.1.i = select i1 %tobool6.not.i, i32 %13, i32 402653184
  %15 = and i16 %bf.load.i, 128
  %16 = zext i16 %15 to i32
  %17 = or i32 %tmp.1.i, %16
  %18 = and i16 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool24.not.i = icmp eq i16 %18, 0
  br i1 %tobool24.not.i, label %if.else.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = and i8 %9, 7
  %and32.i = zext i8 %19 to i32
  %shl33.i = shl nuw nsw i32 %and32.i, 6
  %20 = or i32 %shl33.i, 2
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %or35.i = or i32 %21, %17
  br label %if.end51.i

if.else.i:                                        ; preds = %if.end
  %22 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load36.i = load i32, ptr %band.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load36.i)
  %cmp.i = icmp ult i32 %bf.load36.i, 536870912
  br i1 %cmp.i, label %if.then38.i, label %if.else48.i

if.then38.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %9)
  %cmp41.i = icmp ult i8 %9, 4
  %or46.i = or i32 %17, 16777216
  %spec.select81.i = select i1 %cmp41.i, i32 %17, i32 %or46.i
  br label %if.end51.i

if.else48.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %or49.i = or i32 %17, 16777216
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else48.i, %if.then38.i, %if.then25.i
  %tmp.3.i = phi i32 [ %spec.select81.i, %if.then38.i ], [ %or49.i, %if.else48.i ], [ %or35.i, %if.then25.i ]
  %conv.i.i178 = zext i8 %9 to i32
  %bf.clear.i.i = and i16 %bf.load.i, 2047
  %conv2.i.i = zext i16 %bf.clear.i.i to i32
  %and.i.i = and i32 %conv2.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else31.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  %and7.i.i = and i32 %conv2.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  %23 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load16.i.i = load i32, ptr %band.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load16.i.i)
  %cmp18.i.i = icmp ult i32 %bf.load16.i.i, 536870912
  %power_2G_ht40.i.i.power_5G_ht40.i.i = select i1 %cmp18.i.i, ptr %power_2G_ht40.i.i, ptr %power_5G_ht40.i.i
  %power_2G_ht20.i.i.power_5G_ht20.i.i = select i1 %cmp18.i.i, ptr %power_2G_ht20.i.i, ptr %power_5G_ht20.i.i
  %24 = lshr exact i32 %and7.i.i, 4
  %txpower.0.i.i = select i1 %tobool8.not.i.i, ptr %power_2G_ht20.i.i.power_5G_ht20.i.i, ptr %power_2G_ht40.i.i.power_5G_ht40.i.i
  %and28.i.i = and i32 %conv.i.i178, 7
  %arrayidx.i.i = getelementptr i8, ptr %txpower.0.i.i, i32 %and28.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.i, align 1
  %conv29.i.i = zext i8 %26 to i32
  %add30.i.i = add nuw nsw i32 %24, %conv29.i.i
  br label %if.end58.i.i

if.else31.i.i:                                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load33.i.i = load i32, ptr %band.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load33.i.i)
  %cmp35.i.i = icmp ult i32 %bf.load33.i.i, 536870912
  %add47.i.i = add nuw nsw i32 %conv.i.i178, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %9)
  %cmp38.i.i = icmp ult i8 %9, 4
  %power_2G_cck.i.i.power_2G_ofdm.i.i = select i1 %cmp38.i.i, ptr %power_2G_cck.i.i, ptr %power_2G_ofdm.i.i
  %txpower.1.i.i = select i1 %cmp35.i.i, ptr %power_2G_cck.i.i.power_2G_ofdm.i.i, ptr %power_5G_leg.i.i
  %idx.0.i.i = select i1 %cmp35.i.i, i32 %conv.i.i178, i32 %add47.i.i
  %arrayidx49.i.i = getelementptr [0 x %struct.ieee80211_rate], ptr @__carl9170_ratetable, i32 0, i32 %idx.0.i.i
  %hw_value.i.i = getelementptr [0 x %struct.ieee80211_rate], ptr @__carl9170_ratetable, i32 0, i32 %idx.0.i.i, i32 2
  %28 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hw_value.i.i, align 2
  %30 = lshr i16 %29, 4
  %31 = and i16 %30, 3
  %32 = zext i16 %31 to i32
  %arrayidx52.i.i = getelementptr i8, ptr %txpower.1.i.i, i32 %32
  %33 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx52.i.i, align 1
  %conv53.i.i = zext i8 %34 to i32
  %35 = and i16 %29, 15
  %and57.i.i = zext i16 %35 to i32
  br label %if.end58.i.i

if.end58.i.i:                                     ; preds = %if.else31.i.i, %if.then.i.i
  %power.1.i = phi i32 [ %conv53.i.i, %if.else31.i.i ], [ %add30.i.i, %if.then.i.i ]
  %phyrate.0.i = phi i32 [ %and57.i.i, %if.else31.i.i ], [ %conv.i.i178, %if.then.i.i ]
  %rate.0.i.i = phi ptr [ %arrayidx49.i.i, %if.else31.i.i ], [ null, %if.then.i.i ]
  %36 = ptrtoint ptr %tx_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tx_mask.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp60.i.i = icmp eq i8 %37, 1
  br i1 %cmp60.i.i, label %if.end58.i.i.carl9170_tx_physet.exit_crit_edge, label %if.else63.i.i

if.end58.i.i.carl9170_tx_physet.exit_crit_edge:   ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_physet.exit

if.else63.i.i:                                    ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool69.not.i.i = icmp ne i16 %18, 0
  %tobool70.not.i.i = icmp eq ptr %rate.0.i.i, null
  %or.cond.i.i = select i1 %tobool69.not.i.i, i1 true, i1 %tobool70.not.i.i
  br i1 %or.cond.i.i, label %if.else63.i.i.if.else76.i.i_crit_edge, label %land.lhs.true71.i.i

if.else63.i.i.if.else76.i.i_crit_edge:            ; preds = %if.else63.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else76.i.i

land.lhs.true71.i.i:                              ; preds = %if.else63.i.i
  %bitrate.i.i = getelementptr inbounds %struct.ieee80211_rate, ptr %rate.0.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %bitrate.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %bitrate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 359, i16 %39)
  %cmp73.i.i = icmp ugt i16 %39, 359
  br i1 %cmp73.i.i, label %land.lhs.true71.i.i.carl9170_tx_physet.exit_crit_edge, label %land.lhs.true71.i.i.if.else76.i.i_crit_edge

land.lhs.true71.i.i.if.else76.i.i_crit_edge:      ; preds = %land.lhs.true71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else76.i.i

land.lhs.true71.i.i.carl9170_tx_physet.exit_crit_edge: ; preds = %land.lhs.true71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_physet.exit

if.else76.i.i:                                    ; preds = %land.lhs.true71.i.i.if.else76.i.i_crit_edge, %if.else63.i.i.if.else76.i.i_crit_edge
  br label %carl9170_tx_physet.exit

carl9170_tx_physet.exit:                          ; preds = %if.else76.i.i, %land.lhs.true71.i.i.carl9170_tx_physet.exit_crit_edge, %if.end58.i.i.carl9170_tx_physet.exit_crit_edge
  %.sink.i.i = phi i32 [ 163840, %if.else76.i.i ], [ 32768, %if.end58.i.i.carl9170_tx_physet.exit_crit_edge ], [ 32768, %land.lhs.true71.i.i.carl9170_tx_physet.exit_crit_edge ]
  %40 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw.i.i, align 4
  %power_level.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %power_level.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %power_level.i.i, align 4
  %mul.i.i = shl i32 %43, 1
  %44 = tail call i32 @llvm.umin.i32(i32 %power.1.i, i32 %mul.i.i) #10
  %shl52.i = shl nuw nsw i32 %phyrate.0.i, 18
  %and53.i = and i32 %shl52.i, 33292288
  %45 = tail call i32 @llvm.bswap.i32(i32 %and53.i) #10
  %or54.i = or i32 %45, %tmp.3.i
  %shl55.i = shl nuw nsw i32 %44, 17
  %and56.i = and i32 %shl55.i, 8257536
  %46 = tail call i32 @llvm.bswap.i32(i32 %.sink.i.i) #10
  %or57.i = or i32 %or54.i, %46
  %or60.i = or i32 %or57.i, %and56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0179)
  %cmp14 = icmp eq i32 %i.0179, 0
  br i1 %cmp14, label %if.then16, label %if.else47

if.then16:                                        ; preds = %carl9170_tx_physet.exit
  %47 = ptrtoint ptr %phy_control to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or60.i, ptr %phy_control, align 4
  br i1 %tobool.not, label %if.then16.if.end27_crit_edge, label %land.lhs.true

if.then16.if.end27_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true:                                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %flags19 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %bf.load = load i16, ptr %flags19, align 1
  %49 = shl i16 %bf.load, 10
  %50 = and i16 %49, 8192
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true, %if.then16.if.end27_crit_edge
  %mac_tmp.0 = phi i16 [ 0, %if.then16.if.end27_crit_edge ], [ %50, %land.lhs.true ]
  %51 = ptrtoint ptr %erp_mode.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %erp_mode.i, align 8
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %52, label %if.end27.if.end41_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %if.end27.sw.bb2.i_crit_edge
    i32 5, label %sw.bb6.i
    i32 4, label %if.end27._crit_edge
  ]

if.end27._crit_edge:                              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %59

if.end27.sw.bb2.i_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

sw.bb.i:                                          ; preds = %if.end27
  br i1 %tobool.not, label %sw.bb.i.sw.bb2.i_crit_edge, label %sw.bb.i.sw.bb.i148_crit_edge

sw.bb.i.sw.bb.i148_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i148

sw.bb.i.sw.bb2.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb.i.sw.bb2.i_crit_edge, %if.end27.sw.bb2.i_crit_edge
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %bf.load.i144 = load i16, ptr %flags.i, align 1
  %55 = and i16 %bf.load.i144, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool3.not.i = icmp eq i16 %55, 0
  %brmerge.i = or i1 %tobool4, %tobool3.not.i
  br i1 %brmerge.i, label %if.else, label %sw.bb2.i.if.then31_crit_edge, !prof !92

sw.bb2.i.if.then31_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

sw.bb6.i:                                         ; preds = %if.end27
  br i1 %tobool4, label %sw.bb6.i.if.end41_crit_edge, label %sw.bb6.i.if.then31_crit_edge, !prof !77

sw.bb6.i.if.then31_crit_edge:                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

sw.bb6.i.if.end41_crit_edge:                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then31:                                        ; preds = %sw.bb6.i.if.then31_crit_edge, %sw.bb2.i.if.then31_crit_edge
  %56 = or i16 %mac_tmp.0, 256
  br label %if.end41

if.else:                                          ; preds = %sw.bb2.i
  %.off = add i32 %52, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.else.sw.bb.i148_crit_edge, label %if.else.if.end41_crit_edge

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.else.sw.bb.i148_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i148

sw.bb.i148:                                       ; preds = %if.else.sw.bb.i148_crit_edge, %sw.bb.i.sw.bb.i148_crit_edge
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %bf.load.i147 = load i16, ptr %flags.i, align 1
  %58 = and i16 %bf.load.i147, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool.not.i = icmp eq i16 %58, 0
  br i1 %tobool.not.i, label %sw.bb.i148.if.end41_crit_edge, label %sw.bb.i148._crit_edge

sw.bb.i148._crit_edge:                            ; preds = %sw.bb.i148
  call void @__sanitizer_cov_trace_pc() #12
  br label %59

sw.bb.i148.if.end41_crit_edge:                    ; preds = %sw.bb.i148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

59:                                               ; preds = %sw.bb.i148._crit_edge, %if.end27._crit_edge
  %60 = or i16 %mac_tmp.0, 512
  br label %if.end41

if.end41:                                         ; preds = %59, %sw.bb.i148.if.end41_crit_edge, %if.else.if.end41_crit_edge, %if.then31, %sw.bb6.i.if.end41_crit_edge, %if.end27.if.end41_crit_edge
  %mac_tmp.1 = phi i16 [ %56, %if.then31 ], [ %60, %59 ], [ %mac_tmp.0, %if.end27.if.end41_crit_edge ], [ %mac_tmp.0, %sw.bb6.i.if.end41_crit_edge ], [ %mac_tmp.0, %if.else.if.end41_crit_edge ], [ %mac_tmp.0, %sw.bb.i148.if.end41_crit_edge ]
  %61 = ptrtoint ptr %mac_control to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %mac_control, align 2
  %or45141 = or i16 %62, %mac_tmp.1
  store i16 %or45141, ptr %mac_control, align 2
  br label %if.end49

if.else47:                                        ; preds = %carl9170_tx_physet.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub = add nsw i32 %i.0179, -1
  %arrayidx48 = getelementptr %struct._carl9170_tx_superdesc, ptr %1, i32 0, i32 8, i32 %sub
  %63 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or60.i, ptr %arrayidx48, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.end41
  %arrayidx51 = getelementptr %struct._carl9170_tx_superdesc, ptr %1, i32 0, i32 7, i32 %i.0179
  %64 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx51, align 1
  %66 = and i8 %65, -8
  %67 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %bf.load54 = load i16, ptr %flags.i, align 1
  %bf.lshr = lshr i16 %bf.load54, 11
  %68 = trunc i16 %bf.lshr to i8
  %and56 = and i8 %68, 7
  %or57 = or i8 %and56, %66
  store i8 %or57, ptr %arrayidx51, align 1
  %69 = ptrtoint ptr %erp_mode.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %erp_mode.i, align 8
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %70, label %if.end49.if.end82_crit_edge [
    i32 1, label %sw.bb.i152
    i32 2, label %if.end49.sw.bb2.i157_crit_edge
    i32 5, label %sw.bb6.i158
    i32 4, label %if.end49.if.end82.sink.split_crit_edge
  ]

if.end49.if.end82.sink.split_crit_edge:           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82.sink.split

if.end49.sw.bb2.i157_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i157

if.end49.if.end82_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

sw.bb.i152:                                       ; preds = %if.end49
  br i1 %tobool.not, label %sw.bb.i152.sw.bb2.i157_crit_edge, label %sw.bb.i152.sw.bb.i166_crit_edge

sw.bb.i152.sw.bb.i166_crit_edge:                  ; preds = %sw.bb.i152
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i166

sw.bb.i152.sw.bb2.i157_crit_edge:                 ; preds = %sw.bb.i152
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i157

sw.bb2.i157:                                      ; preds = %sw.bb.i152.sw.bb2.i157_crit_edge, %if.end49.sw.bb2.i157_crit_edge
  %72 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %bf.load.i154 = load i16, ptr %flags.i, align 1
  %73 = and i16 %bf.load.i154, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool3.not.i155 = icmp eq i16 %73, 0
  %brmerge.i156 = or i1 %tobool4, %tobool3.not.i155
  br i1 %brmerge.i156, label %if.else72, label %sw.bb2.i157.if.end82.sink.split_crit_edge, !prof !92

sw.bb2.i157.if.end82.sink.split_crit_edge:        ; preds = %sw.bb2.i157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82.sink.split

sw.bb6.i158:                                      ; preds = %if.end49
  br i1 %tobool4, label %sw.bb6.i158.if.end82_crit_edge, label %sw.bb6.i158.if.end82.sink.split_crit_edge, !prof !77

sw.bb6.i158.if.end82.sink.split_crit_edge:        ; preds = %sw.bb6.i158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82.sink.split

sw.bb6.i158.if.end82_crit_edge:                   ; preds = %sw.bb6.i158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.else72:                                        ; preds = %sw.bb2.i157
  %.off182 = add i32 %70, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off182)
  %switch183 = icmp ult i32 %.off182, 2
  br i1 %switch183, label %if.else72.sw.bb.i166_crit_edge, label %if.else72.if.end82_crit_edge

if.else72.if.end82_crit_edge:                     ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.else72.sw.bb.i166_crit_edge:                   ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i166

sw.bb.i166:                                       ; preds = %if.else72.sw.bb.i166_crit_edge, %sw.bb.i152.sw.bb.i166_crit_edge
  %74 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %bf.load.i164 = load i16, ptr %flags.i, align 1
  %75 = and i16 %bf.load.i164, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool.not.i165 = icmp eq i16 %75, 0
  br i1 %tobool.not.i165, label %sw.bb.i166.if.end82_crit_edge, label %sw.bb.i166.if.end82.sink.split_crit_edge

sw.bb.i166.if.end82.sink.split_crit_edge:         ; preds = %sw.bb.i166
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82.sink.split

sw.bb.i166.if.end82_crit_edge:                    ; preds = %sw.bb.i166
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end82.sink.split:                              ; preds = %sw.bb.i166.if.end82.sink.split_crit_edge, %sw.bb6.i158.if.end82.sink.split_crit_edge, %sw.bb2.i157.if.end82.sink.split_crit_edge, %if.end49.if.end82.sink.split_crit_edge
  %.sink184 = phi i8 [ 8, %sw.bb2.i157.if.end82.sink.split_crit_edge ], [ 8, %sw.bb6.i158.if.end82.sink.split_crit_edge ], [ 16, %if.end49.if.end82.sink.split_crit_edge ], [ 16, %sw.bb.i166.if.end82.sink.split_crit_edge ]
  %76 = or i8 %or57, %.sink184
  %77 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx51, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.end82.sink.split, %sw.bb.i166.if.end82_crit_edge, %if.else72.if.end82_crit_edge, %sw.bb6.i158.if.end82_crit_edge, %if.end49.if.end82_crit_edge
  br i1 %tobool.not, label %if.end82.for.inc_crit_edge, label %land.lhs.true85

if.end82.for.inc_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true85:                                  ; preds = %if.end82
  %78 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %bf.load87 = load i16, ptr %flags.i, align 1
  %79 = and i16 %bf.load87, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool91.not = icmp eq i16 %79, 0
  br i1 %tobool91.not, label %land.lhs.true85.for.inc_crit_edge, label %if.then92

land.lhs.true85.for.inc_crit_edge:                ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then92:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx51, align 1
  %82 = or i8 %81, 32
  store i8 %82, ptr %arrayidx51, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then92, %land.lhs.true85.for.inc_crit_edge, %if.end82.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0179, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @carl9170_tx(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_schedule = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 93
  %0 = ptrtoint ptr %tx_schedule to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tx_schedule, align 4
  %state = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp ult i32 %2, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !77

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @carl9170_usb_handle_tx_err(ptr noundef %ar) #10
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %queues106 = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %queues106 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %queues106, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp3108.not = icmp eq i16 %6, 0
  br i1 %cmp3108.not, label %if.end.cleanup_crit_edge, label %while.cond.preheader.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader.lr.ph:                       ; preds = %if.end
  %mem_allocs.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 109
  %mem_block_size.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 16
  %mem_free_blocks.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 108
  %mem_lock.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 106
  %mem_bitmap.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 107
  %mem_blocks.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 15
  %tx_ampdu_upload.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 98
  %tx_total_pending = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 100
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %schedule_garbagecollector.0.off0114 = phi i1 [ false, %while.cond.preheader.lr.ph ], [ %schedule_garbagecollector.1.off0.ph99, %for.inc.while.cond.preheader_crit_edge ]
  %i.0109 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %inc, %for.inc.while.cond.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 89, i32 %i.0109
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %cmp.i.not101103 = icmp eq ptr %8, %arrayidx
  br i1 %cmp.i.not101103, label %while.cond.preheader.for.inc_crit_edge, label %while.body.lr.ph.lr.ph

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.body.lr.ph.lr.ph:                           ; preds = %while.cond.preheader
  %lock.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 89, i32 %i.0109, i32 2
  %qlen.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 89, i32 %i.0109, i32 1
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %carl9170_tx_get_skb.exit.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %schedule_garbagecollector.1.off0.ph104 = phi i1 [ %schedule_garbagecollector.0.off0114, %while.body.lr.ph.lr.ph ], [ true, %carl9170_tx_get_skb.exit.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %carl9170_tx_ps_drop.exit.while.body_crit_edge, %while.body.lr.ph
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %cmp.i.i = icmp eq ptr %10, %arrayidx
  %tobool.not25.i = icmp eq ptr %10, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not25.i
  br i1 %tobool.not.i, label %while.body.carl9170_tx_pick_skb.exit.thread_crit_edge, label %if.end.i, !prof !77

while.body.carl9170_tx_pick_skb.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_pick_skb.exit.thread

if.end.i:                                         ; preds = %while.body
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mem_allocs.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %mem_allocs.i.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mem_allocs.i.i, ptr %mem_allocs.i.i, i32 1, ptr elementtype(i32) %mem_allocs.i.i) #10, !srcloc !90
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 6
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  %14 = ptrtoint ptr %mem_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem_block_size.i.i, align 4
  %add.i.i = add i32 %13, -1
  %sub.i.i = add i32 %add.i.i, %15
  %div.i.i = udiv i32 %sub.i.i, %15
  %call.i.i39.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mem_free_blocks.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %mem_free_blocks.i.i, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mem_free_blocks.i.i, ptr %mem_free_blocks.i.i, i32 %div.i.i, ptr elementtype(i32) %mem_free_blocks.i.i) #10, !srcloc !83
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i21.i = icmp slt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i21.i, label %if.then.i.i, label %if.end.i.i, !prof !77

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i40.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mem_free_blocks.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %mem_free_blocks.i.i, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mem_free_blocks.i.i, ptr %mem_free_blocks.i.i, i32 %div.i.i, ptr elementtype(i32) %mem_free_blocks.i.i) #10, !srcloc !90
  br label %carl9170_tx_pick_skb.exit.thread

if.end.i.i:                                       ; preds = %if.end.i
  tail call void @_raw_spin_lock_bh(ptr noundef %mem_lock.i.i) #10
  %18 = ptrtoint ptr %mem_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem_bitmap.i.i, align 8
  %20 = ptrtoint ptr %mem_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mem_blocks.i.i, align 8
  %call6.i.i = tail call i32 @bitmap_find_free_region(ptr noundef %19, i32 noundef %21, i32 noundef 0) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %mem_lock.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp8.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp8.i.i, label %if.then15.i.i, label %if.end21, !prof !77

if.then15.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i41.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mem_free_blocks.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %mem_free_blocks.i.i, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mem_free_blocks.i.i, ptr %mem_free_blocks.i.i, i32 %div.i.i, ptr elementtype(i32) %mem_free_blocks.i.i) #10, !srcloc !90
  br label %carl9170_tx_pick_skb.exit.thread

carl9170_tx_pick_skb.exit.thread:                 ; preds = %if.then15.i.i, %if.then.i.i, %while.body.carl9170_tx_pick_skb.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %for.inc

if.end21:                                         ; preds = %if.end.i.i
  %23 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i, align 4
  %25 = trunc i32 %call6.i.i to i8
  %conv21.i.i = add i8 %25, 1
  %cookie22.i.i = getelementptr inbounds %struct._carl9170_tx_superdesc, ptr %24, i32 0, i32 3
  %26 = ptrtoint ptr %cookie22.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv21.i.i, ptr %cookie22.i.i, align 4
  %27 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qlen.i.i, align 4
  %sub.i22.i = add i32 %28, -1
  store volatile i32 %sub.i22.i, ptr %qlen.i.i, align 4
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %10, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 1
  %31 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %10, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %32, ptr %prev17.i.i, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %30, ptr %32, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %rate_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %36 = ptrtoint ptr %rate_driver_data.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %rate_driver_data.i, align 4
  %37 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i65 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i65, label %if.end21.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end21.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end21
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i66

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i66:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i66, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end21.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call fastcc ptr @__carl9170_get_tx_sta(ptr noundef %ar, ptr noundef nonnull %10) #10
  %tobool.not.i67 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i67, label %rcu_read_lock.exit.i.out_rcu.i_crit_edge, label %if.end.i68

rcu_read_lock.exit.i.out_rcu.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rcu.i

if.end.i68:                                       ; preds = %rcu_read_lock.exit.i
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call.i, i32 0, i32 29
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3
  %sleeping.i = getelementptr inbounds %struct.carl9170_sta_info, ptr %drv_priv.i, i32 0, i32 1
  %41 = ptrtoint ptr %sleeping.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sleeping.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool2.not.i = icmp eq i8 %42, 0
  br i1 %tobool2.not.i, label %if.end.i68.out_rcu.i_crit_edge, label %land.lhs.true.i, !prof !78

if.end.i68.out_rcu.i_crit_edge:                   ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rcu.i

land.lhs.true.i:                                  ; preds = %if.end.i68
  %43 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cb.i.i, align 8
  %and.i = and i32 %44, 131080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %land.lhs.true.i.out_rcu.i_crit_edge

land.lhs.true.i.out_rcu.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rcu.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call.i76 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i76, label %if.then6.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i78

if.then6.i.rcu_read_unlock.exit_crit_edge:        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i78:                                ; preds = %if.then6.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i77 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i77, label %land.lhs.true.i78.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i78.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i78
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i79

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i79:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i79, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i78.rcu_read_unlock.exit_crit_edge, %if.then6.i.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %45 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %49 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cb.i.i, align 8
  %and8.i = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %rcu_read_unlock.exit.carl9170_tx_ps_drop.exit_crit_edge, label %if.then10.i

rcu_read_unlock.exit.carl9170_tx_ps_drop.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_ps_drop.exit

if.then10.i:                                      ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_ampdu_upload.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tx_ampdu_upload.i, i32 1, i32 3, i32 1) #10
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_ampdu_upload.i, ptr %tx_ampdu_upload.i, i32 1, ptr elementtype(i32) %tx_ampdu_upload.i) #10, !srcloc !88
  br label %carl9170_tx_ps_drop.exit

out_rcu.i:                                        ; preds = %land.lhs.true.i.out_rcu.i_crit_edge, %if.end.i68.out_rcu.i_crit_edge, %rcu_read_lock.exit.i.out_rcu.i_crit_edge
  %len.i.i.le = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 6
  %call.i25.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i25.i, label %out_rcu.i.if.end30_crit_edge, label %land.lhs.true.i28.i

out_rcu.i.if.end30_crit_edge:                     ; preds = %out_rcu.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true.i28.i:                              ; preds = %out_rcu.i
  %call1.i26.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i)
  %tobool.not.i27.i = icmp eq i32 %call1.i26.i, 0
  br i1 %tobool.not.i27.i, label %land.lhs.true.i28.i.if.end30_crit_edge, label %land.lhs.true2.i30.i

land.lhs.true.i28.i.if.end30_crit_edge:           ; preds = %land.lhs.true.i28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true2.i30.i:                             ; preds = %land.lhs.true.i28.i
  %.b4.i29.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29.i, label %land.lhs.true2.i30.i.if.end30_crit_edge, label %if.then.i31.i

land.lhs.true2.i30.i.if.end30_crit_edge:          ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then.i31.i:                                    ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #10
  br label %if.end30

carl9170_tx_ps_drop.exit:                         ; preds = %if.then10.i, %rcu_read_unlock.exit.carl9170_tx_ps_drop.exit_crit_edge
  %52 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cb.i.i, align 8
  %or.i = or i32 %53, 256
  store i32 %or.i, ptr %cb.i.i, align 8
  tail call fastcc void @carl9170_release_dev_space(ptr noundef %ar, ptr noundef nonnull %10) #10
  tail call void @carl9170_tx_status(ptr noundef %ar, ptr noundef nonnull %10, i1 noundef zeroext false) #10
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %55, %arrayidx
  br i1 %cmp.i.not, label %carl9170_tx_ps_drop.exit.for.inc_crit_edge, label %carl9170_tx_ps_drop.exit.while.body_crit_edge

carl9170_tx_ps_drop.exit.while.body_crit_edge:    ; preds = %carl9170_tx_ps_drop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

carl9170_tx_ps_drop.exit.for.inc_crit_edge:       ; preds = %carl9170_tx_ps_drop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end30:                                         ; preds = %if.then.i31.i, %land.lhs.true2.i30.i.if.end30_crit_edge, %land.lhs.true.i28.i.if.end30_crit_edge, %out_rcu.i.if.end30_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %56 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i32.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i32.i to ptr
  %preempt_count.i.i.i.i33.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i33.i, align 4
  %sub.i.i.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i33.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %60 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i, align 4
  %frame_data.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %frame_data.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %frame_data.i, align 1
  %64 = and i16 %63, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31744, i16 %64)
  %cmp.i.i70 = icmp eq i16 %64, -31744
  br i1 %cmp.i.i70, label %land.lhs.true.i72, label %if.end30.carl9170_bar_check.exit_crit_edge, !prof !77

if.end30.carl9170_bar_check.exit_crit_edge:       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_bar_check.exit

land.lhs.true.i72:                                ; preds = %if.end30
  %65 = ptrtoint ptr %len.i.i.le to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i.i.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %66)
  %cmp.i71 = icmp ugt i32 %66, 19
  br i1 %cmp.i71, label %if.then.i, label %land.lhs.true.i72.carl9170_bar_check.exit_crit_edge

land.lhs.true.i72.carl9170_bar_check.exit_crit_edge: ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_bar_check.exit

if.then.i:                                        ; preds = %land.lhs.true.i72
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 10
  %67 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %queue_mapping.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %69 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 2592, i32 noundef 20) #13
  %tobool5.not.i73 = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not.i73, label %land.rhs.i, label %if.then53.critedge.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b71.i = load i1, ptr @carl9170_bar_check.__already_done, align 1
  br i1 %.b71.i, label %land.rhs.i.carl9170_bar_check.exit_crit_edge, label %if.then23.i, !prof !78

land.rhs.i.carl9170_bar_check.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_bar_check.exit

if.then23.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @carl9170_bar_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1331, i32 noundef 9, ptr noundef null) #10
  br label %carl9170_bar_check.exit

if.then53.critedge.i:                             ; preds = %if.then.i
  %conv.i74 = zext i16 %68 to i32
  %skb54.i = getelementptr inbounds %struct.carl9170_bar_list_entry, ptr %call7.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %skb54.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %10, ptr %skb54.i, align 8
  %arrayidx.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 116, i32 %conv.i74
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx.i) #10
  %arrayidx55.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 115, i32 %conv.i74
  %prev.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 115, i32 %conv.i74, i32 1
  %71 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i, align 4
  %call.i.i80 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %72, ptr noundef %arrayidx55.i) #10
  br i1 %call.i.i80, label %if.end.i.i81, label %if.then53.critedge.i.list_add_tail_rcu.exit_crit_edge

if.then53.critedge.i.list_add_tail_rcu.exit_crit_edge: ; preds = %if.then53.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail_rcu.exit

if.end.i.i81:                                     ; preds = %if.then53.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %arrayidx55.i, ptr %call7.i.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %72, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !93
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %call7.i.i, ptr %72, align 4
  %76 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i81, %if.then53.critedge.i.list_add_tail_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx.i) #10
  br label %carl9170_bar_check.exit

carl9170_bar_check.exit:                          ; preds = %list_add_tail_rcu.exit, %if.then23.i, %land.rhs.i.carl9170_bar_check.exit_crit_edge, %land.lhs.true.i72.carl9170_bar_check.exit_crit_edge, %if.end30.carl9170_bar_check.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_total_pending, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tx_total_pending, i32 1, i32 3, i32 1) #10
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_total_pending, ptr %tx_total_pending, i32 1, ptr elementtype(i32) %tx_total_pending) #10, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @modparam_noht to i32))
  %78 = load i32, ptr @modparam_noht, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i75 = icmp eq i32 %78, 0
  %.queue.i = select i1 %tobool.not.i75, i32 2, i32 %i.0109, !prof !78
  %arrayidx32 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 90, i32 %.queue.i
  tail call void @skb_queue_tail(ptr noundef %arrayidx32, ptr noundef nonnull %10) #10
  %ref.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3, i32 32
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #10
  %79 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #10, !srcloc !76
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %carl9170_bar_check.exit.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !77

carl9170_bar_check.exit.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %carl9170_bar_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %carl9170_bar_check.exit
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %80 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %.not.i.i.i.i.i = icmp sgt i32 %80, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.carl9170_tx_get_skb.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !78

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.carl9170_tx_get_skb.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_get_skb.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %carl9170_bar_check.exit.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %carl9170_bar_check.exit.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %carl9170_tx_get_skb.exit

carl9170_tx_get_skb.exit:                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.carl9170_tx_get_skb.exit_crit_edge
  tail call void @carl9170_usb_tx(ptr noundef %ar, ptr noundef nonnull %10) #10
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx, align 4
  %cmp.i.not101 = icmp eq ptr %82, %arrayidx
  br i1 %cmp.i.not101, label %carl9170_tx_get_skb.exit.for.inc_crit_edge, label %carl9170_tx_get_skb.exit.while.body.lr.ph_crit_edge

carl9170_tx_get_skb.exit.while.body.lr.ph_crit_edge: ; preds = %carl9170_tx_get_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph

carl9170_tx_get_skb.exit.for.inc_crit_edge:       ; preds = %carl9170_tx_get_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %carl9170_tx_get_skb.exit.for.inc_crit_edge, %carl9170_tx_ps_drop.exit.for.inc_crit_edge, %carl9170_tx_pick_skb.exit.thread, %while.cond.preheader.for.inc_crit_edge
  %schedule_garbagecollector.1.off0.ph99 = phi i1 [ %schedule_garbagecollector.1.off0.ph104, %carl9170_tx_pick_skb.exit.thread ], [ %schedule_garbagecollector.0.off0114, %while.cond.preheader.for.inc_crit_edge ], [ %schedule_garbagecollector.1.off0.ph104, %carl9170_tx_ps_drop.exit.for.inc_crit_edge ], [ true, %carl9170_tx_get_skb.exit.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0109, 1
  %83 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw, align 4
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %84, i32 0, i32 11
  %85 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %queues, align 4
  %conv = zext i16 %86 to i32
  %cmp3 = icmp ult i32 %inc, %conv
  br i1 %cmp3, label %for.inc.while.cond.preheader_crit_edge, label %for.end

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

for.end:                                          ; preds = %for.inc
  br i1 %schedule_garbagecollector.1.off0.ph99, label %if.end35, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %tx_janitor = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 91
  tail call void @ieee80211_queue_delayed_work(ptr noundef %84, ptr noundef %tx_janitor, i32 noundef 250) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_tx_scheduler(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ampdu_schedule = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 105
  %0 = ptrtoint ptr %tx_ampdu_schedule to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_ampdu_schedule, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @carl9170_tx_ampdu(ptr noundef %ar)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_schedule = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 93
  %2 = ptrtoint ptr %tx_schedule to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_schedule, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @carl9170_tx(ptr noundef %ar)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_update_beacon(ptr noundef %ar, i1 noundef zeroext %submit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %beacon_iter.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 44
  %4 = ptrtoint ptr %beacon_iter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %beacon_iter.i, align 4
  %call.i435 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i435)
  %tobool.not.i436 = icmp eq i32 %call.i435, 0
  br i1 %tobool.not.i436, label %land.lhs.true.i437, label %rcu_read_lock.exit.do.end7.i_crit_edge

rcu_read_lock.exit.do.end7.i_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i437:                               ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i437.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i437.do.end7.i_crit_edge:           ; preds = %land.lhs.true.i437
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i437
  %.b63.i = load i1, ptr @carl9170_pick_beaconing_vif.__warned, align 1
  br i1 %.b63.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i438

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i438:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @carl9170_pick_beaconing_vif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1552, ptr noundef nonnull @.str.14) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i438, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i437.do.end7.i_crit_edge, %rcu_read_lock.exit.do.end7.i_crit_edge
  %vifs.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 39
  %6 = ptrtoint ptr %vifs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vifs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %do.end7.i.carl9170_pick_beaconing_vif.exit_crit_edge, label %land.lhs.true9.i

do.end7.i.carl9170_pick_beaconing_vif.exit_crit_edge: ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_pick_beaconing_vif.exit

land.lhs.true9.i:                                 ; preds = %do.end7.i
  %tobool10.not.i = icmp eq ptr %5, null
  br i1 %tobool10.not.i, label %carl9170_pick_beaconing_vif.exit.thread, label %do.body12.preheader.i

carl9170_pick_beaconing_vif.exit.thread:          ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %beacon_iter.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %beacon_iter.i, align 4
  br label %out_unlock

do.body12.preheader.i:                            ; preds = %land.lhs.true9.i
  %vif_list.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 37
  %beacon_enabled.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 45
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %cvif.166.i = load volatile ptr, ptr %5, align 4
  %cmp19.not67.i = icmp eq ptr %cvif.166.i, %vif_list.i
  br i1 %cmp19.not67.i, label %do.body12.preheader.i.do.cond34.i_crit_edge, label %do.body12.preheader.i.for.body.i_crit_edge

do.body12.preheader.i.for.body.i_crit_edge:       ; preds = %do.body12.preheader.i
  br label %for.body.i

do.body12.preheader.i.do.cond34.i_crit_edge:      ; preds = %do.body12.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond34.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body12.preheader.i.for.body.i_crit_edge
  %cvif.168.i = phi ptr [ %cvif.1.i, %for.inc.i.for.body.i_crit_edge ], [ %cvif.166.i, %do.body12.preheader.i.for.body.i_crit_edge ]
  %active.i = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.168.i, i32 0, i32 1
  %10 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active.i, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool20.not.i = icmp eq i8 %11, 0
  br i1 %tobool20.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true21.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true21.i:                                ; preds = %for.body.i
  %enable_beacon.i = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.168.i, i32 0, i32 4
  %12 = ptrtoint ptr %enable_beacon.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enable_beacon.i, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool22.not.i = icmp eq i8 %13, 0
  br i1 %tobool22.not.i, label %land.lhs.true21.i.for.inc.i_crit_edge, label %land.lhs.true21.i.carl9170_pick_beaconing_vif.exit_crit_edge

land.lhs.true21.i.carl9170_pick_beaconing_vif.exit_crit_edge: ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_pick_beaconing_vif.exit

land.lhs.true21.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true21.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %14 = ptrtoint ptr %cvif.168.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %cvif.1.i = load volatile ptr, ptr %cvif.168.i, align 4
  %cmp19.not.i = icmp eq ptr %cvif.1.i, %vif_list.i
  br i1 %cmp19.not.i, label %for.inc.i.do.cond34.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.do.cond34.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond34.i

do.cond34.i:                                      ; preds = %for.inc.i.do.cond34.i_crit_edge, %do.body12.preheader.i.do.cond34.i_crit_edge
  %15 = ptrtoint ptr %beacon_enabled.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %beacon_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool35.not.i = icmp eq i32 %16, 0
  br i1 %tobool35.not.i, label %do.cond34.i.carl9170_pick_beaconing_vif.exit_crit_edge, label %do.body12.i.1

do.cond34.i.carl9170_pick_beaconing_vif.exit_crit_edge: ; preds = %do.cond34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_pick_beaconing_vif.exit

do.body12.i.1:                                    ; preds = %do.cond34.i
  %17 = ptrtoint ptr %vif_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %cvif.166.i.1 = load volatile ptr, ptr %vif_list.i, align 4
  %cmp19.not67.i.1 = icmp eq ptr %cvif.166.i.1, %vif_list.i
  br i1 %cmp19.not67.i.1, label %do.body12.i.1.carl9170_pick_beaconing_vif.exit_crit_edge, label %do.body12.i.1.for.body.i.1_crit_edge

do.body12.i.1.for.body.i.1_crit_edge:             ; preds = %do.body12.i.1
  br label %for.body.i.1

do.body12.i.1.carl9170_pick_beaconing_vif.exit_crit_edge: ; preds = %do.body12.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_pick_beaconing_vif.exit

for.body.i.1:                                     ; preds = %for.inc.i.1.for.body.i.1_crit_edge, %do.body12.i.1.for.body.i.1_crit_edge
  %cvif.168.i.1 = phi ptr [ %cvif.1.i.1, %for.inc.i.1.for.body.i.1_crit_edge ], [ %cvif.166.i.1, %do.body12.i.1.for.body.i.1_crit_edge ]
  %active.i.1 = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.168.i.1, i32 0, i32 1
  %18 = ptrtoint ptr %active.i.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %active.i.1, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool20.not.i.1 = icmp eq i8 %19, 0
  br i1 %tobool20.not.i.1, label %for.body.i.1.for.inc.i.1_crit_edge, label %land.lhs.true21.i.1

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.1

land.lhs.true21.i.1:                              ; preds = %for.body.i.1
  %enable_beacon.i.1 = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.168.i.1, i32 0, i32 4
  %20 = ptrtoint ptr %enable_beacon.i.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enable_beacon.i.1, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool22.not.i.1 = icmp eq i8 %21, 0
  br i1 %tobool22.not.i.1, label %land.lhs.true21.i.1.for.inc.i.1_crit_edge, label %land.lhs.true21.i.1.carl9170_pick_beaconing_vif.exit_crit_edge

land.lhs.true21.i.1.carl9170_pick_beaconing_vif.exit_crit_edge: ; preds = %land.lhs.true21.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_pick_beaconing_vif.exit

land.lhs.true21.i.1.for.inc.i.1_crit_edge:        ; preds = %land.lhs.true21.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %land.lhs.true21.i.1.for.inc.i.1_crit_edge, %for.body.i.1.for.inc.i.1_crit_edge
  %22 = ptrtoint ptr %cvif.168.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %cvif.1.i.1 = load volatile ptr, ptr %cvif.168.i.1, align 4
  %cmp19.not.i.1 = icmp eq ptr %cvif.1.i.1, %vif_list.i
  br i1 %cmp19.not.i.1, label %for.inc.i.1.carl9170_pick_beaconing_vif.exit_crit_edge, label %for.inc.i.1.for.body.i.1_crit_edge

for.inc.i.1.for.body.i.1_crit_edge:               ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.1

for.inc.i.1.carl9170_pick_beaconing_vif.exit_crit_edge: ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_pick_beaconing_vif.exit

carl9170_pick_beaconing_vif.exit:                 ; preds = %for.inc.i.1.carl9170_pick_beaconing_vif.exit_crit_edge, %land.lhs.true21.i.1.carl9170_pick_beaconing_vif.exit_crit_edge, %do.body12.i.1.carl9170_pick_beaconing_vif.exit_crit_edge, %do.cond34.i.carl9170_pick_beaconing_vif.exit_crit_edge, %land.lhs.true21.i.carl9170_pick_beaconing_vif.exit_crit_edge, %do.end7.i.carl9170_pick_beaconing_vif.exit_crit_edge
  %cvif.2.i = phi ptr [ %5, %do.end7.i.carl9170_pick_beaconing_vif.exit_crit_edge ], [ %cvif.168.i, %land.lhs.true21.i.carl9170_pick_beaconing_vif.exit_crit_edge ], [ %cvif.168.i.1, %land.lhs.true21.i.1.carl9170_pick_beaconing_vif.exit_crit_edge ], [ %vif_list.i, %do.body12.i.1.carl9170_pick_beaconing_vif.exit_crit_edge ], [ %vif_list.i, %for.inc.i.1.carl9170_pick_beaconing_vif.exit_crit_edge ], [ %vif_list.i, %do.cond34.i.carl9170_pick_beaconing_vif.exit_crit_edge ]
  %23 = ptrtoint ptr %beacon_iter.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %cvif.2.i, ptr %beacon_iter.i, align 4
  %tobool.not = icmp eq ptr %cvif.2.i, null
  br i1 %tobool.not, label %carl9170_pick_beaconing_vif.exit.out_unlock_crit_edge, label %if.end

carl9170_pick_beaconing_vif.exit.out_unlock_crit_edge: ; preds = %carl9170_pick_beaconing_vif.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end:                                           ; preds = %carl9170_pick_beaconing_vif.exit
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %cvif.2.i, i32 -848
  %call2 = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %25, ptr noundef %add.ptr.i, ptr noundef null, ptr noundef null) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.err_free_crit_edge, label %if.end5

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end5:                                          ; preds = %if.end
  %beacon_lock = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 41
  tail call void @_raw_spin_lock_bh(ptr noundef %beacon_lock) #10
  %data6 = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 19
  %26 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data6, align 4
  %beacon = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.2.i, i32 0, i32 3
  %28 = ptrtoint ptr %beacon to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %beacon, align 4
  %tobool7.not = icmp eq ptr %29, null
  br i1 %tobool7.not, label %if.end5.if.end11_crit_edge, label %if.then8

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %data10 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end5.if.end11_crit_edge
  %old.0 = phi ptr [ %31, %if.then8 ], [ null, %if.end5.if.end11_crit_edge ]
  %id = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.2.i, i32 0, i32 2
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id, align 4
  %mul = mul i32 %33, 480
  %beacon_addr = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 9
  %34 = ptrtoint ptr %beacon_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %beacon_addr, align 4
  %add = add i32 %35, %mul
  %len12 = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 6
  %36 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len12, align 4
  %add14 = add i32 %37, 7
  %div433 = and i32 %add14, -4
  %add16 = add i32 %div433, %mul
  %beacon_max_len = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 10
  %38 = ptrtoint ptr %beacon_max_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %beacon_max_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add16, i32 %39)
  %cmp = icmp ugt i32 %add16, %39
  br i1 %cmp, label %if.then18, label %if.end24

if.then18:                                        ; preds = %if.end11
  %call19 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.err_unlock_crit_edge, label %do.end

if.then18.err_unlock_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unlock

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %43, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #14
  br label %err_unlock

if.end24:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %div433)
  %cmp25 = icmp ugt i32 %div433, 480
  br i1 %cmp25, label %if.then26, label %if.end37

if.then26:                                        ; preds = %if.end24
  %call27 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.err_unlock_crit_edge, label %do.end32

if.then26.err_unlock_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unlock

do.end32:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw, align 4
  %wiphy34 = getelementptr inbounds %struct.ieee80211_hw, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %wiphy34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wiphy34, align 8
  %dev35 = getelementptr inbounds %struct.wiphy, ptr %47, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.10, i32 noundef 480, i32 noundef %div433) #14
  br label %err_unlock

if.end37:                                         ; preds = %if.end24
  %48 = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 3, i32 8
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 3, i32 9
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %bf.load.i = load i16, ptr %flags.i, align 1
  %50 = and i16 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool.i = icmp ne i16 %50, 0
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %48, align 1
  %conv.i.i = sext i8 %52 to i32
  %bf.clear.i.i = and i16 %bf.load.i, 2047
  %conv2.i.i = zext i16 %bf.clear.i.i to i32
  %and.i.i = and i32 %conv2.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else31.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end37
  %and7.i.i = and i32 %conv2.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  %band15.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 3, i32 4
  %53 = ptrtoint ptr %band15.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load16.i.i = load i32, ptr %band15.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load16.i.i)
  %cmp18.i.i = icmp ult i32 %bf.load16.i.i, 536870912
  br i1 %tobool8.not.i.i, label %if.else14.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.then.i.i
  br i1 %cmp18.i.i, label %if.then12.i.i, label %if.else.i.i

if.then12.i.i:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %power_2G_ht40.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 71
  br label %if.end25.i.i

if.else.i.i:                                      ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %power_5G_ht40.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 69
  br label %if.end25.i.i

if.else14.i.i:                                    ; preds = %if.then.i.i
  br i1 %cmp18.i.i, label %if.then20.i.i, label %if.else22.i.i

if.then20.i.i:                                    ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %power_2G_ht20.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 70
  br label %if.end25.i.i

if.else22.i.i:                                    ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %power_5G_ht20.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 68
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.else22.i.i, %if.then20.i.i, %if.else.i.i, %if.then12.i.i
  %power.0.i = phi i32 [ 0, %if.then20.i.i ], [ 0, %if.else22.i.i ], [ 2, %if.then12.i.i ], [ 2, %if.else.i.i ]
  %txpower.0.i.i = phi ptr [ %power_2G_ht20.i.i, %if.then20.i.i ], [ %power_5G_ht20.i.i, %if.else22.i.i ], [ %power_2G_ht40.i.i, %if.then12.i.i ], [ %power_5G_ht40.i.i, %if.else.i.i ]
  %and28.i.i = and i32 %conv.i.i, 7
  %arrayidx.i.i = getelementptr i8, ptr %txpower.0.i.i, i32 %and28.i.i
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i.i, align 1
  %conv29.i.i = zext i8 %55 to i32
  %add30.i.i = add nuw nsw i32 %power.0.i, %conv29.i.i
  br label %if.end58.i.i

if.else31.i.i:                                    ; preds = %if.end37
  %band32.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 3, i32 4
  %56 = ptrtoint ptr %band32.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load33.i.i = load i32, ptr %band32.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load33.i.i)
  %cmp35.i.i = icmp ult i32 %bf.load33.i.i, 536870912
  br i1 %cmp35.i.i, label %if.then37.i.i, label %if.else45.i.i

if.then37.i.i:                                    ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %52)
  %cmp38.i.i = icmp ult i8 %52, 4
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.else42.i.i

if.then40.i.i:                                    ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %power_2G_cck.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 66
  br label %if.end48.i.i

if.else42.i.i:                                    ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %power_2G_ofdm.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 67
  br label %if.end48.i.i

if.else45.i.i:                                    ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %power_5G_leg.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 65
  %add47.i.i = add nsw i32 %conv.i.i, 4
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.else45.i.i, %if.else42.i.i, %if.then40.i.i
  %txpower.1.i.i = phi ptr [ %power_2G_cck.i.i, %if.then40.i.i ], [ %power_2G_ofdm.i.i, %if.else42.i.i ], [ %power_5G_leg.i.i, %if.else45.i.i ]
  %idx.0.i.i = phi i32 [ %conv.i.i, %if.then40.i.i ], [ %conv.i.i, %if.else42.i.i ], [ %add47.i.i, %if.else45.i.i ]
  %arrayidx49.i.i = getelementptr [0 x %struct.ieee80211_rate], ptr @__carl9170_ratetable, i32 0, i32 %idx.0.i.i
  %hw_value.i.i = getelementptr [0 x %struct.ieee80211_rate], ptr @__carl9170_ratetable, i32 0, i32 %idx.0.i.i, i32 2
  %57 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %hw_value.i.i, align 2
  %59 = lshr i16 %58, 4
  %60 = and i16 %59, 3
  %61 = zext i16 %60 to i32
  %arrayidx52.i.i = getelementptr i8, ptr %txpower.1.i.i, i32 %61
  %62 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx52.i.i, align 1
  %conv53.i.i = zext i8 %63 to i32
  %64 = and i16 %58, 15
  %and57.i.i = zext i16 %64 to i32
  br label %if.end58.i.i

if.end58.i.i:                                     ; preds = %if.end48.i.i, %if.end25.i.i
  %plcp.0 = phi i32 [ %and57.i.i, %if.end48.i.i ], [ %conv.i.i, %if.end25.i.i ]
  %power.1.i = phi i32 [ %conv53.i.i, %if.end48.i.i ], [ %add30.i.i, %if.end25.i.i ]
  %rate.0.i.i = phi ptr [ %arrayidx49.i.i, %if.end48.i.i ], [ null, %if.end25.i.i ]
  %tx_mask.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 8
  %65 = ptrtoint ptr %tx_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %tx_mask.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %66)
  %cmp60.i.i = icmp eq i8 %66, 1
  br i1 %cmp60.i.i, label %if.end58.i.i.carl9170_tx_rate_tpc_chains.exit.thread.i_crit_edge, label %if.else63.i.i

if.end58.i.i.carl9170_tx_rate_tpc_chains.exit.thread.i_crit_edge: ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_rate_tpc_chains.exit.thread.i

if.else63.i.i:                                    ; preds = %if.end58.i.i
  %tobool70.not.i.i = icmp eq ptr %rate.0.i.i, null
  %or.cond.i.i = select i1 %tobool.i, i1 true, i1 %tobool70.not.i.i
  br i1 %or.cond.i.i, label %if.else63.i.i._crit_edge, label %land.lhs.true71.i.i

if.else63.i.i._crit_edge:                         ; preds = %if.else63.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %69

land.lhs.true71.i.i:                              ; preds = %if.else63.i.i
  %bitrate.i.i = getelementptr inbounds %struct.ieee80211_rate, ptr %rate.0.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %bitrate.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %bitrate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 359, i16 %68)
  %cmp73.i.i = icmp ugt i16 %68, 359
  br i1 %cmp73.i.i, label %land.lhs.true71.i.i.carl9170_tx_rate_tpc_chains.exit.thread.i_crit_edge, label %land.lhs.true71.i.i._crit_edge

land.lhs.true71.i.i._crit_edge:                   ; preds = %land.lhs.true71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %69

land.lhs.true71.i.i.carl9170_tx_rate_tpc_chains.exit.thread.i_crit_edge: ; preds = %land.lhs.true71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %carl9170_tx_rate_tpc_chains.exit.thread.i

69:                                               ; preds = %land.lhs.true71.i.i._crit_edge, %if.else63.i.i._crit_edge
  br label %carl9170_tx_rate_tpc_chains.exit.thread.i

carl9170_tx_rate_tpc_chains.exit.thread.i:        ; preds = %69, %land.lhs.true71.i.i.carl9170_tx_rate_tpc_chains.exit.thread.i_crit_edge, %if.end58.i.i.carl9170_tx_rate_tpc_chains.exit.thread.i_crit_edge
  %.sink.i105.i = phi i32 [ 671088640, %69 ], [ 134217728, %if.end58.i.i.carl9170_tx_rate_tpc_chains.exit.thread.i_crit_edge ], [ 134217728, %land.lhs.true71.i.i.carl9170_tx_rate_tpc_chains.exit.thread.i_crit_edge ]
  %70 = phi i32 [ 496, %69 ], [ 368, %if.end58.i.i.carl9170_tx_rate_tpc_chains.exit.thread.i_crit_edge ], [ 368, %land.lhs.true71.i.i.carl9170_tx_rate_tpc_chains.exit.thread.i_crit_edge ]
  %71 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw, align 4
  %power_level.i102.i = getelementptr inbounds %struct.ieee80211_conf, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %power_level.i102.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %power_level.i102.i, align 4
  %mul.i103.i = shl i32 %74, 1
  %75 = tail call i32 @llvm.umin.i32(i32 %power.1.i, i32 %mul.i103.i) #10
  %shl.i = shl nuw nsw i32 %75, 21
  %and8.i = and i32 %shl.i, 132120576
  %or9.i = or i32 %70, %.sink.i105.i
  %or13.i = or i32 %or9.i, %and8.i
  br i1 %tobool.i, label %if.then15.i, label %if.else50.i

if.then15.i:                                      ; preds = %carl9170_tx_rate_tpc_chains.exit.thread.i
  %or16.i = or i32 %or13.i, 1
  %76 = shl i16 %bf.load.i, 8
  %77 = and i16 %76, -32768
  %78 = zext i16 %77 to i32
  %79 = or i32 %plcp.0, %78
  %and30.i = and i32 %conv2.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.else.i, label %if.then15.i.if.end45.sink.split.i_crit_edge

if.then15.i.if.end45.sink.split.i_crit_edge:      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.sink.split.i

if.else.i:                                        ; preds = %if.then15.i
  %and39.i = and i32 %conv2.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.else.i.if.end45.i_crit_edge, label %if.else.i.if.end45.sink.split.i_crit_edge

if.else.i.if.end45.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.sink.split.i

if.else.i.if.end45.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.end45.sink.split.i:                            ; preds = %if.else.i.if.end45.sink.split.i_crit_edge, %if.then15.i.if.end45.sink.split.i_crit_edge
  %.sink106.i = phi i32 [ 131072, %if.then15.i.if.end45.sink.split.i_crit_edge ], [ 196608, %if.else.i.if.end45.sink.split.i_crit_edge ]
  %or42.i = or i32 %.sink106.i, %or16.i
  %or43.i = or i32 %79, 256
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end45.sink.split.i, %if.else.i.if.end45.i_crit_edge
  %ht1.0 = phi i32 [ %or16.i, %if.else.i.if.end45.i_crit_edge ], [ %or42.i, %if.end45.sink.split.i ]
  %plcp.2 = phi i32 [ %79, %if.else.i.if.end45.i_crit_edge ], [ %or43.i, %if.end45.sink.split.i ]
  %and46.i = and i32 %plcp.2, 65535
  br label %carl9170_tx_beacon_physet.exit

if.else50.i:                                      ; preds = %carl9170_tx_rate_tpc_chains.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %plcp.0)
  %cmp51.i = icmp ult i32 %plcp.0, 4
  %.495 = select i1 %cmp51.i, i32 19, i32 16
  %.496 = select i1 %cmp51.i, i32 2098176, i32 262160
  br label %carl9170_tx_beacon_physet.exit

carl9170_tx_beacon_physet.exit:                   ; preds = %if.else50.i, %if.end45.i
  %.sink494 = phi i32 [ 16, %if.end45.i ], [ %.495, %if.else50.i ]
  %.sink493 = phi i32 [ 262144, %if.end45.i ], [ %.496, %if.else50.i ]
  %and46.i.sink = phi i32 [ %and46.i, %if.end45.i ], [ %plcp.0, %if.else50.i ]
  %ht1.1 = phi i32 [ %ht1.0, %if.end45.i ], [ %or13.i, %if.else50.i ]
  %call42 = tail call ptr @carl9170_cmd_buf(ptr noundef %ar, i32 noundef 65, i32 noundef 60) #10
  %cmp43 = icmp eq ptr %call42, null
  br i1 %cmp43, label %carl9170_tx_beacon_physet.exit.__async_regwrite_out.preheader_crit_edge, label %if.end58

carl9170_tx_beacon_physet.exit.__async_regwrite_out.preheader_crit_edge: ; preds = %carl9170_tx_beacon_physet.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__async_regwrite_out.preheader

if.end58:                                         ; preds = %carl9170_tx_beacon_physet.exit
  %add.i = shl i32 %37, %.sink494
  %shl47.i = add i32 %add.i, %.sink493
  %or49.i = or i32 %and46.i.sink, %shl47.i
  %80 = getelementptr inbounds %struct.carl9170_cmd, ptr %call42, i32 0, i32 1
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1606607872, ptr %80, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %ht1.1)
  %val = getelementptr inbounds %struct.carl9170_cmd, ptr %call42, i32 0, i32 1, i32 0, i32 1
  %83 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %val, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %or49.i)
  %. = select i1 %tobool.i, i32 -1539499008, i32 -1875043328
  %85 = getelementptr %struct.carl9170_cmd, ptr %call42, i32 0, i32 1, i32 0, i32 1, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %., ptr %85, align 4
  %87 = getelementptr %struct.carl9170_cmd, ptr %call42, i32 0, i32 1, i32 0, i32 2, i32 2
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %84, ptr %87, align 4
  %state228 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %89 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len12, align 4
  %sub182471 = add i32 %90, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub182471)
  %cmp184473.not = icmp ult i32 %sub182471, 4
  br i1 %cmp184473.not, label %if.end58.__async_regwrite_out.preheader_crit_edge, label %for.body.lr.ph

if.end58.__async_regwrite_out.preheader_crit_edge: ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %__async_regwrite_out.preheader

for.body.lr.ph:                                   ; preds = %if.end58
  %tobool186.not = icmp eq ptr %old.0, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %__err.2478 = phi i32 [ 0, %for.body.lr.ph ], [ %__err.3, %for.inc.for.body_crit_edge ]
  %__nreg.4477 = phi i32 [ 2, %for.body.lr.ph ], [ %__nreg.6, %for.inc.for.body_crit_edge ]
  %__cmd.5476 = phi ptr [ %call42, %for.body.lr.ph ], [ %__cmd.7, %for.inc.for.body_crit_edge ]
  %i.0474 = phi i32 [ 0, %for.body.lr.ph ], [ %inc245, %for.inc.for.body_crit_edge ]
  br i1 %tobool186.not, label %for.body.if.end193_crit_edge, label %land.lhs.true187

for.body.if.end193_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

land.lhs.true187:                                 ; preds = %for.body
  %arrayidx188 = getelementptr i32, ptr %27, i32 %i.0474
  %91 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx188, align 4
  %arrayidx189 = getelementptr i32, ptr %old.0, i32 %i.0474
  %93 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx189, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %94)
  %cmp190 = icmp eq i32 %92, %94
  br i1 %cmp190, label %land.lhs.true187.for.inc_crit_edge, label %land.lhs.true187.if.end193_crit_edge

land.lhs.true187.if.end193_crit_edge:             ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

land.lhs.true187.for.inc_crit_edge:               ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end193:                                        ; preds = %land.lhs.true187.if.end193_crit_edge, %for.body.if.end193_crit_edge
  %arrayidx194 = getelementptr i32, ptr %27, i32 %i.0474
  %95 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx194, align 4
  %cmp196 = icmp eq ptr %__cmd.5476, null
  br i1 %cmp196, label %do.body199, label %if.end193.if.end207_crit_edge

if.end193.if.end207_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end207

do.body199:                                       ; preds = %if.end193
  %call200 = tail call ptr @carl9170_cmd_buf(ptr noundef %ar, i32 noundef 65, i32 noundef 60) #10
  %cmp201 = icmp eq ptr %call200, null
  br i1 %cmp201, label %do.body199.__async_regwrite_out.preheader_crit_edge, label %do.body199.if.end207_crit_edge

do.body199.if.end207_crit_edge:                   ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end207

do.body199.__async_regwrite_out.preheader_crit_edge: ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #12
  br label %__async_regwrite_out.preheader

if.end207:                                        ; preds = %do.body199.if.end207_crit_edge, %if.end193.if.end207_crit_edge
  %__cmd.6 = phi ptr [ %call200, %do.body199.if.end207_crit_edge ], [ %__cmd.5476, %if.end193.if.end207_crit_edge ]
  %__nreg.5 = phi i32 [ 0, %do.body199.if.end207_crit_edge ], [ %__nreg.4477, %if.end193.if.end207_crit_edge ]
  %mul208 = shl i32 %i.0474, 2
  %add209 = add i32 %mul208, %add
  %97 = tail call i32 @llvm.bswap.i32(i32 %add209)
  %98 = getelementptr inbounds %struct.carl9170_cmd, ptr %__cmd.6, i32 0, i32 1
  %arrayidx211 = getelementptr [0 x %struct.anon.139], ptr %98, i32 0, i32 %__nreg.5
  %99 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %97, ptr %arrayidx211, align 4
  %val215 = getelementptr [0 x %struct.anon.139], ptr %98, i32 0, i32 %__nreg.5, i32 1
  %100 = ptrtoint ptr %val215 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %96, ptr %val215, align 4
  %inc216 = add i32 %__nreg.5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc216)
  %cmp217 = icmp ugt i32 %inc216, 6
  br i1 %cmp217, label %if.end227, label %if.end207.for.inc_crit_edge

if.end207.for.inc_crit_edge:                      ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end227:                                        ; preds = %if.end207
  %101 = ptrtoint ptr %state228 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %state228, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp229 = icmp ugt i32 %102, 1
  br i1 %cmp229, label %if.then233, label %if.end227.__async_regwrite_out.preheader_crit_edge

if.end227.__async_regwrite_out.preheader_crit_edge: ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #12
  br label %__async_regwrite_out.preheader

__async_regwrite_out.preheader:                   ; preds = %for.inc.__async_regwrite_out.preheader_crit_edge, %if.end227.__async_regwrite_out.preheader_crit_edge, %do.body199.__async_regwrite_out.preheader_crit_edge, %if.end58.__async_regwrite_out.preheader_crit_edge, %carl9170_tx_beacon_physet.exit.__async_regwrite_out.preheader_crit_edge
  %__cmd.8.ph = phi ptr [ null, %carl9170_tx_beacon_physet.exit.__async_regwrite_out.preheader_crit_edge ], [ %call42, %if.end58.__async_regwrite_out.preheader_crit_edge ], [ %__cmd.6, %if.end227.__async_regwrite_out.preheader_crit_edge ], [ null, %do.body199.__async_regwrite_out.preheader_crit_edge ], [ %__cmd.7, %for.inc.__async_regwrite_out.preheader_crit_edge ]
  %__nreg.7.ph = phi i32 [ 0, %carl9170_tx_beacon_physet.exit.__async_regwrite_out.preheader_crit_edge ], [ 2, %if.end58.__async_regwrite_out.preheader_crit_edge ], [ %inc216, %if.end227.__async_regwrite_out.preheader_crit_edge ], [ 0, %do.body199.__async_regwrite_out.preheader_crit_edge ], [ %__nreg.6, %for.inc.__async_regwrite_out.preheader_crit_edge ]
  %__err.4.ph = phi i32 [ -12, %carl9170_tx_beacon_physet.exit.__async_regwrite_out.preheader_crit_edge ], [ 0, %if.end58.__async_regwrite_out.preheader_crit_edge ], [ %__err.2478, %if.end227.__async_regwrite_out.preheader_crit_edge ], [ -12, %do.body199.__async_regwrite_out.preheader_crit_edge ], [ %__err.3, %for.inc.__async_regwrite_out.preheader_crit_edge ]
  %cmp247.not = icmp eq ptr %__cmd.8.ph, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__nreg.7.ph)
  %cmp257 = icmp eq i32 %__nreg.7.ph, 0
  %state261 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  br label %__async_regwrite_out

if.then233:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #12
  %inc216.tr = trunc i32 %inc216 to i8
  %conv235 = shl i8 %inc216.tr, 3
  %103 = ptrtoint ptr %__cmd.6 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv235, ptr %__cmd.6, align 4
  %call238 = tail call i32 @__carl9170_exec_cmd(ptr noundef %ar, ptr noundef nonnull %__cmd.6, i1 noundef zeroext true) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then233, %if.end207.for.inc_crit_edge, %land.lhs.true187.for.inc_crit_edge
  %__cmd.7 = phi ptr [ %__cmd.5476, %land.lhs.true187.for.inc_crit_edge ], [ null, %if.then233 ], [ %__cmd.6, %if.end207.for.inc_crit_edge ]
  %__nreg.6 = phi i32 [ %__nreg.4477, %land.lhs.true187.for.inc_crit_edge ], [ %inc216, %if.then233 ], [ %inc216, %if.end207.for.inc_crit_edge ]
  %__err.3 = phi i32 [ %__err.2478, %land.lhs.true187.for.inc_crit_edge ], [ %call238, %if.then233 ], [ %__err.2478, %if.end207.for.inc_crit_edge ]
  %inc245 = add nuw nsw i32 %i.0474, 1
  %104 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %len12, align 4
  %sub182 = add i32 %105, 3
  %div183434 = lshr i32 %sub182, 2
  %cmp184 = icmp ult i32 %inc245, %div183434
  br i1 %cmp184, label %for.inc.for.body_crit_edge, label %for.inc.__async_regwrite_out.preheader_crit_edge

for.inc.__async_regwrite_out.preheader_crit_edge: ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %__async_regwrite_out.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

__async_regwrite_out:                             ; preds = %if.end260.__async_regwrite_out_crit_edge, %__async_regwrite_out.preheader
  %__err.4 = phi i32 [ 0, %if.end260.__async_regwrite_out_crit_edge ], [ %__err.4.ph, %__async_regwrite_out.preheader ]
  br i1 %cmp247.not, label %__async_regwrite_out.if.end275_crit_edge, label %land.lhs.true249

__async_regwrite_out.if.end275_crit_edge:         ; preds = %__async_regwrite_out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end275

land.lhs.true249:                                 ; preds = %__async_regwrite_out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__err.4)
  %cmp250 = icmp ne i32 %__err.4, 0
  %brmerge = select i1 %cmp250, i1 true, i1 %cmp257
  br i1 %brmerge, label %land.lhs.true249.if.end275_crit_edge, label %if.end260

land.lhs.true249.if.end275_crit_edge:             ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end275

if.end260:                                        ; preds = %land.lhs.true249
  %106 = ptrtoint ptr %state261 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %state261, align 4
  %cmp262 = icmp ugt i32 %107, 1
  br i1 %cmp262, label %if.then266, label %if.end260.__async_regwrite_out_crit_edge

if.end260.__async_regwrite_out_crit_edge:         ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #12
  br label %__async_regwrite_out

if.then266:                                       ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #12
  %__nreg.7.tr = trunc i32 %__nreg.7.ph to i8
  %conv268 = shl i8 %__nreg.7.tr, 3
  %108 = ptrtoint ptr %__cmd.8.ph to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv268, ptr %__cmd.8.ph, align 4
  %call271 = tail call i32 @__carl9170_exec_cmd(ptr noundef %ar, ptr noundef nonnull %__cmd.8.ph, i1 noundef zeroext true) #10
  br label %if.end275

if.end275:                                        ; preds = %if.then266, %land.lhs.true249.if.end275_crit_edge, %__async_regwrite_out.if.end275_crit_edge
  %__cmd.9 = phi ptr [ null, %if.then266 ], [ null, %__async_regwrite_out.if.end275_crit_edge ], [ %__cmd.8.ph, %land.lhs.true249.if.end275_crit_edge ]
  %__err.5 = phi i32 [ %call271, %if.then266 ], [ %__err.4.ph, %__async_regwrite_out.if.end275_crit_edge ], [ %__err.4, %land.lhs.true249.if.end275_crit_edge ]
  tail call void @kfree(ptr noundef %__cmd.9) #10
  %109 = ptrtoint ptr %beacon to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %beacon, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %110, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__err.5)
  %tobool282.not = icmp eq i32 %__err.5, 0
  %spec.select = select i1 %tobool282.not, ptr %call2, ptr null
  %111 = ptrtoint ptr %beacon to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %spec.select, ptr %beacon, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %beacon_lock) #10
  br i1 %tobool282.not, label %if.end289, label %if.end275.err_free_crit_edge

if.end275.err_free_crit_edge:                     ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end289:                                        ; preds = %if.end275
  br i1 %submit, label %if.then291, label %if.end289.out_unlock_crit_edge

if.end289.out_unlock_crit_edge:                   ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then291:                                       ; preds = %if.end289
  %112 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %id, align 4
  %114 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %len12, align 4
  %add294 = add i32 %115, 4
  %call295 = tail call i32 @carl9170_bcn_ctrl(ptr noundef %ar, i32 noundef %113, i32 noundef 1, i32 noundef %add, i32 noundef %add294) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call295)
  %tobool296.not = icmp eq i32 %call295, 0
  br i1 %tobool296.not, label %if.then291.out_unlock_crit_edge, label %if.then291.err_free_crit_edge

if.then291.err_free_crit_edge:                    ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.then291.out_unlock_crit_edge:                  ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

out_unlock:                                       ; preds = %if.then291.out_unlock_crit_edge, %if.end289.out_unlock_crit_edge, %carl9170_pick_beaconing_vif.exit.out_unlock_crit_edge, %carl9170_pick_beaconing_vif.exit.thread
  %call.i440 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i440, label %out_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i443

out_unlock.rcu_read_unlock.exit_crit_edge:        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i443:                               ; preds = %out_unlock
  %call1.i441 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i441)
  %tobool.not.i442 = icmp eq i32 %call1.i441, 0
  br i1 %tobool.not.i442, label %land.lhs.true.i443.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i445

land.lhs.true.i443.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i443
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i445:                              ; preds = %land.lhs.true.i443
  %.b4.i444 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i444, label %land.lhs.true2.i445.rcu_read_unlock.exit_crit_edge, label %if.then.i446

land.lhs.true2.i445.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i445
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i446:                                     ; preds = %land.lhs.true2.i445
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i446, %land.lhs.true2.i445.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i443.rcu_read_unlock.exit_crit_edge, %out_unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %116 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i447 = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i.i.i.i447 to ptr
  %preempt_count.i.i.i.i448 = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %preempt_count.i.i.i.i448 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %preempt_count.i.i.i.i448, align 4
  %sub.i.i.i = add i32 %119, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i448, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

err_unlock:                                       ; preds = %do.end32, %if.then26.err_unlock_crit_edge, %do.end, %if.then18.err_unlock_crit_edge
  %err.0 = phi i32 [ -22, %do.end ], [ -22, %if.then18.err_unlock_crit_edge ], [ -90, %do.end32 ], [ -90, %if.then26.err_unlock_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %beacon_lock) #10
  br label %err_free

err_free:                                         ; preds = %err_unlock, %if.then291.err_free_crit_edge, %if.end275.err_free_crit_edge, %if.end.err_free_crit_edge
  %err.1 = phi i32 [ %err.0, %err_unlock ], [ %__err.5, %if.end275.err_free_crit_edge ], [ %call295, %if.then291.err_free_crit_edge ], [ -12, %if.end.err_free_crit_edge ]
  %call.i449 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i449, label %err_free.rcu_read_unlock.exit459_crit_edge, label %land.lhs.true.i452

err_free.rcu_read_unlock.exit459_crit_edge:       ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit459

land.lhs.true.i452:                               ; preds = %err_free
  %call1.i450 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i450)
  %tobool.not.i451 = icmp eq i32 %call1.i450, 0
  br i1 %tobool.not.i451, label %land.lhs.true.i452.rcu_read_unlock.exit459_crit_edge, label %land.lhs.true2.i454

land.lhs.true.i452.rcu_read_unlock.exit459_crit_edge: ; preds = %land.lhs.true.i452
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit459

land.lhs.true2.i454:                              ; preds = %land.lhs.true.i452
  %.b4.i453 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i453, label %land.lhs.true2.i454.rcu_read_unlock.exit459_crit_edge, label %if.then.i455

land.lhs.true2.i454.rcu_read_unlock.exit459_crit_edge: ; preds = %land.lhs.true2.i454
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit459

if.then.i455:                                     ; preds = %land.lhs.true2.i454
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #10
  br label %rcu_read_unlock.exit459

rcu_read_unlock.exit459:                          ; preds = %if.then.i455, %land.lhs.true2.i454.rcu_read_unlock.exit459_crit_edge, %land.lhs.true.i452.rcu_read_unlock.exit459_crit_edge, %err_free.rcu_read_unlock.exit459_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %120 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i456 = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i.i.i456 to ptr
  %preempt_count.i.i.i.i457 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %preempt_count.i.i.i.i457 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %preempt_count.i.i.i.i457, align 4
  %sub.i.i.i458 = add i32 %123, -1
  store volatile i32 %sub.i.i.i458, ptr %preempt_count.i.i.i.i457, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  tail call void @__dev_kfree_skb_any(ptr noundef %call2, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit459, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %err.1, %rcu_read_unlock.exit459 ], [ 0, %rcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @carl9170_cmd_buf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__carl9170_exec_cmd(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_bcn_ctrl(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_queue_stopped(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__carl9170_get_tx_sta(ptr noundef %ar, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %misc = getelementptr inbounds %struct._carl9170_tx_superdesc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %misc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %misc, align 2
  %4 = lshr i8 %3, 3
  %5 = and i8 %4, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %5)
  %cmp = icmp eq i8 %5, 7
  br i1 %cmp, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b79 = load i1, ptr @__carl9170_get_tx_sta.__already_done, align 1
  br i1 %.b79, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !78

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__carl9170_get_tx_sta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end39:                                         ; preds = %entry
  %6 = zext i8 %5 to i32
  %vif44 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 40, i32 %6, i32 1
  %7 = ptrtoint ptr %vif44 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %vif44, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool46.not = icmp eq i32 %call, 0
  br i1 %tobool46.not, label %land.lhs.true, label %if.end39.do.end54_crit_edge

if.end39.do.end54_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

land.lhs.true:                                    ; preds = %if.end39
  %call47 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true.do.end54_crit_edge, label %land.lhs.true49

land.lhs.true.do.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

land.lhs.true49:                                  ; preds = %land.lhs.true
  %.b7778 = load i1, ptr @__carl9170_get_tx_sta.__warned, align 1
  br i1 %.b7778, label %land.lhs.true49.do.end54_crit_edge, label %if.then51

land.lhs.true49.do.end54_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__carl9170_get_tx_sta.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 121, ptr noundef nonnull @.str.14) #10
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %land.lhs.true49.do.end54_crit_edge, %land.lhs.true.do.end54_crit_edge, %if.end39.do.end54_crit_edge
  %tobool56.not = icmp eq ptr %8, null
  br i1 %tobool56.not, label %do.end54.cleanup_crit_edge, label %if.end66, !prof !77

do.end54.cleanup_crit_edge:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end66:                                         ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #12
  %addr1 = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %1, i32 1, i32 0, i32 3
  %call68 = tail call ptr @ieee80211_find_sta(ptr noundef nonnull %8, ptr noundef %addr1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %do.end54.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ %call68, %if.end66 ], [ null, %if.then ], [ null, %do.end54.cleanup_crit_edge ], [ null, %land.rhs.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_shift_right(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_block_awake(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_restart(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_stop_tx_ba_session(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @carl9170_release_dev_space(ptr noundef %ar, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %cookie1 = getelementptr inbounds %struct._carl9170_tx_superdesc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cookie1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cookie1, align 4
  %conv = zext i8 %3 to i32
  store i8 0, ptr %cookie1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.rhs, label %lor.lhs.false.critedge

land.rhs:                                         ; preds = %entry
  %.b122 = load i1, ptr @carl9170_release_dev_space.__already_done, align 1
  br i1 %.b122, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !78

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @carl9170_release_dev_space.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %entry
  %mem_blocks = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 15
  %4 = ptrtoint ptr %mem_blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_blocks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp42 = icmp ult i32 %5, %conv
  br i1 %cmp42, label %land.rhs51, label %if.end99

land.rhs51:                                       ; preds = %lor.lhs.false.critedge
  %.b120121 = load i1, ptr @carl9170_release_dev_space.__already_done.17, align 1
  br i1 %.b120121, label %land.rhs51.cleanup_crit_edge, label %if.then62, !prof !78

land.rhs51.cleanup_crit_edge:                     ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then62:                                        ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @carl9170_release_dev_space.__already_done.17, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end99:                                         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %mem_block_size = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 16
  %8 = ptrtoint ptr %mem_block_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mem_block_size, align 4
  %add = add i32 %7, -1
  %sub = add i32 %add, %9
  %div = udiv i32 %sub, %9
  %mem_free_blocks = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 108
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mem_free_blocks, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %mem_free_blocks, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mem_free_blocks, ptr %mem_free_blocks, i32 %div, ptr elementtype(i32) %mem_free_blocks) #10, !srcloc !90
  %mem_lock = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 106
  tail call void @_raw_spin_lock_bh(ptr noundef %mem_lock) #10
  %mem_bitmap = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 107
  %11 = ptrtoint ptr %mem_bitmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem_bitmap, align 8
  %sub103 = add nsw i32 %conv, -1
  tail call void @bitmap_release_region(ptr noundef %12, i32 noundef %sub103, i32 noundef 0) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %mem_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %if.then62, %land.rhs51.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_tx_rates(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_usb_handle_tx_err(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_usb_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !23, !24, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !63, !65}
!llvm.named.register.sp = !{!66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 695, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 696, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @carl9170_tx_process_status.__UNIQUE_ID_ddebug364, !3, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 1645, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @carl9170_update_beacon._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @carl9170_update_beacon._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 1654, i32 4}
!17 = !{ptr @carl9170_update_beacon._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @carl9170_update_beacon._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 275, i32 6}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 458, i32 3}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 468, i32 3}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 400, i32 13}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 118, i32 6}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 121, i32 8}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 353, i32 6}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 362, i32 2}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 365, i32 6}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 612, i32 2}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 249, i32 6}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 250, i32 6}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 1410, i32 8}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 1423, i32 6}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 1427, i32 6}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 1149, i32 13}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 1150, i32 6}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 1331, i32 8}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!59 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/carl9170/tx.c", i32 1552, i32 9}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!65 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!66 = !{!"sp"}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 2148623690, i64 2148623722, i64 2148623751, i64 2148623785, i64 2148623816, i64 2148623839}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 2148711715}
!80 = !{i64 2148626155, i64 2148626187, i64 2148626216, i64 2148626250, i64 2148626281, i64 2148626304}
!81 = !{i64 2149909488}
!82 = !{i64 2148710636}
!83 = !{i64 2148625345, i64 2148625377, i64 2148625406, i64 2148625440, i64 2148625471, i64 2148625494}
!84 = !{i64 2148710865}
!85 = !{i64 2149959031}
!86 = !{i64 2149959297}
!87 = !{i8 0, i8 2}
!88 = !{i64 2148624625, i64 2148624651, i64 2148624680, i64 2148624714, i64 2148624745, i64 2148624768}
!89 = !{i64 2148242886, i64 2148242891, i64 2148242904, i64 2148242948, i64 2148242982, i64 2148243003}
!90 = !{i64 2148622160, i64 2148622186, i64 2148622215, i64 2148622249, i64 2148622280, i64 2148622303}
!91 = !{i64 2158000928}
!92 = !{!"branch_weights", i32 2002, i32 2000}
!93 = !{i64 2151461543}
